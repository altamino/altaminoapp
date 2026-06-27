package com.narvii.master.search.model;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.model.api.ListResponse;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class AllSearchResultResponse extends ListResponse {

    @JsonDeserialize(contentAs = Community.class, keyAs = Integer.class)
    public Map<Integer, Community> communityInfoMapping;

    @JsonDeserialize(contentAs = GlobalSearchResultSection.class)
    public List<GlobalSearchResultSection> sectionList;

    @JsonDeserialize(contentAs = User.class, keyAs = Integer.class)
    public Map<Integer, User> userProfileMapping;

    @Override // com.narvii.model.api.ListResponse
    public List list() {
        return this.sectionList;
    }
}
