
package com.rimfire.controllers;

import io.micronaut.http.annotation.Get;
import io.micronaut.http.annotation.Controller;





@Controller("/hello") 
public class HelloController {

    @Get("/") 
    public String index() {
        return "Hello Dude!"; 
    }


}
