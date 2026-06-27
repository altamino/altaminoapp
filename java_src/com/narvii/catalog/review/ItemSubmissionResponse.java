package com.narvii.catalog.review;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.api.ListResponse;
import java.util.List;

/* loaded from: classes2.dex */
public class ItemSubmissionResponse extends ListResponse<ItemSubmission> {

    @JsonDeserialize(contentAs = ItemSubmission.class)
    public List<ItemSubmission> knowledgeBaseRequestList;

    @Override // com.narvii.model.api.ListResponse
    public List<ItemSubmission> list() {
        return this.knowledgeBaseRequestList;
    }
}
