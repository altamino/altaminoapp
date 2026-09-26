.class Lcom/narvii/widget/RandomBlinkingView$4;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/RandomBlinkingView$4;->this$0:Lcom/narvii/widget/RandomBlinkingView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 p1, 0x1

    .line 7
    .line 8
    iput p1, p0, Lcom/narvii/widget/RandomBlinkingView$4;->tickCount:I

    .line 9
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/RandomBlinkingView$4;->tickCount:I

    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/widget/RandomBlinkingView$4;->this$0:Lcom/narvii/widget/RandomBlinkingView;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/widget/RandomBlinkingView;->b(Lcom/narvii/widget/RandomBlinkingView;)Landroid/widget/ImageView;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 16
    move-result p1

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1, p1}, Lcom/narvii/widget/RandomBlinkingView;->c(Lcom/narvii/widget/RandomBlinkingView;Landroid/view/View;F)V

    .line 20
    .line 21
    iput v2, p0, Lcom/narvii/widget/RandomBlinkingView$4;->tickCount:I

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    add-int/2addr v0, v2

    .line 24
    .line 25
    iput v0, p0, Lcom/narvii/widget/RandomBlinkingView$4;->tickCount:I

    .line 26
    :goto_0
    return-void
.end method
