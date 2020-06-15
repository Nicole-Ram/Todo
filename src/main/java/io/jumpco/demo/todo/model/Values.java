package io.jumpco.demo.todo.model;

public enum Values {

        TASK("task"),
        BUG("bug"),
        FEATURE("feature"),
        ENHANCEMENT("enhancement"),
        MAINTANANCE("maintanance");

        private final String name;
        Values(String name){

            this.name = name;
        }

        public String getName(){

            return name;
        }

    }


