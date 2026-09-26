.class public final synthetic Lcom/narvii/widget/histogram/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/narvii/widget/histogram/HistogramView;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/widget/histogram/HistogramView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/histogram/a;->a:Lcom/narvii/widget/histogram/HistogramView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/widget/histogram/a;->a:Lcom/narvii/widget/histogram/HistogramView;

    invoke-static {v0, p1}, Lcom/narvii/widget/histogram/HistogramView;->a(Lcom/narvii/widget/histogram/HistogramView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
