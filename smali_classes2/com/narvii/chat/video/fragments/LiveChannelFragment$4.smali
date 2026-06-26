.class Lcom/narvii/chat/video/fragments/LiveChannelFragment$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LiveChannelFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/fragments/LiveChannelFragment;->expandContent(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

.field final synthetic val$click:Z


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/fragments/LiveChannelFragment;Z)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$4;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    iput-boolean p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$4;->val$click:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 249
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 250
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$4;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->access$200(Lcom/narvii/chat/video/fragments/LiveChannelFragment;Z)V

    .line 251
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$4;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->notifyCollapseStatusChange(I)V

    .line 252
    iget-boolean p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$4;->val$click:Z

    if-eqz p1, :cond_0

    .line 253
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$4;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->expand:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->access$300(Lcom/narvii/chat/video/fragments/LiveChannelFragment;Lcom/narvii/logging/ActSemantic;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 243
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 244
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$4;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    iget-object p1, p1, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveNormalContent:Lcom/narvii/chat/video/layout/VVContentLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
