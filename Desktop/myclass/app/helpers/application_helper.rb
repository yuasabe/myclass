#!/bin/env ruby
# encoding: utf-8

module ApplicationHelper
  def full_title(page_title)
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end


def twitterized_type(type)
  case type
    when :alert
      "alert-block"
    when :error
      "alert-error"
    when :notice
      "alert-success"
    when :success
      "alert-success"
    else
      type.to_s
  end
end

def grade(integer)
	case integer
		when 1
			"中学1年"
		when 2
			"中学2年"
		when 3
			"中学3年"
    when 4
      "高校1年"
    when 5
      "高校2年"
    when 6
      "高校3年"
    else
      "無所属"
	end
end
