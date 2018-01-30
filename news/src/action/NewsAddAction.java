package action;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import entity.News;
import service.NewsService;
import service.impl.NewsServiceImpl;

public class NewsAddAction implements Action {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) {
		 PrintWriter out=null;
		try {
			out = response.getWriter();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		 News news1=new News();//���õĵ���news�����������
		  NewsService newsService=new NewsServiceImpl();
		   	 try {
				request.setCharacterEncoding("utf-8");
			} catch (UnsupportedEncodingException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		   	 String uploadFileName="";//�ϴ��ļ���
		   	 String fieldName="";//�����ֶ�Ԫ�ص�name����
		   	 //������Ϣ�������Ƿ�multipartlei����
		   	 boolean isMultipart=ServletFileUpload.isMultipartContent(request);
		   	 //�ϴ��ļ��Ĵ洢··��
		   	 String uploadFilePath =request.getSession().getServletContext().getRealPath("images/");
		   	 if(isMultipart){
		   	 	FileItemFactory factory=new DiskFileItemFactory();
		   	 	ServletFileUpload upload=new ServletFileUpload(factory);
		   	 	try{
		   	 	//����form�����������ļ�
		   	 	List<FileItem> items=upload.parseRequest(request);
		   	 	Iterator<FileItem> iter=items.iterator();//���İ���֪���Ƿ���ȷ
		   	 	while(iter.hasNext()){
		   	 	FileItem item=(FileItem) iter.next();
		   	 	if(item.isFormField()){
			   	 	fieldName =item.getFieldName();
			   	 		if(item.getFieldName().equals("ntitle")){
							 news1.setnTitle(item.getString("UTF-8"));
						 }else if(item.getFieldName().equals("nauthor")){
							news1.setnAuthor( item.getString("UTF-8")) ;
						 }else if(item.getFieldName().equals("nsummary")){
							news1.setnSummary(item.getString("UTF-8"));
						 }else if(item.getFieldName().equals("ncontent")){
							news1.setnContent(item.getString("UTF-8"));
						 }else if(item.getFieldName().equals("ntid")){
							 news1.setnTID(Integer.parseInt(item.getString("UTF-8")));
						 }

		   	 	}else{//�ļ������ֶ�
			   	 	String fileName=item.getName();
			   	 	if(fileName!=null&&!fileName.equals("")){
		   	 			File fullFile=new File(item.getName());
		   	 			File saveFile=new File
		   	 			(uploadFilePath,fullFile.getName());
		   	 			item.write(saveFile);
		   	 			//uploadFileName=fullFile.getName();
		   	 			news1.setnPicpath(fullFile.getName());
		   	 	    }
		   	 	}
		   	 	}
		   	 	}catch(Exception e){
		   	 	e.printStackTrace();
		   	 	
		   	 }int i=newsService.addnews(news1);
		   	 if(i>0){
		   		out.println("<script type='text/javascript'>");
			    out.println("alert ('�������ųɹ�');");
			    out.println("location.href='admin.jsp';");
		   	    out.println("</script>");
		   	    out.flush();
		        out.close();
			}else{
				out.println("<script type='text/javascript'>");
			    out.println("alert ('����ʧ��');");
			    out.println("  location.href='admin.jsp';");
		   	    out.println("</script>");
		   	    out.flush();
		   	    out.close();
		   	 }
		   
	   	 }
	}

}