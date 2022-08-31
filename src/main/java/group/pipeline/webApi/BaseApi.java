package group.pipeline.webApi;


import java.util.List;
import lombok.RequiredArgsConstructor;
import lombok.SneakyThrows;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping(value = "/pipe", produces = MediaType.APPLICATION_JSON_VALUE)
@RestController("BaseApi")
@RequiredArgsConstructor
public class BaseApi {
    
    @SneakyThrows
    //@ApiOperation("hello world")
    @GetMapping()
    public String hello(){
        return "Hello world";
    }
    
    
    @SneakyThrows
    @GetMapping("/hi")
    public String hi(){
        return "hi hi hi";
    }
}
