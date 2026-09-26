.class Lio/agora/rtc/gl/EglRenderer$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/gl/EglRenderer;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/gl/EglRenderer;

.field final synthetic val$eglCleanupBarrier:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$renderLooper:Landroid/os/Looper;


# direct methods
.method constructor <init>(Lio/agora/rtc/gl/EglRenderer;Landroid/os/Looper;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$eglCleanupBarrier",
            "val$renderLooper"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/gl/EglRenderer$4;->this$0:Lio/agora/rtc/gl/EglRenderer;

    .line 3
    .line 4
    iput-object p2, p0, Lio/agora/rtc/gl/EglRenderer$4;->val$renderLooper:Landroid/os/Looper;

    .line 5
    .line 6
    iput-object p3, p0, Lio/agora/rtc/gl/EglRenderer$4;->val$eglCleanupBarrier:Ljava/util/concurrent/CountDownLatch;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$4;->this$0:Lio/agora/rtc/gl/EglRenderer;

    .line 3
    .line 4
    const-string v1, "Quitting render thread."

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lio/agora/rtc/gl/EglRenderer;->access$600(Lio/agora/rtc/gl/EglRenderer;Ljava/lang/String;)V

    .line 8
    .line 9
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$4;->val$renderLooper:Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 13
    .line 14
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$4;->val$eglCleanupBarrier:Ljava/util/concurrent/CountDownLatch;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 18
    return-void
.end method
