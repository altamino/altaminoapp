.class final Lio/agora/rtc/utils/ThreadUtils$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$barrier:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$callable:Ljava/util/concurrent/Callable;

.field final synthetic val$caughtException:Lio/agora/rtc/utils/ThreadUtils$1CaughtException;

.field final synthetic val$result:Lio/agora/rtc/utils/ThreadUtils$1Result;


# direct methods
.method constructor <init>(Lio/agora/rtc/utils/ThreadUtils$1Result;Ljava/util/concurrent/Callable;Lio/agora/rtc/utils/ThreadUtils$1CaughtException;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$barrier",
            "val$caughtException",
            "val$callable",
            "val$result"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/utils/ThreadUtils$4;->val$result:Lio/agora/rtc/utils/ThreadUtils$1Result;

    .line 3
    .line 4
    iput-object p2, p0, Lio/agora/rtc/utils/ThreadUtils$4;->val$callable:Ljava/util/concurrent/Callable;

    .line 5
    .line 6
    iput-object p3, p0, Lio/agora/rtc/utils/ThreadUtils$4;->val$caughtException:Lio/agora/rtc/utils/ThreadUtils$1CaughtException;

    .line 7
    .line 8
    iput-object p4, p0, Lio/agora/rtc/utils/ThreadUtils$4;->val$barrier:Ljava/util/concurrent/CountDownLatch;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/utils/ThreadUtils$4;->val$result:Lio/agora/rtc/utils/ThreadUtils$1Result;

    .line 3
    .line 4
    iget-object v1, p0, Lio/agora/rtc/utils/ThreadUtils$4;->val$callable:Ljava/util/concurrent/Callable;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    iput-object v1, v0, Lio/agora/rtc/utils/ThreadUtils$1Result;->value:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    .line 14
    iget-object v1, p0, Lio/agora/rtc/utils/ThreadUtils$4;->val$caughtException:Lio/agora/rtc/utils/ThreadUtils$1CaughtException;

    .line 15
    .line 16
    iput-object v0, v1, Lio/agora/rtc/utils/ThreadUtils$1CaughtException;->e:Ljava/lang/Exception;

    .line 17
    .line 18
    :goto_0
    iget-object v0, p0, Lio/agora/rtc/utils/ThreadUtils$4;->val$barrier:Ljava/util/concurrent/CountDownLatch;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 22
    return-void
.end method
