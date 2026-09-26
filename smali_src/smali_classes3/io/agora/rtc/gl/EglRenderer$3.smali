.class Lio/agora/rtc/gl/EglRenderer$3;
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


# direct methods
.method constructor <init>(Lio/agora/rtc/gl/EglRenderer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/gl/EglRenderer$3;->this$0:Lio/agora/rtc/gl/EglRenderer;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$3;->this$0:Lio/agora/rtc/gl/EglRenderer;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lio/agora/rtc/gl/EglRenderer;->access$700(Lio/agora/rtc/gl/EglRenderer;)Lio/agora/rtc/gl/RendererCommon$GlDrawer;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$3;->this$0:Lio/agora/rtc/gl/EglRenderer;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lio/agora/rtc/gl/EglRenderer;->access$700(Lio/agora/rtc/gl/EglRenderer;)Lio/agora/rtc/gl/RendererCommon$GlDrawer;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Lio/agora/rtc/gl/RendererCommon$GlDrawer;->release()V

    .line 19
    .line 20
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$3;->this$0:Lio/agora/rtc/gl/EglRenderer;

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Lio/agora/rtc/gl/EglRenderer;->access$702(Lio/agora/rtc/gl/EglRenderer;Lio/agora/rtc/gl/RendererCommon$GlDrawer;)Lio/agora/rtc/gl/RendererCommon$GlDrawer;

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$3;->this$0:Lio/agora/rtc/gl/EglRenderer;

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lio/agora/rtc/gl/EglRenderer;->access$800(Lio/agora/rtc/gl/EglRenderer;)Lio/agora/rtc/gl/VideoFrameDrawer;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lio/agora/rtc/gl/VideoFrameDrawer;->release()V

    .line 33
    .line 34
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$3;->this$0:Lio/agora/rtc/gl/EglRenderer;

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lio/agora/rtc/gl/EglRenderer;->access$000(Lio/agora/rtc/gl/EglRenderer;)Lio/agora/rtc/gl/EglBase;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$3;->this$0:Lio/agora/rtc/gl/EglRenderer;

    .line 43
    .line 44
    const-string v2, "eglBase detach and release."

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v2}, Lio/agora/rtc/gl/EglRenderer;->access$600(Lio/agora/rtc/gl/EglRenderer;Ljava/lang/String;)V

    .line 48
    .line 49
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$3;->this$0:Lio/agora/rtc/gl/EglRenderer;

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lio/agora/rtc/gl/EglRenderer;->access$000(Lio/agora/rtc/gl/EglRenderer;)Lio/agora/rtc/gl/EglBase;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lio/agora/rtc/gl/EglBase;->detachCurrent()V

    .line 57
    .line 58
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$3;->this$0:Lio/agora/rtc/gl/EglRenderer;

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Lio/agora/rtc/gl/EglRenderer;->access$000(Lio/agora/rtc/gl/EglRenderer;)Lio/agora/rtc/gl/EglBase;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lio/agora/rtc/gl/EglBase;->release()V

    .line 66
    .line 67
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$3;->this$0:Lio/agora/rtc/gl/EglRenderer;

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v1}, Lio/agora/rtc/gl/EglRenderer;->access$002(Lio/agora/rtc/gl/EglRenderer;Lio/agora/rtc/gl/EglBase;)Lio/agora/rtc/gl/EglBase;

    .line 71
    :cond_1
    return-void
.end method
