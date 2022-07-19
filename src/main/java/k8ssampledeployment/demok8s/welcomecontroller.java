package k8ssampledeployment.demok8s;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class welcomecontroller {

	@GetMapping("/")
	public String welcome() {
		return "Welcome to K8ss Deployment";
	}
}
