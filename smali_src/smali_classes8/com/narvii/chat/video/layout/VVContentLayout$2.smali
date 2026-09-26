.class Lcom/narvii/chat/video/layout/VVContentLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/layout/VVContentLayout$2;->this$0:Lcom/narvii/chat/video/layout/VVContentLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VVContentLayout$2;->this$0:Lcom/narvii/chat/video/layout/VVContentLayout;

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/chat/video/layout/VVContentLayout;->listener:Lcom/narvii/chat/video/layout/VVContentLayout$VVContentCollapseListener;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 10
    move-result p1

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    const/4 p1, 0x0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VVContentLayout$2;->this$0:Lcom/narvii/chat/video/layout/VVContentLayout;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 20
    move-result p1

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 24
    move-result p1

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/chat/video/layout/VVContentLayout$2;->this$0:Lcom/narvii/chat/video/layout/VVContentLayout;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 30
    move-result v1

    .line 31
    int-to-float v1, v1

    .line 32
    div-float/2addr p1, v1

    .line 33
    .line 34
    const/high16 v1, 0x3f800000    # 1.0f

    .line 35
    mul-float/2addr p1, v1

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-interface {v0, p1}, Lcom/narvii/chat/video/layout/VVContentLayout$VVContentCollapseListener;->onCollapsePercentChange(F)V

    .line 39
    :cond_1
    return-void
.end method
