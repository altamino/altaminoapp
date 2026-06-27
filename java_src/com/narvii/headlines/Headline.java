package com.narvii.headlines;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.narvii.model.Feed;
import com.narvii.model.Media;
import com.narvii.model.User;
import com.narvii.util.JacksonUtils;
import java.util.Date;
import java.util.List;

/* loaded from: classes.dex */
public class Headline {
    public User author;
    public int commentsCount;
    public String content;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date createdTime;
    public int globalCommentsCount;
    public int globalVotedValue;
    public int globalVotesCount;

    @JsonDeserialize(contentAs = Media.class)
    public List<Media> mediaList;
    public int ndcId = -1;

    @JsonDeserialize(using = Feed.HeadlineFeedDeserializer.class)
    public Feed refObject;
    public String refObjectId;
    public int refObjectSubtype;
    public int refObjectType;
    public String strategyInfo;
    public String title;
    public int votedValue;
    public int votesCount;
}
