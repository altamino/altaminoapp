package com.narvii.livelayer.ws;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.User;
import java.util.List;

/* loaded from: classes3.dex */
public class LiveLayerEventMessage {
    public int ndcId = -1;
    public String topic;
    public int userProfileCount;

    @JsonDeserialize(contentAs = User.class)
    public List<User> userProfileList;
}
