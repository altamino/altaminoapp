.class Lcom/narvii/chat/video/fragments/LiveChannelFragment$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LiveChannelFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/fragments/LiveChannelFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/video/fragments/LiveChannelFragment$2;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/fragments/LiveChannelFragment$2;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$2$1;->this$1:Lcom/narvii/chat/video/fragments/LiveChannelFragment$2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 208
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 209
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$2$1;->this$1:Lcom/narvii/chat/video/fragments/LiveChannelFragment$2;

    iget-object p1, p1, Lcom/narvii/chat/video/fragments/LiveChannelFragment$2;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->access$200(Lcom/narvii/chat/video/fragments/LiveChannelFragment;Z)V

    .line 210
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$2$1;->this$1:Lcom/narvii/chat/video/fragments/LiveChannelFragment$2;

    iget-object p1, p1, Lcom/narvii/chat/video/fragments/LiveChannelFragment$2;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->notifyCollapseStatusChange(I)V

    .line 211
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$2$1;->this$1:Lcom/narvii/chat/video/fragments/LiveChannelFragment$2;

    iget-object p1, p1, Lcom/narvii/chat/video/fragments/LiveChannelFragment$2;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->collapse:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->access$300(Lcom/narvii/chat/video/fragments/LiveChannelFragment;Lcom/narvii/logging/ActSemantic;)V

    return-void
.end method
