package com.narvii.logging;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.collections.SetsKt__SetsJVMKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LoggingWhiteList.kt */
/* loaded from: classes3.dex */
public final class LoggingWhiteList {
    public static final LoggingWhiteList INSTANCE = new LoggingWhiteList();
    private static final String PERSIONA = "persona";
    private static final String A = "getContentLanguage";
    private static final String B = "getAppearanceLanguage";
    private static final String C = "checkMembership";
    private static final String D = "checkDeviceStatus";
    private static final LinkedHashMap<String, String> API_REQUEST_WHITELIST = MapsKt__MapsKt.linkedMapOf(TuplesKt.to("/community/trending", "getTrendingCommunity"), TuplesKt.to("/community/search", "searchCommunity"), TuplesKt.to("/post/search", "searchPost"), TuplesKt.to("/chat/thread/explore/search", "searchChat"), TuplesKt.to("/user-profile/search", "searchUser"), TuplesKt.to("/api/v1/g/s/community/suggested", "recommendCommunity"), TuplesKt.to("/api/v1/g/s/community/joined", "getJoinedCommunity"), TuplesKt.to("/g/s/community-collection/view", "fetchCommunityCollectionView"), TuplesKt.to("/g/s/community-collection/.*/communities", "fetchCommunityCollectionCom"), TuplesKt.to("/s/community/join", "joinCommunity"), TuplesKt.to("topic/suggest-topics", "suggestTopic"), TuplesKt.to("/topic/0/feed/story", "recommendStory"), TuplesKt.to("/api/v1/g/s/topic/.*/metadata", "fetchTopicHeader"), TuplesKt.to("/topic/featured-topics", "fetchFeaturedTopic"), TuplesKt.to("topic/suggest-topics", "suggestTopic"), TuplesKt.to("topic/.*/feed/story/explore", "fetchTopicStatic"), TuplesKt.to("topic/.*/feed/story/latest", "fetchTopicLatest"), TuplesKt.to("topic/.*/feed/story/popular", "fetchTopicPopular"), TuplesKt.to("topic/.*/feed/story/recommendation", "fetchTopicRecommend"), TuplesKt.to("/x.*/s/feed/story", "fetchStoryInCommunity"), TuplesKt.to("/api/v1/g/s/persona/interest", PERSIONA), TuplesKt.to("client-config/content-language-settings", A), TuplesKt.to("/client-config/appearance-settings", B), TuplesKt.to("/membership$", C), TuplesKt.to("/device$", D), TuplesKt.to("/topic/.*/feed/story", "fetchTopicPopular"), TuplesKt.to("/feed/story", "fetchStory"), TuplesKt.to("/persona/bookmarked-topics", "fetchBookmarkTopics"));
    private static final Set<String> MONIZTOR_HASHSET = SetsKt__SetsKt.setOf((Object[]) new String[]{A, B, C, D});
    private static final Set<String> ADD_HTTP_METHOD_SET = SetsKt__SetsJVMKt.setOf(PERSIONA);
    private static HashMap<String, Pattern> patternHashMap = new HashMap<>();

    private LoggingWhiteList() {
    }

    public final String getApiRequestSemantic(String str, String str2) {
        if (str == null) {
            return null;
        }
        for (Map.Entry<String, String> entry : API_REQUEST_WHITELIST.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (getPattern(key).matcher(str).find()) {
                if (!ADD_HTTP_METHOD_SET.contains(value)) {
                    return value;
                }
                return value + "_" + str2;
            }
        }
        return null;
    }

    public final boolean isMonitorRequest(String semantic) {
        Intrinsics.checkParameterIsNotNull(semantic, "semantic");
        return MONIZTOR_HASHSET.contains(semantic);
    }

    private final Pattern getPattern(String str) {
        Pattern pattern = patternHashMap.get(str);
        if (pattern != null) {
            return pattern;
        }
        Pattern p = Pattern.compile(str);
        HashMap<String, Pattern> map = patternHashMap;
        Intrinsics.checkExpressionValueIsNotNull(p, "p");
        map.put(str, p);
        return p;
    }
}
