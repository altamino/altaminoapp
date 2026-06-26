.class public final Lcom/narvii/widget/histogram/HistogramView$gestureListener$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "HistogramView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/histogram/HistogramView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHistogramView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HistogramView.kt\ncom/narvii/widget/histogram/HistogramView$gestureListener$1\n*L\n1#1,334:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/histogram/HistogramView;


# direct methods
.method constructor <init>(Lcom/narvii/widget/histogram/HistogramView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView$gestureListener$1;->this$0:Lcom/narvii/widget/histogram/HistogramView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 8

    const/high16 v0, 0x3f000000    # 0.5f

    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    :goto_0
    float-to-int v1, v1

    if-eqz p1, :cond_1

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    :cond_1
    float-to-int p1, v0

    const/4 v0, 0x0

    .line 66
    iget-object v2, p0, Lcom/narvii/widget/histogram/HistogramView$gestureListener$1;->this$0:Lcom/narvii/widget/histogram/HistogramView;

    invoke-static {v2}, Lcom/narvii/widget/histogram/HistogramView;->access$getItemConfigs$p(Lcom/narvii/widget/histogram/HistogramView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/widget/histogram/HistogramItemConfig;

    if-eqz v3, :cond_3

    .line 68
    iget-object v5, v3, Lcom/narvii/widget/histogram/HistogramItemConfig;->displayRect:Landroid/graphics/Rect;

    if-eqz v5, :cond_3

    invoke-virtual {v5, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-ne v5, v4, :cond_3

    .line 69
    iget-object p1, p0, Lcom/narvii/widget/histogram/HistogramView$gestureListener$1;->this$0:Lcom/narvii/widget/histogram/HistogramView;

    invoke-static {p1, v0}, Lcom/narvii/widget/histogram/HistogramView;->access$setSelectedIndex$p(Lcom/narvii/widget/histogram/HistogramView;I)V

    .line 70
    iget-object p1, p0, Lcom/narvii/widget/histogram/HistogramView$gestureListener$1;->this$0:Lcom/narvii/widget/histogram/HistogramView;

    invoke-static {p1}, Lcom/narvii/widget/histogram/HistogramView;->access$getOnItemClickListeners$p(Lcom/narvii/widget/histogram/HistogramView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/histogram/OnItemClickListener;

    .line 71
    iget-wide v5, v3, Lcom/narvii/widget/histogram/HistogramItemConfig;->totalValue:D

    iget-object v2, v3, Lcom/narvii/widget/histogram/HistogramItemConfig;->displayRect:Landroid/graphics/Rect;

    const-string v7, "it.displayRect"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v5, v6, v2, v0}, Lcom/narvii/widget/histogram/OnItemClickListener;->onItemClick(DLandroid/graphics/Rect;I)V

    goto :goto_2

    .line 73
    :cond_2
    iget-object p1, p0, Lcom/narvii/widget/histogram/HistogramView$gestureListener$1;->this$0:Lcom/narvii/widget/histogram/HistogramView;

    invoke-virtual {p1}, Lcom/narvii/widget/histogram/HistogramView;->invalidate()V

    return v4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 79
    :cond_4
    iget-object p1, p0, Lcom/narvii/widget/histogram/HistogramView$gestureListener$1;->this$0:Lcom/narvii/widget/histogram/HistogramView;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/narvii/widget/histogram/HistogramView;->access$setSelectedIndex$p(Lcom/narvii/widget/histogram/HistogramView;I)V

    .line 80
    iget-object p1, p0, Lcom/narvii/widget/histogram/HistogramView$gestureListener$1;->this$0:Lcom/narvii/widget/histogram/HistogramView;

    invoke-virtual {p1}, Lcom/narvii/widget/histogram/HistogramView;->invalidate()V

    return v4
.end method
