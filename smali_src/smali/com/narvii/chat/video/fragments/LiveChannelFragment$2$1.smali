.class Lcom/narvii/chat/video/fragments/LiveChannelFragment$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$2$1;->this$1:Lcom/narvii/chat/video/fragments/LiveChannelFragment$2;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
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
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$2$1;->this$1:Lcom/narvii/chat/video/fragments/LiveChannelFragment$2;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/narvii/chat/video/fragments/LiveChannelFragment$2;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 8
    const/4 v0, 0x1

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->t(Lcom/narvii/chat/video/fragments/LiveChannelFragment;Z)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$2$1;->this$1:Lcom/narvii/chat/video/fragments/LiveChannelFragment$2;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/narvii/chat/video/fragments/LiveChannelFragment$2;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 16
    const/4 v0, 0x2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->notifyCollapseStatusChange(I)V

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$2$1;->this$1:Lcom/narvii/chat/video/fragments/LiveChannelFragment$2;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/narvii/chat/video/fragments/LiveChannelFragment$2;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 24
    .line 25
    sget-object v0, Lcom/narvii/logging/ActSemantic;->collapse:Lcom/narvii/logging/ActSemantic;

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->s(Lcom/narvii/chat/video/fragments/LiveChannelFragment;Lcom/narvii/logging/ActSemantic;)V

    .line 29
    return-void
.end method
