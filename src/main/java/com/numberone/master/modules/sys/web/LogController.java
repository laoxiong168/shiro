/**
 * Copyright &copy; 2012-2016 <a href="https://shop450532966.taobao.com/">NumberOne</a> All rights reserved.
 */
package com.numberone.master.modules.sys.web;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.function.ObjDoubleConsumer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.language.bm.Rule.PhonemeList;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ModelAndView;

import com.numberone.master.common.persistence.Page;
import com.numberone.master.common.utils.HttpUtils;
import com.numberone.master.common.web.BaseController;
import com.numberone.master.modules.sys.entity.Log;
import com.numberone.master.modules.sys.service.LogService;
import com.numberone.master.modules.sys.service.SystemService;
import com.numberone.master.modules.sys.utils.ToolUtils;

/**
 * 日志Controller
 * 
 * @author numberone
 * @version 2013-6-2
 */
@Controller
@RequestMapping(value = "${adminPath}/sys/log")
public class LogController extends BaseController {

	@Autowired
	private LogService logService;

	@Autowired
	private SystemService systemService;

	List<String> picUrlList = new ArrayList<String>();

	@RequiresPermissions("sys:log:view")
	@RequestMapping(value = { "list", "" })
	public String list(Log log, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Log> page = logService.findPage(new Page<Log>(request, response), log);
		model.addAttribute("page", page);
		return "modules/sys/logList";
	}

	@RequiresPermissions("sys:log:view")
	@RequestMapping(value = { "binaryCode", "" })
	public String list1(Log log, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Log> page = logService.findPage(new Page<Log>(request, response), log);
		model.addAttribute("page", page);
		return "modules/sys/phoneList";
	}

	@RequestMapping(value = "ajaxReceive")
	public @ResponseBody String ajaxReceive(HttpServletRequest request, HttpServletResponse response) {
		String name = request.getParameter("name");
		System.out.println(name);
		return "modules/sys/binaryCode";
	}

	@RequestMapping(value = "editQingJian")
	public String editQingJian(HttpServletRequest request, HttpServletResponse response) {
		String name = request.getParameter("name");
		System.out.println(name);
		return "modules/sys/settings";
	}

