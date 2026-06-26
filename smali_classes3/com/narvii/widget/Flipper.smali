.class public Lcom/narvii/widget/Flipper;
.super Landroid/widget/FrameLayout;
.source "Flipper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/Flipper$OnFlipperScrollListener;,
        Lcom/narvii/widget/Flipper$FlipperAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/FrameLayout;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field protected static final ANIM_NONE:I = 0x0

.field private static final ANIM_TRANS:I = 0x2

.field private static final ANIM_TRANS_DURATION1:I = 0x1e

.field private static final ANIM_TRANS_DURATION2:I = 0x96

.field private static final ANIM_TRANS_TO_NEXT:I = 0x1

.field private static final ANIM_TRANS_TO_PREVIOUS:I = -0x1

.field private static final FLING_VELOCITY:I = 0x1f4

.field private static final HANDLER:Landroid/os/Handler;


# instance fields
.field private activePointId:I

.field protected adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/widget/Flipper$FlipperAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private animationDuration:I

.field protected animationMode:I

.field private animationStartMs:J

.field private animationX1:I

.field private animationX2:I

.field public autoFilp:Z

.field private autoFlipDuration:I

.field private bind:Lcom/narvii/widget/Flipper;

.field protected currentItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected currentView:Landroid/view/View;

.field private flipDistance:F

.field protected gestureDetector:Landroid/view/GestureDetector;

.field protected gestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field protected isScrolling:Z

.field private isTouching:Z

.field isallowInterceptTouchEvent:Z

.field private mItemSpaceAdjust:I

.field protected nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected nextView:Landroid/view/View;

.field protected previousItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected previousView:Landroid/view/View;

.field private scrollListener:Lcom/narvii/widget/Flipper$OnFlipperScrollListener;

.field private startX:F

