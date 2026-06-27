package com.narvii.bookmark;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.narvii.model.Feed;
import com.narvii.util.JacksonUtils;
import java.util.Date;

/* loaded from: classes.dex */
public class BookMark {
    public static final int STATUS_REMOVED = 304;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date bookmarkedTime;

    @JsonDeserialize(using = Feed.FeedDeserializer.class)
    public Feed refObject;
    public String refObjectId;
    public int refObjectType;
}
