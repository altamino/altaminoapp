.class Lcom/narvii/chat/video/overlay/ViewerHintView$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView$1;->this$0:Lcom/narvii/chat/video/overlay/ViewerHintView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView$1;->this$0:Lcom/narvii/chat/video/overlay/ViewerHintView;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/narvii/chat/video/overlay/ViewerHintView;->d(Lcom/narvii/chat/video/overlay/ViewerHintView;Z)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView$1;->this$0:Lcom/narvii/chat/video/overlay/ViewerHintView;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/chat/video/overlay/ViewerHintView;->b(Lcom/narvii/chat/video/overlay/ViewerHintView;)Landroid/widget/TextView;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ViewerHintView$1;->this$0:Lcom/narvii/chat/video/overlay/ViewerHintView;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/narvii/chat/video/overlay/ViewerHintView;->alphaAnimation:Landroid/view/animation/AlphaAnimation;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 20
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView$1;->this$0:Lcom/narvii/chat/video/overlay/ViewerHintView;

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/narvii/chat/video/overlay/ViewerHintView;->d(Lcom/narvii/chat/video/overlay/ViewerHintView;Z)V

    .line 7
    return-void
.end method
