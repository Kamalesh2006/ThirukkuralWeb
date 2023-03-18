package com.thirukkural.adhigaram;

import com.thirukkural.dto.Adhigaram;
import com.thirukkural.dto.Kural;
import com.thirukkural.repository.Repository;

public class AdhigaramModel implements AdhigaramModelCallBack {
	private AdhigaramModelControllerCallBack adhigaramController;
	private Repository repositoryInstance = Repository.getInstance();
	public AdhigaramModel(AdhigaramController adhigaramController) {
		this.adhigaramController = adhigaramController;
	}

	@Override
	public Adhigaram getAdhigaram(int adhigaramEnn) {
		Adhigaram adhigaram = repositoryInstance.getAdhigaram(adhigaramEnn);
		return adhigaram;
	}
}
