.class final Lcom/narvii/scene/poll/ScenePollPlayView$3;
.super Ljava/lang/Object;
.source "ScenePollPlayView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/poll/ScenePollPlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/poll/ScenePollPlayView;


# direct methods
.method constructor <init>(Lcom/narvii/scene/poll/ScenePollPlayView;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView$3;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 97
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView$3;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-static {p1}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$getCountDownRunnable$p(Lcom/narvii/scene/poll/ScenePollPlayView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 98
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView$3;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-static {p1}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$skipToNextScene(Lcom/narvii/scene/poll/ScenePollPlayView;)V

    return-void
.end method
