.class public final Lcom/narvii/logging/LoggingWhiteList;
.super Ljava/lang/Object;
.source "LoggingWhiteList.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoggingWhiteList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoggingWhiteList.kt\ncom/narvii/logging/LoggingWhiteList\n*L\n1#1,86:1\n*E\n"
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "getContentLanguage"

.field private static final ADD_HTTP_METHOD_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final API_REQUEST_WHITELIST:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final B:Ljava/lang/String; = "getAppearanceLanguage"

.field private static final C:Ljava/lang/String; = "checkMembership"

.field private static final D:Ljava/lang/String; = "checkDeviceStatus"

.field public static final INSTANCE:Lcom/narvii/logging/LoggingWhiteList;

.field private static final MONIZTOR_HASHSET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PERSIONA:Ljava/lang/String; = "persona"

.field private static patternHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 9
    new-instance v0, Lcom/narvii/logging/LoggingWhiteList;

    invoke-direct {v0}, Lcom/narvii/logging/LoggingWhiteList;-><init>()V

    sput-object v0, Lcom/narvii/logging/LoggingWhiteList;->INSTANCE:Lcom/narvii/logging/LoggingWhiteList;

    const/16 v0, 0x1c

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "/community/trending"

    const-string v2, "getTrendingCommunity"

    .line 18
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "/community/search"

    const-string v3, "searchCommunity"

    .line 19
    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "/post/search"

    const-string v4, "searchPost"

    .line 20
    invoke-static {v1, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "/chat/thread/explore/search"

    const-string v5, "searchChat"

    .line 21
    invoke-static {v1, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "/user-profile/search"

    const-string v6, "searchUser"

    .line 22
    invoke-static {v1, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "/api/v1/g/s/community/suggested"

    const-string v7, "recommendCommunity"

    .line 23
    invoke-static {v1, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const-string v1, "/api/v1/g/s/community/joined"

    const-string v7, "getJoinedCommunity"

    .line 24
    invoke-static {v1, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v7, 0x6

    aput-object v1, v0, v7

    const-string v1, "/g/s/community-collection/view"

    const-string v7, "fetchCommunityCollectionView"

    .line 25
    invoke-static {v1, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v7, 0x7

    aput-object v1, v0, v7

    const-string v1, "/g/s/community-collection/.*/communities"

    const-string v7, "fetchCommunityCollectionCom"

    .line 26
    invoke-static {v1, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v7, 0x8

    aput-object v1, v0, v7

    const-string v1, "/s/community/join"

    const-string v7, "joinCommunity"

    .line 27
    invoke-static {v1, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v7, 0x9

    aput-object v1, v0, v7

    const-string v1, "suggestTopic"

    const-string v7, "topic/suggest-topics"

    .line 28
    invoke-static {v7, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v9, 0xa

    aput-object v8, v0, v9

    const-string v8, "/topic/0/feed/story"

    const-string v9, "recommendStory"

    .line 29
    invoke-static {v8, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v9, 0xb

    aput-object v8, v0, v9

    const-string v8, "/api/v1/g/s/topic/.*/metadata"

    const-string v9, "fetchTopicHeader"

    .line 30
    invoke-static {v8, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v9, 0xc

    aput-object v8, v0, v9

    const-string v8, "/topic/featured-topics"

    const-string v9, "fetchFeaturedTopic"

    .line 31
    invoke-static {v8, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v9, 0xd

    aput-object v8, v0, v9

    .line 32
    invoke-static {v7, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v7, 0xe

    aput-object v1, v0, v7

    const-string v1, "topic/.*/feed/story/explore"

    const-string v7, "fetchTopicStatic"

    .line 33
    invoke-static {v1, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v7, 0xf

    aput-object v1, v0, v7

    const-string v1, "topic/.*/feed/story/latest"

    const-string v7, "fetchTopicLatest"

    .line 34
    invoke-static {v1, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v7, 0x10

    aput-object v1, v0, v7

    const-string v1, "fetchTopicPopular"

    const-string v7, "topic/.*/feed/story/popular"

    .line 35
    invoke-static {v7, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/16 v8, 0x11

    aput-object v7, v0, v8

    const-string v7, "topic/.*/feed/story/recommendation"

    const-string v8, "fetchTopicRecommend"

    .line 36
    invoke-static {v7, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/16 v8, 0x12

    aput-object v7, v0, v8

    const-string v7, "/x.*/s/feed/story"

    const-string v8, "fetchStoryInCommunity"

    .line 37
    invoke-static {v7, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/16 v8, 0x13

    aput-object v7, v0, v8

    const-string v7, "persona"

    const-string v8, "/api/v1/g/s/persona/interest"

    .line 38
    invoke-static {v8, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v9, 0x14

    aput-object v8, v0, v9

    const-string v8, "getContentLanguage"

    const-string v9, "client-config/content-language-settings"

    .line 39
    invoke-static {v9, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v10, 0x15

    aput-object v9, v0, v10

    const-string v9, "getAppearanceLanguage"

    const-string v10, "/client-config/appearance-settings"

    .line 40
    invoke-static {v10, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    const/16 v11, 0x16

    aput-object v10, v0, v11

    const-string v10, "checkMembership"

    const-string v11, "/membership$"

    .line 41
    invoke-static {v11, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const/16 v12, 0x17

    aput-object v11, v0, v12

    const-string v11, "checkDeviceStatus"

    const-string v12, "/device$"

    .line 42
    invoke-static {v12, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    const/16 v13, 0x18

    aput-object v12, v0, v13

    const-string v12, "/topic/.*/feed/story"

    .line 43
    invoke-static {v12, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v12, 0x19

    aput-object v1, v0, v12

    const-string v1, "/feed/story"

    const-string v12, "fetchStory"

    .line 44
    invoke-static {v1, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v12, 0x1a

    aput-object v1, v0, v12

    const-string v1, "/persona/bookmarked-topics"

    const-string v12, "fetchBookmarkTopics"

    .line 45
    invoke-static {v1, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v12, 0x1b

    aput-object v1, v0, v12

    .line 17
    invoke-static {v0}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object v0

    sput-object v0, Lcom/narvii/logging/LoggingWhiteList;->API_REQUEST_WHITELIST:Ljava/util/LinkedHashMap;

    new-array v0, v6, [Ljava/lang/String;

    aput-object v8, v0, v2

    aput-object v9, v0, v3

    aput-object v10, v0, v4

    aput-object v11, v0, v5

    .line 48
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/narvii/logging/LoggingWhiteList;->MONIZTOR_HASHSET:Ljava/util/Set;

    .line 52
    invoke-static {v7}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/narvii/logging/LoggingWhiteList;->ADD_HTTP_METHOD_SET:Ljava/util/Set;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/narvii/logging/LoggingWhiteList;->patternHashMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 3

    .line 78
    sget-object v0, Lcom/narvii/logging/LoggingWhiteList;->patternHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    .line 80
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 81
    sget-object v1, Lcom/narvii/logging/LoggingWhiteList;->patternHashMap:Ljava/util/HashMap;

    const-string v2, "p"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final getApiRequestSemantic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 60
    :cond_0
    sget-object v1, Lcom/narvii/logging/LoggingWhiteList;->API_REQUEST_WHITELIST:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 61
    invoke-direct {p0, v3}, Lcom/narvii/logging/LoggingWhiteList;->getPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 62
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    sget-object p1, Lcom/narvii/logging/LoggingWhiteList;->ADD_HTTP_METHOD_SET:Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    return-object v2

    :cond_3
    return-object v0
.end method

.method public final isMonitorRequest(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "semantic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/narvii/logging/LoggingWhiteList;->MONIZTOR_HASHSET:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
