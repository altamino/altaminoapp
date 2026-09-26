.class public Lcom/github/mmin18/widget/RealtimeBlurLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field static DEBUG:Ljava/lang/Boolean;

.field static Loge:Z


# instance fields
.field private mBitmapToBlur:Landroid/graphics/Bitmap;

.field private mBlurInput:Landroidx/renderscript/Allocation;

.field private mBlurOutput:Landroidx/renderscript/Allocation;

.field private mBlurRadius:F

.field private mBlurScript:Landroidx/renderscript/ScriptIntrinsicBlur;

.field private mBlurredBitmap:Landroid/graphics/Bitmap;

.field private mBlurringCanvas:Landroid/graphics/Canvas;

.field private mDirty:Z

.field private mDownsampleFactor:F

.field private mIsRendering:Z

.field private mOverlayColor:I

.field private final mRectDst:Landroid/graphics/Rect;

.field private final mRectSrc:Landroid/graphics/Rect;

.field private mRenderScript:Landroidx/renderscript/RenderScript;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    :try_start_0
    const-class v0, Lcom/github/mmin18/widget/RealtimeBlurLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "androidx.renderscript.RenderScript"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    sput-object v0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->DEBUG:Ljava/lang/Boolean;

    .line 15
    return-void

    .line 16
    .line 17
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 18
    .line 19
    const-string v1, "RenderScript support not enabled. Add \"android { defaultConfig { renderscriptSupportModeEnabled true }}\" in your build.gradle"

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 23
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mDirty:Z

    .line 7
    .line 8
    new-instance v1, Landroid/graphics/Rect;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 12
    .line 13
    iput-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mRectSrc:Landroid/graphics/Rect;

    .line 14
    .line 15
    new-instance v1, Landroid/graphics/Rect;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 19
    .line 20
    iput-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mRectDst:Landroid/graphics/Rect;

    .line 21
    .line 22
    sget-object v1, Lcom/narvii/lib/R$styleable;->RealtimeBlurLayout:[I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    sget v1, Lcom/narvii/lib/R$styleable;->RealtimeBlurLayout_blurLayoutRadius:I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    const/high16 v2, 0x41200000    # 10.0f

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 42
    move-result p1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 46
    move-result p1

    .line 47
    .line 48
    iput p1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurRadius:F

    .line 49
    .line 50
    sget p1, Lcom/narvii/lib/R$styleable;->RealtimeBlurLayout_blurLayoutDownsampleFactor:I

    .line 51
    .line 52
    const/high16 v0, 0x40800000    # 4.0f

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 56
    move-result p1

    .line 57
    .line 58
    iput p1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mDownsampleFactor:F

    .line 59
    .line 60
    sget p1, Lcom/narvii/lib/R$styleable;->RealtimeBlurLayout_blurLayoutOverlayColor:I

    .line 61
    .line 62
    .line 63
    const v0, -0x55000001

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 67
    move-result p1

    .line 68
    .line 69
    iput p1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mOverlayColor:I

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    return-void
.end method

.method static isDebug(Landroid/content/Context;)Z
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->DEBUG:Ljava/lang/Boolean;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 15
    .line 16
    and-int/lit8 p0, p0, 0x2

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    move p0, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move p0, v1

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    move-result-object p0

    .line 26
    .line 27
    sput-object p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->DEBUG:Ljava/lang/Boolean;

    .line 28
    .line 29
    :cond_1
    sget-object p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->DEBUG:Ljava/lang/Boolean;

    .line 30
    .line 31
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 32
    .line 33
    if-ne p0, v0, :cond_2

    .line 34
    move v1, v2

    .line 35
    :cond_2
    return v1
.end method

.method private releaseBitmap()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurInput:Landroidx/renderscript/Allocation;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/renderscript/Allocation;->destroy()V

    .line 9
    .line 10
    iput-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurInput:Landroidx/renderscript/Allocation;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurOutput:Landroidx/renderscript/Allocation;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/renderscript/Allocation;->destroy()V

    .line 18
    .line 19
    iput-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurOutput:Landroidx/renderscript/Allocation;

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBitmapToBlur:Landroid/graphics/Bitmap;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 27
    .line 28
    iput-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBitmapToBlur:Landroid/graphics/Bitmap;

    .line 29
    .line 30
    :cond_2
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurredBitmap:Landroid/graphics/Bitmap;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 36
    .line 37
    iput-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurredBitmap:Landroid/graphics/Bitmap;

    .line 38
    :cond_3
    return-void
.end method

.method private releaseScript()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mRenderScript:Landroidx/renderscript/RenderScript;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->destroy()V

    .line 9
    .line 10
    iput-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mRenderScript:Landroidx/renderscript/RenderScript;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurScript:Landroidx/renderscript/ScriptIntrinsicBlur;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/renderscript/BaseObj;->destroy()V

    .line 18
    .line 19
    iput-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurScript:Landroidx/renderscript/ScriptIntrinsicBlur;

    .line 20
    :cond_1
    return-void
.end method


# virtual methods
.method protected blur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurInput:Landroidx/renderscript/Allocation;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurScript:Landroidx/renderscript/ScriptIntrinsicBlur;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurInput:Landroidx/renderscript/Allocation;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroidx/renderscript/ScriptIntrinsicBlur;->setInput(Landroidx/renderscript/Allocation;)V

    .line 13
    .line 14
    iget-object p1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurScript:Landroidx/renderscript/ScriptIntrinsicBlur;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurOutput:Landroidx/renderscript/Allocation;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroidx/renderscript/ScriptIntrinsicBlur;->forEach(Landroidx/renderscript/Allocation;)V

    .line 20
    .line 21
    iget-object p1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurOutput:Landroidx/renderscript/Allocation;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroidx/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 25
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mDirty:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/github/mmin18/widget/RealtimeBlurLayout;->prepare()Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBitmapToBlur:Landroid/graphics/Bitmap;

    .line 14
    .line 15
    iget v2, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mOverlayColor:I

    .line 16
    .line 17
    .line 18
    const v3, 0xffffff

    .line 19
    and-int/2addr v2, v3

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 23
    .line 24
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurringCanvas:Landroid/graphics/Canvas;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 28
    move-result v0

    .line 29
    const/4 v2, 0x1

    .line 30
    .line 31
    iput-boolean v2, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mIsRendering:Z

    .line 32
    .line 33
    iget-object v2, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurringCanvas:Landroid/graphics/Canvas;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBitmapToBlur:Landroid/graphics/Bitmap;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 39
    move-result v3

    .line 40
    int-to-float v3, v3

    .line 41
    .line 42
    const/high16 v4, 0x3f800000    # 1.0f

    .line 43
    mul-float/2addr v3, v4

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 47
    move-result v5

    .line 48
    int-to-float v5, v5

    .line 49
    div-float/2addr v3, v5

    .line 50
    .line 51
    iget-object v5, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBitmapToBlur:Landroid/graphics/Bitmap;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    .line 55
    move-result v5

    .line 56
    int-to-float v5, v5

    .line 57
    mul-float/2addr v5, v4

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 61
    move-result v4

    .line 62
    int-to-float v4, v4

    .line 63
    div-float/2addr v5, v4

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v3, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    move v0, v1

    .line 69
    .line 70
    .line 71
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 72
    .line 73
    iget-boolean v2, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mIsRendering:Z

    .line 74
    .line 75
    if-eqz v2, :cond_3

    .line 76
    .line 77
    iget-object v2, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBitmapToBlur:Landroid/graphics/Bitmap;

    .line 78
    .line 79
    iget-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurredBitmap:Landroid/graphics/Bitmap;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v2, v3}, Lcom/github/mmin18/widget/RealtimeBlurLayout;->blur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 83
    .line 84
    iput-boolean v1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mIsRendering:Z

    .line 85
    .line 86
    iget-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurringCanvas:Landroid/graphics/Canvas;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 90
    .line 91
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurredBitmap:Landroid/graphics/Bitmap;

    .line 92
    .line 93
    iget v1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mOverlayColor:I

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, p1, v0, v1}, Lcom/github/mmin18/widget/RealtimeBlurLayout;->drawBlurredBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V

    .line 97
    goto :goto_1

    .line 98
    .line 99
    :cond_1
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurredBitmap:Landroid/graphics/Bitmap;

    .line 100
    .line 101
    if-nez v0, :cond_2

    .line 102
    .line 103
    .line 104
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 105
    goto :goto_1

    .line 106
    .line 107
    :cond_2
    iget v1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mOverlayColor:I

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, p1, v0, v1}, Lcom/github/mmin18/widget/RealtimeBlurLayout;->drawBlurredBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V

    .line 111
    :cond_3
    :goto_1
    return-void
