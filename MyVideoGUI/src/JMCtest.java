

import java.io.File;
import java.net.URL;

import processing.core.*;
import controlP5.*;
import jmcvideo.*;
//import processing.opengl.*


public class JMCtest extends PApplet {
	JMCMovie myMovie;
	URL url;
	
	//	ControlP5 controlP5;
//	Slider2D s;

	public void setup() 
	{
	  size(320, 240, P2D);
	  frame.setResizable(true);
	  background(0);

	  // Load and play the video in a loop
	  myMovie = movieFromDataPath("station.mov"); 
	  //myMovie = movieFromFile("/Users/angus/Documents/Processing/VideoLoop/data/station.mov");
	  //myMovie = movieFromURL("http://www.mat.ucsb.edu/~a.forbes/sheep1.mov");
	  //myMovie = movieFromJar("jar:file:/Users/angus/Documents/Processing/VideoLoop/data/VideoLoop.jar!/data/station.mov");

	  //myMovie.play();
	  myMovie.loop();
	  //myMovie.bounce();
	}

	JMCMovie movieFromDataPath(String filename)
	{
	   return new JMCMovie(this, filename, RGB);
	}

	JMCMovie movieFromFile(String filename)
	{
	  return new JMCMovie(this, new File(filename), RGB);
	}

	JMCMovie movieFromURL(String urlname)
	{
	  URL url = null;
	  
	  try
	  {
	    url = new URL(urlname);
	  }
	  catch(Exception e)
	  {
	    println("URL error...");
	  } 
	  
	  return new JMCMovie(this, url, RGB);
	}

	JMCMovie movieFromJar(String urlname)
	{
	  //this is not working... hopefully fix in next version of JMC
	  return movieFromURL(urlname);
	}

	public void draw() 
	{
	  tint(255, 20);
	  image(myMovie, mouseX-myMovie.width/4, mouseY-myMovie.height/4, myMovie.width/2, myMovie.height/2);
	}

	public static void main(String args[]) {
		    PApplet.main(new String[] {"JMCtest" });
	}
}

	
	
	

