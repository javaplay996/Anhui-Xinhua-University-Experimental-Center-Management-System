package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;

/**
 * 课程表
 *
 * @author 
 * @email
 * @date 2021-02-26
 */
@TableName("kecheng")
public class KechengEntity<T> implements Serializable {
    private static final long serialVersionUID = 1L;


	public KechengEntity() {

	}

	public KechengEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


    /**
     * 主键
     */
    @TableId(type = IdType.AUTO)
    @TableField(value = "id")
    private Integer id;


    /**
     * 课程名称 Search
     */
    @TableField(value = "name")
    private String name;


    /**
     * 上课时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="HH:mm")
	@DateTimeFormat
    @TableField(value = "attend_time")
    private Date attendTime;


    /**
     * 下课时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="HH:mm")
	@DateTimeFormat
    @TableField(value = "finish_time")
    private Date finishTime;


    /**
     * 课程时间
     */
    @TableField(value = "course")
    private String course;


    /**
     * 负责老师 Search
     */
    @TableField(value = "ls_types")
    private Integer lsTypes;


    /**
     * 专业 Search
     */
    @TableField(value = "zy_types")
    private Integer zyTypes;


    /**
     * 具体内容
     */
    @TableField(value = "notice_content")
    private String noticeContent;


    /**
	 * 设置：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 获取：主键
	 */

    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 设置：课程名称 Search
	 */
    public String getName() {
        return name;
    }


    /**
	 * 获取：课程名称 Search
	 */

    public void setName(String name) {
        this.name = name;
    }
    /**
	 * 设置：上课时间
	 */
    public Date getAttendTime() {
        return attendTime;
    }


    /**
	 * 获取：上课时间
	 */

    public void setAttendTime(Date attendTime) {
        this.attendTime = attendTime;
    }
    /**
	 * 设置：下课时间
	 */
    public Date getFinishTime() {
        return finishTime;
    }


    /**
	 * 获取：下课时间
	 */

    public void setFinishTime(Date finishTime) {
        this.finishTime = finishTime;
    }
    /**
	 * 设置：课程时间
	 */
    public String getCourse() {
        return course;
    }


    /**
	 * 获取：课程时间
	 */

    public void setCourse(String course) {
        this.course = course;
    }
    /**
	 * 设置：负责老师 Search
	 */
    public Integer getLsTypes() {
        return lsTypes;
    }


    /**
	 * 获取：负责老师 Search
	 */

    public void setLsTypes(Integer lsTypes) {
        this.lsTypes = lsTypes;
    }
    /**
	 * 设置：专业 Search
	 */
    public Integer getZyTypes() {
        return zyTypes;
    }


    /**
	 * 获取：专业 Search
	 */

    public void setZyTypes(Integer zyTypes) {
        this.zyTypes = zyTypes;
    }
    /**
	 * 设置：具体内容
	 */
    public String getNoticeContent() {
        return noticeContent;
    }


    /**
	 * 获取：具体内容
	 */

    public void setNoticeContent(String noticeContent) {
        this.noticeContent = noticeContent;
    }

}