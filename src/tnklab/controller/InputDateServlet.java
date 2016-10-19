package tnklab.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tnklab.logic.TwoPointPythagoreanTheorem;

/**
 * Servlet implementation class InputDateServlet
 */
@WebServlet("/InputDateServlet")
public class InputDateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public InputDateServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/InputDate.jsp").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String pointP_X = request.getParameter("pointP_X");
		String pointP_Y = request.getParameter("pointP_Y");
		String pointQ_X = request.getParameter("pointQ_X");
		String pointQ_Y = request.getParameter("pointQ_Y");

		if (pointP_X.isEmpty() || pointP_Y.isEmpty() || pointQ_X.isEmpty()|| pointQ_Y.isEmpty()) {
			String errorMessage = "入力が正しくありません";

			request.setAttribute("errorMessage", errorMessage);
			request.getRequestDispatcher("/InputDate.jsp").forward(request,response);
		} else {
			try {

				double P_X = Double.parseDouble(pointP_X);
				double P_Y = Double.parseDouble(pointP_Y);
				double Q_X = Double.parseDouble(pointQ_X);
				double Q_Y = Double.parseDouble(pointQ_Y);
				double ans = TwoPointPythagoreanTheorem.getAnalyzeDate(P_X, Q_X,P_Y, Q_Y);
				String anser = String.valueOf(ans);

				request.setAttribute("anser", anser);
				request.getRequestDispatcher("/ViewAnser.jsp").forward(request,response);
			}
			catch (NumberFormatException e) {
				String errorMessage = "入力が正しくありません";

				request.setAttribute("errorMessage", errorMessage);
				request.getRequestDispatcher("/InputDate.jsp").forward(request,response);
			}
		}
	}
}
