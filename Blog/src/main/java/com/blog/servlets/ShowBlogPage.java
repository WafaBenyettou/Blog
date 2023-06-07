package com.blog.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.blog.dao.PostDao;
import com.blog.entities.Post;
import com.blog.helper.ConnectionProvider;

@WebServlet("/ShowBlogPage")
public class ShowBlogPage extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int postId = Integer.parseInt(request.getParameter("post_id"));

        PostDao postDao = new PostDao(ConnectionProvider.getConnection());
        Post post = postDao.getPostByPostId(postId);

        if (post != null) {
            request.setAttribute("post", post);
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/show_blog_page.jsp");
        dispatcher.forward(request, response);
    }

  
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
