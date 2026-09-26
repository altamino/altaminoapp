.class Lcom/narvii/crop/OverlayView$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/crop/OverlayView$1;->this$0:Lcom/narvii/crop/OverlayView;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/crop/OverlayView$1;->val$screenWidth:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/crop/OverlayView$1;->this$0:Lcom/narvii/crop/OverlayView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 12
    move-result p1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p1}, Lcom/narvii/crop/OverlayView;->c(Lcom/narvii/crop/OverlayView;I)V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/crop/OverlayView$1;->this$0:Lcom/narvii/crop/OverlayView;

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lcom/narvii/crop/OverlayView;->b(Lcom/narvii/crop/OverlayView;)Landroid/graphics/RectF;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/crop/OverlayView$1;->this$0:Lcom/narvii/crop/OverlayView;

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/narvii/crop/OverlayView;->a(Lcom/narvii/crop/OverlayView;)I

    .line 27
    move-result v0

    .line 28
    int-to-float v0, v0

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/crop/OverlayView$1;->this$0:Lcom/narvii/crop/OverlayView;

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Lcom/narvii/crop/OverlayView;->b(Lcom/narvii/crop/OverlayView;)Landroid/graphics/RectF;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 37
    .line 38
    iget v2, p0, Lcom/narvii/crop/OverlayView$1;->val$screenWidth:I

    .line 39
    .line 40
    iget-object v3, p0, Lcom/narvii/crop/OverlayView$1;->this$0:Lcom/narvii/crop/OverlayView;

    .line 41
    .line 42
    .line 43
    invoke-static {v3}, Lcom/narvii/crop/OverlayView;->a(Lcom/narvii/crop/OverlayView;)I

    .line 44
    move-result v3

    .line 45
    sub-int/2addr v2, v3

    .line 46
    int-to-float v2, v2

    .line 47
    .line 48
    iget-object v3, p0, Lcom/narvii/crop/OverlayView$1;->this$0:Lcom/narvii/crop/OverlayView;

    .line 49
    .line 50
    .line 51
    invoke-static {v3}, Lcom/narvii/crop/OverlayView;->b(Lcom/narvii/crop/OverlayView;)Landroid/graphics/RectF;

    .line 52
    move-result-object v3

    .line 53
    .line 54
    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 58
    .line 59
    iget-object p1, p0, Lcom/narvii/crop/OverlayView$1;->this$0:Lcom/narvii/crop/OverlayView;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 63
    return-void
.end method
