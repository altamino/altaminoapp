package com.narvii.story;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes3.dex */
public class StoryApi {
    public static final String COMMUNITY_PLAYER = "community-player";
    public static final String DISCOVER_LIST = "discover-list";
    public static final String DISCOVER_PLAYER = "discover-player";
    public static final String GLOBAL_SEARCH_PLAYER = "global-search-player";
    public static final String STORY_VERSION = "2.0.0";
    public static final String TOPIC_LIST = "topic-list";
    public static final String TOPIC_PLAYER = "topic-player";
    public static final String TRENDING_PLAYER = "trending-player";
    public static final int TYPE_DISCOVER = 0;
    public static final int TYPE_INVALID = -1;
    public static final String USER_PROFILE_PLAYER = "user-player";

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface Type {
    }

    public static boolean isPlayerType(String str) {
        return str != null && str.endsWith("-player");
    }
}
