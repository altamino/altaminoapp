.class public Lcom/narvii/widget/NVScrollView;
.super Landroid/widget/ScrollView;
.source "NVScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/NVScrollView$OnScrollListener;
    }
.end annotation


# static fields
.field public static final OVERSCROLL_STRETCH_TAG:I

.field private static fEdgeGlowBottom:Ljava/lang/reflect/Field;

.field private static fEdgeGlowTop:Ljava/lang/reflect/Field;

.field private static fOverflingDistance:Ljava/lang/reflect/Field;

.field private static fOverscrollDistance:Ljava/lang/reflect/Field;

.field private static fScroller:Ljava/lang/reflect/Field;

.field private static fScrollerInited:Z

.field private static inited:Z

.field private static removeEdgeGlowInited:Z


# instance fields
.field private blockLayout:Z

.field bottomDrawable:Landroid/graphics/drawable/Drawable;

.field private overscrollY:I

.field private pendingLayout:Z

.field private scrollListener:Lcom/narvii/widget/NVScrollView$OnScrollListener;

.field private swipeRefreshActivePointerId:I

.field public swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

.field private swipeRefreshOverscrollY:I

.field private swipeRefreshStartY:I

.field private swipeRefreshStatus:I

.field private swipeRefreshY:I

.field topDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    sget v0, Lcom/narvii/widget/NVListView;->OVERSCROLL_STRETCH_TAG:I

    sput v0, Lcom/narvii/widget/NVScrollView;->OVERSCROLL_STRETCH_TAG:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/NVScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-static {p1}, Lcom/narvii/widget/NVListView;->getNoEdgeGlowEffectContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0}, Lcom/narvii/widget/NVScrollView;->initOverscroll()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 44
    invoke-static {p0}, Lcom/narvii/widget/NVScrollView;->removeEdgeGlowEffect(Landroid/widget/ScrollView;)V

    :cond_0
    return-void
.end method

