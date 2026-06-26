.class public final Lcom/narvii/widget/DraggableFrameLayout$1;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "DraggableFrameLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/DraggableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDraggableFrameLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DraggableFrameLayout.kt\ncom/narvii/widget/DraggableFrameLayout$1\n*L\n1#1,123:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/DraggableFrameLayout;


# direct methods
.method constructor <init>(Lcom/narvii/widget/DraggableFrameLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/narvii/widget/DraggableFrameLayout$1;->this$0:Lcom/narvii/widget/DraggableFrameLayout;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 0

    const-string p3, "child"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 43
    iget-object p1, p0, Lcom/narvii/widget/DraggableFrameLayout$1;->this$0:Lcom/narvii/widget/DraggableFrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    neg-int p1, p1

    iget-object p3, p0, Lcom/narvii/widget/DraggableFrameLayout$1;->this$0:Lcom/narvii/widget/DraggableFrameLayout;

    invoke-virtual {p3}, Lcom/narvii/widget/DraggableFrameLayout;->getMinViewVisibleWidth()I

    move-result p3

    add-int/2addr p1, p3

    iget-object p3, p0, Lcom/narvii/widget/DraggableFrameLayout$1;->this$0:Lcom/narvii/widget/DraggableFrameLayout;

    invoke-virtual {p3}, Lcom/narvii/widget/DraggableFrameLayout;->getEndMargin()I

    move-result p3

    add-int/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object p2, p0, Lcom/narvii/widget/DraggableFrameLayout$1;->this$0:Lcom/narvii/widget/DraggableFrameLayout;

    invoke-virtual {p2}, Lcom/narvii/widget/DraggableFrameLayout;->getEndMargin()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 45
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object p2, p0, Lcom/narvii/widget/DraggableFrameLayout$1;->this$0:Lcom/narvii/widget/DraggableFrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    iget-object p3, p0, Lcom/narvii/widget/DraggableFrameLayout$1;->this$0:Lcom/narvii/widget/DraggableFrameLayout;

    invoke-virtual {p3}, Lcom/narvii/widget/DraggableFrameLayout;->getMinViewVisibleWidth()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    return p1
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 4

    const-string p3, "releasedChild"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/narvii/widget/DraggableFrameLayout$1;->this$0:Lcom/narvii/widget/DraggableFrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p3

    neg-int p3, p3

    iget-object v1, p0, Lcom/narvii/widget/DraggableFrameLayout$1;->this$0:Lcom/narvii/widget/DraggableFrameLayout;

    invoke-virtual {v1}, Lcom/narvii/widget/DraggableFrameLayout;->getMinViewVisibleWidth()I

    move-result v1

    add-int/2addr p3, v1

    iget-object v1, p0, Lcom/narvii/widget/DraggableFrameLayout$1;->this$0:Lcom/narvii/widget/DraggableFrameLayout;

    invoke-virtual {v1}, Lcom/narvii/widget/DraggableFrameLayout;->getEndMargin()I

    move-result v1

    add-int/2addr p3, v1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 51
    :goto_0
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/narvii/widget/DraggableFrameLayout$1;->this$0:Lcom/narvii/widget/DraggableFrameLayout;

    invoke-virtual {v1}, Lcom/narvii/widget/DraggableFrameLayout;->getEndMargin()I

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/narvii/widget/DraggableFrameLayout$1;->this$0:Lcom/narvii/widget/DraggableFrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/narvii/widget/DraggableFrameLayout$1;->this$0:Lcom/narvii/widget/DraggableFrameLayout;

    invoke-virtual {v2}, Lcom/narvii/widget/DraggableFrameLayout;->getMinViewVisibleWidth()I

    move-result v2

    sub-int/2addr v1, v2

    :goto_1
    int-to-float v2, v0

    cmpg-float v3, p2, v2

    if-gez v3, :cond_2

    .line 54
    iget-object p1, p0, Lcom/narvii/widget/DraggableFrameLayout$1;->this$0:Lcom/narvii/widget/DraggableFrameLayout;

    invoke-static {p1}, Lcom/narvii/widget/DraggableFrameLayout;->access$getViewDragHelper$p(Lcom/narvii/widget/DraggableFrameLayout;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object p1

    invoke-virtual {p1, p3, v0}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    goto :goto_2

    :cond_2
    cmpl-float p2, p2, v2

    if-lez p2, :cond_3

    .line 56
    iget-object p1, p0, Lcom/narvii/widget/DraggableFrameLayout$1;->this$0:Lcom/narvii/widget/DraggableFrameLayout;

    invoke-static {p1}, Lcom/narvii/widget/DraggableFrameLayout;->access$getViewDragHelper$p(Lcom/narvii/widget/DraggableFrameLayout;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    goto :goto_2

    .line 58
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    sub-int/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object p2, p0, Lcom/narvii/widget/DraggableFrameLayout$1;->this$0:Lcom/narvii/widget/DraggableFrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    iget-object v2, p0, Lcom/narvii/widget/DraggableFrameLayout$1;->this$0:Lcom/narvii/widget/DraggableFrameLayout;

    invoke-virtual {v2}, Lcom/narvii/widget/DraggableFrameLayout;->getMinViewVisibleWidth()I

    move-result v2

    sub-int/2addr p2, v2

    div-int/lit8 p2, p2, 0x2

    if-le p1, p2, :cond_4

    .line 59
    iget-object p1, p0, Lcom/narvii/widget/DraggableFrameLayout$1;->this$0:Lcom/narvii/widget/DraggableFrameLayout;

    invoke-static {p1}, Lcom/narvii/widget/DraggableFrameLayout;->access$getViewDragHelper$p(Lcom/narvii/widget/DraggableFrameLayout;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    goto :goto_2

    .line 61
    :cond_4
    iget-object p1, p0, Lcom/narvii/widget/DraggableFrameLayout$1;->this$0:Lcom/narvii/widget/DraggableFrameLayout;

    invoke-static {p1}, Lcom/narvii/widget/DraggableFrameLayout;->access$getViewDragHelper$p(Lcom/narvii/widget/DraggableFrameLayout;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object p1

    invoke-virtual {p1, p3, v0}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 64
    :goto_2
    iget-object p1, p0, Lcom/narvii/widget/DraggableFrameLayout$1;->this$0:Lcom/narvii/widget/DraggableFrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 0

    const-string p2, "child"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
