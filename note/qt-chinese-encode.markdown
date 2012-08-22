---
layout: post
title: "hello world"
date: 2012-07-03 09:01
comments: true
categories: 
---

#qt中文编码	

	#include<QTextCodec>
	QTextCodec::setCodecForCStrings(QTextCodec::codecForName("utf8"));
	QTextCodec::setCodecForLocale(QTextCodec::codecForName("utf8"));
	QTextCodec::setCodecForTr(QTextCodec::codecForName("utf8"));