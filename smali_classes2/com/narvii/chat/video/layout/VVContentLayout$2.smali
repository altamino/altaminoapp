.class Lcom/narvii/chat/video/layout/VVContentLayout$2;
.super Ljava/lang/Object;
.source "VVContentLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 132
    iput-object p1, p0, Lcom/narvii/chat/video/layout/VVContentLayout$2;->this$0:Lcom/narvii/chat/video/layout/VVContentLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 135
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VVContentLayout$2;->this$0:Lcom/narvii/chat/video/layout/VVContentLayout;

    iget-object v0, p1, Lcom/narvii/chat/video/layout/VVContentLayout;->listener:Lcom/narvii/chat/video/layout/VVContentLayout$VVContentCollapseListener;

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VVContentLayout$2;->this$0:Lcom/narvii/chat/video/layout/VVContentLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v1, p0, Lcom/narvii/chat/video/layout/VVContentLayout$2;->this$0:Lcom/narvii/chat/video/layout/VVContentLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float p1, p1, v1

    :goto_0
    invoke-interface {v0, p1}, Lcom/narvii/chat/video/layout/VVContentLayout$VVContentCollapseListener;->onCollapsePercentChange(F)V

    :cond_1
    return-void
.end method
