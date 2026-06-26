.class final Lcom/narvii/widget/histogram/HistogramView$drawConfig$2;
.super Lkotlin/jvm/internal/Lambda;
.source "HistogramView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/histogram/HistogramView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/narvii/widget/histogram/HistogramView$DrawConfig;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/histogram/HistogramView;


# direct methods
.method constructor <init>(Lcom/narvii/widget/histogram/HistogramView;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView$drawConfig$2;->this$0:Lcom/narvii/widget/histogram/HistogramView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/widget/histogram/HistogramView$DrawConfig;
    .locals 5

    .line 45
    new-instance v0, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;

    iget-object v1, p0, Lcom/narvii/widget/histogram/HistogramView$drawConfig$2;->this$0:Lcom/narvii/widget/histogram/HistogramView;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/narvii/widget/histogram/HistogramView$drawConfig$2;->this$0:Lcom/narvii/widget/histogram/HistogramView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/narvii/widget/histogram/HistogramView$drawConfig$2;->this$0:Lcom/narvii/widget/histogram/HistogramView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/narvii/widget/histogram/HistogramView$drawConfig$2;->this$0:Lcom/narvii/widget/histogram/HistogramView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/narvii/widget/histogram/HistogramView$drawConfig$2;->this$0:Lcom/narvii/widget/histogram/HistogramView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/narvii/widget/histogram/HistogramView$DrawConfig;-><init>(Lcom/narvii/widget/histogram/HistogramView;II)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/narvii/widget/histogram/HistogramView$drawConfig$2;->invoke()Lcom/narvii/widget/histogram/HistogramView$DrawConfig;

    move-result-object v0

    return-object v0
.end method