	@RequestMapping(value = "grid")
	@ResponseBody
	public List<Map<String, Object>> grid(HttpServletRequest request, HttpServletResponse response) {
		List<Map<String, Object>> monitorList = new ArrayList<>();
		try {
			String type = request.getParameter("type");
			if ("2".equals(type)) {
				monitorList = systemService.getMonitorInformation("广东丹邦科技");
			} else if ("1".equals(type)) {
				monitorList = systemService.getMonitorInformation("泛亚太生物科技");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return monitorList;
	}
/**
 * 远程http调用函数
 * @return
 */
	@RequestMapping(value = "getHttpGridInf")
	@ResponseBody
	public List<Map<String, Object>> getHttpGridInf(){
		List<Map<String, Object>> monitorList = new ArrayList<>();
		return monitorList = systemService.getAllMonitorInformation();
	}
	@RequestMapping(value = "getHttpPhoneNumInf")
	@ResponseBody
	public List<Map<String, Object>> getHttpPhoneNumInf(){
		List<Map<String, Object>> monitorList = new ArrayList<>();
		return monitorList = systemService.queryPhoneList();
	}
/**
 * 远程http调用结束	
 * @param rowId
 * @param thresholdValue
 * @return
 */
	
	@RequestMapping(value = "updateGrid")
	@ResponseBody
	public String updateGrid(String rowId,String maxValue,String minValue) {
		Integer updateCount = 0;
		try {
			Integer id = Integer.valueOf(rowId);
			Map<String, Object> map=new HashMap<>();
			map.put("id", id);
			map.put("maxValue", maxValue);
			map.put("minValue", minValue);
			updateCount = systemService.updateGrid(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (updateCount>0) {
			return "success";
		}else {
			return "false";
		}
	}
	
	@RequestMapping(value = "changeStatus")
	@ResponseBody
	public String changeStatus(String rowId,String status) {
		Integer updateCount = 0;
		try {
			Integer id = Integer.valueOf(rowId);
			Map<String, Object> map=new HashMap<>();
			Integer finalStatus=0;
			map.put("id", id);
			if ("on".equals(status)) {
				finalStatus=1;
			}
			map.put("status", finalStatus);
			updateCount = systemService.updateStatus(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (updateCount>0) {
			return "success";
		}else {
			return "false";
		}
	}
	
	@RequestMapping(value = "phoneList")
	@ResponseBody
	public  List<Map<String, Object>> phoneList(String type,String rowId,String phoneNumber){
		List<Map<String, Object>>  list=new ArrayList<>();
		Integer deleteCount=0;
		Integer insertCount=0;
		try {
			if (StringUtils.isNotBlank(rowId)) {
				Integer id=Integer.parseInt(rowId);
				if ("delete".equals(type)) {
					deleteCount=systemService.deletePhoneNum(id);
				}
			}
			if("add".equals(type)) {
				insertCount=systemService.insertPhoneNum(phoneNumber);
			}
			list=systemService.queryPhoneList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
		
	}

	/**
	 * 跳转至上传图片的jsp页面
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	@RequiresPermissions("sys:log:view")
	@RequestMapping(value = { "addPicture", "" })
	public String addPicture(HttpServletRequest request, HttpServletResponse response) {
		String name = request.getParameter("name");
		return "modules/sys/addPicture";
	}

	/**
	 * 跳转至图片上传测试页面
	 */
	@RequiresPermissions("sys:log:view")
	@RequestMapping(value = { "toUploadPic", "" })
	public String toUploadPic(HttpServletRequest request, HttpServletResponse response) {
		String name = request.getParameter("name");
		return "modules/sys/uploadPic";
	}

	@RequestMapping(value = { "editQingJianTest", "" })
	public String editQingJianTest(HttpServletRequest request, HttpServletResponse response) {
		String name = request.getParameter("name");
		return "modules/sys/editQingJianTest";
	}

	@RequestMapping(value = { "uploadifive", "" })
	public String uploadifive(HttpServletRequest request, HttpServletResponse response) {
		return "modules/sys/uploadifive";
	}

	/**
	 * 上传图片至服务器
	 * 
	 * @param file
	 * @param request
	 * @param response
	 * @param session
	 * @return
	 */

	/*
	 * 采用spring提供的上传文件的方法
	 */

	@RequestMapping("springUpload")
	@ResponseBody
	public String springUpload(HttpServletRequest request) throws IllegalStateException, IOException {

		System.out.println("时间戳:" + ToolUtils.generateShortUuid());
		long startTime = System.currentTimeMillis();
		// 将当前上下文初始化给 CommonsMutipartResolver （多部分解析器）
		CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(
				request.getSession().getServletContext());
		String randomPicUrl = "";
		String path = "";
		// 检查form中是否有enctype="multipart/form-data"
		if (multipartResolver.isMultipart(request)) {
			// 将request变成多部分request
			MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
			// 获取multiRequest 中所有的文件名
			Iterator iter = multiRequest.getFileNames();

			while (iter.hasNext()) {
				// 一次遍历所有文件
				MultipartFile file = multiRequest.getFile(iter.next().toString());
				if (file != null) {
					System.out.println("图片原始名称：" + file.getOriginalFilename());
					path = "d:/addpic";
					// 上传
					randomPicUrl = ToolUtils.generateShortUuid() + ".jpg";
					picUrlList.add(randomPicUrl);
					file.transferTo(new File(path, randomPicUrl));
				}
			}
		}
		long endTime = System.currentTimeMillis();
		System.out.println("方法三的运行时间：" + String.valueOf(endTime - startTime) + "ms");
		return "{name:123,piccode:'codetest',minpath:'http://static.yidianzixun.com/beauty/imgs/i_000cfwku.jpg',status:200}";

	}

	@RequestMapping("generateHTML")
	@ResponseBody
	public ModelAndView generateHTML() throws IOException {
		ModelAndView modelAndView = new ModelAndView("modules/sys/binaryCode");
		modelAndView.addObject("binaryURL", "http://192.168.1.103:8020/qingjian/yyxb.html");
		String templateContent = "";
		FileInputStream fileinputstream = new FileInputStream("C:/original.html");// 读取模板文件
		int lenght = fileinputstream.available();
		byte bytes[] = new byte[lenght];
		fileinputstream.read(bytes);
		fileinputstream.close();
		templateContent = new String(bytes);
		if (picUrlList.size() != 0) {
			for (int i = 1; i <= picUrlList.size(); i++) {
				templateContent = templateContent.replace("pic-" + i,
						"http://static.yidianzixun.com/beauty/imgs/i_000cfwku.jpg");
			}

			String fileame = "hello.html";
			fileame = "C:/apache-tomcat-7.0.67/webapps/hl/" + fileame;// 生成的html文件保存路径。
			FileOutputStream fileoutputstream = new FileOutputStream(fileame);// 建立文件输出流
			byte tag_bytes[] = templateContent.getBytes();
			fileoutputstream.write(tag_bytes);
			fileoutputstream.close();
		}
		picUrlList.clear();
		return modelAndView;

	}

	@RequestMapping(value = "springUpload1", method = { RequestMethod.POST }, produces = "text/plain;charset=UTF-8")
	public @ResponseBody String upload(MultipartFile file) throws IOException {

		if (file == null) {
			System.out.println("空");
		}
		// 文件类型限制
		String[] allowedType = { "image/bmp", "image/gif", "image/jpeg", "image/png" };
		boolean allowed = Arrays.asList(allowedType).contains(file.getContentType());
		if (!allowed) {
			return "error|不支持的类型";
		}
		// 图片大小限制
		if (file.getSize() > 3 * 1024 * 1024) {
			return "error|图片大小不能超过3M";
		}
		// 包含原始文件名的字符串
		String fi = file.getOriginalFilename();
		System.out.println("文件名称：" + fi);
		// 提取文件拓展名
		String fileNameExtension = fi.substring(fi.indexOf("."), fi.length());
		// 生成云端的真实文件名
		String remoteFileName = UUID.randomUUID().toString() + fileNameExtension;

		// 返回图片的URL地址
		return "fffdfdfd";
	}

	@RequestMapping(value = "uploadPic")
	public String upload(@RequestParam(value = "file", required = false) MultipartFile file, HttpServletRequest request,
			ModelMap model) {
		System.out.println("开始");
		// String path =
		// request.getSession().getServletContext().getRealPath("upload");
		String path = "d:/";
		String fileName = UUID.randomUUID().toString() + file.getOriginalFilename();
		// String fileName = new Date().getTime()+".jpg";
		System.out.println("地址为：" + path);
		File targetFile = new File(path, fileName);
		if (!targetFile.exists()) {
			targetFile.mkdirs();
		}

		// 保存
		try {
			file.transferTo(targetFile);
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("fileUrl", request.getContextPath() + "/upload/" + fileName);

		return "result";
	}

	@RequestMapping("sendMsg")
	@ResponseBody
	public Map<String, Object> sendMsg(HttpServletRequest request) {
		
		
		
		StringBuffer sb=new StringBuffer();
		List<Map<String, Object>>  monitorList = systemService.queryPhoneList();
		for(int i=0;i<monitorList.size();i++) {
			sb.append(monitorList.get(i).get("phone_number"));
			if (i!=monitorList.size()-1) {
				sb.append(",");
			}
		}
		 System.out.println(sb);
	//	String phoneNumber = request.getParameter("phoneNumber");
		String content = request.getParameter("content");

		String phones = request.getParameter("phoneNumber");
		String url0 = "http://sms.253.com/msg/send";
		String param = "un=N2433411&pw=GkzJY235&phone=" + sb
		// + "&msg="+content+ "发布【云端号平台】&rd=1";
				+ "&msg=" + content + "&rd=1";
		String url1 = "";
		try {
			url1 = url0.replace(" ", "+");// 将空格转换成+号
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("发送的链接为：" + url1);
		String sendMesResponseStr = HttpUtils.sendPost(url1, param);

		return new HashMap<>();
	}

}
