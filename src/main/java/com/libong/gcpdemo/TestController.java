package com.libong.gcpdemo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {

    @GetMapping
    public String testGcp(){
        return "hello Gcp Cloud Run Deploy Complete";
    }
}
