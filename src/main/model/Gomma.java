package main.model;

import java.util.Objects;

public class Gomma {
    private Integer idGomma;
    private String model;
    private String manufacturer;
    private double price;

    public Gomma(Integer idGomma,String model, String manufacturer, double price) {
        this.idGomma=idGomma;
        this.model = model;
        this.manufacturer = manufacturer;
        this.price = price;
    }

    public Integer getIdGomma() {
        return idGomma;
    }

    public void setIdGomma(Integer idGomma) {
        this.idGomma = idGomma;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Gomma gomma = (Gomma) o;
        return Double.compare(gomma.price, price) == 0 &&
                Objects.equals(idGomma, gomma.idGomma) &&
                Objects.equals(model, gomma.model) &&
                Objects.equals(manufacturer, gomma.manufacturer);
    }

    @Override
    public int hashCode() {

        return Objects.hash(idGomma, model, manufacturer, price);
    }

    @Override
    public String toString() {
        return "GOMMA: \nModel: " + model + "\nManufacturer: " +manufacturer + "\nPrice: "+price+"\n";

    }
}
