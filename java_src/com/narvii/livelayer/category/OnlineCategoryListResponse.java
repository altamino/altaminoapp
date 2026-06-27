package com.narvii.livelayer.category;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.api.ApiResponse;
import java.util.List;

/* loaded from: classes3.dex */
public class OnlineCategoryListResponse extends ApiResponse {

    @JsonDeserialize(contentAs = OnlineCategory.class)
    public List<OnlineCategory> liveLayerList;
}
