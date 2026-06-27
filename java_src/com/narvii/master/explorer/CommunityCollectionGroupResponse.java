package com.narvii.master.explorer;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.api.ListResponse;
import java.util.List;

/* loaded from: classes3.dex */
public class CommunityCollectionGroupResponse extends ListResponse<CommunityCollection> {

    @JsonDeserialize(contentAs = CommunityCollection.class)
    CommunityCollection communityCollection;

    @JsonDeserialize(contentAs = CommunityCollection.class)
    public List<CommunityCollection> communityCollectionSections;
    public String language;

    @Override // com.narvii.model.api.ListResponse
    public List<CommunityCollection> list() {
        return this.communityCollectionSections;
    }
}
