package com.arh.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;

import com.arh.dao.NotesDao;
import com.arh.dao.SubjectDao;
import com.arh.entity.Notes;
import com.arh.entity.Subject;

@WebServlet("/uploadNotes")
@MultipartConfig
public class UploadNotesServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String fileName = request.getParameter("fileName");
        String subjectIdStr = request.getParameter("subjectId");

        // ✅ Correct validation
        if (fileName == null || subjectIdStr == null || subjectIdStr.equals("0")) {
            response.sendRedirect("upload_notes.jsp?error=invalid");
            return;
        }

        int subjectId = Integer.parseInt(subjectIdStr);

        Part filePart = request.getPart("filePath");
        if (filePart == null || filePart.getSize() == 0) {
            response.sendRedirect("upload_notes.jsp?error=nofile");
            return;
        }

        String originalFileName = filePart.getSubmittedFileName();

        // Upload folder
        String uploadPath = getServletContext().getRealPath("/uploads");
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) uploadDir.mkdir();

        String savedPath = uploadPath + File.separator + originalFileName;
        filePart.write(savedPath);

        Subject subject = SubjectDao.getSubject(subjectId);
        if (subject == null) {
            response.sendRedirect("upload_notes.jsp?error=subject");
            return;
        }

        Notes notes = new Notes();
        notes.setFileName(fileName);
        notes.setFilePath("uploads/" + originalFileName);
        notes.setSubject(subject);

        NotesDao.addNotes(notes);
        System.out.println("File saved at: " + uploadPath + fileName);

        response.sendRedirect("upload_notes.jsp?success=true");
    }
}
