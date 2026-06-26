.class public final Lcom/narvii/chat/hangout/HangoutFilterDialog;
.super Lcom/narvii/util/dialog/PopupBubbleDialog;
.source "HangoutFilterDialog.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/hangout/HangoutFilterDialog$OnItemClickListener;
    }
.end annotation


# instance fields
.field private final item1:Landroid/view/View;

.field private final item2:Landroid/view/View;

.field private final item3:Landroid/view/View;

.field private onItemClickListener:Lcom/narvii/chat/hangout/HangoutFilterDialog$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/PopupBubbleDialog;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0b032b

    .line 19
    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/PopupBubbleDialog;->setContentView(I)V

    const p1, 0x7f0905d0

    .line 21
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.item1)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/hangout/HangoutFilterDialog;->item1:Landroid/view/View;

    const p1, 0x7f0905d1

    .line 22
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.item2)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/hangout/HangoutFilterDialog;->item2:Landroid/view/View;

    const p1, 0x7f0905d2

    .line 23
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.item3)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/hangout/HangoutFilterDialog;->item3:Landroid/view/View;

    .line 25
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutFilterDialog;->item1:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutFilterDialog;->item2:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutFilterDialog;->item3:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final getItem1()Landroid/view/View;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutFilterDialog;->item1:Landroid/view/View;

    return-object v0
.end method

.method public final getItem2()Landroid/view/View;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutFilterDialog;->item2:Landroid/view/View;

    return-object v0
.end method

.method public final getItem3()Landroid/view/View;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutFilterDialog;->item3:Landroid/view/View;

    return-object v0
.end method

.method public final getOnItemClickListener()Lcom/narvii/chat/hangout/HangoutFilterDialog$OnItemClickListener;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutFilterDialog;->onItemClickListener:Lcom/narvii/chat/hangout/HangoutFilterDialog$OnItemClickListener;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0x7f0905d0

    if-nez v0, :cond_1

    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 36
    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutFilterDialog;->onItemClickListener:Lcom/narvii/chat/hangout/HangoutFilterDialog$OnItemClickListener;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/narvii/chat/hangout/HangoutFilterDialog$OnItemClickListener;->onItemClick(ILandroid/view/View;)V

    .line 37
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    goto :goto_3

    :cond_3
    :goto_1
    const v1, 0x7f0905d1

    if-nez v0, :cond_4

    goto :goto_2

    .line 39
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_6

    .line 40
    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutFilterDialog;->onItemClickListener:Lcom/narvii/chat/hangout/HangoutFilterDialog$OnItemClickListener;

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/narvii/chat/hangout/HangoutFilterDialog$OnItemClickListener;->onItemClick(ILandroid/view/View;)V

    .line 41
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    goto :goto_3

    :cond_6
    :goto_2
    const v1, 0x7f0905d2

    if-nez v0, :cond_7

    goto :goto_3

    .line 43
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_9

    .line 44
    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutFilterDialog;->onItemClickListener:Lcom/narvii/chat/hangout/HangoutFilterDialog$OnItemClickListener;

    if-eqz v0, :cond_8

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1}, Lcom/narvii/chat/hangout/HangoutFilterDialog$OnItemClickListener;->onItemClick(ILandroid/view/View;)V

    .line 45
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    :cond_9
    :goto_3
    return-void
.end method

.method protected popupBubbleLayout()I
    .locals 1

    const v0, 0x7f0b0195

    return v0
.end method

.method public final setOnItemClickListener(Lcom/narvii/chat/hangout/HangoutFilterDialog$OnItemClickListener;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/narvii/chat/hangout/HangoutFilterDialog;->onItemClickListener:Lcom/narvii/chat/hangout/HangoutFilterDialog$OnItemClickListener;

    return-void
.end method

.method public setPosition(Landroid/graphics/Rect;)V
    .locals 12

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/narvii/util/dialog/PopupBubbleDialog;->bubble:Lcom/narvii/widget/PopupBubble;

    const-string v1, "bubble"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 53
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 54
    iget-object v3, p0, Lcom/narvii/util/dialog/PopupBubbleDialog;->bubble:Lcom/narvii/widget/PopupBubble;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_4

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 56
    iget-object v3, p0, Lcom/narvii/util/dialog/PopupBubbleDialog;->bubble:Lcom/narvii/widget/PopupBubble;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 57
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 56
    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->measure(II)V

    .line 59
    iget-object v3, p0, Lcom/narvii/util/dialog/PopupBubbleDialog;->bubble:Lcom/narvii/widget/PopupBubble;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    .line 60
    iget v4, p1, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v3, 0x2

    sub-int/2addr v4, v5

    .line 61
    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v5

    .line 62
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    const v7, 0x3f19999a    # 0.6f

    mul-float v5, v5, v7

    float-to-int v5, v5

    sub-int v4, v5, v4

    .line 63
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ge v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 64
    iget v5, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v3

    goto :goto_1

    :cond_1
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 66
    :goto_1
    iget-object v3, p0, Lcom/narvii/util/dialog/PopupBubbleDialog;->bubble:Lcom/narvii/widget/PopupBubble;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    div-int/lit8 v9, v3, 0x2

    sub-int/2addr v8, v9

    .line 68
    iget v9, p1, Landroid/graphics/Rect;->left:I

    .line 69
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    if-ge v10, v11, :cond_2

    if-lez v9, :cond_2

    .line 70
    div-int/lit8 v9, v9, 0x4

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 72
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v9

    iget v10, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v10

    .line 73
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    if-le v10, v11, :cond_3

    if-lez v9, :cond_3

    .line 74
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v9, v9, 0x4

    sub-int/2addr v2, v9

    sub-int/2addr v2, v3

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 77
    :cond_3
    iput v8, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 78
    iput v5, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 79
    iget-object v2, p0, Lcom/narvii/util/dialog/PopupBubbleDialog;->bubble:Lcom/narvii/widget/PopupBubble;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iget-object v0, p0, Lcom/narvii/util/dialog/PopupBubbleDialog;->bubble:Lcom/narvii/widget/PopupBubble;

    invoke-virtual {v0, v7}, Lcom/narvii/widget/PopupBubble;->setAutoRtl(Z)V

    .line 81
    iget-object v0, p0, Lcom/narvii/util/dialog/PopupBubbleDialog;->bubble:Lcom/narvii/widget/PopupBubble;

    xor-int/lit8 v1, v4, 0x1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    sub-int/2addr p1, v8

    invoke-virtual {v0, v1, p1}, Lcom/narvii/widget/PopupBubble;->setIndicator(ZI)V

    return-void

    .line 54
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.View"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.AbsoluteLayout.LayoutParams"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
