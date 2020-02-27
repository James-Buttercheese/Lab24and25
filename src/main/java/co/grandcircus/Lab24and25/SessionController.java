package co.grandcircus.Lab24and25;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class SessionController {
	
	
	@Autowired
	private HttpSession sesh;
	
	
	
//	@RequestMapping("/session")
//	public ModelAndView showSession(@SessionAttribute(name="preferences", required=false) CLASS userPref){
//		
//		ModelAndView mav = new ModelAndView("sessions");
//		
//		if(userPref != null) {
//			mav.addObject("theme", userPref.getTheme());
//		}
//		
//		CLASS pref = (CLASS) sesh.getAttribute("userPref");
//		
//		mav.addObject("sessionID", sesh.getId());
//		mav.addObject("name", pref.getName());
//		
//		return mav;
//	}
//	
//	@PostMapping("/session")
//	public ModelAndView setPreferences(CLASS pref) {
//		
//		sesh.setAttribute("preferences", pref);
//		
//		return new ModelAndView("redirect:/session");
//	}
	

}
