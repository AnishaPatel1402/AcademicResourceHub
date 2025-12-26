package com.arh.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.File;
import java.io.IOException;

import com.arh.dao.PyqsDao;
import com.arh.dao.SubjectDao;
import com.arh.entity.Pyqs;
import com.arh.entity.Subject;

@WebServlet("/uploadPyqs")
@MultipartConfig
public class UploadPyqsServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Read form fields
        String fileName = request.getParameter("fileName");
        String yearStr = request.getParameter("year");
        String subjectIdStr = request.getParameter("subjectId");

        if (fileName == null || yearStr == null || subjectIdStr == null) {
            response.sendRedirect("upload_pyqs.jsp?error=true");
            return;
        }

        int year = Integer.parseInt(yearStr);
        int subjectId = Integer.parseInt(subjectIdStr);

        // File upload
        Part filePart = request.getPart("filePath");
        String originalFileName = filePart.getSubmittedFileName();

        String uploadPath = getServletContext().getRealPath("/uploads/pyqs");
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) uploadDir.mkdirs();

        String savedPath = uploadPath + File.separator + originalFileName;
        filePart.write(savedPath);

        // Fetch subject
        Subject subject = SubjectDao.getSubject(subjectId);

        // Create PYQ entity
        Pyqs pyq = new Pyqs();
        pyq.setFileName(fileName);
        pyq.setYear(year);
        pyq.setFilePath("uploads/pyqs/" + originalFileName);
        pyq.setSubject(subject);

        // Save to DB
        PyqsDao.addPyq(pyq);

        response.sendRedirect("upload_pyqs.jsp?success=true");
    }
}
