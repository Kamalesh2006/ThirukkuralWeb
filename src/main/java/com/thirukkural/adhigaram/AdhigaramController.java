package com.thirukkural.adhigaram;

import com.thirukkural.dto.Adhigaram;
import com.thirukkural.dto.Kural;

public class AdhigaramController implements AdhigaramModelControllerCallBack {
	private static AdhigaramController adhigaramController;
	private AdhigaramModelCallBack adhigaramModel;
	private AdhigaramController() {
		adhigaramModel = new AdhigaramModel(this);
	}
	public static AdhigaramController getInstance() {
		if(adhigaramController==null) {
			adhigaramController = new AdhigaramController();
		}
		return adhigaramController;
	}
	public Adhigaram adhigaramSearch(int adhigaramEnn) {
		Adhigaram adhigaram  = adhigaramModel.getAdhigaram(adhigaramEnn-1);
		return adhigaram;
	}


}
