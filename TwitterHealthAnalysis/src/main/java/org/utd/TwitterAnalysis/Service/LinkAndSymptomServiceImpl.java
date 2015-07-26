package org.utd.TwitterAnalysis.Service;

import java.util.Properties;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service
public class LinkAndSymptomServiceImpl implements LinkAndSymptom{

	@Resource(name="linksProperties")
	private Properties linksProperties;
	
	@Override
	public String getSpreadSheetLinkState(String diseaseNameState) {		
		return (String) linksProperties.get(diseaseNameState);
	}	
}
