package com.narvii.userblock;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.api.ApiResponse;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class BlockListResponse extends ApiResponse {

    @JsonDeserialize(contentAs = String.class)
    public ArrayList<String> blockedUidList;

    @JsonDeserialize(contentAs = String.class)
    public ArrayList<String> blockerUidList;
}
