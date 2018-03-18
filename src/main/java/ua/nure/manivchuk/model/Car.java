package ua.nure.manivchuk.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Arrays;

/**
 * Created by Lenovo on 3/17/2018.
 */
@Entity
@Table(name = "car")
public class Car implements Serializable{
    public static final int AVAILABLE = 1;
    public static final int UNAVAILABLE = 0;

    @Id
    @GeneratedValue
    private Long id;
    private String carclass;
    private int issueyear;
    private String issuecountry;
    private String mark;
    private int capacity;
    private String techcondition;
    private String viewcondition;
    private byte[] image;

    public Car() {}

    public Car(String carclass, int issueyear, String issuecountry, String mark, int capacity, String techcondition, String viewcondition, byte[] image) {
        this.carclass = carclass;
        this.issueyear = issueyear;
        this.issuecountry = issuecountry;
        this.mark = mark;
        this.capacity = capacity;
        this.techcondition = techcondition;
        this.viewcondition = viewcondition;
        this.image = image;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCarclass() {
        return carclass;
    }

    public void setCarclass(String carclass) {
        this.carclass = carclass;
    }

    public int getIssueyear() {
        return issueyear;
    }

    public void setIssueyear(int issueyear) {
        this.issueyear = issueyear;
    }

    public String getIssuecountry() {
        return issuecountry;
    }

    public void setIssuecountry(String issuecountry) {
        this.issuecountry = issuecountry;
    }

    public String getMark() {
        return mark;
    }

    public void setMark(String mark) {
        this.mark = mark;
    }

    public int getCapacity() {
        return capacity;
    }

    public void setCapacity(int capacity) {
        this.capacity = capacity;
    }

    public String getTechcondition() {
        return techcondition;
    }

    public void setTechcondition(String techcondition) {
        this.techcondition = techcondition;
    }

    public String getViewcondition() {
        return viewcondition;
    }

    public void setViewcondition(String viewcondition) {
        this.viewcondition = viewcondition;
    }
    public byte[] getImage() {
        return image;
    }

    public void setImage(byte[] image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "Car{" +
                "id=" + id +
                ", carclass='" + carclass + '\'' +
                ", issueyear=" + issueyear +
                ", issuecountry='" + issuecountry + '\'' +
                ", mark='" + mark + '\'' +
                ", capacity=" + capacity +
                ", techcondition='" + techcondition + '\'' +
                ", viewcondition='" + viewcondition + '\'' +
                ", image=" + Arrays.toString(image) +
                '}';
    }
}

