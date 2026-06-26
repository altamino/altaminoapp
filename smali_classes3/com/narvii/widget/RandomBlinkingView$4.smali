.class Lcom/narvii/widget/RandomBlinkingView$4;
.super Ljava/lang/Object;
.source "RandomBlinkingView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/RandomBlinkingView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/RandomBlinkingView;

.field tickCount:I


# direct methods
.method constructor <init>(Lcom/narvii/widget/RandomBlinkingView;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/narvii/widget/RandomBlinkingView$4;->this$0:Lcom/narvii/widget/RandomBlinkingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 106
    iput p1, p0, Lcom/narvii/widget/RandomBlinkingView$4;->tickCount:I

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 109
    iget v0, p0, Lcom/narvii/widget/RandomBlinkingView$4;->tickCount:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 110
    iget-object v0, p0, Lcom/narvii/widget/RandomBlinkingView$4;->this$0:Lcom/narvii/widget/RandomBlinkingView;

    invoke-static {v0}, Lcom/narvii/widget/RandomBlinkingView;->access$300(Lcom/narvii/widget/RandomBlinkingView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {v0, v2, p1}, Lcom/narvii/widget/RandomBlinkingView;->access$200(Lcom/narvii/widget/RandomBlinkingView;Landroid/view/View;F)V

    .line 111
    iput v1, p0, Lcom/narvii/widget/RandomBlinkingView$4;->tickCount:I

    goto :goto_0

    :cond_0
    add-int/2addr v0, v1

    .line 113
    iput v0, p0, Lcom/narvii/widget/RandomBlinkingView$4;->tickCount:I

    :goto_0
    return-void
.end method
