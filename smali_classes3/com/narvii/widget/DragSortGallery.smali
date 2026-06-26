.class public Lcom/narvii/widget/DragSortGallery;
.super Landroid/widget/LinearLayout;
.source "DragSortGallery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/DragSortGallery$Stub;
    }
.end annotation


# instance fields
.field dX:I

.field dY:I

.field downX:I

.field downY:I

.field dragCanceled:Z

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

.field end:I

.field final gd:Landroid/view/GestureDetector;

.field private final gestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field start:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 27
    iput p2, p0, Lcom/narvii/widget/DragSortGallery;->start:I

    const p2, 0x7fffffff

    iput p2, p0, Lcom/narvii/widget/DragSortGallery;->end:I

    .line 40
    new-instance p2, Lcom/narvii/widget/DragSortGallery$1;

    invoke-direct {p2, p0}, Lcom/narvii/widget/DragSortGallery$1;-><init>(Lcom/narvii/widget/DragSortGallery;)V

    iput-object p2, p0, Lcom/narvii/widget/DragSortGallery;->gestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 31
    new-instance p2, Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/narvii/widget/DragSortGallery;->gestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/narvii/widget/DragSortGallery;->gd:Landroid/view/GestureDetector;

    const/4 p1, 0x1

    .line 32
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setChildrenDrawingOrderEnabled(Z)V

    return-void
.end method

