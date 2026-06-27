package com.narvii.topic.model;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.model.api.ListResponse;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class StorySectionListResponse extends ListResponse<StorySections> {

    @JsonDeserialize(contentAs = Community.class, keyAs = Integer.class)
    public Map<Integer, Community> communityInfoMapping;

    @JsonDeserialize(contentAs = StorySections.class)
    public List<StorySections> sectionList;

    @JsonDeserialize(contentAs = User.class, keyAs = Integer.class)
    public Map<Integer, User> userProfileMapping;

    @Override // com.narvii.model.api.ListResponse
    public List<StorySections> list() {
        return this.sectionList;
    }
}
