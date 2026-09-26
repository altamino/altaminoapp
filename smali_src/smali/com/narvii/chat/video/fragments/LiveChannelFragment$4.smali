.class Lcom/narvii/chat/video/fragments/LiveChannelFragment$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$4;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$4;->val$click:Z

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$4;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->t(Lcom/narvii/chat/video/fragments/LiveChannelFragment;Z)V

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$4;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 12
    const/4 v0, 0x1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->notifyCollapseStatusChange(I)V

    .line 16
    .line 17
    iget-boolean p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$4;->val$click:Z

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$4;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 22
    .line 23
    sget-object v0, Lcom/narvii/logging/ActSemantic;->expand:Lcom/narvii/logging/ActSemantic;

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->s(Lcom/narvii/chat/video/fragments/LiveChannelFragment;Lcom/narvii/logging/ActSemantic;)V

    .line 27
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$4;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveNormalContent:Lcom/narvii/chat/video/layout/VVContentLayout;

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12
    return-void
.end method
