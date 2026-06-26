.class Lcom/narvii/chat/video/layout/LiveCallingLayout$2;
.super Ljava/lang/Object;
.source "LiveCallingLayout.java"

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

    .line 197
    iput-object p1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout$2;->this$0:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 217
    iget-object p1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout$2;->this$0:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    iget-object p1, p1, Lcom/narvii/chat/video/layout/LiveCallingLayout;->enterConversationAnimationListener:Lcom/narvii/chat/video/layout/LiveCallingLayout$EnterConversationAnimationListener;

    if-eqz p1, :cond_0

    .line 218
    invoke-interface {p1}, Lcom/narvii/chat/video/layout/LiveCallingLayout$EnterConversationAnimationListener;->onAnimationFinished()V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 210
    iget-object p1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout$2;->this$0:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    iget-object p1, p1, Lcom/narvii/chat/video/layout/LiveCallingLayout;->enterConversationAnimationListener:Lcom/narvii/chat/video/layout/LiveCallingLayout$EnterConversationAnimationListener;

    if-eqz p1, :cond_0

    .line 211
    invoke-interface {p1}, Lcom/narvii/chat/video/layout/LiveCallingLayout$EnterConversationAnimationListener;->onAnimationFinished()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 200
    iget-object p1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout$2;->this$0:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    invoke-static {p1}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->access$100(Lcom/narvii/chat/video/layout/LiveCallingLayout;)Lcom/narvii/chat/video/VVChatMembershipNameLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 201
    iget-object p1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout$2;->this$0:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    invoke-static {p1}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->access$100(Lcom/narvii/chat/video/layout/LiveCallingLayout;)Lcom/narvii/chat/video/VVChatMembershipNameLayout;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->access$200(Lcom/narvii/chat/video/layout/LiveCallingLayout;Landroid/view/View;)V

    .line 203
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout$2;->this$0:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    invoke-static {p1}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->access$300(Lcom/narvii/chat/video/layout/LiveCallingLayout;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 204
    iget-object p1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout$2;->this$0:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    invoke-static {p1}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->access$300(Lcom/narvii/chat/video/layout/LiveCallingLayout;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->access$200(Lcom/narvii/chat/video/layout/LiveCallingLayout;Landroid/view/View;)V

    :cond_1
    return-void
.end method
