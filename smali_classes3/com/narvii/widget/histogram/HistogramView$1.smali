.class final Lcom/narvii/widget/histogram/HistogramView$1;
.super Ljava/lang/Object;
.source "HistogramView.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/histogram/HistogramView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHistogramView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HistogramView.kt\ncom/narvii/widget/histogram/HistogramView$1\n*L\n1#1,334:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/histogram/HistogramView;


# direct methods
.method constructor <init>(Lcom/narvii/widget/histogram/HistogramView;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView$1;->this$0:Lcom/narvii/widget/histogram/HistogramView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/narvii/widget/histogram/HistogramView$1;->this$0:Lcom/narvii/widget/histogram/HistogramView;

    .line 99
    invoke-static {v0}, Lcom/narvii/widget/histogram/HistogramView;->access$getDrawConfig$p(Lcom/narvii/widget/histogram/HistogramView;)Lcom/narvii/widget/histogram/HistogramView$DrawConfig;

    move-result-object v1

    const-string v2, "animation"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;->setPercentage(F)V

    .line 100
    invoke-virtual {v0}, Lcom/narvii/widget/histogram/HistogramView;->invalidate()V

    return-void

    .line 99
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
