.class public Lcom/narvii/post/StoryEditSessionManager;
.super Ljava/lang/Object;
.source "StoryEditSessionManager.java"


# static fields
.field private static final REFRESH_SESSION_PAUSE_THRESHOLD:J = 0x124f80L

.field private static instance:Lcom/narvii/post/StoryEditSessionManager;


# instance fields
.field private hashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/logging/PageSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/post/StoryEditSessionManager;->hashMap:Ljava/util/HashMap;

    return-void
.end method

.method public static getInstance()Lcom/narvii/post/StoryEditSessionManager;
    .locals 1

    .line 20
    sget-object v0, Lcom/narvii/post/StoryEditSessionManager;->instance:Lcom/narvii/post/StoryEditSessionManager;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/narvii/post/StoryEditSessionManager;

    invoke-direct {v0}, Lcom/narvii/post/StoryEditSessionManager;-><init>()V

    sput-object v0, Lcom/narvii/post/StoryEditSessionManager;->instance:Lcom/narvii/post/StoryEditSessionManager;

    .line 23
    :cond_0
    sget-object v0, Lcom/narvii/post/StoryEditSessionManager;->instance:Lcom/narvii/post/StoryEditSessionManager;

    return-object v0
.end method


# virtual methods
.method public getSession(Ljava/lang/String;)Lcom/narvii/logging/PageSession;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/narvii/post/StoryEditSessionManager;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/logging/PageSession;

    return-object p1
.end method

.method public getSessionId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/narvii/post/StoryEditSessionManager;->getSession(Ljava/lang/String;)Lcom/narvii/logging/PageSession;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 36
    :cond_0
    iget-object p1, p1, Lcom/narvii/logging/PageSession;->sessionId:Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public onPageActiveChanged(Ljava/lang/String;Z)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/narvii/post/StoryEditSessionManager;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/logging/PageSession;

    if-nez v0, :cond_1

    .line 47
    new-instance v0, Lcom/narvii/logging/PageSession;

    invoke-direct {v0}, Lcom/narvii/logging/PageSession;-><init>()V

    .line 48
    iget-object v1, p0, Lcom/narvii/post/StoryEditSessionManager;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p2, :cond_2

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/narvii/logging/PageSession;->lastSessionPagePauseTime:J

    sub-long/2addr v1, v3

    const-wide/32 v5, 0x124f80

    cmp-long p2, v1, v5

    if-lez p2, :cond_3

    const-wide/16 v0, 0x0

    cmp-long p2, v3, v0

    if-eqz p2, :cond_3

    .line 52
    new-instance p2, Lcom/narvii/logging/PageSession;

    invoke-direct {p2}, Lcom/narvii/logging/PageSession;-><init>()V

    .line 53
    iget-object v0, p0, Lcom/narvii/post/StoryEditSessionManager;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 56
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/narvii/logging/PageSession;->lastSessionPagePauseTime:J

    :cond_3
    :goto_0
    return-void
.end method

.method public putSession(Ljava/lang/String;Lcom/narvii/logging/PageSession;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/narvii/post/StoryEditSessionManager;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeSession(Ljava/lang/String;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/narvii/post/StoryEditSessionManager;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
