package com.klef.talentforge.model;

import java.sql.Blob;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "applicant_image")
public class ApplicantImage {

	@Id
    @Column(name="applicant_id")
    private int id;
	@Column(name="applicant_image")
	  private Blob image;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Blob getImage() {
		return image;
	}
	public void setImage(Blob image) {
		this.image = image;
	}
	@Override
	public String toString() {
		return "ApplicantImage [id=" + id + ", image=" + image + "]";
	}
	
}
