.class public Landroidx/core/provider/SelfDestructiveThread;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MSG_DESTRUCTION:I = 0x0

.field private static final MSG_INVOKE_RUNNABLE:I = 0x1


# instance fields
.field private mCallback:Landroid/os/Handler$Callback;

.field private final mDestructAfterMillisec:I

.field private mGeneration:I
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPriority:I

.field private mThread:Landroid/os/HandlerThread;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field private final mThreadName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/core/provider/SelfDestructiveThread;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    new-instance v0, Landroidx/core/provider/SelfDestructiveThread$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Landroidx/core/provider/SelfDestructiveThread$1;-><init>(Landroidx/core/provider/SelfDestructiveThread;)V

    .line 16
    .line 17
    iput-object v0, p0, Landroidx/core/provider/SelfDestructiveThread;->mCallback:Landroid/os/Handler$Callback;

    .line 18
    .line 19
    iput-object p1, p0, Landroidx/core/provider/SelfDestructiveThread;->mThreadName:Ljava/lang/String;

    .line 20
    .line 21
    iput p2, p0, Landroidx/core/provider/SelfDestructiveThread;->mPriority:I

    .line 22
    .line 23
    iput p3, p0, Landroidx/core/provider/SelfDestructiveThread;->mDestructAfterMillisec:I

    .line 24
    const/4 p1, 0x0

    .line 25
    .line 26
    iput p1, p0, Landroidx/core/provider/SelfDestructiveThread;->mGeneration:I

    .line 27
    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/provider/SelfDestructiveThread;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mHandler:Landroid/os/Handler;

    .line 6
    const/4 v2, 0x1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget-object v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mThread:Landroid/os/HandlerThread;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 22
    const/4 v1, 0x0

    .line 23
    .line 24
    iput-object v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mThread:Landroid/os/HandlerThread;

    .line 25
    .line 26
    iput-object v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mHandler:Landroid/os/Handler;

    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw v1
.end method

.method b(Ljava/lang/Runnable;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/core/provider/SelfDestructiveThread;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter p1

    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Landroidx/core/provider/SelfDestructiveThread;->mHandler:Landroid/os/Handler;

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/core/provider/SelfDestructiveThread;->mHandler:Landroid/os/Handler;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    iget v2, p0, Landroidx/core/provider/SelfDestructiveThread;->mDestructAfterMillisec:I

    .line 21
    int-to-long v2, v2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 25
    monitor-exit p1

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw v0
.end method
