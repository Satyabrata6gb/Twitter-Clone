package tech.codingclub.helix.controller;

import com.google.gson.Gson;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import tech.codingclub.helix.database.GenericDB;
import tech.codingclub.helix.entity.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;

/**
 * User: rishabh
 */
@Controller
@RequestMapping("/")
public class MainController extends BaseController {

    private static Logger logger = Logger.getLogger(MainController.class);

    @RequestMapping(method = RequestMethod.GET, value = "/newone")
    public String welcome(@RequestBody String data, HttpServletRequest request, HttpServletResponse response) {
        return "welcomelogin2";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/helloworld")
    public String getQuiz(ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) {
        return "hello";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/signup")
    public String signUp(ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) {
        return "signup";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/signup")
    public
    @ResponseBody
    SignupResponse signUpData(@RequestBody Member member, HttpServletRequest request, HttpServletResponse response) {
        boolean user_created = false;

        String message = "";

        if(GenericDB.getCount(tech.codingclub.helix.tables.Member.MEMBER,tech.codingclub.helix.tables.Member.MEMBER.EMAIL.eq(member.email)) > 0){
            message = "User already exist for this email id !!";
        }else{
            member.role = "cm";
            new GenericDB<Member>().addRow(tech.codingclub.helix.tables.Member.MEMBER,member);
            user_created = true;
            message = "User Created !!";
        }
        return new SignupResponse(message,user_created);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/registration")
    public String registration(ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) {
        return "registration";
    }


    @RequestMapping(method = RequestMethod.GET, value = "/api/time")
    public @ResponseBody String getTime(ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) {
        TimeApi timeApi = new TimeApi(new Date().toString(), new Date().getTime());

        return new Gson().toJson(timeApi);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/api/wiki")//http://localhost:8080/api/wiki?country=india
    public @ResponseBody String getWikiResult(ModelMap modelMap,@RequestParam("country") String country,  HttpServletResponse response, HttpServletRequest request) {
        WikipediaDownloader wikipediaDownloader = new WikipediaDownloader(country);
        WikiResult x = wikipediaDownloader.getResult();

        return new Gson().toJson(x);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/api/wiki/html")//http://localhost:8080/api/wiki/html?country=india
    public String getWikiResultHTML(ModelMap modelMap,@RequestParam("country") String country,  HttpServletResponse response, HttpServletRequest request) {
        WikipediaDownloader wikipediaDownloader = new WikipediaDownloader(country);
        WikiResult x = wikipediaDownloader.getResult();

        modelMap.addAttribute("IMAGE", x.getImg_url());
        modelMap.addAttribute("DESCRIPTION", x.getText_result());

        return "wikiapi";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/handle")
    public
    @ResponseBody
    String handleEncrypt(@RequestBody String data, HttpServletRequest request, HttpServletResponse response) {
        return "ok";
    }
}