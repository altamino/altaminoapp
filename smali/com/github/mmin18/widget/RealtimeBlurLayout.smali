.class public Lcom/github/mmin18/widget/RealtimeBlurLayout;
.super Landroid/widget/FrameLayout;
.source "RealtimeBlurLayout.java"


# static fields
.field static DEBUG:Ljava/lang/Boolean;

.field static Loge:Z


# instance fields
.field private mBitmapToBlur:Landroid/graphics/Bitmap;

.field private mBlurInput:Landroid/support/v8/renderscript/Allocation;

.field private mBlurOutput:Landroid/support/v8/renderscript/Allocation;

.field private mBlurRadius:F

.field private mBlurScript:Landroid/support/v8/renderscript/ScriptIntrinsicBlur;

.field private mBlurredBitmap:Landroid/graphics/Bitmap;

.field private mBlurringCanvas:Landroid/graphics/Canvas;

.field private mDirty:Z

.field private mDownsampleFactor:F

.field private mIsRendering:Z

.field private mOverlayColor:I

.field private final mRectDst:Landroid/graphics/Rect;

.field private final mRectSrc:Landroid/graphics/Rect;

.field private mRenderScript:Landroid/support/v8/renderscript/RenderScript;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 293
    :try_start_0
    const-class v0, Lcom/github/mmin18/widget/RealtimeBlurLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "android.support.v8.renderscript.RenderScript"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .line 300
    sput-object v0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->DEBUG:Ljava/lang/Boolean;

    return-void

    .line 295
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RenderScript support not enabled. Add \"android { defaultConfig { renderscriptSupportModeEnabled true }}\" in your build.gradle"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mDirty:Z

    .line 40
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mRectSrc:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mRectDst:Landroid/graphics/Rect;

    .line 45
    sget-object v1, Lcom/narvii/lib/R$styleable;->RealtimeBlurLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 46
    sget v1, Lcom/narvii/lib/R$styleable;->RealtimeBlurLayout_blurLayoutRadius:I

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v0, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    .line 46
    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurRadius:F

    .line 48
    sget p1, Lcom/narvii/lib/R$styleable;->RealtimeBlurLayout_blurLayoutDownsampleFactor:I

    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mDownsampleFactor:F

    .line 49
    sget p1, Lcom/narvii/lib/R$styleable;->RealtimeBlurLayout_blurLayoutOverlayColor:I

    const v0, -0x55000001

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mOverlayColor:I

    .line 50
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static isDebug(Landroid/content/Context;)Z
    .locals 3

    .line 303
    sget-object v0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->DEBUG:Ljava/lang/Boolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    .line 304
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

    sput-object p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->DEBUG:Ljava/lang/Boolean;

    .line 306
    :cond_1
    sget-object p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->DEBUG:Ljava/lang/Boolean;

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

    .line 82
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurInput:Landroid/support/v8/renderscript/Allocation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 84
    iput-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurInput:Landroid/support/v8/renderscript/Allocation;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurOutput:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 88
    iput-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurOutput:Landroid/support/v8/renderscript/Allocation;

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBitmapToBlur:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 92
    iput-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBitmapToBlur:Landroid/graphics/Bitmap;

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurredBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 95
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 96
    iput-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurredBitmap:Landroid/graphics/Bitmap;

    :cond_3
    return-void
.end method

.method private releaseScript()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->destroy()V

    .line 103
    iput-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurScript:Landroid/support/v8/renderscript/ScriptIntrinsicBlur;

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {v0}, Landroid/support/v8/renderscript/BaseObj;->destroy()V

    .line 107
    iput-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurScript:Landroid/support/v8/renderscript/ScriptIntrinsicBlur;

    :cond_1
    return-void
.end method


# virtual methods
.method protected blur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurInput:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 204
    iget-object p1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurScript:Landroid/support/v8/renderscript/ScriptIntrinsicBlur;

    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurInput:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {p1, v0}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/support/v8/renderscript/Allocation;)V

    .line 205
    iget-object p1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurScript:Landroid/support/v8/renderscript/ScriptIntrinsicBlur;

    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurOutput:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {p1, v0}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/support/v8/renderscript/Allocation;)V

    .line 206
    iget-object p1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurOutput:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {p1, p2}, Landroid/support/v8/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 237
    iget-boolean v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mDirty:Z

    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {p0}, Lcom/github/mmin18/widget/RealtimeBlurLayout;->prepare()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBitmapToBlur:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mOverlayColor:I

    const v3, 0xffffff

    and-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 242
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurringCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/4 v2, 0x1

    .line 243
    iput-boolean v2, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mIsRendering:Z

    .line 244
    iget-object v2, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurringCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBitmapToBlur:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v3, v3, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    iget-object v5, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBitmapToBlur:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v5, v4

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 247
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 249
    iget-boolean v2, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mIsRendering:Z

    if-eqz v2, :cond_3

    .line 250
    iget-object v2, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBitmapToBlur:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurredBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v2, v3}, Lcom/github/mmin18/widget/RealtimeBlurLayout;->blur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 251
    iput-boolean v1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mIsRendering:Z

    .line 252
    iget-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurringCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 253
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurredBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mOverlayColor:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/github/mmin18/widget/RealtimeBlurLayout;->drawBlurredBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V

    goto :goto_1

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurredBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 257
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 259
    :cond_2
    iget v1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mOverlayColor:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/github/mmin18/widget/RealtimeBlurLayout;->drawBlurredBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected drawBlurredBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V
    .locals 3

    if-eqz p2, :cond_0

    .line 282
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mRectSrc:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 283
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mRectSrc:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 284
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mRectDst:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 285
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mRectDst:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 286
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mRectSrc:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mRectDst:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 288
    :cond_0
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .line 266
    iget-boolean v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mIsRendering:Z

    if-eqz v0, :cond_0

    .line 267
    iget-object p1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurringCanvas:Landroid/graphics/Canvas;

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1

    .line 269
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 1

    const/4 v0, 0x1

    .line 218
    iput-boolean v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mDirty:Z

    .line 219
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object p1

    return-object p1
