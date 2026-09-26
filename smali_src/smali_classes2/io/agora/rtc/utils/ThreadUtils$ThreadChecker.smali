.class public Lio/agora/rtc/utils/ThreadUtils$ThreadChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/utils/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadChecker"
.end annotation


# instance fields
.field private thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iput-object v0, p0, Lio/agora/rtc/utils/ThreadUtils$ThreadChecker;->thread:Ljava/lang/Thread;

    .line 10
    return-void
.end method


# virtual methods
.method public checkIsOnValidThread()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/utils/ThreadUtils$ThreadChecker;->thread:Ljava/lang/Thread;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iput-object v0, p0, Lio/agora/rtc/utils/ThreadUtils$ThreadChecker;->thread:Ljava/lang/Thread;

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v1, p0, Lio/agora/rtc/utils/ThreadUtils$ThreadChecker;->thread:Ljava/lang/Thread;

    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    return-void

    .line 20
    .line 21
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v1, "Wrong thread"

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    throw v0
.end method

.method public detachThread()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lio/agora/rtc/utils/ThreadUtils$ThreadChecker;->thread:Ljava/lang/Thread;

    return-void
.end method