.method private clearDx(Landroid/view/View;)V
    .locals 2

    .line 293
    sget v0, Lcom/narvii/lib/R$id;->text:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private getDx(Landroid/view/View;J)I
    .locals 5

    .line 254
    sget v0, Lcom/narvii/lib/R$id;->text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    .line 255
    instance-of v0, p1, Lcom/narvii/widget/DragSortGallery$Stub;

    if-eqz v0, :cond_3

    .line 256
    check-cast p1, Lcom/narvii/widget/DragSortGallery$Stub;

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p2, v0

    if-eqz v2, :cond_2

    .line 257
    iget v0, p1, Lcom/narvii/widget/DragSortGallery$Stub;->x1:I

    iget v1, p1, Lcom/narvii/widget/DragSortGallery$Stub;->x2:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    iget v2, p1, Lcom/narvii/widget/DragSortGallery$Stub;->v:F

    iget-wide v3, p1, Lcom/narvii/widget/DragSortGallery$Stub;->time:J

    sub-long/2addr p2, v3

    long-to-float p1, p2

    mul-float v2, v2, p1

    float-to-int p1, v2

    add-int/2addr p1, v0

    if-le v1, v0, :cond_1

    .line 261
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    .line 263
    :cond_1
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    .line 258
    :cond_2
    :goto_0
    iget p1, p1, Lcom/narvii/widget/DragSortGallery$Stub;->x2:I

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

    .line 69
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 71
    instance-of v2, v1, Landroid/widget/ScrollView;

    if-eqz v2, :cond_0

    .line 72
    check-cast v1, Landroid/widget/ScrollView;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private setDx(Landroid/view/View;IFJ)V
    .locals 2

    .line 271
    sget v0, Lcom/narvii/lib/R$id;->text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 273
    instance-of v1, v0, Lcom/narvii/widget/DragSortGallery$Stub;

    if-eqz v1, :cond_0

    .line 274
    check-cast v0, Lcom/narvii/widget/DragSortGallery$Stub;

    goto :goto_0

    .line 276
    :cond_0
    new-instance v0, Lcom/narvii/widget/DragSortGallery$Stub;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/widget/DragSortGallery$Stub;-><init>(Lcom/narvii/widget/DragSortGallery$1;)V

    .line 277
    sget v1, Lcom/narvii/lib/R$id;->text:I

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 279
    :goto_0
    iget v1, v0, Lcom/narvii/widget/DragSortGallery$Stub;->x2:I

    if-eq p2, v1, :cond_2

    .line 280
    invoke-direct {p0, p1, p4, p5}, Lcom/narvii/widget/DragSortGallery;->getDx(Landroid/view/View;J)I

    move-result p1

    .line 281
    iput p1, v0, Lcom/narvii/widget/DragSortGallery$Stub;->x1:I

    .line 282
    iput p2, v0, Lcom/narvii/widget/DragSortGallery$Stub;->x2:I

    .line 283
    iget p1, v0, Lcom/narvii/widget/DragSortGallery$Stub;->x1:I

    iget p2, v0, Lcom/narvii/widget/DragSortGallery$Stub;->x2:I

    if-le p1, p2, :cond_1

    .line 284
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    neg-float p1, p1

    iput p1, v0, Lcom/narvii/widget/DragSortGallery$Stub;->v:F

    goto :goto_1

    .line 286
    :cond_1
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, v0, Lcom/narvii/widget/DragSortGallery$Stub;->v:F

    .line 288
    :goto_1
    iput-wide p4, v0, Lcom/narvii/widget/DragSortGallery$Stub;->time:J

    :cond_2
    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 13

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    .line 211
    iget-object v0, v6, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 212
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 213
    iget-object v0, v6, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    const/4 v9, 0x1

    if-ne v8, v0, :cond_1

    .line 214
    iget v0, v6, Lcom/narvii/widget/DragSortGallery;->dX:I

    int-to-float v0, v0

    iget v1, v6, Lcom/narvii/widget/DragSortGallery;->dY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    move-wide/from16 v11, p3

    goto/16 :goto_2

    .line 217
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v0, v2

    const/high16 v1, 0x42f00000    # 120.0f

    div-float v3, v0, v1

    .line 219
    iget v0, v6, Lcom/narvii/widget/DragSortGallery;->start:I

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    iget v5, v6, Lcom/narvii/widget/DragSortGallery;->end:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_0
    if-ge v0, v4, :cond_0

    .line 220
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    if-ne v10, v8, :cond_4

    .line 222
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    const-wide v4, 0x7fffffffffffffffL

    invoke-direct {p0, v10, v4, v5}, Lcom/narvii/widget/DragSortGallery;->getDx(Landroid/view/View;J)I

    move-result v4

    add-int/2addr v0, v4

    if-nez v1, :cond_2

    .line 223
    iget v4, v6, Lcom/narvii/widget/DragSortGallery;->downX:I

    iget v5, v6, Lcom/narvii/widget/DragSortGallery;->dX:I

    add-int/2addr v4, v5

    if-le v0, v4, :cond_2

    move-object v0, p0

    move-object v1, v10

    move-wide/from16 v4, p3

    .line 224
    invoke-direct/range {v0 .. v5}, Lcom/narvii/widget/DragSortGallery;->setDx(Landroid/view/View;IFJ)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 225
    iget v1, v6, Lcom/narvii/widget/DragSortGallery;->downX:I

    iget v4, v6, Lcom/narvii/widget/DragSortGallery;->dX:I

    add-int/2addr v1, v4

    if-ge v0, v1, :cond_3

    neg-int v2, v2

    move-object v0, p0

    move-object v1, v10

    move-wide/from16 v4, p3

    .line 226
    invoke-direct/range {v0 .. v5}, Lcom/narvii/widget/DragSortGallery;->setDx(Landroid/view/View;IFJ)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, v10

    move-wide/from16 v4, p3

    .line 228
    invoke-direct/range {v0 .. v5}, Lcom/narvii/widget/DragSortGallery;->setDx(Landroid/view/View;IFJ)V

    :goto_1
    move-wide/from16 v11, p3

    .line 230
    invoke-direct {p0, v10, v11, v12}, Lcom/narvii/widget/DragSortGallery;->getDx(Landroid/view/View;J)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_2

    :cond_4
    move-wide/from16 v11, p3

    .line 232
    iget-object v5, v6, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    if-ne v10, v5, :cond_5

    const/4 v1, 0x1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :goto_2
    invoke-super/range {p0 .. p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 238
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 239
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return v9

    :cond_6
    move-wide/from16 v11, p3

    .line 242
    invoke-super/range {p0 .. p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/narvii/widget/DragSortGallery;->drawTop:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_3

    .line 194
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

    .line 206
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->getChildDrawingOrder(II)I

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    .line 82
    invoke-direct {p0}, Lcom/narvii/widget/DragSortGallery;->getParentScrollView()Landroid/widget/ScrollView;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 89
    iget v2, p0, Lcom/narvii/widget/DragSortGallery;->start:I

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    iget v5, p0, Lcom/narvii/widget/DragSortGallery;->end:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_0
    if-ge v2, v4, :cond_2

    .line 90
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 91
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    if-ge v6, v0, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v6

    if-le v6, v0, :cond_1

    .line 92
    iput-object v5, p0, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    .line 93
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/narvii/widget/DragSortGallery;->drawTop:Ljava/lang/ref/WeakReference;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 99
    iget-object v0, p0, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    if-eqz v0, :cond_3

    const/high16 v2, 0x3f000000    # 0.5f

    .line 100
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 103
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/narvii/widget/DragSortGallery;->downX:I

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/narvii/widget/DragSortGallery;->downY:I

    .line 105
    iput v3, p0, Lcom/narvii/widget/DragSortGallery;->dX:I

    .line 106
    iput v3, p0, Lcom/narvii/widget/DragSortGallery;->dY:I

    .line 108
    iget-object p1, p0, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    return v1

    .line 110
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 115
    iget-object v0, p0, Lcom/narvii/widget/DragSortGallery;->gd:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 117
    iput-boolean v1, p0, Lcom/narvii/widget/DragSortGallery;->dragCanceled:Z

    return v2

    .line 120
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/widget/DragSortGallery;->dragCanceled:Z

    if-eqz v0, :cond_1

    return v2

    .line 122
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 123
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 126
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/narvii/widget/DragSortGallery;->downX:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/narvii/widget/DragSortGallery;->dX:I

    .line 128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget v0, p0, Lcom/narvii/widget/DragSortGallery;->downY:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/narvii/widget/DragSortGallery;->dY:I

    .line 129
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    .line 130
    iget v0, p0, Lcom/narvii/widget/DragSortGallery;->dY:I

    neg-int v1, p1

    if-ge v0, v1, :cond_2

    .line 131
    iput v1, p0, Lcom/narvii/widget/DragSortGallery;->dY:I

    goto :goto_0

    :cond_2
    if-le v0, p1, :cond_3

    .line 133
    iput p1, p0, Lcom/narvii/widget/DragSortGallery;->dY:I

    .line 135
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return v2

    .line 138
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v2, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_5

    goto :goto_1

    .line 186
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 139
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    const-wide/16 v4, 0xc8

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 140
    iget-object v0, p0, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    iget v3, p0, Lcom/narvii/widget/DragSortGallery;->dX:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 141
    iget-object v0, p0, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    iget v3, p0, Lcom/narvii/widget/DragSortGallery;->dY:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 142
    iget-object v0, p0, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 144
    :cond_7
    iget-object v0, p0, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_10

    .line 147
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/4 v0, -0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    :goto_2
    if-ge v3, p1, :cond_d

    .line 148
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    const-wide v12, 0x7fffffffffffffffL

    .line 149
    invoke-direct {p0, v11, v12, v13}, Lcom/narvii/widget/DragSortGallery;->getDx(Landroid/view/View;J)I

    move-result v12

    .line 150
    iget-object v13, p0, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    if-ne v11, v13, :cond_8

    const/4 v11, 0x0

    goto :goto_4

    :cond_8
    if-lez v12, :cond_9

    if-ne v10, v0, :cond_9

    move v10, v3

    goto :goto_3

    :cond_9
    if-gez v12, :cond_a

    move v9, v3

    :cond_a
    :goto_3
    if-lez v12, :cond_b

    .line 159
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    goto :goto_4

    :cond_b
    if-gez v12, :cond_c

    .line 161
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    neg-int v11, v11

    goto :goto_4

    :cond_c
    move v11, v12

    :goto_4
    add-int/2addr v8, v11

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_d
    if-eqz v8, :cond_f

    if-ltz v9, :cond_e

    .line 168
    iget-object p1, p0, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 169
    iget-object p1, p0, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    invoke-virtual {p0, p1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_5

    :cond_e
    if-ltz v10, :cond_f

    .line 171
    iget-object p1, p0, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 172
    iget-object p1, p0, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    invoke-virtual {p0, p1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 175
    :cond_f
    :goto_5
    iget-object p1, p0, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    iget v0, p0, Lcom/narvii/widget/DragSortGallery;->dX:I

    add-int/2addr v0, v8

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 176
    iget-object p1, p0, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    iget v0, p0, Lcom/narvii/widget/DragSortGallery;->dY:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 177
    iget-object p1, p0, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_10
    const/4 p1, 0x0

    .line 179
    iput-object p1, p0, Lcom/narvii/widget/DragSortGallery;->draging:Landroid/view/View;

    .line 180
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    :goto_6
    if-ge v1, p1, :cond_11

    .line 181
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/widget/DragSortGallery;->clearDx(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 183
    :cond_11
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return v2
.end method

.method public setDragRange(II)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/narvii/widget/DragSortGallery;->start:I

    .line 37
    iput p2, p0, Lcom/narvii/widget/DragSortGallery;->end:I

    return-void
.end method
