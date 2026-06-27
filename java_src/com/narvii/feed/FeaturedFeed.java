package com.narvii.feed;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.narvii.model.Feed;
import com.narvii.util.JacksonUtils;
import java.util.Date;

/* loaded from: classes.dex */
public class FeaturedFeed {

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date featuredTime;
    public String ndcId;

    @JsonDeserialize(using = Feed.FeedDeserializer.class)
    public Feed refObject;
    public String refObjectId;
    public int refObjectType;
}
