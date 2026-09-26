.class public Lcom/narvii/widget/VerticalSeekBar;
.super Landroidx/appcompat/widget/AppCompatSeekBar;
.source "SourceFile"


# static fields
.field public static final ROTATION_ANGLE_CW_270:I = 0x10e

.field public static final ROTATION_ANGLE_CW_90:I = 0x5a


# instance fields
.field private mIsDragging:Z

.field private mMethodSetProgressFromUser:Ljava/lang/reflect/Method;

.field private mRotationAngle:I

.field private mThumb_:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x5a

    iput v0, p0, Lcom/narvii/widget/VerticalSeekBar;->mRotationAngle:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/narvii/widget/VerticalSeekBar;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x5a

    iput v0, p0, Lcom/narvii/widget/VerticalSeekBar;->mRotationAngle:I

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/narvii/widget/VerticalSeekBar;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x5a

    iput v0, p0, Lcom/narvii/widget/VerticalSeekBar;->mRotationAngle:I

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/narvii/widget/VerticalSeekBar;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private declared-synchronized _setProgressFromUser(IZ)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/narvii/widget/VerticalSeekBar;->mMethodSetProgressFromUser:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    :try_start_1
    const-class v0, Landroid/widget/ProgressBar;

    .line 11
    .line 12
    const-string v4, "setProgress"

    .line 13
    .line 14
    new-array v5, v2, [Ljava/lang/Class;

    .line 15
    .line 16
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 17
    .line 18
    aput-object v6, v5, v1

    .line 19
    .line 20
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 21
    .line 22
    aput-object v6, v5, v3

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 30
    .line 31
    iput-object v0, p0, Lcom/narvii/widget/VerticalSeekBar;->mMethodSetProgressFromUser:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_2

    .line 35
    .line 36
    :catch_0
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/narvii/widget/VerticalSeekBar;->mMethodSetProgressFromUser:Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    :try_start_3
    new-array v2, v2, [Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    aput-object p1, v2, v1

    .line 47
    .line 48
    .line 49
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    aput-object p1, v2, v3

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 56
    goto :goto_1

    .line 57
    .line 58
    .line 59
    :cond_1
    :try_start_4
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 60
    .line 61
    .line 62
    :catch_1
    :goto_1
    invoke-direct {p0}, Lcom/narvii/widget/VerticalSeekBar;->refreshThumb()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 63
    monitor-exit p0

    .line 64
    return-void

    .line 65
    :goto_2
    monitor-exit p0

    .line 66
    throw p1
.end method

.method private attemptClaimDrag(Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 10
    :cond_0
    return-void
.end method

.method private getWrapper()Lcom/narvii/widget/VerticalSeekBarWrapper;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lcom/narvii/widget/VerticalSeekBarWrapper;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/widget/VerticalSeekBarWrapper;

    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->J0(Landroid/view/View;I)V

    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    sget-object v1, Lcom/narvii/amino/R$styleable;->VerticalSeekBar:[I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 16
    move-result p2

    .line 17
    .line 18
    .line 19
    invoke-static {p2}, Lcom/narvii/widget/VerticalSeekBar;->isValidRotationAngle(I)Z

    .line 20
    move-result p3

    .line 21
    .line 22
    if-eqz p3, :cond_0

    .line 23
    .line 24
    iput p2, p0, Lcom/narvii/widget/VerticalSeekBar;->mRotationAngle:I

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    :cond_1
    return-void
.end method

.method private static isValidRotationAngle(I)Z
    .locals 1

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private onStartTrackingTouch()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/widget/VerticalSeekBar;->mIsDragging:Z

    return-void
.end method

.method private onStopTrackingTouch()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/narvii/widget/VerticalSeekBar;->mIsDragging:Z

    return-void
.end method

.method private onTouchEventTraditionalRotation(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x1

    .line 14
    .line 15
    if-eqz v0, :cond_6

    .line 16
    .line 17
    if-eq v0, v2, :cond_4

    .line 18
    const/4 v3, 0x2

    .line 19
    .line 20
    if-eq v0, v3, :cond_3

    .line 21
    const/4 p1, 0x3

    .line 22
    .line 23
    if-eq v0, p1, :cond_1

    .line 24
    goto :goto_1

    .line 25
    .line 26
    :cond_1
    iget-boolean p1, p0, Lcom/narvii/widget/VerticalSeekBar;->mIsDragging:Z

    .line 27
    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/narvii/widget/VerticalSeekBar;->onStopTrackingTouch()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 35
    .line 36
    .line 37
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 38
    goto :goto_1

    .line 39
    .line 40
    :cond_3
    iget-boolean v0, p0, Lcom/narvii/widget/VerticalSeekBar;->mIsDragging:Z

    .line 41
    .line 42
    if-eqz v0, :cond_7

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, p1}, Lcom/narvii/widget/VerticalSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 46
    goto :goto_1

    .line 47
    .line 48
    :cond_4
    iget-boolean v0, p0, Lcom/narvii/widget/VerticalSeekBar;->mIsDragging:Z

    .line 49
    .line 50
    if-eqz v0, :cond_5

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p1}, Lcom/narvii/widget/VerticalSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {p0}, Lcom/narvii/widget/VerticalSeekBar;->onStopTrackingTouch()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 60
    goto :goto_0

    .line 61
    .line 62
    .line 63
    :cond_5
    invoke-direct {p0}, Lcom/narvii/widget/VerticalSeekBar;->onStartTrackingTouch()V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, p1}, Lcom/narvii/widget/VerticalSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 67
    .line 68
    .line 69
    invoke-direct {p0}, Lcom/narvii/widget/VerticalSeekBar;->onStopTrackingTouch()V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0, v1}, Lcom/narvii/widget/VerticalSeekBar;->attemptClaimDrag(Z)V

    .line 73
    .line 74
    .line 75
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 76
    goto :goto_1

    .line 77
    .line 78
    .line 79
    :cond_6
    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 80
    .line 81
    .line 82
    invoke-direct {p0}, Lcom/narvii/widget/VerticalSeekBar;->onStartTrackingTouch()V

    .line 83
    .line 84
    .line 85
    invoke-direct {p0, p1}, Lcom/narvii/widget/VerticalSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 86
    .line 87
    .line 88
    invoke-direct {p0, v2}, Lcom/narvii/widget/VerticalSeekBar;->attemptClaimDrag(Z)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 92
    :cond_7
    :goto_1
    return v2
.end method

.method private onTouchEventUseViewRotation(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 10
    move-result p1

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    if-eq p1, v1, :cond_0

    .line 16
    const/4 v1, 0x3

    .line 17
    .line 18
    if-eq p1, v1, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Lcom/narvii/widget/VerticalSeekBar;->attemptClaimDrag(Z)V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-direct {p0, v1}, Lcom/narvii/widget/VerticalSeekBar;->attemptClaimDrag(Z)V

    .line 28
    :cond_2
    :goto_0
    return v0
.end method

.method private refreshThumb()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/SeekBar;->getWidth()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Landroid/widget/SeekBar;->getHeight()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/narvii/widget/VerticalSeekBar;->onSizeChanged(IIII)V

    .line 13
    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/SeekBar;->getPaddingLeft()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Landroid/widget/SeekBar;->getPaddingRight()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 12
    move-result v2

    .line 13
    sub-int/2addr v2, v0

    .line 14
    .line 15
    sub-int v1, v2, v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 19
    move-result p1

    .line 20
    float-to-int p1, p1

    .line 21
    .line 22
    iget v3, p0, Lcom/narvii/widget/VerticalSeekBar;->mRotationAngle:I

    .line 23
    .line 24
    const/16 v4, 0x5a

    .line 25
    const/4 v5, 0x0

    .line 26
    .line 27
    if-eq v3, v4, :cond_1

    .line 28
    .line 29
    const/16 v0, 0x10e

    .line 30
    .line 31
    if-eq v3, v0, :cond_0

    .line 32
    move p1, v5

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    sub-int/2addr v2, p1

    .line 35
    int-to-float p1, v2

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    sub-int/2addr p1, v0

    .line 38
    int-to-float p1, p1

    .line 39
    .line 40
    :goto_0
    cmpg-float v0, p1, v5

    .line 41
    .line 42
    if-ltz v0, :cond_4

    .line 43
    .line 44
    if-nez v1, :cond_2

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    int-to-float v0, v1

    .line 47
    .line 48
    cmpl-float v1, p1, v0

    .line 49
    .line 50
    if-lez v1, :cond_3

    .line 51
    .line 52
    const/high16 v5, 0x3f800000    # 1.0f

    .line 53
    goto :goto_1

    .line 54
    .line 55
    :cond_3
    div-float v5, p1, v0

    .line 56
    .line 57
    .line 58
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    .line 59
    move-result p1

    .line 60
    int-to-float p1, p1

    .line 61
    mul-float/2addr v5, p1

    .line 62
    float-to-int p1, v5

    .line 63
    const/4 v0, 0x1

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/VerticalSeekBar;->_setProgressFromUser(IZ)V

    .line 67
    return-void
.end method


# virtual methods
.method public getRotationAngle()I
    .locals 1

    iget v0, p0, Lcom/narvii/widget/VerticalSeekBar;->mRotationAngle:I

    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/widget/VerticalSeekBar;->useViewRotation()Z

    .line 5
    move-result v0

    .line 6
    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iget v0, p0, Lcom/narvii/widget/VerticalSeekBar;->mRotationAngle:I

    .line 10
    .line 11
    const/16 v1, 0x5a

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    const/16 v1, 0x10e

    .line 17
    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 25
    .line 26
    .line 27
    invoke-super {p0}, Landroid/widget/SeekBar;->getHeight()I

    .line 28
    move-result v0

    .line 29
    neg-int v0, v0

    .line 30
    int-to-float v0, v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    .line 38
    :cond_1
    const/high16 v0, 0x42b40000    # 90.0f

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 42
    .line 43
    .line 44
    invoke-super {p0}, Landroid/widget/SeekBar;->getWidth()I

    .line 45
    move-result v0

    .line 46
    neg-int v0, v0

    .line 47
    int-to-float v0, v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    .line 55
    return-void

    .line 56
    :goto_1
    monitor-exit p0

    .line 57
    throw p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    const/4 v0, -0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    .line 11
    .line 12
    packed-switch p1, :pswitch_data_0

    .line 13
    move v0, v1

    .line 14
    goto :goto_1

    .line 15
    :pswitch_0
    return v1

    .line 16
    .line 17
    :pswitch_1
    iget v1, p0, Lcom/narvii/widget/VerticalSeekBar;->mRotationAngle:I

    .line 18
    .line 19
    const/16 v3, 0x5a

    .line 20
    .line 21
    if-ne v1, v3, :cond_0

    .line 22
    :goto_0
    move v0, v2

    .line 23
    :cond_0
    move v1, v2

    .line 24
    goto :goto_1

    .line 25
    .line 26
    :pswitch_2
    iget v1, p0, Lcom/narvii/widget/VerticalSeekBar;->mRotationAngle:I

    .line 27
    .line 28
    const/16 v3, 0x10e

    .line 29
    .line 30
    if-ne v1, v3, :cond_0

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :goto_1
    if-eqz v1, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getKeyProgressIncrement()I

    .line 37
    move-result p1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 41
    move-result p2

    .line 42
    mul-int/2addr v0, p1

    .line 43
    add-int/2addr p2, v0

    .line 44
    .line 45
    if-ltz p2, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    .line 49
    move-result p1

    .line 50
    .line 51
    if-gt p2, p1, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, p2, v2}, Lcom/narvii/widget/VerticalSeekBar;->_setProgressFromUser(IZ)V

    .line 55
    :cond_1
    return v2

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/SeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 59
    move-result p1

    .line 60
    return p1

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/widget/VerticalSeekBar;->useViewRotation()Z

    .line 5
    move-result v0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1, p2}, Landroid/widget/SeekBar;->onMeasure(II)V

    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    goto :goto_1

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-super {p0, p2, p1}, Landroid/widget/SeekBar;->onMeasure(II)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 24
    move-result p2

    .line 25
    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 31
    .line 32
    if-ltz p2, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-super {p0}, Landroid/widget/SeekBar;->getMeasuredHeight()I

    .line 36
    move-result p2

    .line 37
    .line 38
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 42
    goto :goto_0

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-super {p0}, Landroid/widget/SeekBar;->getMeasuredHeight()I

    .line 46
    move-result p1

    .line 47
    .line 48
    .line 49
    invoke-super {p0}, Landroid/widget/SeekBar;->getMeasuredWidth()I

    .line 50
    move-result p2

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :goto_0
    monitor-exit p0

    .line 55
    return-void

    .line 56
    :goto_1
    monitor-exit p0

    .line 57
    throw p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/widget/VerticalSeekBar;->useViewRotation()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0, p2, p1, p4, p3}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    .line 14
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/widget/VerticalSeekBar;->useViewRotation()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/narvii/widget/VerticalSeekBar;->onTouchEventUseViewRotation(Landroid/view/MotionEvent;)Z

    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/widget/VerticalSeekBar;->onTouchEventTraditionalRotation(Landroid/view/MotionEvent;)Z

    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public declared-synchronized setProgress(I)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/widget/VerticalSeekBar;->useViewRotation()Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/narvii/widget/VerticalSeekBar;->refreshThumb()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :goto_1
    monitor-exit p0

    .line 20
    throw p1
.end method

.method public setRotationAngle(I)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/narvii/widget/VerticalSeekBar;->isValidRotationAngle(I)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget v0, p0, Lcom/narvii/widget/VerticalSeekBar;->mRotationAngle:I

    .line 9
    .line 10
    if-ne v0, p1, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    iput p1, p0, Lcom/narvii/widget/VerticalSeekBar;->mRotationAngle:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/widget/VerticalSeekBar;->useViewRotation()Z

    .line 17
    move-result p1

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/narvii/widget/VerticalSeekBar;->getWrapper()Lcom/narvii/widget/VerticalSeekBarWrapper;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/narvii/widget/VerticalSeekBarWrapper;->applyViewRotation()V

    .line 29
    goto :goto_0

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 33
    :cond_2
    :goto_0
    return-void

    .line 34
    .line 35
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    const-string v2, "Invalid angle specified :"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    throw v0
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/VerticalSeekBar;->mThumb_:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 6
    return-void
.end method

.method useViewRotation()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    xor-int/lit8 v0, v0, 0x1

    .line 7
    return v0
.end method
