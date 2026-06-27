package com.narvii.suggest.interest;

import com.narvii.model.InterestData;
import com.narvii.model.api.ListResponse;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class SubInterestResponse extends ListResponse<InterestData> {
    public List<InterestData> interestDetails;

    @Override // com.narvii.model.api.ListResponse
    public List<InterestData> list() {
        ArrayList arrayList = new ArrayList();
        List<InterestData> list = this.interestDetails;
        if (list != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }
}
