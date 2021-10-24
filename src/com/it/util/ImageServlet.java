package com.it.util;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class ImageServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("image/jpeg");
		int w = 85;
		int h = 20;
		java.util.Random random = new java.util.Random();
		BufferedImage img = new BufferedImage(w, h, BufferedImage.TYPE_INT_RGB);
		Graphics pen = img.getGraphics();
		pen.setColor(Color.WHITE);
		pen.fillRect(0, 0, w, h);
		for (int i = 0; i < 50; i++) {
			pen.setColor(new Color(random.nextInt(255), random.nextInt(255),
					random.nextInt(255)));
			int x1 = random.nextInt(w);
			int y1 = random.nextInt(h);
			int x2 = random.nextInt(10) + x1;
			int y2 = random.nextInt(10) + y1;
			pen.drawLine(x1, y1, x2, y2);
		}
		StringBuffer sb = new StringBuffer();
		pen.setFont(new Font("黑体", Font.BOLD, 16));
		for (int i = 0; i < 4; i++) {
			pen.setColor(new Color(random.nextInt(100), random.nextInt(100),
					random.nextInt(100)));
			String num = String.valueOf(random.nextInt(10));
			pen.drawString(num, i * 20 + 10, 15);
			sb.append(num);
		}
		request.getSession().setAttribute("code", sb.toString());
		response.setHeader("Pragma", "no-store");
		response.setDateHeader("Expires", 0);
		response.setHeader("Pragma", "no-cache");
		ImageIO.write(img, "jpeg", response.getOutputStream());
	}
	
	
}
