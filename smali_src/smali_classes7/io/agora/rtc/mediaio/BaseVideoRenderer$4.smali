.class Lio/agora/rtc/mediaio/BaseVideoRenderer$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/mediaio/BaseVideoRenderer;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/mediaio/BaseVideoRenderer;

.field final synthetic val$completionLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lio/agora/rtc/mediaio/BaseVideoRenderer;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$completionLatch"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer$4;->this$0:Lio/agora/rtc/mediaio/BaseVideoRenderer;

    .line 3
    .line 4
    iput-object p2, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer$4;->val$completionLatch:Ljava/util/concurrent/CountDownLatch;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer$4;->val$completionLatch:Ljava/util/concurrent/CountDownLatch;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 6
    return-void
.end method
