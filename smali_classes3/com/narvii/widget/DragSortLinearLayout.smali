.class public Lcom/narvii/widget/DragSortLinearLayout;
.super Landroid/widget/LinearLayout;
.source "DragSortLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/DragSortLinearLayout$Stub;
    }
.end annotation


# instance fields
.field childFocusViewId:I

.field dX:I

.field dY:I

.field downX:I

.field downY:I

.field draging:Landroid/view/View;

.field drawTop:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field rightPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 31
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setChildrenDrawingOrderEnabled(Z)V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$dimen;->drag_sort_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/DragSortLinearLayout;->rightPadding:I

    return-void
.end method

.method private changeDragingPosition(I)V
    .locals 4

    .line 163
    iget-object v0, p0, Lcom/narvii/widget/DragSortLinearLayout;->draging:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 168
    iget v2, p0, Lcom/narvii/widget/DragSortLinearLayout;->childFocusViewId:I

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 169
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 170
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/4 v3, 0x1

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/DragSortLinearLayout;->draging:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 173
    iget-object v0, p0, Lcom/narvii/widget/DragSortLinearLayout;->draging:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    .line 175
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_2
    return-void
.end method

.method private clearDy(Landroid/view/View;)V
    .locals 2

    .line 283
    sget v0, Lcom/narvii/lib/R$id;->text:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private getDy(Landroid/view/View;J)I
    .locals 5

    .line 244
    sget v0, Lcom/narvii/lib/R$id;->text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    .line 245
    instance-of v0, p1, Lcom/narvii/widget/DragSortLinearLayout$Stub;

    if-eqz v0, :cond_3

    .line 246
    check-cast p1, Lcom/narvii/widget/DragSortLinearLayout$Stub;

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p2, v0

    if-eqz v2, :cond_2

    .line 247
    iget v0, p1, Lcom/narvii/widget/DragSortLinearLayout$Stub;->y1:I

    iget v1, p1, Lcom/narvii/widget/DragSortLinearLayout$Stub;->y2:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 249
    :cond_0
    iget v2, p1, Lcom/narvii/widget/DragSortLinearLayout$Stub;->v:F

    iget-wide v3, p1, Lcom/narvii/widget/DragSortLinearLayout$Stub;->time:J

    sub-long/2addr p2, v3

    long-to-float p1, p2

    mul-float v2, v2, p1

    float-to-int p1, v2

    add-int/2addr p1, v0

    if-le v1, v0, :cond_1

    .line 251
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    .line 253
    :cond_1
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    .line 248
    :cond_2
    :goto_0
    iget p1, p1, Lcom/narvii/widget/DragSortLinearLayout$Stub;->y2:I

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private getParentScrollView()Landroid/widget/ScrollView;
    .locals 3

    const/4 v0, 0x0

    move-object v1, p0

    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_1

    .line 42
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 44
    instance-of v2, v1, Landroid/widget/ScrollView;

    if-eqz v2, :cond_0

    .line 45
    check-cast v1, Landroid/widget/ScrollView;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private setDy(Landroid/view/View;IFJ)V
    .locals 2

    .line 261
    sget v0, Lcom/narvii/lib/R$id;->text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 263
    instance-of v1, v0, Lcom/narvii/widget/DragSortLinearLayout$Stub;

    if-eqz v1, :cond_0

    .line 264
    check-cast v0, Lcom/narvii/widget/DragSortLinearLayout$Stub;

    goto :goto_0

    .line 266
    :cond_0
    new-instance v0, Lcom/narvii/widget/DragSortLinearLayout$Stub;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/widget/DragSortLinearLayout$Stub;-><init>(Lcom/narvii/widget/DragSortLinearLayout$1;)V

    .line 267
    sget v1, Lcom/narvii/lib/R$id;->text:I

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 269
    :goto_0
    iget v1, v0, Lcom/narvii/widget/DragSortLinearLayout$Stub;->y2:I

    if-eq p2, v1, :cond_2

    .line 270
    invoke-direct {p0, p1, p4, p5}, Lcom/narvii/widget/DragSortLinearLayout;->getDy(Landroid/view/View;J)I

    move-result p1

    .line 271
    iput p1, v0, Lcom/narvii/widget/DragSortLinearLayout$Stub;->y1:I

    .line 272
    iput p2, v0, Lcom/narvii/widget/DragSortLinearLayout$Stub;->y2:I

    .line 273
    iget p1, v0, Lcom/narvii/widget/DragSortLinearLayout$Stub;->y1:I

    iget p2, v0, Lcom/narvii/widget/DragSortLinearLayout$Stub;->y2:I

    if-le p1, p2, :cond_1

    .line 274
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    neg-float p1, p1

    iput p1, v0, Lcom/narvii/widget/DragSortLinearLayout$Stub;->v:F

    goto :goto_1

    .line 276
    :cond_1
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, v0, Lcom/narvii/widget/DragSortLinearLayout$Stub;->v:F

    .line 278
    :goto_1
    iput-wide p4, v0, Lcom/narvii/widget/DragSortLinearLayout$Stub;->time:J

    :cond_2
    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 13

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    .line 201
    iget-object v0, v6, Lcom/narvii/widget/DragSortLinearLayout;->draging:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 202
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 203
    iget-object v0, v6, Lcom/narvii/widget/DragSortLinearLayout;->draging:Landroid/view/View;

    const/4 v9, 0x1

    if-ne v8, v0, :cond_1

    .line 204
    iget v0, v6, Lcom/narvii/widget/DragSortLinearLayout;->dX:I

    int-to-float v0, v0

    iget v1, v6, Lcom/narvii/widget/DragSortLinearLayout;->dY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    move-wide/from16 v11, p3

    goto/16 :goto_2

    .line 207
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v0, v2

    const/high16 v1, 0x43200000    # 160.0f

    div-float v3, v0, v1

    .line 209
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 210
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    if-ne v10, v8, :cond_4

    .line 212
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    const-wide v11, 0x7fffffffffffffffL

    invoke-direct {p0, v10, v11, v12}, Lcom/narvii/widget/DragSortLinearLayout;->getDy(Landroid/view/View;J)I

    move-result v1

    add-int/2addr v0, v1

    if-nez v4, :cond_2

    .line 213
    iget v1, v6, Lcom/narvii/widget/DragSortLinearLayout;->downY:I

    iget v5, v6, Lcom/narvii/widget/DragSortLinearLayout;->dY:I

    add-int/2addr v1, v5

    if-le v0, v1, :cond_2

    move-object v0, p0

    move-object v1, v10

    move-wide/from16 v4, p3

    .line 214
    invoke-direct/range {v0 .. v5}, Lcom/narvii/widget/DragSortLinearLayout;->setDy(Landroid/view/View;IFJ)V

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    .line 215
    iget v1, v6, Lcom/narvii/widget/DragSortLinearLayout;->downY:I

    iget v4, v6, Lcom/narvii/widget/DragSortLinearLayout;->dY:I

    add-int/2addr v1, v4

    if-ge v0, v1, :cond_3

    neg-int v2, v2

    move-object v0, p0

    move-object v1, v10

    move-wide/from16 v4, p3

    .line 216
    invoke-direct/range {v0 .. v5}, Lcom/narvii/widget/DragSortLinearLayout;->setDy(Landroid/view/View;IFJ)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, v10

    move-wide/from16 v4, p3

    .line 218
    invoke-direct/range {v0 .. v5}, Lcom/narvii/widget/DragSortLinearLayout;->setDy(Landroid/view/View;IFJ)V

    :goto_1
    const/4 v0, 0x0

    move-wide/from16 v11, p3

    .line 220
    invoke-direct {p0, v10, v11, v12}, Lcom/narvii/widget/DragSortLinearLayout;->getDy(Landroid/view/View;J)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_2

    :cond_4
    move-wide/from16 v11, p3

    .line 222
    iget-object v5, v6, Lcom/narvii/widget/DragSortLinearLayout;->draging:Landroid/view/View;

    if-ne v10, v5, :cond_5

    const/4 v4, 0x1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    :goto_2
    invoke-super/range {p0 .. p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 228
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 229
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return v9

    :cond_6
    move-wide/from16 v11, p3

    .line 232
    invoke-super/range {p0 .. p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/narvii/widget/DragSortLinearLayout;->drawTop:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_3

    .line 184
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, v0, :cond_2

    if-ge p2, v1, :cond_0

    return p2

    :cond_0
    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    return p2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->getChildDrawingOrder(II)I

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 59
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/narvii/widget/DragSortLinearLayout;->rightPadding:I

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/narvii/widget/DragSortLinearLayout;->rightPadding:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    goto :goto_0

    .line 64
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_6

    if-eqz v0, :cond_6

    .line 65
    invoke-direct {p0}, Lcom/narvii/widget/DragSortLinearLayout;->getParentScrollView()Landroid/widget/ScrollView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 67
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2
    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/narvii/widget/DragSortLinearLayout;->draging:Landroid/view/View;

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 72
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_4

    .line 73
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 74
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    if-ge v6, v0, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    if-le v6, v0, :cond_3

    .line 75
    iput-object v5, p0, Lcom/narvii/widget/DragSortLinearLayout;->draging:Landroid/view/View;

    .line 76
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/narvii/widget/DragSortLinearLayout;->drawTop:Ljava/lang/ref/WeakReference;

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 80
    :cond_4
    :goto_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 82
    iget-object v0, p0, Lcom/narvii/widget/DragSortLinearLayout;->draging:Landroid/view/View;

    if-eqz v0, :cond_5

    const/high16 v3, 0x3f000000    # 0.5f

    .line 83
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 86
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/narvii/widget/DragSortLinearLayout;->downX:I

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/narvii/widget/DragSortLinearLayout;->downY:I

    .line 88
    iput v2, p0, Lcom/narvii/widget/DragSortLinearLayout;->dX:I

    .line 89
    iput v2, p0, Lcom/narvii/widget/DragSortLinearLayout;->dY:I

    return v1

    .line 93
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 102
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/narvii/widget/DragSortLinearLayout;->rightPadding:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/narvii/widget/DragSortLinearLayout;->rightPadding:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 107
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v2, p0, Lcom/narvii/widget/DragSortLinearLayout;->downX:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/narvii/widget/DragSortLinearLayout;->dX:I

    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget v0, p0, Lcom/narvii/widget/DragSortLinearLayout;->downY:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/narvii/widget/DragSortLinearLayout;->dY:I

    .line 110
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return v1

    .line 113
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 159
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 114
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/narvii/widget/DragSortLinearLayout;->draging:Landroid/view/View;

    const-wide/16 v3, 0xc8

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 115
    iget-object v0, p0, Lcom/narvii/widget/DragSortLinearLayout;->draging:Landroid/view/View;

    iget v2, p0, Lcom/narvii/widget/DragSortLinearLayout;->dX:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 116
    iget-object v0, p0, Lcom/narvii/widget/DragSortLinearLayout;->draging:Landroid/view/View;

    iget v2, p0, Lcom/narvii/widget/DragSortLinearLayout;->dY:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 117
    iget-object v0, p0, Lcom/narvii/widget/DragSortLinearLayout;->draging:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 119
    :cond_4
    iget-object v0, p0, Lcom/narvii/widget/DragSortLinearLayout;->draging:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_d

    .line 122
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/4 v0, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    :goto_1
    if-ge v7, p1, :cond_a

    .line 123
    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    const-wide v12, 0x7fffffffffffffffL

    .line 124
    invoke-direct {p0, v11, v12, v13}, Lcom/narvii/widget/DragSortLinearLayout;->getDy(Landroid/view/View;J)I

    move-result v12

    .line 125
    iget-object v13, p0, Lcom/narvii/widget/DragSortLinearLayout;->draging:Landroid/view/View;

    if-ne v11, v13, :cond_5

    const/4 v11, 0x0

    goto :goto_3

    :cond_5
    if-lez v12, :cond_6

    if-ne v10, v0, :cond_6

    move v10, v7

    goto :goto_2

    :cond_6
    if-gez v12, :cond_7

    move v9, v7

    :cond_7
    :goto_2
    if-lez v12, :cond_8

    .line 134
    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    goto :goto_3

    :cond_8
    if-gez v12, :cond_9

    .line 136
    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    neg-int v11, v11

    goto :goto_3

    :cond_9
    move v11, v12

    :goto_3
    add-int/2addr v8, v11

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_a
    if-eqz v8, :cond_c

    if-ltz v9, :cond_b

    .line 143
    invoke-direct {p0, v9}, Lcom/narvii/widget/DragSortLinearLayout;->changeDragingPosition(I)V

    goto :goto_4

    :cond_b
    if-ltz v10, :cond_c

    .line 145
    invoke-direct {p0, v10}, Lcom/narvii/widget/DragSortLinearLayout;->changeDragingPosition(I)V

    .line 148
    :cond_c
    :goto_4
    iget-object p1, p0, Lcom/narvii/widget/DragSortLinearLayout;->draging:Landroid/view/View;

    iget v0, p0, Lcom/narvii/widget/DragSortLinearLayout;->dX:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 149
    iget-object p1, p0, Lcom/narvii/widget/DragSortLinearLayout;->draging:Landroid/view/View;

    iget v0, p0, Lcom/narvii/widget/DragSortLinearLayout;->dY:I

    add-int/2addr v0, v8

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 150
    iget-object p1, p0, Lcom/narvii/widget/DragSortLinearLayout;->draging:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_d
    const/4 p1, 0x0

    .line 152
    iput-object p1, p0, Lcom/narvii/widget/DragSortLinearLayout;->draging:Landroid/view/View;

    .line 153
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    :goto_5
    if-ge v2, p1, :cond_e

    .line 154
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/widget/DragSortLinearLayout;->clearDy(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 156
    :cond_e
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return v1
.end method

.method public setChildFocusViewId(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/narvii/widget/DragSortLinearLayout;->childFocusViewId:I

    return-void
.end method

.method public setRightPadding(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/narvii/widget/DragSortLinearLayout;->rightPadding:I

    return-void
.end method