.field private startY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/narvii/widget/Flipper;->HANDLER:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/Flipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 127
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 66
    iput p2, p0, Lcom/narvii/widget/Flipper;->animationMode:I

    .line 74
    new-instance p2, Lcom/narvii/widget/Flipper$1;

    invoke-direct {p2, p0}, Lcom/narvii/widget/Flipper$1;-><init>(Lcom/narvii/widget/Flipper;)V

    iput-object p2, p0, Lcom/narvii/widget/Flipper;->gestureListener:Landroid/view/GestureDetector$OnGestureListener;

    const/4 p2, 0x0

    .line 109
    iput p2, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    const/4 p2, 0x1

    .line 120
    iput-boolean p2, p0, Lcom/narvii/widget/Flipper;->isallowInterceptTouchEvent:Z

    .line 128
    new-instance p2, Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/narvii/widget/Flipper;->gestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/narvii/widget/Flipper;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method private isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p1, p2, :cond_1

    if-eqz p1, :cond_0

    .line 264
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private recycle(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    if-eqz v0, :cond_0

    .line 269
    invoke-interface {v0, p1}, Lcom/narvii/widget/Flipper$FlipperAdapter;->recycleView(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 542
    iget v0, p0, Lcom/narvii/widget/Flipper;->animationMode:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_6

    .line 544
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    .line 545
    iget-wide v5, p0, Lcom/narvii/widget/Flipper;->animationStartMs:J

    iget v0, p0, Lcom/narvii/widget/Flipper;->animationDuration:I

    int-to-long v7, v0

    add-long/2addr v7, v5

    cmp-long v9, v7, v3

    if-gez v9, :cond_4

    .line 547
    iget v0, p0, Lcom/narvii/widget/Flipper;->animationMode:I

    if-ne v0, v2, :cond_1

    .line 548
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    iget-object v1, p0, Lcom/narvii/widget/Flipper;->nextItem:Ljava/lang/Object;

    iget-object v2, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/narvii/widget/Flipper$FlipperAdapter;->onMoved(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 550
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    iget-object v1, p0, Lcom/narvii/widget/Flipper;->previousItem:Ljava/lang/Object;

    iget-object v2, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/narvii/widget/Flipper$FlipperAdapter;->onMoved(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 552
    iput v0, p0, Lcom/narvii/widget/Flipper;->animationMode:I

    const/4 v0, 0x0

    .line 553
    iput v0, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    .line 554
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->scrollListener:Lcom/narvii/widget/Flipper$OnFlipperScrollListener;

    if-eqz v0, :cond_3

    .line 555
    iget v1, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/narvii/widget/Flipper$OnFlipperScrollListener;->onScroll(I)V

    .line 557
    :cond_3
    iget v0, p0, Lcom/narvii/widget/Flipper;->autoFlipDuration:I

    if-lez v0, :cond_6

    .line 558
    sget-object v0, Lcom/narvii/widget/Flipper;->HANDLER:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 559
    sget-object v0, Lcom/narvii/widget/Flipper;->HANDLER:Landroid/os/Handler;

    iget v1, p0, Lcom/narvii/widget/Flipper;->autoFlipDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_4
    sub-long/2addr v3, v5

    long-to-float v1, v3

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 563
    iget v0, p0, Lcom/narvii/widget/Flipper;->animationX1:I

    iget v2, p0, Lcom/narvii/widget/Flipper;->animationX2:I

    sub-int/2addr v2, v0

    int-to-float v2, v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    .line 564
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->scrollListener:Lcom/narvii/widget/Flipper$OnFlipperScrollListener;

    if-eqz v0, :cond_5

    .line 565
    iget v1, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/narvii/widget/Flipper$OnFlipperScrollListener;->onScroll(I)V

    .line 567
    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 570
    :cond_6
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 279
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 280
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 281
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lcom/narvii/widget/Flipper;->startX:F

    .line 282
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lcom/narvii/widget/Flipper;->startY:F

    .line 283
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/Flipper;->activePointId:I

    .line 289
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 291
    iget-object v3, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 294
    :goto_0
    iget-object v3, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 295
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 296
    iget-object v3, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 299
    :cond_1
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 302
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 305
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return p1

    :catchall_0
    move-exception p1

    .line 301
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 302
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 304
    :cond_4
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 305
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 307
    :cond_5
    throw p1

    .line 308
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_a

    .line 309
    iget v0, p0, Lcom/narvii/widget/Flipper;->activePointId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    .line 310
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v2

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_7

    goto :goto_1

    .line 314
    :cond_7
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 315
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 317
    iget v4, p0, Lcom/narvii/widget/Flipper;->startX:F

    sub-float/2addr v2, v4

    .line 318
    iget v4, p0, Lcom/narvii/widget/Flipper;->startY:F

    sub-float/2addr v0, v4

    .line 319
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_8

    .line 320
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/narvii/widget/Flipper;->isallowInterceptTouchEvent:Z

    if-nez v0, :cond_c

    .line 321
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_2

    .line 324
    :cond_8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 325
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_2

    .line 311
    :cond_9
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 329
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_c

    :cond_b
    const/4 v0, 0x0

    .line 330
    iput v0, p0, Lcom/narvii/widget/Flipper;->startY:F

    .line 331
    iput v0, p0, Lcom/narvii/widget/Flipper;->startX:F

    .line 334
    :cond_c
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3

    .line 576
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 577
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 578
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    neg-int v0, v0

    iget v2, p0, Lcom/narvii/widget/Flipper;->mItemSpaceAdjust:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    sub-float/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 579
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 580
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 582
    :goto_0
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    if-ne p2, v2, :cond_1

    .line 583
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 584
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/narvii/widget/Flipper;->mItemSpaceAdjust:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    sub-float/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 585
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 586
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 588
    :cond_1
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->currentView:Landroid/view/View;

    if-ne p2, v2, :cond_2

    .line 589
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 590
    iget v0, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    neg-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 591
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 592
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return v0
.end method

.method public flipDistance()F
    .locals 1

    .line 383
    iget v0, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    return v0
.end method

.method public getCurrentItem()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    return-object v0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->currentView:Landroid/view/View;

    return-object v0
.end method

.method public getNextView()Landroid/view/View;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    return-object v0
.end method

.method public getPreviousView()Landroid/view/View;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    return-object v0
.end method

.method public moveToNext(Z)Z
    .locals 4

    .line 492
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->bind:Lcom/narvii/widget/Flipper;

    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {v0, p1}, Lcom/narvii/widget/Flipper;->moveToNext(Z)Z

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->nextItem:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 496
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 498
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 499
    :cond_1
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    iput-object v2, p0, Lcom/narvii/widget/Flipper;->previousItem:Ljava/lang/Object;

    .line 500
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->currentView:Landroid/view/View;

    iput-object v2, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    .line 501
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->nextItem:Ljava/lang/Object;

    iput-object v2, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    .line 502
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    iput-object v2, p0, Lcom/narvii/widget/Flipper;->currentView:Landroid/view/View;

    .line 503
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    iget-object v3, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lcom/narvii/widget/Flipper$FlipperAdapter;->getPreviousItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    iget-object v3, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lcom/narvii/widget/Flipper$FlipperAdapter;->getNextItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/narvii/widget/Flipper;->nextItem:Ljava/lang/Object;

    .line 504
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->nextItem:Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 505
    iget-object v3, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    invoke-interface {v3, v2, v0}, Lcom/narvii/widget/Flipper$FlipperAdapter;->getView(Ljava/lang/Object;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    goto :goto_1

    .line 507
    :cond_3
    invoke-direct {p0, v0}, Lcom/narvii/widget/Flipper;->recycle(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 508
    iput-object v0, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    .line 510
    :goto_1
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 511
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_4
    const/4 v0, 0x1

    if-eqz p1, :cond_5

    .line 513
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    .line 514
    iget v2, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    int-to-float p1, p1

    sub-float/2addr v2, p1

    iput v2, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    .line 515
    iput v0, p0, Lcom/narvii/widget/Flipper;->animationMode:I

    .line 516
    iget v2, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    float-to-int v2, v2

    iput v2, p0, Lcom/narvii/widget/Flipper;->animationX1:I

    .line 517
    iput v1, p0, Lcom/narvii/widget/Flipper;->animationX2:I

    .line 518
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/narvii/widget/Flipper;->animationStartMs:J

    .line 519
    iget v1, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, p1

    const/high16 p1, 0x42f00000    # 120.0f

    mul-float v1, v1, p1

    float-to-int p1, v1

    add-int/lit8 p1, p1, 0x1e

    iput p1, p0, Lcom/narvii/widget/Flipper;->animationDuration:I

    .line 521
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 522
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    iget-object v1, p0, Lcom/narvii/widget/Flipper;->previousItem:Ljava/lang/Object;

    iget-object v2, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    invoke-interface {p1, v1, v2}, Lcom/narvii/widget/Flipper$FlipperAdapter;->onMoving(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    .line 524
    iput p1, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    .line 525
    iput v1, p0, Lcom/narvii/widget/Flipper;->animationMode:I

    .line 526
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    iget-object v1, p0, Lcom/narvii/widget/Flipper;->previousItem:Ljava/lang/Object;

    iget-object v2, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    invoke-interface {p1, v1, v2}, Lcom/narvii/widget/Flipper$FlipperAdapter;->onMoved(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 527
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 529
    :goto_2
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->scrollListener:Lcom/narvii/widget/Flipper$OnFlipperScrollListener;

    if-eqz p1, :cond_6

    .line 530
    iget v1, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    float-to-int v1, v1

    invoke-interface {p1, v1}, Lcom/narvii/widget/Flipper$OnFlipperScrollListener;->onScroll(I)V

    :cond_6
    return v0

    .line 534
    :cond_7
    invoke-virtual {p0, p1}, Lcom/narvii/widget/Flipper;->restorePosition(Z)V

    return v1
.end method

.method public moveToPrevious(Z)Z
    .locals 4

    .line 444
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->bind:Lcom/narvii/widget/Flipper;

    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {v0, p1}, Lcom/narvii/widget/Flipper;->moveToPrevious(Z)Z

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->previousItem:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 448
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 450
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 451
    :cond_1
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    iput-object v2, p0, Lcom/narvii/widget/Flipper;->nextItem:Ljava/lang/Object;

    .line 452
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->currentView:Landroid/view/View;

    iput-object v2, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    .line 453
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->previousItem:Ljava/lang/Object;

    iput-object v2, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    .line 454
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    iput-object v2, p0, Lcom/narvii/widget/Flipper;->currentView:Landroid/view/View;

    .line 455
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    iget-object v3, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lcom/narvii/widget/Flipper$FlipperAdapter;->getNextItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    iget-object v3, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lcom/narvii/widget/Flipper$FlipperAdapter;->getPreviousItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/narvii/widget/Flipper;->previousItem:Ljava/lang/Object;

    .line 456
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->previousItem:Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 457
    iget-object v3, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    invoke-interface {v3, v2, v0}, Lcom/narvii/widget/Flipper$FlipperAdapter;->getView(Ljava/lang/Object;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    goto :goto_1

    .line 459
    :cond_3
    invoke-direct {p0, v0}, Lcom/narvii/widget/Flipper;->recycle(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 460
    iput-object v0, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    .line 462
    :goto_1
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 463
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_4
    if-eqz p1, :cond_5

    .line 465
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    .line 466
    iget v0, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    int-to-float p1, p1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    const/4 v0, -0x1

    .line 467
    iput v0, p0, Lcom/narvii/widget/Flipper;->animationMode:I

    .line 468
    iget v0, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    float-to-int v0, v0

    iput v0, p0, Lcom/narvii/widget/Flipper;->animationX1:I

    .line 469
    iput v1, p0, Lcom/narvii/widget/Flipper;->animationX2:I

    .line 470
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/widget/Flipper;->animationStartMs:J

    .line 471
    iget v0, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, p1

    const/high16 p1, 0x42f00000    # 120.0f

    mul-float v0, v0, p1

    float-to-int p1, v0

    add-int/lit8 p1, p1, 0x1e

    iput p1, p0, Lcom/narvii/widget/Flipper;->animationDuration:I

    .line 473
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 474
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    iget-object v0, p0, Lcom/narvii/widget/Flipper;->nextItem:Ljava/lang/Object;

    iget-object v1, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/narvii/widget/Flipper$FlipperAdapter;->onMoving(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    .line 476
    iput p1, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    .line 477
    iput v1, p0, Lcom/narvii/widget/Flipper;->animationMode:I

    .line 478
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    iget-object v0, p0, Lcom/narvii/widget/Flipper;->nextItem:Ljava/lang/Object;

    iget-object v1, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/narvii/widget/Flipper$FlipperAdapter;->onMoved(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 479
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 481
    :goto_2
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->scrollListener:Lcom/narvii/widget/Flipper$OnFlipperScrollListener;

    if-eqz p1, :cond_6

    .line 482
    iget v0, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    float-to-int v0, v0

    invoke-interface {p1, v0}, Lcom/narvii/widget/Flipper$OnFlipperScrollListener;->onScroll(I)V

    :cond_6
    const/4 p1, 0x1

    return p1

    .line 486
    :cond_7
    invoke-virtual {p0, p1}, Lcom/narvii/widget/Flipper;->restorePosition(Z)V

    return v1
.end method

.method public onFling(F)V
    .locals 5

    .line 402
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, -0x3c060000    # -500.0f

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_3

    .line 403
    iget v2, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    int-to-float v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v3, 0x43fa0000    # 500.0f

    cmpl-float p1, p1, v3

    if-gtz p1, :cond_2

    neg-int p1, v0

    int-to-float p1, p1

    div-float/2addr p1, v4

    cmpg-float p1, v2, p1

    if-gez p1, :cond_1

    goto :goto_0

    .line 411
    :cond_1
    invoke-virtual {p0, v1}, Lcom/narvii/widget/Flipper;->restorePosition(Z)V

    return-void

    .line 408
    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lcom/narvii/widget/Flipper;->moveToPrevious(Z)Z

    return-void

    .line 404
    :cond_3
    :goto_1
    invoke-virtual {p0, v1}, Lcom/narvii/widget/Flipper;->moveToNext(Z)Z

    return-void
.end method

.method protected onScrollX(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->bind:Lcom/narvii/widget/Flipper;

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/widget/Flipper;->onScrollX(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)V

    .line 375
    :cond_0
    iget p1, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    add-float/2addr p1, p3

    iput p1, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    .line 376
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->scrollListener:Lcom/narvii/widget/Flipper$OnFlipperScrollListener;

    if-eqz p1, :cond_1

    .line 377
    iget p2, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    float-to-int p2, p2

    invoke-interface {p1, p2}, Lcom/narvii/widget/Flipper$OnFlipperScrollListener;->onScroll(I)V

    .line 379
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public onScrollXEnd()V
    .locals 5

    .line 387
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    .line 388
    iget v1, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    neg-int v2, v0

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/4 v4, 0x1

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    .line 390
    invoke-virtual {p0, v4}, Lcom/narvii/widget/Flipper;->moveToPrevious(Z)Z

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    div-float/2addr v0, v3

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    .line 393
    invoke-virtual {p0, v4}, Lcom/narvii/widget/Flipper;->moveToNext(Z)Z

    goto :goto_0

    .line 396
    :cond_1
    invoke-virtual {p0, v4}, Lcom/narvii/widget/Flipper;->restorePosition(Z)V

    :goto_0
    return-void
.end method

.method protected onTap()V
    .locals 2

    .line 415
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    iget-object v1, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/narvii/widget/Flipper$FlipperAdapter;->onTap(Ljava/lang/Object;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 339
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 343
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/narvii/widget/Flipper;->isScrolling:Z

    if-eqz v0, :cond_1

    .line 344
    invoke-virtual {p0}, Lcom/narvii/widget/Flipper;->onScrollXEnd()V

    .line 345
    iput-boolean v3, p0, Lcom/narvii/widget/Flipper;->isScrolling:Z

    .line 347
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 348
    invoke-virtual {p0}, Lcom/narvii/widget/Flipper;->onScrollXEnd()V

    .line 349
    iput-boolean v3, p0, Lcom/narvii/widget/Flipper;->isScrolling:Z

    .line 352
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_5

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_3

    goto :goto_0

    .line 355
    :cond_3
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 356
    iget p1, p0, Lcom/narvii/widget/Flipper;->autoFlipDuration:I

    if-lez p1, :cond_4

    .line 357
    sget-object p1, Lcom/narvii/widget/Flipper;->HANDLER:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 358
    sget-object p1, Lcom/narvii/widget/Flipper;->HANDLER:Landroid/os/Handler;

    iget v0, p0, Lcom/narvii/widget/Flipper;->autoFlipDuration:I

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 360
    :cond_4
    iput-boolean v3, p0, Lcom/narvii/widget/Flipper;->isScrolling:Z

    .line 361
    iput-boolean v3, p0, Lcom/narvii/widget/Flipper;->isTouching:Z

    goto :goto_0

    .line 364
    :cond_5
    sget-object p1, Lcom/narvii/widget/Flipper;->HANDLER:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 365
    iput-boolean v2, p0, Lcom/narvii/widget/Flipper;->isTouching:Z

    :goto_0
    return v2
.end method

.method public restorePosition(Z)V
    .locals 2

    .line 419
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->bind:Lcom/narvii/widget/Flipper;

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {v0, p1}, Lcom/narvii/widget/Flipper;->restorePosition(Z)V

    .line 422
    :cond_0
    iget v0, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 425
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    const/4 v1, 0x2

    .line 426
    iput v1, p0, Lcom/narvii/widget/Flipper;->animationMode:I

    .line 427
    iget v1, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    float-to-int v1, v1

    iput v1, p0, Lcom/narvii/widget/Flipper;->animationX1:I

    .line 428
    iput v0, p0, Lcom/narvii/widget/Flipper;->animationX2:I

    .line 429
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/widget/Flipper;->animationStartMs:J

    .line 430
    iget v0, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    const/high16 p1, 0x42f00000    # 120.0f

    mul-float v0, v0, p1

    float-to-int p1, v0

    add-int/lit8 p1, p1, 0x1e

    iput p1, p0, Lcom/narvii/widget/Flipper;->animationDuration:I

    .line 432
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    .line 434
    :cond_2
    iput v1, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    .line 435
    iput v0, p0, Lcom/narvii/widget/Flipper;->animationMode:I

    .line 436
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->scrollListener:Lcom/narvii/widget/Flipper$OnFlipperScrollListener;

    if-eqz p1, :cond_3

    .line 437
    iget v0, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    float-to-int v0, v0

    invoke-interface {p1, v0}, Lcom/narvii/widget/Flipper$OnFlipperScrollListener;->onScroll(I)V

    .line 439
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 3

    .line 600
    iget v0, p0, Lcom/narvii/widget/Flipper;->autoFlipDuration:I

    if-nez v0, :cond_0

    return-void

    .line 602
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/widget/Flipper;->isTouching:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/narvii/widget/Flipper;->isScrolling:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 606
    invoke-virtual {p0, v0}, Lcom/narvii/widget/Flipper;->moveToNext(Z)Z

    goto :goto_1

    .line 603
    :cond_2
    :goto_0
    sget-object v0, Lcom/narvii/widget/Flipper;->HANDLER:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 604
    sget-object v0, Lcom/narvii/widget/Flipper;->HANDLER:Landroid/os/Handler;

    iget v1, p0, Lcom/narvii/widget/Flipper;->autoFlipDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method

.method public setAdapter(Lcom/narvii/widget/Flipper$FlipperAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/widget/Flipper$FlipperAdapter<",
            "TT;>;)V"
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    return-void
.end method

.method public setBindFlipper(Lcom/narvii/widget/Flipper;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/narvii/widget/Flipper;->bind:Lcom/narvii/widget/Flipper;

    return-void
.end method

.method public setCurrentItem(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    iget-object v1, p0, Lcom/narvii/widget/Flipper;->previousItem:Ljava/lang/Object;

    iget-object v2, p0, Lcom/narvii/widget/Flipper;->nextItem:Ljava/lang/Object;

    .line 166
    iput-object p1, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    .line 167
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    invoke-interface {v3, p1}, Lcom/narvii/widget/Flipper$FlipperAdapter;->getNextItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    invoke-interface {v3, p1}, Lcom/narvii/widget/Flipper$FlipperAdapter;->getPreviousItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lcom/narvii/widget/Flipper;->previousItem:Ljava/lang/Object;

    .line 168
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    invoke-interface {v3, p1}, Lcom/narvii/widget/Flipper$FlipperAdapter;->getPreviousItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    invoke-interface {v3, p1}, Lcom/narvii/widget/Flipper$FlipperAdapter;->getNextItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/narvii/widget/Flipper;->nextItem:Ljava/lang/Object;

    .line 170
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/Flipper;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v3, 0x0

    if-nez p1, :cond_4

    .line 171
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->currentView:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 172
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 173
    :cond_2
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    if-eqz p1, :cond_3

    .line 174
    iget-object v4, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    iget-object v5, p0, Lcom/narvii/widget/Flipper;->currentView:Landroid/view/View;

    invoke-interface {v4, p1, v5}, Lcom/narvii/widget/Flipper$FlipperAdapter;->getView(Ljava/lang/Object;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/Flipper;->currentView:Landroid/view/View;

    goto :goto_2

    .line 176
    :cond_3
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->currentView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/narvii/widget/Flipper;->recycle(Landroid/view/View;)V

    .line 177
    iput-object v3, p0, Lcom/narvii/widget/Flipper;->currentView:Landroid/view/View;

    .line 179
    :goto_2
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->currentView:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 180
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 183
    :cond_4
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->previousItem:Ljava/lang/Object;

    invoke-direct {p0, p1, v1}, Lcom/narvii/widget/Flipper;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 184
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    if-eqz p1, :cond_5

    .line 185
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 186
    :cond_5
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->previousItem:Ljava/lang/Object;

    if-eqz p1, :cond_6

    .line 187
    iget-object v1, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    iget-object v4, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    invoke-interface {v1, p1, v4}, Lcom/narvii/widget/Flipper$FlipperAdapter;->getView(Ljava/lang/Object;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    goto :goto_3

    .line 189
    :cond_6
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/narvii/widget/Flipper;->recycle(Landroid/view/View;)V

    .line 190
    iput-object v3, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    .line 192
    :goto_3
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    if-eqz p1, :cond_7

    .line 193
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 196
    :cond_7
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->nextItem:Ljava/lang/Object;

    invoke-direct {p0, p1, v2}, Lcom/narvii/widget/Flipper;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 197
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    if-eqz p1, :cond_8

    .line 198
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 199
    :cond_8
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->nextItem:Ljava/lang/Object;

    if-eqz p1, :cond_9

    .line 200
    iget-object v1, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    iget-object v2, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    invoke-interface {v1, p1, v2}, Lcom/narvii/widget/Flipper$FlipperAdapter;->getView(Ljava/lang/Object;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    goto :goto_4

    .line 202
    :cond_9
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/narvii/widget/Flipper;->recycle(Landroid/view/View;)V

    .line 203
    iput-object v3, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    .line 205
    :goto_4
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    if-eqz p1, :cond_a

    .line 206
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 209
    :cond_a
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lcom/narvii/widget/Flipper;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 210
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    iget-object v1, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/narvii/widget/Flipper$FlipperAdapter;->onMoved(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b
    return-void
.end method

.method public setIsallowInterceptTouchEvent(Z)V
    .locals 0

    .line 273
    iput-boolean p1, p0, Lcom/narvii/widget/Flipper;->isallowInterceptTouchEvent:Z

    return-void
.end method

.method public setItemSpaceSpanAdjust(I)V
    .locals 0

    .line 132
    iput p1, p0, Lcom/narvii/widget/Flipper;->mItemSpaceAdjust:I

    return-void
.end method

.method public setOnFlipperScrollListener(Lcom/narvii/widget/Flipper$OnFlipperScrollListener;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/narvii/widget/Flipper;->scrollListener:Lcom/narvii/widget/Flipper$OnFlipperScrollListener;

    return-void
.end method

.method public startAutoFlip(I)V
    .locals 3

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lcom/narvii/widget/Flipper;->autoFilp:Z

    .line 149
    iput p1, p0, Lcom/narvii/widget/Flipper;->autoFlipDuration:I

    .line 150
    sget-object v0, Lcom/narvii/widget/Flipper;->HANDLER:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 151
    sget-object v0, Lcom/narvii/widget/Flipper;->HANDLER:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stopAutoFlip()V
    .locals 1

    const/4 v0, 0x0

    .line 155
    iput-boolean v0, p0, Lcom/narvii/widget/Flipper;->autoFilp:Z

    .line 156
    iput v0, p0, Lcom/narvii/widget/Flipper;->autoFlipDuration:I

    .line 157
    sget-object v0, Lcom/narvii/widget/Flipper;->HANDLER:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public update()V
    .locals 4

    .line 226
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    iget-object v1, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/narvii/widget/Flipper$FlipperAdapter;->getNextItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    iget-object v1, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/narvii/widget/Flipper$FlipperAdapter;->getPreviousItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/narvii/widget/Flipper;->previousItem:Ljava/lang/Object;

    .line 227
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    iget-object v1, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/narvii/widget/Flipper$FlipperAdapter;->getPreviousItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    iget-object v1, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/narvii/widget/Flipper$FlipperAdapter;->getNextItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/narvii/widget/Flipper;->nextItem:Ljava/lang/Object;

    .line 229
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->currentView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 230
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 232
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    iget-object v3, p0, Lcom/narvii/widget/Flipper;->currentView:Landroid/view/View;

    invoke-interface {v2, v0, v3}, Lcom/narvii/widget/Flipper$FlipperAdapter;->getView(Ljava/lang/Object;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/Flipper;->currentView:Landroid/view/View;

    goto :goto_2

    .line 234
    :cond_3
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->currentView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/narvii/widget/Flipper;->recycle(Landroid/view/View;)V

    .line 235
    iput-object v1, p0, Lcom/narvii/widget/Flipper;->currentView:Landroid/view/View;

    .line 237
    :goto_2
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->currentView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 238
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 240
    :cond_4
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 241
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 242
    :cond_5
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->previousItem:Ljava/lang/Object;

    if-eqz v0, :cond_6

    .line 243
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    iget-object v3, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    invoke-interface {v2, v0, v3}, Lcom/narvii/widget/Flipper$FlipperAdapter;->getView(Ljava/lang/Object;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    goto :goto_3

    .line 245
    :cond_6
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/narvii/widget/Flipper;->recycle(Landroid/view/View;)V

    .line 246
    iput-object v1, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    .line 248
    :goto_3
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 249
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 251
    :cond_7
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 252
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 253
    :cond_8
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->nextItem:Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 254
    iget-object v1, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    iget-object v2, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    invoke-interface {v1, v0, v2}, Lcom/narvii/widget/Flipper$FlipperAdapter;->getView(Ljava/lang/Object;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    goto :goto_4

    .line 256
    :cond_9
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/narvii/widget/Flipper;->recycle(Landroid/view/View;)V

    .line 257
    iput-object v1, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    .line 259
    :goto_4
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 260
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_a
    return-void
.end method
