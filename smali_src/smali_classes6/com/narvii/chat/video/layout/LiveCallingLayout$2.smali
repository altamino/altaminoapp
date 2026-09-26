.class Lcom/narvii/chat/video/layout/LiveCallingLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/layout/LiveCallingLayout;->enterConversation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/layout/LiveCallingLayout;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/layout/LiveCallingLayout;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout$2;->this$0:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout$2;->this$0:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/chat/video/layout/LiveCallingLayout;->enterConversationAnimationListener:Lcom/narvii/chat/video/layout/LiveCallingLayout$EnterConversationAnimationListener;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Lcom/narvii/chat/video/layout/LiveCallingLayout$EnterConversationAnimationListener;->onAnimationFinished()V

    .line 10
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout$2;->this$0:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/chat/video/layout/LiveCallingLayout;->enterConversationAnimationListener:Lcom/narvii/chat/video/layout/LiveCallingLayout$EnterConversationAnimationListener;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Lcom/narvii/chat/video/layout/LiveCallingLayout$EnterConversationAnimationListener;->onAnimationFinished()V

    .line 10
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout$2;->this$0:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->b(Lcom/narvii/chat/video/layout/LiveCallingLayout;)Lcom/narvii/chat/video/VVChatMembershipNameLayout;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout$2;->this$0:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->b(Lcom/narvii/chat/video/layout/LiveCallingLayout;)Lcom/narvii/chat/video/VVChatMembershipNameLayout;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->e(Lcom/narvii/chat/video/layout/LiveCallingLayout;Landroid/view/View;)V

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout$2;->this$0:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->d(Lcom/narvii/chat/video/layout/LiveCallingLayout;)Landroid/widget/TextView;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout$2;->this$0:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->d(Lcom/narvii/chat/video/layout/LiveCallingLayout;)Landroid/widget/TextView;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v0}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->e(Lcom/narvii/chat/video/layout/LiveCallingLayout;Landroid/view/View;)V

    .line 35
    :cond_1
    return-void
.end method
