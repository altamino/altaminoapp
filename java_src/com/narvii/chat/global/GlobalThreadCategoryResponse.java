package com.narvii.chat.global;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.Community;
import com.narvii.model.api.ListResponse;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class GlobalThreadCategoryResponse extends ListResponse<GlobalThreadListWrapper> {

    @JsonDeserialize(contentAs = GlobalThreadListWrapper.class)
    public List<GlobalThreadListWrapper> categoryList;

    @JsonDeserialize(contentAs = Community.class, keyAs = String.class)
    public Map<String, Community> communityInfoMapping;

    @Override // com.narvii.model.api.ListResponse
    public List<GlobalThreadListWrapper> list() {
        ArrayList arrayList = new ArrayList();
        for (GlobalThreadListWrapper globalThreadListWrapper : this.categoryList) {
            if (globalThreadListWrapper != null && globalThreadListWrapper.getThreadList() != null && !globalThreadListWrapper.getThreadList().isEmpty()) {
                arrayList.add(globalThreadListWrapper);
            }
        }
        return arrayList;
    }
}
