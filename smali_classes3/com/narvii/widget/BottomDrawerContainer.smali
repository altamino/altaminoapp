.class public Lcom/narvii/widget/BottomDrawerContainer;
.super Landroid/widget/FrameLayout;
.source "BottomDrawerContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/BottomDrawerContainer$DismissListener;
    }
.end annotation


# static fields
.field private static final MODE_HORIZONTAL:I = 0x2

.field private static final MODE_VERTICAL:I = 0x1


# instance fields
.field private beginToDismiss:Z

.field private dismissListener:Lcom/narvii/widget/BottomDrawerContainer$DismissListener;

.field private dismissThreshold:I

.field private isEdgeDrawing:Z

.field private mActiveInterCeptPointerId:I

.field private mActivePointerId:I

.field private mContentRect:Landroid/graphics/Rect;

.field private mCurPosX:F

.field private mCurPosY:F

.field private mEdgeEffectBottom:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mLastInterceptX:F

.field private mLastInterceptY:F

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mTrackX:F

.field private mTrackY:F

.field private mUpX:F

.field private mUpY:F

.field private mViewHeight:F

.field private mViewWidth:F

.field private readyShowBottomEdge:Z

.field private shouldAdjust:Z

.field springSystem:Lcom/facebook/rebound/SpringSystem;

.field private topFreezeThreshold:I

.field private touchEventThreshold:I

.field private translateMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/BottomDrawerContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->springSystem:Lcom/facebook/rebound/SpringSystem;

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->mContentRect:Landroid/graphics/Rect;

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->mActivePointerId:I

    .line 59
    iput v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->mActiveInterCeptPointerId:I

    .line 73
    sget-object v0, Lcom/narvii/lib/R$styleable;->BottomDrawerContainer:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 74
    sget v0, Lcom/narvii/lib/R$styleable;->BottomDrawerContainer_dismiss_threshold:I

    const/16 v1, 0x12c

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->dismissThreshold:I

    .line 75
    sget v0, Lcom/narvii/lib/R$styleable;->BottomDrawerContainer_top_threshold:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->topFreezeThreshold:I

    .line 76
    sget v0, Lcom/narvii/lib/R$styleable;->BottomDrawerContainer_touch_event_threshold:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->touchEventThreshold:I

    .line 77
    sget v0, Lcom/narvii/lib/R$styleable;->BottomDrawerContainer_translate_mode:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->translateMode:I

    .line 78
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    new-instance p2, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {p2, p1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/narvii/widget/BottomDrawerContainer;->mEdgeEffectBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 82
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/widget/BottomDrawerContainer;)F
    .locals 0

    .line 25
    iget p0, p0, Lcom/narvii/widget/BottomDrawerContainer;->mViewHeight:F

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/widget/BottomDrawerContainer;)Lcom/narvii/widget/BottomDrawerContainer$DismissListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/narvii/widget/BottomDrawerContainer;->dismissListener:Lcom/narvii/widget/BottomDrawerContainer$DismissListener;

    return-object p0
.end method

.method private drawEdgeEffects(Landroid/graphics/Canvas;)V
    .locals 6

    .line 306
    iget-object v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->mEdgeEffectBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->isEdgeDrawing:Z

    if-nez v0, :cond_3

    .line 307
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 308
    iget-object v2, p0, Lcom/narvii/widget/BottomDrawerContainer;->mContentRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v2, 0x43340000    # 180.0f

    .line 309
    iget-object v3, p0, Lcom/narvii/widget/BottomDrawerContainer;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 310
    iget-object v2, p0, Lcom/narvii/widget/BottomDrawerContainer;->mEdgeEffectBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    iget-object v3, p0, Lcom/narvii/widget/BottomDrawerContainer;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v5, p0, Lcom/narvii/widget/BottomDrawerContainer;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 311
    iget v2, p0, Lcom/narvii/widget/BottomDrawerContainer;->translateMode:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/narvii/widget/BottomDrawerContainer;->mCurPosX:F

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/narvii/widget/BottomDrawerContainer;->translateMode:I

    const/4 v5, 0x1

    and-int/2addr v3, v5

    if-eqz v3, :cond_1

    iget v4, p0, Lcom/narvii/widget/BottomDrawerContainer;->mCurPosY:F

    :cond_1
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 313
    iget-object v2, p0, Lcom/narvii/widget/BottomDrawerContainer;->mEdgeEffectBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    .line 314
    iget-object v2, p0, Lcom/narvii/widget/BottomDrawerContainer;->mEdgeEffectBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 316
    iput-boolean v5, p0, Lcom/narvii/widget/BottomDrawerContainer;->isEdgeDrawing:Z

    const/4 v1, 0x1

    .line 318
    :cond_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    if-eqz v1, :cond_4

    .line 320
    iget-boolean p1, p0, Lcom/narvii/widget/BottomDrawerContainer;->isEdgeDrawing:Z

    if-nez p1, :cond_4

    .line 321
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method private onActionDown(Landroid/view/MotionEvent;)V
    .locals 2

    .line 179
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 180
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mLastTouchX:F

    .line 181
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    iput p1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mLastTouchY:F

    .line 183
    iput v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->mActivePointerId:I

    const/4 p1, 0x0

    .line 184
    iput-boolean p1, p0, Lcom/narvii/widget/BottomDrawerContainer;->beginToDismiss:Z

    .line 185
    invoke-direct {p0}, Lcom/narvii/widget/BottomDrawerContainer;->releaseEdgeEffects()V

    .line 186
    iget-object v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->mEdgeEffectBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 187
    iput-boolean p1, p0, Lcom/narvii/widget/BottomDrawerContainer;->isEdgeDrawing:Z

    .line 190
    :cond_0
    iget p1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mLastTouchX:F

    iput p1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mTrackX:F

    .line 191
    iget p1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mLastTouchY:F

    iput p1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mTrackY:F

    return-void
