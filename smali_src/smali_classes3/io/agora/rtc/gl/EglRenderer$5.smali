.class Lio/agora/rtc/gl/EglRenderer$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/gl/EglRenderer;->addFrameListener(Lio/agora/rtc/gl/EglRenderer$FrameListener;FLio/agora/rtc/gl/RendererCommon$GlDrawer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/gl/EglRenderer;

.field final synthetic val$applyFpsReduction:Z

.field final synthetic val$drawerParam:Lio/agora/rtc/gl/RendererCommon$GlDrawer;

.field final synthetic val$listener:Lio/agora/rtc/gl/EglRenderer$FrameListener;

.field final synthetic val$scale:F


# direct methods
.method constructor <init>(Lio/agora/rtc/gl/EglRenderer;Lio/agora/rtc/gl/RendererCommon$GlDrawer;Lio/agora/rtc/gl/EglRenderer$FrameListener;FZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$applyFpsReduction",
            "val$scale",
            "val$listener",
            "val$drawerParam"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/gl/EglRenderer$5;->this$0:Lio/agora/rtc/gl/EglRenderer;

    .line 3
    .line 4
    iput-object p2, p0, Lio/agora/rtc/gl/EglRenderer$5;->val$drawerParam:Lio/agora/rtc/gl/RendererCommon$GlDrawer;

    .line 5
    .line 6
    iput-object p3, p0, Lio/agora/rtc/gl/EglRenderer$5;->val$listener:Lio/agora/rtc/gl/EglRenderer$FrameListener;

    .line 7
    .line 8
    iput p4, p0, Lio/agora/rtc/gl/EglRenderer$5;->val$scale:F

    .line 9
    .line 10
    iput-boolean p5, p0, Lio/agora/rtc/gl/EglRenderer$5;->val$applyFpsReduction:Z

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$5;->val$drawerParam:Lio/agora/rtc/gl/RendererCommon$GlDrawer;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$5;->this$0:Lio/agora/rtc/gl/EglRenderer;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lio/agora/rtc/gl/EglRenderer;->access$700(Lio/agora/rtc/gl/EglRenderer;)Lio/agora/rtc/gl/RendererCommon$GlDrawer;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    :cond_0
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer$5;->this$0:Lio/agora/rtc/gl/EglRenderer;

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Lio/agora/rtc/gl/EglRenderer;->access$900(Lio/agora/rtc/gl/EglRenderer;)Ljava/util/ArrayList;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    new-instance v2, Lio/agora/rtc/gl/EglRenderer$FrameListenerAndParams;

    .line 19
    .line 20
    iget-object v3, p0, Lio/agora/rtc/gl/EglRenderer$5;->val$listener:Lio/agora/rtc/gl/EglRenderer$FrameListener;

    .line 21
    .line 22
    iget v4, p0, Lio/agora/rtc/gl/EglRenderer$5;->val$scale:F

    .line 23
    .line 24
    iget-boolean v5, p0, Lio/agora/rtc/gl/EglRenderer$5;->val$applyFpsReduction:Z

    .line 25
    .line 26
    .line 27
    invoke-direct {v2, v3, v4, v0, v5}, Lio/agora/rtc/gl/EglRenderer$FrameListenerAndParams;-><init>(Lio/agora/rtc/gl/EglRenderer$FrameListener;FLio/agora/rtc/gl/RendererCommon$GlDrawer;Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method
