.class public Lcom/github/mmin18/widget/RealtimeBlurView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mmin18/widget/RealtimeBlurView$c;
    }
.end annotation


# static fields
.field private static DEBUG:Ljava/lang/Boolean;

.field static Loge:Z

.field private static PREDRAW_COUNTER:I

.field private static PREDRAW_HANDLER:Landroid/os/Handler;

.field private static PREDRAW_LAST_WARN_TIME:J

.field private static PREDRAW_WARN:Ljava/lang/Runnable;

.field public static RENDERING_COUNT:I

.field private static STOP_EXCEPTION:Lcom/github/mmin18/widget/RealtimeBlurView$c;


# instance fields
.field private mBackView:Landroid/view/View;

.field private mBitmapToBlur:Landroid/graphics/Bitmap;

.field private mBlurInput:Landroidx/renderscript/Allocation;

.field private mBlurOutput:Landroidx/renderscript/Allocation;

.field private mBlurRadius:F

.field private mBlurScript:Landroidx/renderscript/ScriptIntrinsicBlur;

.field private mBlurredBitmap:Landroid/graphics/Bitmap;

.field private mBlurringCanvas:Landroid/graphics/Canvas;

.field private mDecorView:Landroid/view/View;

.field private mDifferentRoot:Z

.field private mDirty:Z

.field private mDownsampleFactor:F

.field private mIsRendering:Z

.field private mMinBlurInterval:J

.field private mOverlayColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private final mRectDst:Landroid/graphics/Rect;

.field private final mRectSrc:Landroid/graphics/Rect;

.field private mRenderScript:Landroidx/renderscript/RenderScript;

