.class Lcom/narvii/crop/OverlayView$1;
.super Ljava/lang/Object;
.source "OverlayView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/crop/OverlayView;->setCropRectWidth(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/crop/OverlayView;

.field final synthetic val$screenWidth:I


# direct methods
.method constructor <init>(Lcom/narvii/crop/OverlayView;I)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/narvii/crop/OverlayView$1;->this$0:Lcom/narvii/crop/OverlayView;

    iput p2, p0, Lcom/narvii/crop/OverlayView$1;->val$screenWidth:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 342
    iget-object v0, p0, Lcom/narvii/crop/OverlayView$1;->this$0:Lcom/narvii/crop/OverlayView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/narvii/crop/OverlayView;->access$002(Lcom/narvii/crop/OverlayView;I)I

    .line 343
    iget-object p1, p0, Lcom/narvii/crop/OverlayView$1;->this$0:Lcom/narvii/crop/OverlayView;

    invoke-static {p1}, Lcom/narvii/crop/OverlayView;->access$100(Lcom/narvii/crop/OverlayView;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/crop/OverlayView$1;->this$0:Lcom/narvii/crop/OverlayView;

    invoke-static {v0}, Lcom/narvii/crop/OverlayView;->access$000(Lcom/narvii/crop/OverlayView;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/narvii/crop/OverlayView$1;->this$0:Lcom/narvii/crop/OverlayView;

    invoke-static {v1}, Lcom/narvii/crop/OverlayView;->access$100(Lcom/narvii/crop/OverlayView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/narvii/crop/OverlayView$1;->val$screenWidth:I

    iget-object v3, p0, Lcom/narvii/crop/OverlayView$1;->this$0:Lcom/narvii/crop/OverlayView;

    invoke-static {v3}, Lcom/narvii/crop/OverlayView;->access$000(Lcom/narvii/crop/OverlayView;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/narvii/crop/OverlayView$1;->this$0:Lcom/narvii/crop/OverlayView;

    invoke-static {v3}, Lcom/narvii/crop/OverlayView;->access$100(Lcom/narvii/crop/OverlayView;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 344
    iget-object p1, p0, Lcom/narvii/crop/OverlayView$1;->this$0:Lcom/narvii/crop/OverlayView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