.end method

.method protected drawBlurredBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V
    .locals 3

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mRectSrc:Landroid/graphics/Rect;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 8
    move-result v1

    .line 9
    .line 10
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 11
    .line 12
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mRectSrc:Landroid/graphics/Rect;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 16
    move-result v1

    .line 17
    .line 18
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 19
    .line 20
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mRectDst:Landroid/graphics/Rect;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 24
    move-result v1

    .line 25
    .line 26
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 27
    .line 28
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mRectDst:Landroid/graphics/Rect;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 32
    move-result v1

    .line 33
    .line 34
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 35
    .line 36
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mRectSrc:Landroid/graphics/Rect;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mRectDst:Landroid/graphics/Rect;

    .line 39
    const/4 v2, 0x0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 46
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mIsRendering:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurringCanvas:Landroid/graphics/Canvas;

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mDirty:Z

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mDirty:Z

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    .line 7
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/github/mmin18/widget/RealtimeBlurLayout;->release()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mDirty:Z

    .line 7
    .line 8
    .line 9
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 10
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mDirty:Z

    .line 4
    .line 5
    .line 6
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 7
    return-void
.end method

.method protected prepare()Z
    .locals 8

    .line 1
    .line 2
    iget v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurRadius:F

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    cmpl-float v0, v0, v1

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/github/mmin18/widget/RealtimeBlurLayout;->release()V

    .line 12
    return v1

    .line 13
    .line 14
    :cond_0
    iget v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mDownsampleFactor:F

    .line 15
    .line 16
    iget-boolean v2, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mDirty:Z

    .line 17
    const/4 v3, 0x1

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    iget-object v2, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mRenderScript:Landroidx/renderscript/RenderScript;

    .line 22
    .line 23
    if-nez v2, :cond_7

    .line 24
    .line 25
    :cond_1
    iget-object v2, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mRenderScript:Landroidx/renderscript/RenderScript;

    .line 26
    .line 27
    if-nez v2, :cond_5

    .line 28
    .line 29
    .line 30
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    .line 34
    invoke-static {v2}, Landroidx/renderscript/RenderScript;->create(Landroid/content/Context;)Landroidx/renderscript/RenderScript;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    iput-object v2, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mRenderScript:Landroidx/renderscript/RenderScript;

    .line 38
    .line 39
    .line 40
    invoke-static {v2}, Landroidx/renderscript/Element;->U8_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 41
    move-result-object v4

    .line 42
    .line 43
    .line 44
    invoke-static {v2, v4}, Landroidx/renderscript/ScriptIntrinsicBlur;->create(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)Landroidx/renderscript/ScriptIntrinsicBlur;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    iput-object v2, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurScript:Landroidx/renderscript/ScriptIntrinsicBlur;
    :try_end_0
    .catch Landroidx/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    .line 56
    invoke-static {v2}, Lcom/github/mmin18/widget/RealtimeBlurLayout;->isDebug(Landroid/content/Context;)Z

    .line 57
    move-result v2

    .line 58
    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    const-string v2, "Error loading RS jni library: java.lang.UnsatisfiedLinkError:"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 75
    move-result v1

    .line 76
    .line 77
    if-eqz v1, :cond_2

    .line 78
    .line 79
    new-instance v0, Ljava/lang/RuntimeException;

    .line 80
    .line 81
    const-string v1, "Error loading RS jni library, Upgrade buildToolsVersion=\"24.0.2\" or higher may solve this issue"

    .line 82
    .line 83
    .line 84
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 85
    throw v0

    .line 86
    :cond_2
    throw v0

    .line 87
    .line 88
    .line 89
    :cond_3
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurLayout;->releaseScript()V

    .line 90
    .line 91
    sget-boolean v2, Lcom/github/mmin18/widget/RealtimeBlurLayout;->Loge:Z

    .line 92
    .line 93
    if-nez v2, :cond_4

    .line 94
    .line 95
    const-string v2, "fail to init render script"

    .line 96
    .line 97
    .line 98
    invoke-static {v2, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    .line 100
    sput-boolean v3, Lcom/github/mmin18/widget/RealtimeBlurLayout;->Loge:Z

    .line 101
    :cond_4
    return v1

    .line 102
    .line 103
    :cond_5
    :goto_0
    iput-boolean v1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mDirty:Z

    .line 104
    .line 105
    iget v2, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurRadius:F

    .line 106
    div-float/2addr v2, v0

    .line 107
    .line 108
    const/high16 v4, 0x41c80000    # 25.0f

    .line 109
    .line 110
    cmpl-float v5, v2, v4

    .line 111
    .line 112
    if-lez v5, :cond_6

    .line 113
    mul-float/2addr v0, v2

    .line 114
    div-float/2addr v0, v4

    .line 115
    move v2, v4

    .line 116
    .line 117
    :cond_6
    iget-object v4, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurScript:Landroidx/renderscript/ScriptIntrinsicBlur;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4, v2}, Landroidx/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 121
    .line 122
    .line 123
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 124
    move-result v2

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 128
    move-result v4

    .line 129
    int-to-float v2, v2

    .line 130
    div-float/2addr v2, v0

    .line 131
    float-to-int v2, v2

    .line 132
    .line 133
    .line 134
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 135
    move-result v2

    .line 136
    int-to-float v4, v4

    .line 137
    div-float/2addr v4, v0

    .line 138
    float-to-int v0, v4

    .line 139
    .line 140
    .line 141
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    .line 142
    move-result v0

    .line 143
    .line 144
    iget-object v4, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurringCanvas:Landroid/graphics/Canvas;

    .line 145
    .line 146
    if-eqz v4, :cond_8

    .line 147
    .line 148
    iget-object v4, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurredBitmap:Landroid/graphics/Bitmap;

    .line 149
    .line 150
    if-eqz v4, :cond_8

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 154
    move-result v4

    .line 155
    .line 156
    if-ne v4, v2, :cond_8

    .line 157
    .line 158
    iget-object v4, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurredBitmap:Landroid/graphics/Bitmap;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 162
    move-result v4

    .line 163
    .line 164
    if-eq v4, v0, :cond_a

    .line 165
    .line 166
    .line 167
    :cond_8
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurLayout;->releaseBitmap()V

    .line 168
    .line 169
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 170
    .line 171
    .line 172
    invoke-static {v2, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 173
    move-result-object v5

    .line 174
    .line 175
    iput-object v5, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBitmapToBlur:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    .line 177
    if-nez v5, :cond_9

    .line 178
    .line 179
    .line 180
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurLayout;->releaseBitmap()V

    .line 181
    return v1

    .line 182
    .line 183
    :cond_9
    :try_start_2
    new-instance v5, Landroid/graphics/Canvas;

    .line 184
    .line 185
    iget-object v6, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBitmapToBlur:Landroid/graphics/Bitmap;

    .line 186
    .line 187
    .line 188
    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 189
    .line 190
    iput-object v5, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurringCanvas:Landroid/graphics/Canvas;

    .line 191
    .line 192
    iget-object v5, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mRenderScript:Landroidx/renderscript/RenderScript;

    .line 193
    .line 194
    iget-object v6, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBitmapToBlur:Landroid/graphics/Bitmap;

    .line 195
    .line 196
    sget-object v7, Landroidx/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroidx/renderscript/Allocation$MipmapControl;

    .line 197
    .line 198
    .line 199
    invoke-static {v5, v6, v7, v3}, Landroidx/renderscript/Allocation;->createFromBitmap(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;

    .line 200
    move-result-object v5

    .line 201
    .line 202
    iput-object v5, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurInput:Landroidx/renderscript/Allocation;

    .line 203
    .line 204
    iget-object v6, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mRenderScript:Landroidx/renderscript/RenderScript;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 208
    move-result-object v5

    .line 209
    .line 210
    .line 211
    invoke-static {v6, v5}, Landroidx/renderscript/Allocation;->createTyped(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Type;)Landroidx/renderscript/Allocation;

    .line 212
    move-result-object v5

    .line 213
    .line 214
    iput-object v5, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurOutput:Landroidx/renderscript/Allocation;

    .line 215
    .line 216
    .line 217
    invoke-static {v2, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 218
    move-result-object v0

    .line 219
    .line 220
    iput-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurredBitmap:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 221
    .line 222
    if-nez v0, :cond_a

    .line 223
    .line 224
    .line 225
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurLayout;->releaseBitmap()V

    .line 226
    return v1

    .line 227
    :cond_a
    return v3

    .line 228
    :catch_1
    move-exception v0

    .line 229
    .line 230
    :try_start_3
    const-string v2, "OOM when create blur bitmap"

    .line 231
    .line 232
    .line 233
    invoke-static {v2, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 234
    .line 235
    .line 236
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurLayout;->releaseBitmap()V

    .line 237
    return v1

    .line 238
    .line 239
    .line 240
    :catchall_0
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurLayout;->releaseBitmap()V

    .line 241
    return v1
.end method

.method protected release()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurLayout;->releaseBitmap()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurLayout;->releaseScript()V

    .line 7
    return-void
.end method

.method public setBlurRadius(F)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurRadius:F

    .line 3
    .line 4
    cmpl-float v0, v0, p1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iput p1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurRadius:F

    .line 9
    const/4 p1, 0x1

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mDirty:Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 15
    :cond_0
    return-void
.end method

.method public setDownsampleFactor(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    cmpg-float v0, p1, v0

    .line 4
    .line 5
    if-lez v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mDownsampleFactor:F

    .line 8
    .line 9
    cmpl-float v0, v0, p1

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iput p1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mDownsampleFactor:F

    .line 14
    const/4 p1, 0x1

    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mDirty:Z

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurLayout;->releaseBitmap()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 23
    :cond_0
    return-void

    .line 24
    .line 25
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    const-string v0, "Downsample factor must be greater than 0."

    .line 28
    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    throw p1
.end method

.method public setOverlayColor(I)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mOverlayColor:I

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mOverlayColor:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 10
    :cond_0
    return-void
.end method
