.class public Lcom/narvii/story/StoryApi;
.super Ljava/lang/Object;
.source "StoryApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/story/StoryApi$Type;
    }
.end annotation


# static fields
.field public static final COMMUNITY_PLAYER:Ljava/lang/String; = "community-player"

.field public static final DISCOVER_LIST:Ljava/lang/String; = "discover-list"

.field public static final DISCOVER_PLAYER:Ljava/lang/String; = "discover-player"

.field public static final GLOBAL_SEARCH_PLAYER:Ljava/lang/String; = "global-search-player"

.field public static final STORY_VERSION:Ljava/lang/String; = "2.0.0"

.field public static final TOPIC_LIST:Ljava/lang/String; = "topic-list"

.field public static final TOPIC_PLAYER:Ljava/lang/String; = "topic-player"

.field public static final TRENDING_PLAYER:Ljava/lang/String; = "trending-player"

.field public static final TYPE_DISCOVER:I = 0x0

.field public static final TYPE_INVALID:I = -0x1

.field public static final USER_PROFILE_PLAYER:Ljava/lang/String; = "user-player"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPlayerType(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "-player"

    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