.end method

.method private onActionMove(Landroid/view/MotionEvent;)V
    .locals 9

    .line 214
    iget v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->mActivePointerId:I

    .line 215
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 216
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    goto :goto_1

    .line 219
    :cond_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 220
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 222
    iget v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->mLastTouchX:F

    sub-float v0, v1, v0

    .line 223
    iget v3, p0, Lcom/narvii/widget/BottomDrawerContainer;->mLastTouchY:F

    sub-float v3, p1, v3

    .line 225
    iget v4, p0, Lcom/narvii/widget/BottomDrawerContainer;->mCurPosX:F

    add-float/2addr v4, v0

    .line 226
    iget v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->mCurPosY:F

    add-float/2addr v0, v3

    .line 229
    iget v5, p0, Lcom/narvii/widget/BottomDrawerContainer;->dismissThreshold:I

    int-to-float v5, v5

    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    cmpl-float v5, v0, v5

    if-lez v5, :cond_1

    iget-boolean v5, p0, Lcom/narvii/widget/BottomDrawerContainer;->beginToDismiss:Z

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    mul-float v5, v0, v7

    .line 233
    iget v8, p0, Lcom/narvii/widget/BottomDrawerContainer;->topFreezeThreshold:I

    add-int/lit8 v8, v8, -0x5

    int-to-float v8, v8

    cmpl-float v5, v5, v8

    if-ltz v5, :cond_3

    .line 235
    iget-boolean v5, p0, Lcom/narvii/widget/BottomDrawerContainer;->readyShowBottomEdge:Z

    xor-int/2addr v2, v5

    iput-boolean v2, p0, Lcom/narvii/widget/BottomDrawerContainer;->readyShowBottomEdge:Z

    .line 236
    iget-boolean v2, p0, Lcom/narvii/widget/BottomDrawerContainer;->readyShowBottomEdge:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/narvii/widget/BottomDrawerContainer;->isEdgeDrawing:Z

    if-nez v2, :cond_2

    .line 237
    iget-object v2, p0, Lcom/narvii/widget/BottomDrawerContainer;->mEdgeEffectBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    .line 238
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_2
    const/4 v2, 0x0

    .line 244
    :cond_3
    :goto_0
    iget v3, p0, Lcom/narvii/widget/BottomDrawerContainer;->mTrackY:F

    sub-float v3, p1, v3

    mul-float v3, v3, v7

    iget v5, p0, Lcom/narvii/widget/BottomDrawerContainer;->topFreezeThreshold:I

    add-int/lit8 v5, v5, -0x5

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_4

    const/4 v2, 0x0

    :cond_4
    if-eqz v2, :cond_5

    .line 248
    iput v4, p0, Lcom/narvii/widget/BottomDrawerContainer;->mCurPosX:F

    .line 249
    iput v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->mCurPosY:F

    .line 250
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 253
    :cond_5
    iput v1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mLastTouchX:F

    .line 254
    iput p1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mLastTouchY:F

    :cond_6
    :goto_1
    return-void
.end method

.method private onActionUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 195
    iget v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->mActivePointerId:I

    .line 196
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 197
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v2

    sub-int/2addr v2, v1

    if-le v0, v2, :cond_0

    goto :goto_1

    .line 202
    :cond_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lcom/narvii/widget/BottomDrawerContainer;->mUpX:F

    .line 203
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    iput p1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mUpY:F

    .line 205
    iget p1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mCurPosY:F

    iget v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->dismissThreshold:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    .line 206
    invoke-virtual {p0}, Lcom/narvii/widget/BottomDrawerContainer;->dismissView()V

    goto :goto_0

    .line 208
    :cond_1
    iput-boolean v1, p0, Lcom/narvii/widget/BottomDrawerContainer;->shouldAdjust:Z

    .line 209
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :goto_0
    return-void

    .line 198
    :cond_2
    :goto_1
    iput-boolean v1, p0, Lcom/narvii/widget/BottomDrawerContainer;->shouldAdjust:Z

    .line 199
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private releaseEdgeEffects()V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->mEdgeEffectBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    const/4 v0, 0x0

    .line 327
    iput-boolean v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->readyShowBottomEdge:Z

    return-void
