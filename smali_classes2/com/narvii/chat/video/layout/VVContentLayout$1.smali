.class Lcom/narvii/chat/video/layout/VVContentLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VVContentLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/layout/VVContentLayout;->releaseView(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/layout/VVContentLayout;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/layout/VVContentLayout;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/narvii/chat/video/layout/VVContentLayout$1;->this$0:Lcom/narvii/chat/video/layout/VVContentLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 125
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 126
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VVContentLayout$1;->this$0:Lcom/narvii/chat/video/layout/VVContentLayout;

    iget-object p1, p1, Lcom/narvii/chat/video/layout/VVContentLayout;->listener:Lcom/narvii/chat/video/layout/VVContentLayout$VVContentCollapseListener;

    if-eqz p1, :cond_0

    .line 127
    invoke-interface {p1}, Lcom/narvii/chat/video/layout/VVContentLayout$VVContentCollapseListener;->onVVContentCollapsed()V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 118
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VVContentLayout$1;->this$0:Lcom/narvii/chat/video/layout/VVContentLayout;

    iget-object p1, p1, Lcom/narvii/chat/video/layout/VVContentLayout;->listener:Lcom/narvii/chat/video/layout/VVContentLayout$VVContentCollapseListener;

    if-eqz p1, :cond_0

    .line 119
    invoke-interface {p1}, Lcom/narvii/chat/video/layout/VVContentLayout$VVContentCollapseListener;->onVVContentCollapsed()V

    :cond_0
    return-void
.end method
