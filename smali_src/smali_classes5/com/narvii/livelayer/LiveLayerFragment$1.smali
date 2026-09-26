.class Lcom/narvii/livelayer/LiveLayerFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerFragment$1;->this$0:Lcom/narvii/livelayer/LiveLayerFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/livelayer/LiveLayerFragment$1;->val$finalBackgroundMaskView:Landroid/view/View;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/livelayer/LiveLayerFragment$1;->val$swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/livelayer/LiveLayerFragment$1;->val$backgroundWrapper:Lcom/narvii/livelayer/BackgroundBlurWithTopRadiusLayout;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onLayoutMoved(IIII)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerFragment$1;->val$finalBackgroundMaskView:Landroid/view/View;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    const/4 p2, 0x0

    .line 6
    .line 7
    sub-int v0, p4, p3

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 11
    move-result p2

    .line 12
    int-to-float p2, p2

    .line 13
    .line 14
    const/high16 v0, 0x3f800000    # 1.0f

    .line 15
    mul-float/2addr p2, v0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerFragment$1;->val$swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 21
    move-result v1

    .line 22
    int-to-float v1, v1

    .line 23
    div-float/2addr p2, v1

    .line 24
    sub-float/2addr v0, p2

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 28
    .line 29
    :cond_0
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerFragment$1;->val$backgroundWrapper:Lcom/narvii/livelayer/BackgroundBlurWithTopRadiusLayout;

    .line 30
    .line 31
    iget-object p2, p0, Lcom/narvii/livelayer/LiveLayerFragment$1;->val$swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 35
    move-result p2

    .line 36
    add-int/2addr p2, p3

    .line 37
    sub-int/2addr p2, p4

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Lcom/narvii/livelayer/BackgroundBlurWithTopRadiusLayout;->setTargetHeight(I)V

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerFragment$1;->val$backgroundWrapper:Lcom/narvii/livelayer/BackgroundBlurWithTopRadiusLayout;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 46
    return-void
.end method

.method public onLayoutSwiped()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerFragment$1;->this$0:Lcom/narvii/livelayer/LiveLayerFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 6
    return-void
.end method
