.class public Lcom/narvii/post/StoryEditSessionManager;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/post/StoryEditSessionManager;->hashMap:Ljava/util/HashMap;

    .line 11
    return-void
.end method

.method public static getInstance()Lcom/narvii/post/StoryEditSessionManager;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/post/StoryEditSessionManager;->instance:Lcom/narvii/post/StoryEditSessionManager;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/post/StoryEditSessionManager;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Lcom/narvii/post/StoryEditSessionManager;-><init>()V

    .line 10
    .line 11
    sput-object v0, Lcom/narvii/post/StoryEditSessionManager;->instance:Lcom/narvii/post/StoryEditSessionManager;

    .line 12
    .line 13
    :cond_0
    sget-object v0, Lcom/narvii/post/StoryEditSessionManager;->instance:Lcom/narvii/post/StoryEditSessionManager;

    .line 14
    return-object v0
.end method


# virtual methods
.method public getSession(Ljava/lang/String;)Lcom/narvii/logging/PageSession;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/post/StoryEditSessionManager;->hashMap:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/logging/PageSession;

    .line 9
    return-object p1
.end method

.method public getSessionId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/post/StoryEditSessionManager;->getSession(Ljava/lang/String;)Lcom/narvii/logging/PageSession;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    iget-object p1, p1, Lcom/narvii/logging/PageSession;->sessionId:Ljava/lang/String;

    .line 11
    :goto_0
    return-object p1
.end method

.method public onPageActiveChanged(Ljava/lang/String;Z)V
    .locals 7

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/post/StoryEditSessionManager;->hashMap:Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/logging/PageSession;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/logging/PageSession;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Lcom/narvii/logging/PageSession;-><init>()V

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/post/StoryEditSessionManager;->hashMap:Ljava/util/HashMap;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    :cond_1
    if-eqz p2, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    move-result-wide v1

    .line 30
    .line 31
    iget-wide v3, v0, Lcom/narvii/logging/PageSession;->lastSessionPagePauseTime:J

    .line 32
    sub-long/2addr v1, v3

    .line 33
    .line 34
    .line 35
    const-wide/32 v5, 0x124f80

    .line 36
    .line 37
    cmp-long p2, v1, v5

    .line 38
    .line 39
    if-lez p2, :cond_3

    .line 40
    .line 41
    const-wide/16 v0, 0x0

    .line 42
    .line 43
    cmp-long p2, v3, v0

    .line 44
    .line 45
    if-eqz p2, :cond_3

    .line 46
    .line 47
    new-instance p2, Lcom/narvii/logging/PageSession;

    .line 48
    .line 49
    .line 50
    invoke-direct {p2}, Lcom/narvii/logging/PageSession;-><init>()V

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/post/StoryEditSessionManager;->hashMap:Ljava/util/HashMap;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    goto :goto_0

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 60
    move-result-wide p1

    .line 61
    .line 62
    iput-wide p1, v0, Lcom/narvii/logging/PageSession;->lastSessionPagePauseTime:J

    .line 63
    :cond_3
    :goto_0
    return-void
.end method

.method public putSession(Ljava/lang/String;Lcom/narvii/logging/PageSession;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/post/StoryEditSessionManager;->hashMap:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-void
.end method

.method public removeSession(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/post/StoryEditSessionManager;->hashMap:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-void
.end method
