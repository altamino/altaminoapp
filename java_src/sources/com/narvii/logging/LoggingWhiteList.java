package com.narvii.logging;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;
import kotlin.collections.s0;
import kotlin.collections.x0;
import kotlin.collections.y0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.a0;

/* JADX INFO: loaded from: classes11.dex */
public final class LoggingWhiteList {

    @NotNull
    public static final LoggingWhiteList INSTANCE = new LoggingWhiteList();

    @NotNull
    private static final String PERSIONA = "persona";

    @NotNull
    private static final String A = "getContentLanguage";

    @NotNull
    private static final String B = "getAppearanceLanguage";

    @NotNull
    private static final String C = "checkMembership";

    @NotNull
    private static final String D = "checkDeviceStatus";

    @NotNull
    private static final LinkedHashMap<String, String> API_REQUEST_WHITELIST = s0.k(a0.a("/community/trending", "getTrendingCommunity"), a0.a("/community/search", "searchCommunity"), a0.a("/post/search", "searchPost"), a0.a("/chat/thread/explore/search", "searchChat"), a0.a("/user-profile/search", "searchUser"), a0.a("/api/v1/g/s/community/suggested", "recommendCommunity"), a0.a("/api/v1/g/s/community/joined", "getJoinedCommunity"), a0.a("/g/s/community-collection/view", "fetchCommunityCollectionView"), a0.a("/g/s/community-collection/.*/communities", "fetchCommunityCollectionCom"), a0.a("/s/community/join", "joinCommunity"), a0.a("topic/suggest-topics", "suggestTopic"), a0.a("/topic/0/feed/story", "recommendStory"), a0.a("/api/v1/g/s/topic/.*/metadata", "fetchTopicHeader"), a0.a("/topic/featured-topics", "fetchFeaturedTopic"), a0.a("topic/suggest-topics", "suggestTopic"), a0.a("topic/.*/feed/story/explore", "fetchTopicStatic"), a0.a("topic/.*/feed/story/latest", "fetchTopicLatest"), a0.a("topic/.*/feed/story/popular", "fetchTopicPopular"), a0.a("topic/.*/feed/story/recommendation", "fetchTopicRecommend"), a0.a("/x.*/s/feed/story", "fetchStoryInCommunity"), a0.a("/api/v1/g/s/persona/interest", PERSIONA), a0.a("client-config/content-language-settings", A), a0.a("/client-config/appearance-settings", B), a0.a("/membership$", C), a0.a("/device$", D), a0.a("/topic/.*/feed/story", "fetchTopicPopular"), a0.a("/feed/story", "fetchStory"), a0.a("/persona/bookmarked-topics", "fetchBookmarkTopics"));

    @NotNull
    private static final Set<String> MONIZTOR_HASHSET = y0.i(A, B, C, D);

    @NotNull
    private static final Set<String> ADD_HTTP_METHOD_SET = x0.d(PERSIONA);

    @NotNull
    private static HashMap<String, Pattern> patternHashMap = new HashMap<>();

    @Nullable
    public final String getApiRequestSemantic(@Nullable String str, @Nullable String str2) {
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
                return value + '_' + str2;
            }
        }
        return null;
    }

    private final Pattern getPattern(String str) {
        Pattern patternCompile = patternHashMap.get(str);
        if (patternCompile == null) {
            patternCompile = Pattern.compile(str);
            patternHashMap.put(str, patternCompile);
        }
        t.g(patternCompile);
        return patternCompile;
    }

    public final boolean isMonitorRequest(@NotNull String semantic) {
        t.j(semantic, "semantic");
        return MONIZTOR_HASHSET.contains(semantic);
    }

    private LoggingWhiteList() {
    }
}
