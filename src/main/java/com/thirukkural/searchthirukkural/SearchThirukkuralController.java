package com.thirukkural.searchthirukkural;

import java.util.Random;

import com.thirukkural.dto.Kural;

public class SearchThirukkuralController implements SearchThirukkuralModelControllerCallBack {
	private static SearchThirukkuralController searchThirukkuralController;
	private SearchThirukkuralModelCallBack searchThirukkuralModel;

	public SearchThirukkuralController() {
		searchThirukkuralModel = new SearchThirukkuralModel(this);
	}

	public static SearchThirukkuralController getInstance() {
		if (searchThirukkuralController == null) {
			searchThirukkuralController = new SearchThirukkuralController();
		}
		return searchThirukkuralController;
	}

	// jsp connection
	public Kural getThirukkural(String kuralno) {
		int kuralenn = Integer.parseInt(kuralno);
		return searchThirukkuralModel.getThirukkural(kuralenn - 1);
	}

	public int generateRandom() {
		Random r = new Random();
		int rand = r.nextInt(1330);
		// choosing random kural
		// need to store the random generated number and check it
		// because same kural need not be shown for every press
		return rand;
	}

	public String printName() {
		return "Abishek";
	}
}
