package com.narvii.user.title;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserTitle;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class CommunityUseTitleListResponse extends ApiResponse {

    @JsonDeserialize(contentAs = UserTitle.class)
    public ArrayList<UserTitle> titles;
}
