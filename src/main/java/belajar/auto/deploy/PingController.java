package belajar.auto.deploy;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PingController {
    @GetMapping("/ping")
    public String ping(){
        return "ping";
    }
    @GetMapping("/pang")
    public String pang(){
        return "pong";
    }

}
