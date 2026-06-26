.class Lcom/narvii/livelayer/LiveLayerFragment$1;
.super Ljava/lang/Object;
.source "LiveLayerFragment.java"

# interfaces
.implements Lcom/narvii/widget/SwipeableLayout$SwipeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/LiveLayerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/LiveLayerFragment;

.field final synthetic val$backgroundWrapper:Lcom/narvii/livelayer/BackgroundBlurWithTopRadiusLayout;

.field final synthetic val$finalBackgroundMaskView:Landroid/view/View;

.field final synthetic val$swipeableLayout:Lcom/narvii/widget/SwipeableLayout;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerFragment;Landroid/view/View;Lcom/narvii/widget/SwipeableLayout;Lcom/narvii/livelayer/BackgroundBlurWithTopRadiusLayout;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerFragment$1;->this$0:Lcom/narvii/livelayer/LiveLayerFragment;

    iput-object p2, p0, Lcom/narvii/livelayer/LiveLayerFragment$1;->val$finalBackgroundMaskView:Landroid/view/View;

    iput-object p3, p0, Lcom/narvii/livelayer/LiveLayerFragment$1;->val$swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    iput-object p4, p0, Lcom/narvii/livelayer/LiveLayerFragment$1;->val$backgroundWrapper:Lcom/narvii/livelayer/BackgroundBlurWithTopRadiusLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutMoved(IIII)V
    .locals 2

    .line 135
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerFragment$1;->val$finalBackgroundMaskView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    sub-int v0, p4, p3

    .line 136
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p2, p2, v0

    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerFragment$1;->val$swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p2, v1

    sub-float/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerFragment$1;->val$backgroundWrapper:Lcom/narvii/livelayer/BackgroundBlurWithTopRadiusLayout;

    iget-object p2, p0, Lcom/narvii/livelayer/LiveLayerFragment$1;->val$swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    add-int/2addr p2, p3

    sub-int/2addr p2, p4

    invoke-virtual {p1, p2}, Lcom/narvii/livelayer/BackgroundBlurWithTopRadiusLayout;->setTargetHeight(I)V

    .line 139
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerFragment$1;->val$backgroundWrapper:Lcom/narvii/livelayer/BackgroundBlurWithTopRadiusLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public onLayoutSwiped()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerFragment$1;->this$0:Lcom/narvii/livelayer/LiveLayerFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method
