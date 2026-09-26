package com.narvii.headlines.category;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.api.ApiResponse;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class HeadLineChannelListResponse extends ApiResponse {

    @JsonDeserialize(contentAs = HeadLineChannel.class)
    public List<HeadLineChannel> activeChannelList;

    @JsonDeserialize(contentAs = HeadLineChannel.class)
    public List<HeadLineChannel> inactiveChannelList;
}
