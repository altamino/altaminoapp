package com.narvii.item.contributor;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.api.ListResponse;
import java.util.List;

/* loaded from: classes.dex */
public class ContributorListResponse extends ListResponse<Contributor> {

    @JsonDeserialize(contentAs = Contributor.class)
    public List<Contributor> contributorList;

    @Override // com.narvii.model.api.ListResponse
    public List<Contributor> list() {
        return this.contributorList;
    }
}
