.class Lio/agora/rtc/gl/EglRenderer$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/gl/EglRenderer;->releaseEglSurface(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/gl/EglRenderer;

.field final synthetic val$completionCallback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lio/agora/rtc/gl/EglRenderer;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$completionCallback"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/gl/EglRenderer$8;->this$0:Lio/agora/rtc/gl/EglRenderer;

    .line 3
    .line 4
    iput-object p2, p0, Lio/agora/rtc/gl/EglRenderer$8;->val$completionCallback:Ljava/lang/Runnable;

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
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$8;->this$0:Lio/agora/rtc/gl/EglRenderer;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lio/agora/rtc/gl/EglRenderer;->access$000(Lio/agora/rtc/gl/EglRenderer;)Lio/agora/rtc/gl/EglBase;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$8;->this$0:Lio/agora/rtc/gl/EglRenderer;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lio/agora/rtc/gl/EglRenderer;->access$000(Lio/agora/rtc/gl/EglRenderer;)Lio/agora/rtc/gl/EglBase;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lio/agora/rtc/gl/EglBase;->detachCurrent()V

    .line 18
    .line 19
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$8;->this$0:Lio/agora/rtc/gl/EglRenderer;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lio/agora/rtc/gl/EglRenderer;->access$000(Lio/agora/rtc/gl/EglRenderer;)Lio/agora/rtc/gl/EglBase;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lio/agora/rtc/gl/EglBase;->releaseSurface()V

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$8;->val$completionCallback:Ljava/lang/Runnable;

    .line 29
    .line 30
    .line 31
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 32
    return-void
.end method
