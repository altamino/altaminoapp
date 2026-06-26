.class public Lcom/github/mmin18/widget/RealtimeBlurView;
.super Landroid/view/View;
.source "RealtimeBlurView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mmin18/widget/RealtimeBlurView$StopException;
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

.field private static STOP_EXCEPTION:Lcom/github/mmin18/widget/RealtimeBlurView$StopException;


# instance fields
.field private mBackView:Landroid/view/View;

.field private mBitmapToBlur:Landroid/graphics/Bitmap;

.field private mBlurInput:Landroid/support/v8/renderscript/Allocation;

.field private mBlurOutput:Landroid/support/v8/renderscript/Allocation;

.field private mBlurRadius:F

.field private mBlurScript:Landroid/support/v8/renderscript/ScriptIntrinsicBlur;

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

.field private mRenderScript:Landroid/support/v8/renderscript/RenderScript;

.field private final preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 420
    new-instance v0, Lcom/github/mmin18/widget/RealtimeBlurView$StopException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/mmin18/widget/RealtimeBlurView$StopException;-><init>(Lcom/github/mmin18/widget/RealtimeBlurView$1;)V

    sput-object v0, Lcom/github/mmin18/widget/RealtimeBlurView;->STOP_EXCEPTION:Lcom/github/mmin18/widget/RealtimeBlurView$StopException;

    .line 424
    :try_start_0
    const-class v0, Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v2, "android.support.v8.renderscript.RenderScript"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    sput-object v1, Lcom/github/mmin18/widget/RealtimeBlurView;->DEBUG:Ljava/lang/Boolean;

    return-void

    .line 426
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RenderScript support not enabled. Add \"android { defaultConfig { renderscriptSupportModeEnabled true }}\" in your build.gradle"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRectSrc:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRectDst:Landroid/graphics/Rect;

    const-wide/16 v0, 0x0

    .line 59
    iput-wide v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mMinBlurInterval:J

    .line 255
    new-instance v0, Lcom/github/mmin18/widget/RealtimeBlurView$1;

    invoke-direct {v0, p0}, Lcom/github/mmin18/widget/RealtimeBlurView$1;-><init>(Lcom/github/mmin18/widget/RealtimeBlurView;)V

    iput-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 65
    sget-object v0, Lcom/narvii/lib/R$styleable;->RealtimeBlurView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 66
    sget v0, Lcom/narvii/lib/R$styleable;->RealtimeBlurView_realtimeBlurRadius:I

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v1, 0x1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    .line 66
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurRadius:F

    .line 68
    sget p1, Lcom/narvii/lib/R$styleable;->RealtimeBlurView_realtimeDownsampleFactor:I

    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDownsampleFactor:F

    .line 69
    sget p1, Lcom/narvii/lib/R$styleable;->RealtimeBlurView_realtimeOverlayColor:I

    const v0, -0x55000001

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mOverlayColor:I

    .line 70
    sget p1, Lcom/narvii/lib/R$styleable;->RealtimeBlurView_realtimeBlurMaxFPS:I

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    .line 71
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    cmpl-float p2, p1, v0

    if-lez p2, :cond_0

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p2, p1

    float-to-long p1, p2

    .line 74
    iput-wide p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mMinBlurInterval:J

    .line 77
    :cond_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method static synthetic access$000(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/view/View;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBackView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000()I
    .locals 1

    .line 36
    sget v0, Lcom/github/mmin18/widget/RealtimeBlurView;->PREDRAW_COUNTER:I

    return v0
.end method

.method static synthetic access$1002(I)I
    .locals 0

    .line 36
    sput p0, Lcom/github/mmin18/widget/RealtimeBlurView;->PREDRAW_COUNTER:I

    return p0
.end method

.method static synthetic access$1100()J
    .locals 2

    .line 36
    sget-wide v0, Lcom/github/mmin18/widget/RealtimeBlurView;->PREDRAW_LAST_WARN_TIME:J

    return-wide v0
.end method

.method static synthetic access$1102(J)J
    .locals 0

    .line 36
    sput-wide p0, Lcom/github/mmin18/widget/RealtimeBlurView;->PREDRAW_LAST_WARN_TIME:J

    return-wide p0
.end method

.method static synthetic access$200(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/view/View;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDecorView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/github/mmin18/widget/RealtimeBlurView;)J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mMinBlurInterval:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/github/mmin18/widget/RealtimeBlurView;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mOverlayColor:I

    return p0
.end method

.method static synthetic access$500(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$600(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Canvas;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurringCanvas:Landroid/graphics/Canvas;

    return-object p0
.end method

.method static synthetic access$702(Lcom/github/mmin18/widget/RealtimeBlurView;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mIsRendering:Z

    return p1
.end method

.method static synthetic access$800(Lcom/github/mmin18/widget/RealtimeBlurView;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDifferentRoot:Z

    return p0
.end method

.method static isDebug(Landroid/content/Context;)Z
    .locals 3

    .line 434
    sget-object v0, Lcom/github/mmin18/widget/RealtimeBlurView;->DEBUG:Ljava/lang/Boolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    .line 435
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/github/mmin18/widget/RealtimeBlurView;->DEBUG:Ljava/lang/Boolean;

    .line 437
    :cond_1
    sget-object p0, Lcom/github/mmin18/widget/RealtimeBlurView;->DEBUG:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p0, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private releaseBitmap()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurInput:Landroid/support/v8/renderscript/Allocation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 130
    iput-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurInput:Landroid/support/v8/renderscript/Allocation;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurOutput:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 134
    iput-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurOutput:Landroid/support/v8/renderscript/Allocation;

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 137
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 138
    iput-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 141
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 142
    iput-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    :cond_3
    return-void
.end method

.method private releaseScript()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->destroy()V

    .line 149
    iput-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurScript:Landroid/support/v8/renderscript/ScriptIntrinsicBlur;

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {v0}, Landroid/support/v8/renderscript/BaseObj;->destroy()V

    .line 153
    iput-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurScript:Landroid/support/v8/renderscript/ScriptIntrinsicBlur;

    :cond_1
    return-void
.end method

.method static reportPreDraw(Landroid/content/Context;)V
    .locals 1

    .line 446
    invoke-static {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->isDebug(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 447
    sget p0, Lcom/github/mmin18/widget/RealtimeBlurView;->PREDRAW_COUNTER:I

    add-int/lit8 v0, p0, 0x1

    sput v0, Lcom/github/mmin18/widget/RealtimeBlurView;->PREDRAW_COUNTER:I

    if-nez p0, :cond_2

    .line 448
    sget-object p0, Lcom/github/mmin18/widget/RealtimeBlurView;->PREDRAW_HANDLER:Landroid/os/Handler;

    if-nez p0, :cond_0

    .line 449
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object p0, Lcom/github/mmin18/widget/RealtimeBlurView;->PREDRAW_HANDLER:Landroid/os/Handler;

    .line 451
    :cond_0
    sget-object p0, Lcom/github/mmin18/widget/RealtimeBlurView;->PREDRAW_WARN:Ljava/lang/Runnable;

    if-nez p0, :cond_1

    .line 452
    new-instance p0, Lcom/github/mmin18/widget/RealtimeBlurView$2;

    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurView$2;-><init>()V

    sput-object p0, Lcom/github/mmin18/widget/RealtimeBlurView;->PREDRAW_WARN:Ljava/lang/Runnable;

    .line 463
    :cond_1
    sget-object p0, Lcom/github/mmin18/widget/RealtimeBlurView;->PREDRAW_HANDLER:Landroid/os/Handler;

    sget-object v0, Lcom/github/mmin18/widget/RealtimeBlurView;->PREDRAW_WARN:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 464
    sget-object p0, Lcom/github/mmin18/widget/RealtimeBlurView;->PREDRAW_HANDLER:Landroid/os/Handler;

    sget-object v0, Lcom/github/mmin18/widget/RealtimeBlurView;->PREDRAW_WARN:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method protected blur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurInput:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 250
    iget-object p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurScript:Landroid/support/v8/renderscript/ScriptIntrinsicBlur;

    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurInput:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {p1, v0}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/support/v8/renderscript/Allocation;)V

    .line 251
    iget-object p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurScript:Landroid/support/v8/renderscript/ScriptIntrinsicBlur;

    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurOutput:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {p1, v0}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/support/v8/renderscript/Allocation;)V

    .line 252
    iget-object p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurOutput:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {p1, p2}, Landroid/support/v8/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 382
    iget-boolean v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mIsRendering:Z

    if-nez v0, :cond_1

    .line 385
    sget v0, Lcom/github/mmin18/widget/RealtimeBlurView;->RENDERING_COUNT:I

    if-lez v0, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    .line 384
    :cond_1
    sget-object p1, Lcom/github/mmin18/widget/RealtimeBlurView;->STOP_EXCEPTION:Lcom/github/mmin18/widget/RealtimeBlurView$StopException;

    throw p1
.end method

.method protected drawBlurredBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V
    .locals 3

    if-eqz p2, :cond_0

    .line 407
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRectSrc:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 408
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRectSrc:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 409
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRectDst:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 410
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRectDst:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 411
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRectSrc:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRectDst:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 413
    :cond_0
    iget-object p2, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 414
    iget-object p2, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRectDst:Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected getActivityDecorView()Landroid/view/View;
    .locals 3

    .line 345
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 346
    instance-of v2, v0, Landroid/app/Activity;

    if-nez v2, :cond_0

    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_0

    .line 347
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 349
    :cond_0
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 350
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 358
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 359
    invoke-virtual {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->getActivityDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDecorView:Landroid/view/View;

    .line 360
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDecorView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 361
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 362
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDifferentRoot:Z

    .line 363
    iget-boolean v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDifferentRoot:Z

    if-eqz v0, :cond_2

    .line 364
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    .line 367
    :cond_1
    iput-boolean v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDifferentRoot:Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDecorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 376
    :cond_0
    invoke-virtual {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->release()V

    .line 377
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 394
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 395
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mOverlayColor:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/github/mmin18/widget/RealtimeBlurView;->drawBlurredBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method protected prepare()Z
    .locals 7

    .line 165
    iget v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurRadius:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->release()V

    return v1

    .line 170
    :cond_0
    iget v2, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDownsampleFactor:F

    div-float/2addr v0, v2

    const/high16 v3, 0x41c80000    # 25.0f

    cmpl-float v4, v0, v3

    if-lez v4, :cond_1

    mul-float v2, v2, v0

    div-float/2addr v2, v3

    const/high16 v0, 0x41c80000    # 25.0f

    .line 177
    :cond_1
    iget-boolean v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDirty:Z

    const/4 v4, 0x1

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    if-nez v3, :cond_7

    .line 178
    :cond_2
    iget-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    if-nez v3, :cond_6

    .line 180
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v3

    iput-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    .line 181
    iget-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    iget-object v5, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v5}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicBlur;

    move-result-object v3

    iput-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurScript:Landroid/support/v8/renderscript/ScriptIntrinsicBlur;
    :try_end_0
    .catch Landroid/support/v8/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 183
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/github/mmin18/widget/RealtimeBlurView;->isDebug(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 184
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error loading RS jni library: java.lang.UnsatisfiedLinkError:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 185
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error loading RS jni library, Upgrade buildToolsVersion=\"24.0.2\" or higher may solve this issue"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_3
    throw v0

    .line 191
    :cond_4
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->releaseScript()V

    .line 192
    sget-boolean v2, Lcom/github/mmin18/widget/RealtimeBlurView;->Loge:Z

    if-nez v2, :cond_5

    const-string v2, "fail to init render script"

    .line 193
    invoke-static {v2, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    sput-boolean v4, Lcom/github/mmin18/widget/RealtimeBlurView;->Loge:Z

    :cond_5
    return v1

    .line 201
    :cond_6
    :goto_0
    iget-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurScript:Landroid/support/v8/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v3, v0}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 202
    iput-boolean v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDirty:Z

    .line 205
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 206
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 208
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v3, v3

    div-float/2addr v3, v2

    float-to-int v2, v3

    .line 209
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 211
    iget-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurringCanvas:Landroid/graphics/Canvas;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_8

    .line 212
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, v0, :cond_8

    iget-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    .line 213
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v3, v2, :cond_a

    .line 214
    :cond_8
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->releaseBitmap()V

    .line 218
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    .line 219
    iget-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_9

    .line 240
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->releaseBitmap()V

    return v1

    .line 222
    :cond_9
    :try_start_2
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    invoke-direct {v3, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurringCanvas:Landroid/graphics/Canvas;

    .line 224
    iget-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    iget-object v5, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    sget-object v6, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    invoke-static {v3, v5, v6, v4}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v3

    iput-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurInput:Landroid/support/v8/renderscript/Allocation;

    .line 226
    iget-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    iget-object v5, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurInput:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v3

    iput-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurOutput:Landroid/support/v8/renderscript/Allocation;

    .line 228
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    .line 229
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_a

    .line 240
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->releaseBitmap()V

    return v1

    :cond_a
    return v4

    :catch_1
    move-exception v0

    :try_start_3
    const-string v2, "OOM when create blur bitmap"

    .line 237
    invoke-static {v2, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 240
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->releaseBitmap()V

    return v1

    :catchall_0
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->releaseBitmap()V

    return v1
.end method

.method protected release()V
    .locals 0

    .line 158
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->releaseBitmap()V

    .line 159
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->releaseScript()V

    return-void
.end method

.method protected render(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 0

    .line 341
    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setBackView(Landroid/view/View;)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBackView:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 114
    iput-object p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBackView:Landroid/view/View;

    .line 115
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBlurRadius(F)V
    .locals 1

    .line 81
    iget v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurRadius:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 82
    iput p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mBlurRadius:F

    const/4 p1, 0x1

    .line 83
    iput-boolean p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDirty:Z

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setDownsampleFactor(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_1

    .line 93
    iget v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDownsampleFactor:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 94
    iput p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDownsampleFactor:F

    const/4 p1, 0x1

    .line 95
    iput-boolean p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mDirty:Z

    .line 96
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->releaseBitmap()V

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void

    .line 90
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Downsample factor must be greater than 0."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

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

    .line 121
    iput-wide v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mMinBlurInterval:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 123
    iput-wide v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mMinBlurInterval:J

    :goto_0
    return-void
.end method

.method public setOverlayColor(I)V
    .locals 1

    .line 102
    iget v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mOverlayColor:I

    if-eq v0, p1, :cond_0

    .line 103
    iput p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->mOverlayColor:I

    .line 104
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