.method private getContHeight()I
    .locals 2

    .line 323
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 324
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method private initOverscroll()Z
    .locals 5

    .line 53
    sget-boolean v0, Lcom/narvii/widget/NVScrollView;->inited:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 55
    :try_start_0
    const-class v0, Landroid/widget/ScrollView;

    const-string v2, "mOverflingDistance"

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/narvii/widget/NVScrollView;->fOverflingDistance:Ljava/lang/reflect/Field;

    .line 57
    sget-object v0, Lcom/narvii/widget/NVScrollView;->fOverflingDistance:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 58
    const-class v0, Landroid/widget/ScrollView;

    const-string v2, "mOverscrollDistance"

    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/narvii/widget/NVScrollView;->fOverscrollDistance:Ljava/lang/reflect/Field;

    .line 60
    sget-object v0, Lcom/narvii/widget/NVScrollView;->fOverscrollDistance:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 61
    sput-boolean v1, Lcom/narvii/widget/NVScrollView;->inited:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "fail to init overscroll"

    .line 63
    invoke-static {v2, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    :cond_0
    :goto_0
    sget-object v0, Lcom/narvii/widget/NVScrollView;->fOverscrollDistance:Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/narvii/widget/NVScrollView;->fOverflingDistance:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    goto :goto_1

    .line 70
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/narvii/lib/R$dimen;->overscroll_height:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 72
    sget-object v3, Lcom/narvii/widget/NVScrollView;->fOverflingDistance:Ljava/lang/reflect/Field;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    sget-object v3, Lcom/narvii/widget/NVScrollView;->fOverscrollDistance:Ljava/lang/reflect/Field;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->setOverScrollMode(I)V

    .line 75
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->setClipChildren(Z)V

    .line 76
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->setClipToPadding(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    :catch_1
    :cond_2
    :goto_1
    return v2
.end method

.method private isScrollerFinished()Ljava/lang/Boolean;
    .locals 3

    .line 334
    sget-boolean v0, Lcom/narvii/widget/NVScrollView;->fScrollerInited:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 335
    sput-boolean v0, Lcom/narvii/widget/NVScrollView;->fScrollerInited:Z

    .line 337
    :try_start_0
    const-class v1, Landroid/widget/ScrollView;

    const-string v2, "mScroller"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 338
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 339
    sput-object v1, Lcom/narvii/widget/NVScrollView;->fScroller:Ljava/lang/reflect/Field;

    .line 340
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/OverScroller;

    .line 341
    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "overscroll unknown scroller"

    .line 343
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 345
    :cond_0
    sget-object v0, Lcom/narvii/widget/NVScrollView;->fScroller:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 347
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/OverScroller;

    .line 348
    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private onSwipeRefreshOverscroll(I)V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    if-nez v0, :cond_0

    return-void

    .line 228
    :cond_0
    iput p1, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshOverscrollY:I

    .line 229
    iget v0, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-gez p1, :cond_1

    const/4 p1, 0x2

    .line 230
    iput p1, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshStatus:I

    .line 231
    iget p1, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshY:I

    iput p1, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshStartY:I

    :cond_1
    return-void
.end method

.method private onSwipeRefreshTouch(Landroid/view/MotionEvent;)V
    .locals 5

    .line 236
    iget-object v0, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    if-nez v0, :cond_0

    return-void

    .line 239
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_6

    const/4 v2, 0x5

    if-eq v0, v2, :cond_3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    goto/16 :goto_0

    .line 268
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 269
    iget v2, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshActivePointerId:I

    if-ne v0, v2, :cond_b

    if-nez v0, :cond_2

    const/4 v1, 0x1

    .line 272
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshActivePointerId:I

    goto/16 :goto_0

    .line 265
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshActivePointerId:I

    goto/16 :goto_0

    .line 253
    :cond_4
    iget v0, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ltz v0, :cond_b

    .line 254
    iget v1, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshStatus:I

    if-lt v1, v2, :cond_b

    .line 255
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    iget v0, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshStartY:I

    sub-int/2addr p1, v0

    .line 256
    iget-object v0, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    iput-boolean v3, v0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mIsBeingDragged:Z

    if-lez p1, :cond_5

    int-to-float p1, p1

    .line 258
    invoke-virtual {v0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->moveSpinner(F)V

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    .line 260
    invoke-virtual {v0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->finishSpinner(F)V

    goto :goto_0

    .line 277
    :cond_6
    iget v0, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshStatus:I

    if-lt v0, v2, :cond_7

    .line 278
    iget v0, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ltz v0, :cond_7

    .line 280
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    iget v0, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshStartY:I

    sub-int/2addr p1, v0

    if-lez p1, :cond_7

    .line 282
    iget-object v0, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    iput-boolean v3, v0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mIsBeingDragged:Z

    int-to-float p1, p1

    .line 283
    invoke-virtual {v0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->finishSpinner(F)V

    .line 287
    :cond_7
    iput v1, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshStatus:I

    goto :goto_0

    .line 241
    :cond_8
    iget-object v0, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-virtual {v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 242
    iput v1, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshStatus:I

    goto :goto_0

    .line 244
    :cond_9
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshActivePointerId:I

    .line 245
    iget v0, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshOverscrollY:I

    if-gez v0, :cond_a

    const/4 v3, 0x2

    :cond_a
    iput v3, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshStatus:I

    .line 246
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshY:I

    .line 247
    iget p1, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshStatus:I

    if-ne p1, v2, :cond_b

    .line 248
    iget p1, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshY:I

    iput p1, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshStartY:I

    :cond_b
    :goto_0
    return-void
.end method

.method static removeEdgeGlowEffect(Landroid/widget/ScrollView;)V
    .locals 3

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    return-void

    .line 99
    :cond_0
    sget-boolean v0, Lcom/narvii/widget/NVScrollView;->removeEdgeGlowInited:Z

    if-nez v0, :cond_1

    .line 100
    const-class v0, Landroid/widget/ScrollView;

    const-string v1, "mEdgeGlowTop"

    invoke-static {v0, v1}, Lcom/narvii/widget/NVListView;->searchDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/narvii/widget/NVScrollView;->fEdgeGlowTop:Ljava/lang/reflect/Field;

    .line 101
    const-class v0, Landroid/widget/ScrollView;

    const-string v1, "mEdgeGlowBottom"

    invoke-static {v0, v1}, Lcom/narvii/widget/NVListView;->searchDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/narvii/widget/NVScrollView;->fEdgeGlowBottom:Ljava/lang/reflect/Field;

    const/4 v0, 0x1

    .line 102
    sput-boolean v0, Lcom/narvii/widget/NVScrollView;->removeEdgeGlowInited:Z

    .line 105
    :cond_1
    :try_start_0
    sget-object v0, Lcom/narvii/widget/NVScrollView;->fEdgeGlowTop:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    .line 106
    sget-object v0, Lcom/narvii/widget/NVScrollView;->fEdgeGlowTop:Ljava/lang/reflect/Field;

    new-instance v1, Lcom/narvii/widget/NVListView$NoEdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/widget/NVListView$NoEdgeEffect;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    :cond_2
    sget-object v0, Lcom/narvii/widget/NVScrollView;->fEdgeGlowBottom:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3

    .line 109
    sget-object v0, Lcom/narvii/widget/NVScrollView;->fEdgeGlowBottom:Ljava/lang/reflect/Field;

    new-instance v1, Lcom/narvii/widget/NVListView$NoEdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/widget/NVListView$NoEdgeEffect;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 294
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 295
    invoke-direct {p0, p1}, Lcom/narvii/widget/NVScrollView;->onSwipeRefreshTouch(Landroid/view/MotionEvent;)V

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7

    .line 183
    iget v0, p0, Lcom/narvii/widget/NVScrollView;->overscrollY:I

    const/4 v1, 0x0

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/widget/NVScrollView;->getVerticalLayout()Landroid/view/ViewGroup;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 184
    invoke-virtual {p0}, Lcom/narvii/widget/NVScrollView;->getOverscrollStretchView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 186
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v3, :cond_0

    const-string v0, "overscroll stretch view must have a specific height"

    .line 188
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_0
    iget v4, p0, Lcom/narvii/widget/NVScrollView;->overscrollY:I

    neg-int v4, v4

    add-int/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    .line 191
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 192
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 191
    invoke-virtual {v0, v2, v4}, Landroid/view/View;->measure(II)V

    .line 193
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v4, p0, Lcom/narvii/widget/NVScrollView;->overscrollY:I

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    iget v6, p0, Lcom/narvii/widget/NVScrollView;->overscrollY:I

    add-int/2addr v6, v3

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 194
    iput v1, p0, Lcom/narvii/widget/NVScrollView;->overscrollY:I

    goto :goto_0

    .line 196
    :cond_1
    iget v0, p0, Lcom/narvii/widget/NVScrollView;->overscrollY:I

    if-gez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/narvii/widget/NVScrollView;->topDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne p2, v0, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    if-ltz v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/narvii/widget/NVScrollView;->topDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/narvii/widget/NVScrollView;->overscrollY:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 198
    iget-object v0, p0, Lcom/narvii/widget/NVScrollView;->topDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 200
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/narvii/widget/NVScrollView;->bottomDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne p2, v0, :cond_3

    .line 201
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 202
    iget-object v2, p0, Lcom/narvii/widget/NVScrollView;->bottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/narvii/widget/NVScrollView;->overscrollY:I

    add-int/2addr v5, v6

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 203
    iget-object v1, p0, Lcom/narvii/widget/NVScrollView;->bottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 204
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 206
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method protected getOverscrollStretchView()Landroid/view/View;
    .locals 6

    .line 146
    invoke-virtual {p0}, Lcom/narvii/widget/NVScrollView;->getVerticalLayout()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 148
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 149
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 150
    sget v4, Lcom/narvii/widget/NVScrollView;->OVERSCROLL_STRETCH_TAG:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v4, v5, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getVerticalLayout()Landroid/view/ViewGroup;
    .locals 2

    .line 139
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 140
    check-cast v0, Landroid/view/ViewGroup;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 211
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 117
    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    .line 119
    invoke-virtual {p0}, Lcom/narvii/widget/NVScrollView;->getVerticalLayout()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 120
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 121
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_0
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 2

    .line 161
    iput p2, p0, Lcom/narvii/widget/NVScrollView;->overscrollY:I

    .line 162
    invoke-direct {p0, p2}, Lcom/narvii/widget/NVScrollView;->onSwipeRefreshOverscroll(I)V

    .line 163
    invoke-virtual {p0}, Lcom/narvii/widget/NVScrollView;->getOverscrollStretchView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-gez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/narvii/widget/NVScrollView;->blockLayout:Z

    .line 164
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onOverScrolled(IIZZ)V

    .line 165
    iget-boolean p1, p0, Lcom/narvii/widget/NVScrollView;->blockLayout:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/narvii/widget/NVScrollView;->pendingLayout:Z

    if-eqz p1, :cond_1

    .line 166
    iput-boolean v1, p0, Lcom/narvii/widget/NVScrollView;->pendingLayout:Z

    .line 167
    invoke-virtual {p0}, Lcom/narvii/widget/NVScrollView;->requestLayout()V

    :cond_1
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    .line 131
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 132
    iget-object v0, p0, Lcom/narvii/widget/NVScrollView;->scrollListener:Lcom/narvii/widget/NVScrollView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/narvii/widget/NVScrollView$OnScrollListener;->onScroll(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 305
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 306
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 307
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 309
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p1

    const/4 v1, -0x1

    const/4 v3, 0x0

    if-ge p1, v1, :cond_1

    goto :goto_0

    .line 312
    :cond_1
    invoke-direct {p0}, Lcom/narvii/widget/NVScrollView;->getContHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    sub-int/2addr v1, v4

    if-le p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 315
    invoke-direct {p0}, Lcom/narvii/widget/NVScrollView;->isScrollerFinished()Ljava/lang/Boolean;

    move-result-object p1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p1, v1, :cond_3

    .line 316
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p1

    invoke-virtual {p0, v3, p1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    :cond_3
    return v0
.end method

.method public requestLayout()V
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/narvii/widget/NVScrollView;->blockLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lcom/narvii/widget/NVScrollView;->pendingLayout:Z

    goto :goto_0

    .line 176
    :cond_0
    invoke-super {p0}, Landroid/widget/ScrollView;->requestLayout()V

    :goto_0
    return-void
.end method

.method public setBottomOverScrollColor(I)V
    .locals 1

    .line 84
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/narvii/widget/NVScrollView;->bottomDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setOnScrollListener(Lcom/narvii/widget/NVScrollView$OnScrollListener;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/narvii/widget/NVScrollView;->scrollListener:Lcom/narvii/widget/NVScrollView$OnScrollListener;

    return-void
.end method

.method public setTopOverScrollColor(I)V
    .locals 1

    .line 88
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/narvii/widget/NVScrollView;->topDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method
