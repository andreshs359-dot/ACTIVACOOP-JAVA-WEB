package com.activacoop;

import java.time.LocalDate;

public class Evento {

    private int id;
    private String nombre;
    private LocalDate fecha;
    private String lugar;
    private int cupos;

    public Evento(int id, String nombre, LocalDate fecha,
                  String lugar, int cupos) {
        this.id = id;
        this.nombre = nombre;
        this.fecha = fecha;
        this.lugar = lugar;
        this.cupos = cupos;
    }

    public int getId() {
        return id;
    }

    public String getNombre() {
        return nombre;
    }

    public LocalDate getFecha() {
        return fecha;
    }

    public String getLugar() {
        return lugar;
    }

    public int getCupos() {
        return cupos;
    }
}
