package com.narvii.suggest.interest;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.narvii.model.InterestData;
import com.narvii.model.api.ListResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class MainInterestResponse extends ListResponse<InterestData> {
    public List<InterestData> pickedInterestList;
    public List<InterestSection> sections;

    @JsonIgnore
    private LinkedHashMap<String, InterestData> selectedInterestCache;

    @Override // com.narvii.model.api.ListResponse
    public List<InterestData> list() {
        List<InterestData> list;
        ArrayList arrayList = new ArrayList();
        List<InterestSection> list2 = this.sections;
        if (list2 != null) {
            for (InterestSection interestSection : list2) {
                if (interestSection != null && (list = interestSection.interestList) != null) {
                    arrayList.addAll(list);
                }
            }
        }
        return arrayList;
    }

    public Map<String, InterestData> getSelectedInterest() {
        String str;
        InterestData interestData;
        List<InterestData> list;
        String str2;
        if (this.selectedInterestCache == null && this.pickedInterestList != null) {
            HashMap map = new HashMap();
            for (InterestSection interestSection : this.sections) {
                if (interestSection != null && (list = interestSection.interestList) != null) {
                    for (InterestData interestData2 : list) {
                        if (interestData2 != null && (str2 = interestData2.interestId) != null) {
                            map.put(str2, interestData2);
                        }
                    }
                }
            }
            this.selectedInterestCache = new LinkedHashMap<>();
            for (InterestData interestData3 : this.pickedInterestList) {
                if (interestData3 != null && (str = interestData3.interestId) != null && (interestData = (InterestData) map.get(str)) != null) {
                    this.selectedInterestCache.put(interestData.interestId, interestData);
                }
            }
        }
        return this.selectedInterestCache;
    }
}
