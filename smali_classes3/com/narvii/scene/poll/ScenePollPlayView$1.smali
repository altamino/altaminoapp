.class public final Lcom/narvii/scene/poll/ScenePollPlayView$1;
.super Ljava/lang/Object;
.source "ScenePollPlayView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/poll/ScenePollPlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/poll/ScenePollPlayView;


# direct methods
.method constructor <init>(Lcom/narvii/scene/poll/ScenePollPlayView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView$1;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 82
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPlayView$1;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-static {v0}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$getCountDownTime$p(Lcom/narvii/scene/poll/ScenePollPlayView;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$setCountDownTime$p(Lcom/narvii/scene/poll/ScenePollPlayView;J)V

    .line 83
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPlayView$1;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-static {v0}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$getCountDownTime$p(Lcom/narvii/scene/poll/ScenePollPlayView;)J

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmp-long v2, v0, v5

    if-lez v2, :cond_0

    .line 84
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPlayView$1;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-static {v0}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$getCountDownTime$p(Lcom/narvii/scene/poll/ScenePollPlayView;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$onCountDownUpdate(Lcom/narvii/scene/poll/ScenePollPlayView;J)V

    .line 85
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPlayView$1;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-virtual {v0, p0, v3, v4}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPlayView$1;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-static {v0, v5, v6}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$setCountDownTime$p(Lcom/narvii/scene/poll/ScenePollPlayView;J)V

    .line 88
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPlayView$1;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-static {v0}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$isOptionPressing$p(Lcom/narvii/scene/poll/ScenePollPlayView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPlayView$1;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-static {v0}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$onTimeOut(Lcom/narvii/scene/poll/ScenePollPlayView;)V

    :cond_1
    :goto_0
    return-void
.end method
