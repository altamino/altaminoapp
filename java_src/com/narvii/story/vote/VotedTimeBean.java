package com.narvii.story.vote;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.narvii.util.JacksonUtils;
import java.util.Date;

/* loaded from: classes.dex */
public class VotedTimeBean {

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date createdTime;
    public String uid;
    public int value;
}
