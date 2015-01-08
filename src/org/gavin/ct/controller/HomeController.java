package org.gavin.ct.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.gavin.ct.model.IndexCarousel;
import org.gavin.ct.model.IndexColumn;

import com.jfinal.core.Controller;

public class HomeController extends Controller{

	private static final Logger log = Logger.getLogger(HomeController.class);
	
	public void index(){
		String carouselSql = "select * from sh_index_carousel where usable=1 order by addTime desc";
		String columnSql = "select * from sh_index_column where 1=1 order by addTime desc limit 0,4";
		List<IndexCarousel> carouselList = IndexCarousel.dao.find(carouselSql);
		List<IndexColumn> columnList = IndexColumn.dao.find(columnSql);
		setAttr("carouselList", carouselList);
		setAttr("columnList", columnList);
		log.info("HomeController......index");
		render("/common/index.html");
	}
	
}
