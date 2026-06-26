.class Lcom/narvii/chat/video/overlay/ViewerHintView$1;
.super Ljava/lang/Object;
.source "ViewerHintView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/video/overlay/ViewerHintView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/overlay/ViewerHintView;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/overlay/ViewerHintView;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView$1;->this$0:Lcom/narvii/chat/video/overlay/ViewerHintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 66
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView$1;->this$0:Lcom/narvii/chat/video/overlay/ViewerHintView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/chat/video/overlay/ViewerHintView;->access$002(Lcom/narvii/chat/video/overlay/ViewerHintView;Z)Z

    .line 67
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView$1;->this$0:Lcom/narvii/chat/video/overlay/ViewerHintView;

    invoke-static {p1}, Lcom/narvii/chat/video/overlay/ViewerHintView;->access$100(Lcom/narvii/chat/video/overlay/ViewerHintView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ViewerHintView$1;->this$0:Lcom/narvii/chat/video/overlay/ViewerHintView;

    iget-object v0, v0, Lcom/narvii/chat/video/overlay/ViewerHintView;->alphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 61
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView$1;->this$0:Lcom/narvii/chat/video/overlay/ViewerHintView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/chat/video/overlay/ViewerHintView;->access$002(Lcom/narvii/chat/video/overlay/ViewerHintView;Z)Z

    return-void
.end method