.field private final preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/github/mmin18/widget/RealtimeBlurView$c;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/github/mmin18/widget/RealtimeBlurView$c;-><init>(Lcom/github/mmin18/widget/a;)V

    .line 7
    .line 8
    sput-object v0, Lcom/github/mmin18/widget/RealtimeBlurView;->STOP_EXCEPTION:Lcom/github/mmin18/widget/RealtimeBlurView$c;

    .line 9
    .line 10
    :try_start_0
    const-class v0, Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v2, "androidx.renderscript.RenderScript"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    sput-object v1, Lcom/github/mmin18/widget/RealtimeBlurView;->DEBUG:Ljava/lang/Boolean;

    .line 22
    return-void

    .line 23
    .line 24
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 25
    .line 26
    const-string v1, "RenderScript support not enabled. Add \"android { defaultConfig { renderscriptSupportModeEnabled true }}\" in your build.gradle"

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 30
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRectSrc:Landroid/graphics/Rect;

    .line 11
    .line 12
    new-instance v0, Landroid/graphics/Rect;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRectDst:Landroid/graphics/Rect;

    .line 18
    .line 19
    const-wide/16 v0, 0x0

    .line 20
    .line 21
    iput-wide v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mMinBlurInterval:J

    .line 22
    .line 23
    new-instance v0, Lcom/github/mmin18/widget/RealtimeBlurView$a;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/github/mmin18/widget/RealtimeBlurView$a;-><init>(Lcom/github/mmin18/widget/RealtimeBlurView;)V

    .line 27
    .line 28
    iput-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 29
    .line 30
    sget-object v0, Lcom/narvii/lib/R$styleable;->RealtimeBlurView:[I

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 34
    move-result-object p2

    .line 35
    .line 36
    sget v0, Lcom/narvii/lib/R$styleable;->RealtimeBlurView_realtimeBlurRadius:I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 44
    move-result-object p1

    .line 45
    const/4 v1, 0x1

    .line 46
    .line 47
    const/high16 v2, 0x41200000    # 10.0f

    .line 48
    .line 49
    .line 50
    invoke-static {v1, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 51
    move-result p1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 55
    move-result p1

    .line 56
    .line 57
    iput p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurRadius:F

    .line 58
    .line 59
    sget p1, Lcom/narvii/lib/R$styleable;->RealtimeBlurView_realtimeDownsampleFactor:I

    .line 60
    .line 61
    const/high16 v0, 0x40800000    # 4.0f

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 65
    move-result p1

    .line 66
    .line 67
    iput p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDownsampleFactor:F

    .line 68
    .line 69
    sget p1, Lcom/narvii/lib/R$styleable;->RealtimeBlurView_realtimeOverlayColor:I

    .line 70
    .line 71
    .line 72
    const v0, -0x55000001

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 76
    move-result p1

    .line 77
    .line 78
    iput p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mOverlayColor:I

    .line 79
    .line 80
    sget p1, Lcom/narvii/lib/R$styleable;->RealtimeBlurView_realtimeBlurMaxFPS:I

    .line 81
    const/4 v0, 0x0

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 85
    move-result p1

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    .line 90
    cmpl-float p2, p1, v0

    .line 91
    .line 92
    if-lez p2, :cond_0

    .line 93
    .line 94
    const/high16 p2, 0x447a0000    # 1000.0f

    .line 95
    div-float/2addr p2, p1

    .line 96
    float-to-long p1, p2

    .line 97
    .line 98
    iput-wide p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mMinBlurInterval:J

    .line 99
    .line 100
    :cond_0
    new-instance p1, Landroid/graphics/Paint;

    .line 101
    .line 102
    .line 103
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 104
    .line 105
    iput-object p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mPaint:Landroid/graphics/Paint;

    .line 106
    return-void
.end method

.method static bridge synthetic a(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBackView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Canvas;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurringCanvas:Landroid/graphics/Canvas;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDecorView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/github/mmin18/widget/RealtimeBlurView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDifferentRoot:Z

    return p0
.end method

.method static bridge synthetic g(Lcom/github/mmin18/widget/RealtimeBlurView;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mMinBlurInterval:J

    return-wide v0
.end method

.method static bridge synthetic h(Lcom/github/mmin18/widget/RealtimeBlurView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mOverlayColor:I

    return p0
.end method

.method static bridge synthetic i(Lcom/github/mmin18/widget/RealtimeBlurView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mIsRendering:Z

    return-void
.end method

.method static isDebug(Landroid/content/Context;)Z
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/github/mmin18/widget/RealtimeBlurView;->DEBUG:Ljava/lang/Boolean;

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
    sput-object p0, Lcom/github/mmin18/widget/RealtimeBlurView;->DEBUG:Ljava/lang/Boolean;

    .line 28
    .line 29
    :cond_1
    sget-object p0, Lcom/github/mmin18/widget/RealtimeBlurView;->DEBUG:Ljava/lang/Boolean;

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

.method static bridge synthetic j()I
    .locals 1

    .line 1
    sget v0, Lcom/github/mmin18/widget/RealtimeBlurView;->PREDRAW_COUNTER:I

    return v0
.end method

.method static bridge synthetic k()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/github/mmin18/widget/RealtimeBlurView;->PREDRAW_LAST_WARN_TIME:J

    return-wide v0
.end method

.method static bridge synthetic l(I)V
    .locals 0

    .line 1
    sput p0, Lcom/github/mmin18/widget/RealtimeBlurView;->PREDRAW_COUNTER:I

    return-void
.end method

.method static bridge synthetic m(J)V
    .locals 0

    .line 1
    sput-wide p0, Lcom/github/mmin18/widget/RealtimeBlurView;->PREDRAW_LAST_WARN_TIME:J

    return-void
.end method

.method private releaseBitmap()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurInput:Landroidx/renderscript/Allocation;

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
    iput-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurInput:Landroidx/renderscript/Allocation;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurOutput:Landroidx/renderscript/Allocation;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/renderscript/Allocation;->destroy()V

    .line 18
    .line 19
    iput-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurOutput:Landroidx/renderscript/Allocation;

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 27
    .line 28
    iput-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    .line 29
    .line 30
    :cond_2
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 36
    .line 37
    iput-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    .line 38
    :cond_3
    return-void
.end method

.method private releaseScript()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRenderScript:Landroidx/renderscript/RenderScript;

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
    iput-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRenderScript:Landroidx/renderscript/RenderScript;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurScript:Landroidx/renderscript/ScriptIntrinsicBlur;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/renderscript/BaseObj;->destroy()V

    .line 18
    .line 19
    iput-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurScript:Landroidx/renderscript/ScriptIntrinsicBlur;

    .line 20
    :cond_1
    return-void
.end method

.method static reportPreDraw(Landroid/content/Context;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->isDebug(Landroid/content/Context;)Z

    .line 4
    move-result p0

    .line 5
    .line 6
    if-eqz p0, :cond_2

    .line 7
    .line 8
    sget p0, Lcom/github/mmin18/widget/RealtimeBlurView;->PREDRAW_COUNTER:I

    .line 9
    .line 10
    add-int/lit8 v0, p0, 0x1

    .line 11
    .line 12
    sput v0, Lcom/github/mmin18/widget/RealtimeBlurView;->PREDRAW_COUNTER:I

    .line 13
    .line 14
    if-nez p0, :cond_2

    .line 15
    .line 16
    sget-object p0, Lcom/github/mmin18/widget/RealtimeBlurView;->PREDRAW_HANDLER:Landroid/os/Handler;

    .line 17
    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    new-instance p0, Landroid/os/Handler;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 28
    .line 29
    sput-object p0, Lcom/github/mmin18/widget/RealtimeBlurView;->PREDRAW_HANDLER:Landroid/os/Handler;

    .line 30
    .line 31
    :cond_0
    sget-object p0, Lcom/github/mmin18/widget/RealtimeBlurView;->PREDRAW_WARN:Ljava/lang/Runnable;

    .line 32
    .line 33
    if-nez p0, :cond_1

    .line 34
    .line 35
    new-instance p0, Lcom/github/mmin18/widget/RealtimeBlurView$b;

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurView$b;-><init>()V

    .line 39
    .line 40
    sput-object p0, Lcom/github/mmin18/widget/RealtimeBlurView;->PREDRAW_WARN:Ljava/lang/Runnable;

    .line 41
    .line 42
    :cond_1
    sget-object p0, Lcom/github/mmin18/widget/RealtimeBlurView;->PREDRAW_HANDLER:Landroid/os/Handler;

    .line 43
    .line 44
    sget-object v0, Lcom/github/mmin18/widget/RealtimeBlurView;->PREDRAW_WARN:Ljava/lang/Runnable;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 48
    .line 49
    sget-object p0, Lcom/github/mmin18/widget/RealtimeBlurView;->PREDRAW_HANDLER:Landroid/os/Handler;

    .line 50
    .line 51
    sget-object v0, Lcom/github/mmin18/widget/RealtimeBlurView;->PREDRAW_WARN:Ljava/lang/Runnable;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    :cond_2
    return-void
.end method


# virtual methods
.method protected blur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurInput:Landroidx/renderscript/Allocation;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurScript:Landroidx/renderscript/ScriptIntrinsicBlur;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurInput:Landroidx/renderscript/Allocation;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroidx/renderscript/ScriptIntrinsicBlur;->setInput(Landroidx/renderscript/Allocation;)V

    .line 13
    .line 14
    iget-object p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurScript:Landroidx/renderscript/ScriptIntrinsicBlur;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurOutput:Landroidx/renderscript/Allocation;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroidx/renderscript/ScriptIntrinsicBlur;->forEach(Landroidx/renderscript/Allocation;)V

    .line 20
    .line 21
    iget-object p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurOutput:Landroidx/renderscript/Allocation;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroidx/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 25
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mIsRendering:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    sget v0, Lcom/github/mmin18/widget/RealtimeBlurView;->RENDERING_COUNT:I

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 13
    :goto_0
    return-void

    .line 14
    .line 15
    :cond_1
    sget-object p1, Lcom/github/mmin18/widget/RealtimeBlurView;->STOP_EXCEPTION:Lcom/github/mmin18/widget/RealtimeBlurView$c;

    .line 16
    throw p1
.end method

.method protected drawBlurredBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V
    .locals 3

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRectSrc:Landroid/graphics/Rect;

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
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRectSrc:Landroid/graphics/Rect;

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
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRectDst:Landroid/graphics/Rect;

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
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRectDst:Landroid/graphics/Rect;

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
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRectSrc:Landroid/graphics/Rect;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRectDst:Landroid/graphics/Rect;

    .line 39
    const/4 v2, 0x0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 43
    .line 44
    :cond_0
    iget-object p2, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mPaint:Landroid/graphics/Paint;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    .line 49
    iget-object p2, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRectDst:Landroid/graphics/Rect;

    .line 50
    .line 51
    iget-object p3, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mPaint:Landroid/graphics/Paint;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 55
    return-void
.end method

.method protected getActivityDecorView()Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    const/4 v2, 0x4

    .line 7
    .line 8
    if-ge v1, v2, :cond_0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    instance-of v2, v0, Landroid/app/Activity;

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    instance-of v2, v0, Landroid/content/ContextWrapper;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    check-cast v0, Landroid/content/ContextWrapper;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    instance-of v1, v0, Landroid/app/Activity;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    check-cast v0, Landroid/app/Activity;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 41
    move-result-object v0

    .line 42
    return-object v0

    .line 43
    :cond_1
    const/4 v0, 0x0

    .line 44
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->getActivityDecorView()Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDecorView:Landroid/view/View;

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget-object v2, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 22
    .line 23
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDecorView:Landroid/view/View;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    if-eq v0, v2, :cond_0

    .line 34
    const/4 v1, 0x1

    .line 35
    .line 36
    :cond_0
    iput-boolean v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDifferentRoot:Z

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDecorView:Landroid/view/View;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_1
    iput-boolean v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDifferentRoot:Z

    .line 47
    :cond_2
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDecorView:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->release()V

    .line 17
    .line 18
    .line 19
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 20
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    .line 6
    .line 7
    iget v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mOverlayColor:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, v0, v1}, Lcom/github/mmin18/widget/RealtimeBlurView;->drawBlurredBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V

    .line 11
    return-void
.end method

.method protected prepare()Z
    .locals 8

    .line 1
    .line 2
    iget v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurRadius:F

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    cmpl-float v1, v0, v1

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->release()V

    .line 12
    return v2

    .line 13
    .line 14
    :cond_0
    iget v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDownsampleFactor:F

    .line 15
    div-float/2addr v0, v1

    .line 16
    .line 17
    const/high16 v3, 0x41c80000    # 25.0f

    .line 18
    .line 19
    cmpl-float v4, v0, v3

    .line 20
    .line 21
    if-lez v4, :cond_1

    .line 22
    mul-float/2addr v1, v0

    .line 23
    div-float/2addr v1, v3

    .line 24
    move v0, v3

    .line 25
    .line 26
    :cond_1
    iget-boolean v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDirty:Z

    .line 27
    const/4 v4, 0x1

    .line 28
    .line 29
    if-nez v3, :cond_2

    .line 30
    .line 31
    iget-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRenderScript:Landroidx/renderscript/RenderScript;

    .line 32
    .line 33
    if-nez v3, :cond_7

    .line 34
    .line 35
    :cond_2
    iget-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRenderScript:Landroidx/renderscript/RenderScript;

    .line 36
    .line 37
    if-nez v3, :cond_6

    .line 38
    .line 39
    .line 40
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    .line 44
    invoke-static {v3}, Landroidx/renderscript/RenderScript;->create(Landroid/content/Context;)Landroidx/renderscript/RenderScript;

    .line 45
    move-result-object v3

    .line 46
    .line 47
    iput-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRenderScript:Landroidx/renderscript/RenderScript;

    .line 48
    .line 49
    .line 50
    invoke-static {v3}, Landroidx/renderscript/Element;->U8_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 51
    move-result-object v5

    .line 52
    .line 53
    .line 54
    invoke-static {v3, v5}, Landroidx/renderscript/ScriptIntrinsicBlur;->create(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)Landroidx/renderscript/ScriptIntrinsicBlur;

    .line 55
    move-result-object v3

    .line 56
    .line 57
    iput-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurScript:Landroidx/renderscript/ScriptIntrinsicBlur;
    :try_end_0
    .catch Landroidx/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    .line 66
    invoke-static {v1}, Lcom/github/mmin18/widget/RealtimeBlurView;->isDebug(Landroid/content/Context;)Z

    .line 67
    move-result v1

    .line 68
    .line 69
    if-eqz v1, :cond_4

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    const-string v2, "Error loading RS jni library: java.lang.UnsatisfiedLinkError:"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 85
    move-result v1

    .line 86
    .line 87
    if-eqz v1, :cond_3

    .line 88
    .line 89
    new-instance v0, Ljava/lang/RuntimeException;

    .line 90
    .line 91
    const-string v1, "Error loading RS jni library, Upgrade buildToolsVersion=\"24.0.2\" or higher may solve this issue"

    .line 92
    .line 93
    .line 94
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 95
    throw v0

    .line 96
    :cond_3
    throw v0

    .line 97
    .line 98
    .line 99
    :cond_4
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->releaseScript()V

    .line 100
    .line 101
    sget-boolean v1, Lcom/github/mmin18/widget/RealtimeBlurView;->Loge:Z

    .line 102
    .line 103
    if-nez v1, :cond_5

    .line 104
    .line 105
    const-string v1, "fail to init render script"

    .line 106
    .line 107
    .line 108
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    .line 110
    sput-boolean v4, Lcom/github/mmin18/widget/RealtimeBlurView;->Loge:Z

    .line 111
    :cond_5
    return v2

    .line 112
    .line 113
    :cond_6
    :goto_0
    iget-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurScript:Landroidx/renderscript/ScriptIntrinsicBlur;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, v0}, Landroidx/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 117
    .line 118
    iput-boolean v2, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDirty:Z

    .line 119
    .line 120
    .line 121
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 122
    move-result v0

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 126
    move-result v3

    .line 127
    int-to-float v0, v0

    .line 128
    div-float/2addr v0, v1

    .line 129
    float-to-int v0, v0

    .line 130
    .line 131
    .line 132
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    .line 133
    move-result v0

    .line 134
    int-to-float v3, v3

    .line 135
    div-float/2addr v3, v1

    .line 136
    float-to-int v1, v3

    .line 137
    .line 138
    .line 139
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    .line 140
    move-result v1

    .line 141
    .line 142
    iget-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurringCanvas:Landroid/graphics/Canvas;

    .line 143
    .line 144
    if-eqz v3, :cond_8

    .line 145
    .line 146
    iget-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    .line 147
    .line 148
    if-eqz v3, :cond_8

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 152
    move-result v3

    .line 153
    .line 154
    if-ne v3, v0, :cond_8

    .line 155
    .line 156
    iget-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 160
    move-result v3

    .line 161
    .line 162
    if-eq v3, v1, :cond_a

    .line 163
    .line 164
    .line 165
    :cond_8
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->releaseBitmap()V

    .line 166
    .line 167
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 168
    .line 169
    .line 170
    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 171
    move-result-object v5

    .line 172
    .line 173
    iput-object v5, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    .line 175
    if-nez v5, :cond_9

    .line 176
    .line 177
    .line 178
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->releaseBitmap()V

    .line 179
    return v2

    .line 180
    .line 181
    :cond_9
    :try_start_2
    new-instance v5, Landroid/graphics/Canvas;

    .line 182
    .line 183
    iget-object v6, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    .line 184
    .line 185
    .line 186
    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 187
    .line 188
    iput-object v5, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurringCanvas:Landroid/graphics/Canvas;

    .line 189
    .line 190
    iget-object v5, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRenderScript:Landroidx/renderscript/RenderScript;

    .line 191
    .line 192
    iget-object v6, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    .line 193
    .line 194
    sget-object v7, Landroidx/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroidx/renderscript/Allocation$MipmapControl;

    .line 195
    .line 196
    .line 197
    invoke-static {v5, v6, v7, v4}, Landroidx/renderscript/Allocation;->createFromBitmap(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;

    .line 198
    move-result-object v5

    .line 199
    .line 200
    iput-object v5, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurInput:Landroidx/renderscript/Allocation;

    .line 201
    .line 202
    iget-object v6, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRenderScript:Landroidx/renderscript/RenderScript;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 206
    move-result-object v5

    .line 207
    .line 208
    .line 209
    invoke-static {v6, v5}, Landroidx/renderscript/Allocation;->createTyped(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Type;)Landroidx/renderscript/Allocation;

    .line 210
    move-result-object v5

    .line 211
    .line 212
    iput-object v5, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurOutput:Landroidx/renderscript/Allocation;

    .line 213
    .line 214
    .line 215
    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 216
    move-result-object v0

    .line 217
    .line 218
    iput-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    .line 220
    if-nez v0, :cond_a

    .line 221
    .line 222
    .line 223
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->releaseBitmap()V

    .line 224
    return v2

    .line 225
    :cond_a
    return v4

    .line 226
    :catch_1
    move-exception v0

    .line 227
    .line 228
    :try_start_3
    const-string v1, "OOM when create blur bitmap"

    .line 229
    .line 230
    .line 231
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 232
    .line 233
    .line 234
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->releaseBitmap()V

    .line 235
    return v2

    .line 236
    .line 237
    .line 238
    :catchall_0
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->releaseBitmap()V

    .line 239
    return v2
.end method

.method protected release()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->releaseBitmap()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->releaseScript()V

    .line 7
    return-void
.end method

.method protected render(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 4
    return-void
.end method

.method public setBackView(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBackView:Landroid/view/View;

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBackView:Landroid/view/View;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 10
    :cond_0
    return-void
.end method

.method public setBlurRadius(F)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurRadius:F

    .line 3
    .line 4
    cmpl-float v0, v0, p1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iput p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurRadius:F

    .line 9
    const/4 p1, 0x1

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDirty:Z

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
    iget v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDownsampleFactor:F

    .line 8
    .line 9
    cmpl-float v0, v0, p1

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iput p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDownsampleFactor:F

    .line 14
    const/4 p1, 0x1

    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDirty:Z

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->releaseBitmap()V

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

.method public setMaxFPS(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr v0, p1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mMinBlurInterval:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mMinBlurInterval:J

    :goto_0
    return-void
.end method

.method public setOverlayColor(I)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mOverlayColor:I

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mOverlayColor:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 10
    :cond_0
    return-void
.end method
