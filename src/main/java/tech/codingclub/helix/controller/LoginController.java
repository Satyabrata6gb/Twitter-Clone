package tech.codingclub.helix.controller;

import org.apache.log4j.Logger;
import org.jooq.Condition;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import tech.codingclub.helix.database.GenericDB;
import tech.codingclub.helix.entity.Member;
import tech.codingclub.helix.entity.loginResponce;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * User: rishabh
 */
@Controller
@RequestMapping("/login")
public class LoginController extends BaseController {

    private static Logger logger = Logger.getLogger(LoginController.class);

    @RequestMapping(method = RequestMethod.GET, value = "/admin")
    public String adminLogin(ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) {
        return "adminLogin";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/user")
    public String userLogin(@RequestBody String data, HttpServletRequest request, HttpServletResponse response) {
        return "userLogin";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/welcome")
    public String welcome(@RequestBody String data, HttpServletRequest request, HttpServletResponse response) {
        return "welcomelogin2";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/welcome")
    public
    @ResponseBody
    loginResponce signUpData(@RequestBody Member member, HttpServletRequest request, HttpServletResponse response) {
        Condition condition = tech.codingclub.helix.tables.Member.MEMBER.EMAIL.eq(member.email).and(tech.codingclub.helix.tables.Member.MEMBER.PASSWORD.eq(member.password));
        List<Member> X = (List<Member>) GenericDB.getRows(tech.codingclub.helix.tables.Member.MEMBER, Member.class, condition, 1);
        if(X != null && X.size() > 0){
            Member memberTemp = X.get(0);
            memberTemp.role = "cm";
            ControllerUtils.setUserSession(request,memberTemp);
            return new loginResponce(memberTemp.id, true, "Logged in Successfully");
        }else{
            return new loginResponce(null, false, "Either id or Password are incorrect!!!");
        }
    }
}