.end method


# virtual methods
.method public dismissView()V
    .locals 4

    .line 280
    iget v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->mCurPosY:F

    const/4 v1, 0x0

    .line 281
    iput v1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mCurPosX:F

    .line 282
    iput v1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mCurPosY:F

    .line 283
    iget-object v1, p0, Lcom/narvii/widget/BottomDrawerContainer;->springSystem:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {v1}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v1

    .line 284
    new-instance v2, Lcom/narvii/widget/BottomDrawerContainer$1;

    invoke-direct {v2, p0, v0}, Lcom/narvii/widget/BottomDrawerContainer$1;-><init>(Lcom/narvii/widget/BottomDrawerContainer;F)V

    invoke-virtual {v1, v2}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 296
    invoke-virtual {v1, v2, v3}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 260
    iget-boolean v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->shouldAdjust:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 261
    iput v1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mCurPosY:F

    .line 262
    iput v1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mCurPosX:F

    .line 263
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v0, 0x0

    .line 264
    iput-boolean v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->shouldAdjust:Z

    .line 265
    iget-object v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->mEdgeEffectBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 266
    iget-object v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->mEdgeEffectBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    goto :goto_1

    .line 269
    :cond_0
    iget v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->translateMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->mCurPosX:F

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/narvii/widget/BottomDrawerContainer;->translateMode:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    iget v1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mCurPosY:F

    :cond_2
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 272
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 273
    iget-boolean v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->readyShowBottomEdge:Z

    if-eqz v0, :cond_4

    .line 274
    invoke-direct {p0, p1}, Lcom/narvii/widget/BottomDrawerContainer;->drawEdgeEffects(Landroid/graphics/Canvas;)V

    :cond_4
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 301
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 109
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 138
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 139
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v2, :cond_6

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto :goto_1

    .line 154
    :cond_0
    iget v1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mActiveInterCeptPointerId:I

    .line 155
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v1

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_4

    .line 156
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v3

    sub-int/2addr v3, v2

    if-le v1, v3, :cond_1

    goto :goto_0

    .line 159
    :cond_1
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 160
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 161
    iget v1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mLastInterceptY:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mLastInterceptX:F

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v3, p0, Lcom/narvii/widget/BottomDrawerContainer;->touchEventThreshold:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    cmpl-float p1, p1, v1

    if-lez p1, :cond_3

    .line 163
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 164
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 167
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 168
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    :cond_4
    :goto_0
    return v4

    .line 143
    :cond_5
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v1

    .line 144
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lcom/narvii/widget/BottomDrawerContainer;->mLastInterceptX:F

    .line 145
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    iput p1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mLastInterceptY:F

    .line 146
    iput v1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mActiveInterCeptPointerId:I

    .line 147
    iput v1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mActivePointerId:I

    .line 148
    iget p1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mLastInterceptX:F

    iput p1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mLastTouchX:F

    .line 149
    iget p1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mLastInterceptY:F

    iput p1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mLastTouchY:F

    :cond_6
    :goto_1
    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    int-to-float p1, p1

    .line 93
    iget p3, p0, Lcom/narvii/widget/BottomDrawerContainer;->mViewWidth:F

    cmpl-float p3, p1, p3

    if-eqz p3, :cond_0

    .line 94
    iput p1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mViewWidth:F

    :cond_0
    int-to-float p1, p2

    .line 96
    iget p2, p0, Lcom/narvii/widget/BottomDrawerContainer;->mViewHeight:F

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_1

    .line 97
    iput p1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mViewHeight:F

    .line 100
    :cond_1
    iget-object p1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mContentRect:Landroid/graphics/Rect;

    .line 101
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p2

    .line 102
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p3

    .line 103
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v0

    sub-int/2addr p4, v0

    .line 104
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 100
    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 118
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/widget/BottomDrawerContainer;->onActionMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 124
    :cond_1
    invoke-direct {p0, p1}, Lcom/narvii/widget/BottomDrawerContainer;->onActionUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 121
    :cond_2
    invoke-direct {p0, p1}, Lcom/narvii/widget/BottomDrawerContainer;->onActionDown(Landroid/view/MotionEvent;)V

    :goto_0
    return v1
.end method

.method public setDismissListener(Lcom/narvii/widget/BottomDrawerContainer$DismissListener;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/narvii/widget/BottomDrawerContainer;->dismissListener:Lcom/narvii/widget/BottomDrawerContainer$DismissListener;

    return-void
.end method

.method public setDismissThreshold(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/narvii/widget/BottomDrawerContainer;->dismissThreshold:I

    return-void
.end method