.end method

.method public onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 224
    iput-boolean v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mDirty:Z

    .line 225
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 211
    invoke-virtual {p0}, Lcom/github/mmin18/widget/RealtimeBlurLayout;->release()V

    const/4 v0, 0x1

    .line 212
    iput-boolean v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mDirty:Z

    .line 213
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    const/4 v0, 0x1

    .line 230
    iput-boolean v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mDirty:Z

    .line 231
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected prepare()Z
    .locals 7

    .line 119
    iget v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurRadius:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/github/mmin18/widget/RealtimeBlurLayout;->release()V

    return v1

    .line 124
    :cond_0
    iget v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mDownsampleFactor:F

    .line 126
    iget-boolean v2, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mDirty:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    if-nez v2, :cond_7

    .line 127
    :cond_1
    iget-object v2, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    if-nez v2, :cond_5

    .line 129
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v2

    iput-object v2, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    .line 130
    iget-object v2, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    iget-object v4, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v4}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicBlur;

    move-result-object v2

    iput-object v2, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurScript:Landroid/support/v8/renderscript/ScriptIntrinsicBlur;
    :try_end_0
    .catch Landroid/support/v8/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 132
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/github/mmin18/widget/RealtimeBlurLayout;->isDebug(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 133
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error loading RS jni library: java.lang.UnsatisfiedLinkError:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error loading RS jni library, Upgrade buildToolsVersion=\"24.0.2\" or higher may solve this issue"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_2
    throw v0

    .line 140
    :cond_3
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurLayout;->releaseScript()V

    .line 141
    sget-boolean v2, Lcom/github/mmin18/widget/RealtimeBlurLayout;->Loge:Z

    if-nez v2, :cond_4

    const-string v2, "fail to init render script"

    .line 142
    invoke-static {v2, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    sput-boolean v3, Lcom/github/mmin18/widget/RealtimeBlurLayout;->Loge:Z

    :cond_4
    return v1

    .line 150
    :cond_5
    :goto_0
    iput-boolean v1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mDirty:Z

    .line 151
    iget v2, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurRadius:F

    div-float/2addr v2, v0

    const/high16 v4, 0x41c80000    # 25.0f

    cmpl-float v5, v2, v4

    if-lez v5, :cond_6

    mul-float v0, v0, v2

    div-float/2addr v0, v4

    const/high16 v2, 0x41c80000    # 25.0f

    .line 156
    :cond_6
    iget-object v4, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurScript:Landroid/support/v8/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v4, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 159
    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    .line 160
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v2, v2

    .line 162
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v4, v4

    div-float/2addr v4, v0

    float-to-int v0, v4

    .line 163
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 165
    iget-object v4, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurringCanvas:Landroid/graphics/Canvas;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurredBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_8

    .line 166
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, v2, :cond_8

    iget-object v4, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurredBitmap:Landroid/graphics/Bitmap;

    .line 167
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v4, v0, :cond_a

    .line 168
    :cond_8
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurLayout;->releaseBitmap()V

    .line 172
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBitmapToBlur:Landroid/graphics/Bitmap;

    .line 173
    iget-object v4, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBitmapToBlur:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_9

    .line 194
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurLayout;->releaseBitmap()V

    return v1

    .line 176
    :cond_9
    :try_start_2
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBitmapToBlur:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurringCanvas:Landroid/graphics/Canvas;

    .line 178
    iget-object v4, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    iget-object v5, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBitmapToBlur:Landroid/graphics/Bitmap;

    sget-object v6, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    invoke-static {v4, v5, v6, v3}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v4

    iput-object v4, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurInput:Landroid/support/v8/renderscript/Allocation;

    .line 180
    iget-object v4, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    iget-object v5, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurInput:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v4

    iput-object v4, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurOutput:Landroid/support/v8/renderscript/Allocation;

    .line 182
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurredBitmap:Landroid/graphics/Bitmap;

    .line 183
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurredBitmap:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_a

    .line 194
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurLayout;->releaseBitmap()V

    return v1

    :cond_a
    return v3

    :catch_1
    move-exception v0

    :try_start_3
    const-string v2, "OOM when create blur bitmap"

    .line 191
    invoke-static {v2, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 194
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurLayout;->releaseBitmap()V

    return v1

    :catchall_0
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurLayout;->releaseBitmap()V

    return v1
.end method

.method protected release()V
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurLayout;->releaseBitmap()V

    .line 113
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurLayout;->releaseScript()V

    return-void
.end method

.method public setBlurRadius(F)V
    .locals 1

    .line 54
    iget v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurRadius:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 55
    iput p1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mBlurRadius:F

    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mDirty:Z

    .line 57
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setDownsampleFactor(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_1

    .line 66
    iget v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mDownsampleFactor:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 67
    iput p1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mDownsampleFactor:F

    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mDirty:Z

    .line 69
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurLayout;->releaseBitmap()V

    .line 70
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void

    .line 63
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Downsample factor must be greater than 0."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOverlayColor(I)V
    .locals 1

    .line 75
    iget v0, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mOverlayColor:I

    if-eq v0, p1, :cond_0

    .line 76
    iput p1, p0, Lcom/github/mmin18/widget/RealtimeBlurLayout;->mOverlayColor:I

    .line 77
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method
