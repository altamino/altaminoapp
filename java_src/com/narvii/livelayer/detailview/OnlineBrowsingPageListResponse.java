package com.narvii.livelayer.detailview;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.api.ListResponse;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class OnlineBrowsingPageListResponse extends ListResponse<OnlineBrowsingPage> {

    @JsonDeserialize(contentAs = OnlineBrowsingPage.class)
    public List<OnlineBrowsingPage> liveLayerList;

    @Override // com.narvii.model.api.ListResponse
    public List<OnlineBrowsingPage> list() {
        ArrayList arrayList = new ArrayList();
        for (OnlineBrowsingPage onlineBrowsingPage : this.liveLayerList) {
            if (onlineBrowsingPage.userProfileCount == 0) {
                arrayList.add(onlineBrowsingPage);
            }
        }
        this.liveLayerList.removeAll(arrayList);
        return this.liveLayerList;
    }
}
