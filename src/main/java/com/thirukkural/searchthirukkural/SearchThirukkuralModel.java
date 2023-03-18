package com.thirukkural.searchthirukkural;

import com.thirukkural.dto.Kural;
import com.thirukkural.repository.Repository;

public class SearchThirukkuralModel implements SearchThirukkuralModelCallBack {
	private SearchThirukkuralModelControllerCallBack searchThirukkuralController;
	private Repository repositoryInstance = Repository.getInstance();
	public SearchThirukkuralModel(SearchThirukkuralModelControllerCallBack searchThirukkuralController) {
		this.searchThirukkuralController = searchThirukkuralController;
	}
	@Override
	public Kural getThirukkural(int kuralEnn) {
		Kural kural = repositoryInstance.getThirukural(kuralEnn);
		return kural;
	}

}
