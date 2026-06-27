package com.narvii.livelayer.category;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.Media;
import com.narvii.model.User;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes3.dex */
public class OnlineCategory {

    @JsonDeserialize(contentAs = Media.class)
    public List<Media> mediaList;
    public String topic;
    public int userProfileCount;

    @JsonDeserialize(contentAs = User.class)
    public LinkedList<User> userProfileList;
}
