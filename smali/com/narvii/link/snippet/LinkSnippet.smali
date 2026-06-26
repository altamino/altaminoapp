.class public abstract Lcom/narvii/link/snippet/LinkSnippet;
.super Ljava/lang/Object;
.source "LinkSnippet.java"


# static fields
.field public static final MAX_HEIGHT:I = 0x400

.field public static final MAX_WIDTH:I = 0x400

.field public static final OUTPUT_DENSITY:I = 0x3


# instance fields
.field bitmapGot:Z

.field callback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation
.end field

.field protected context:Landroid/content/Context;

.field nvContext:Lcom/narvii/app/NVContext;

.field standardWidth:I

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/narvii/link/snippet/LinkSnippet;->nvContext:Lcom/narvii/app/NVContext;

    .line 103
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/link/snippet/LinkSnippet;->context:Landroid/content/Context;

    .line 104
    iget-object p1, p0, Lcom/narvii/link/snippet/LinkSnippet;->context:Landroid/content/Context;

    const v0, 0x43868000    # 269.0f

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/narvii/link/snippet/LinkSnippet;->standardWidth:I

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/link/snippet/LinkSnippet;Landroid/graphics/Bitmap;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/narvii/link/snippet/LinkSnippet;->saveSnippetBitmap(Landroid/graphics/Bitmap;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method private checkSingleLine(Landroid/view/ViewGroup;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 258
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 259
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 260
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 261
    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/narvii/link/snippet/LinkSnippet;->checkSingleLine(Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 262
    :cond_1
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 263
    check-cast v1, Landroid/widget/TextView;

    .line 265
    :try_start_0
    const-class v2, Landroid/widget/TextView;

    const-string v3, "mSingleLine"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    .line 266
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 267
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "linkSnippet"

    const-string v2, "TextView use singleLine true may cause arabic not be shown,report it to Jason"

    .line 268
    invoke-static {v1, v2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 271
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private getWidthMeasureSpec()I
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/narvii/link/snippet/LinkSnippet;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/narvii/link/snippet/LinkSnippet;->widthDp()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private saveSnippetBitmap(Landroid/graphics/Bitmap;Lcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/Media;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 132
    invoke-interface {p2, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 134
    :cond_0
    new-instance v0, Lcom/narvii/link/snippet/LinkSnippet$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/link/snippet/LinkSnippet$1;-><init>(Lcom/narvii/link/snippet/LinkSnippet;Landroid/graphics/Bitmap;Lcom/narvii/util/Callback;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected getBackgroundColor()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected getBitmapByObject(Lcom/narvii/util/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 192
    invoke-virtual {p0}, Lcom/narvii/link/snippet/LinkSnippet;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 196
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 202
    :cond_1
    iput-object v0, p0, Lcom/narvii/link/snippet/LinkSnippet;->view:Landroid/view/View;

    .line 203
    instance-of v1, v0, Lcom/narvii/link/ILoadTrackView;

    if-eqz v1, :cond_2

    .line 204
    new-instance v1, Lcom/narvii/link/snippet/LinkSnippet$3;

    invoke-direct {v1, p0, p1}, Lcom/narvii/link/snippet/LinkSnippet$3;-><init>(Lcom/narvii/link/snippet/LinkSnippet;Lcom/narvii/util/Callback;)V

    .line 222
    move-object p1, v0

    check-cast p1, Lcom/narvii/link/ILoadTrackView;

    invoke-interface {p1, v1}, Lcom/narvii/link/ILoadTrackView;->setLoadFinishListener(Lcom/narvii/link/LoadFinishListener;)V

    .line 225
    :cond_2
    sget-boolean p1, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz p1, :cond_3

    instance-of p1, v0, Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    .line 226
    move-object p1, v0

    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/narvii/link/snippet/LinkSnippet;->checkSingleLine(Landroid/view/ViewGroup;)V

    .line 239
    :cond_3
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt p1, v1, :cond_4

    .line 242
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 245
    :cond_4
    invoke-direct {p0}, Lcom/narvii/link/snippet/LinkSnippet;->getWidthMeasureSpec()I

    move-result p1

    .line 246
    invoke-virtual {p0}, Lcom/narvii/link/snippet/LinkSnippet;->getHeightMeasureSpec()I

    move-result v1

    .line 245
    invoke-virtual {v0, p1, v1}, Landroid/view/View;->measure(II)V

    .line 247
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    .line 248
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x0

    .line 249
    invoke-virtual {v0, v2, v2, p1, v1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected getHeightMeasureSpec()I
    .locals 2

    const/16 v0, 0x2710

    const/high16 v1, -0x80000000

    .line 116
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method protected abstract getSnippetBitmap(Lcom/narvii/util/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation
.end method

.method public final getSnippetMedia(Lcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/Media;",
            ">;)V"
        }
    .end annotation

    .line 172
    iput-object p1, p0, Lcom/narvii/link/snippet/LinkSnippet;->callback:Lcom/narvii/util/Callback;

    .line 173
    new-instance v0, Lcom/narvii/link/snippet/LinkSnippet$2;

    invoke-direct {v0, p0, p1}, Lcom/narvii/link/snippet/LinkSnippet$2;-><init>(Lcom/narvii/link/snippet/LinkSnippet;Lcom/narvii/util/Callback;)V

    invoke-virtual {p0, v0}, Lcom/narvii/link/snippet/LinkSnippet;->getSnippetBitmap(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method protected abstract getView()Landroid/view/View;
.end method

.method public getViewBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .line 46
    iget-object v0, p0, Lcom/narvii/link/snippet/LinkSnippet;->view:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 49
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/narvii/link/snippet/LinkSnippet;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v0, v0, v2

    iget-object v3, p0, Lcom/narvii/link/snippet/LinkSnippet;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 53
    invoke-virtual {p0}, Lcom/narvii/link/snippet/LinkSnippet;->widthDp()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    int-to-float v4, v3

    mul-float v0, v0, v4

    float-to-int v0, v0

    const/16 v5, 0x400

    if-gt v3, v5, :cond_2

    if-le v0, v5, :cond_3

    :cond_2
    const/high16 v3, 0x44800000    # 1024.0f

    div-float v5, v3, v4

    int-to-float v0, v0

    div-float/2addr v3, v0

    .line 59
    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float v4, v4, v3

    float-to-int v4, v4

    mul-float v0, v0, v3

    float-to-int v0, v0

    move v3, v4

    :cond_3
    int-to-float v4, v3

    mul-float v4, v4, v2

    .line 64
    iget-object v2, p0, Lcom/narvii/link/snippet/LinkSnippet;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v4, v2

    .line 65
    iget-object v2, p0, Lcom/narvii/link/snippet/LinkSnippet;->view:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    .line 66
    iget-object v2, p0, Lcom/narvii/link/snippet/LinkSnippet;->view:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    .line 69
    :try_start_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 70
    invoke-virtual {p0}, Lcom/narvii/link/snippet/LinkSnippet;->getBackgroundColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 71
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 72
    invoke-virtual {v2, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 73
    iget-object v3, p0, Lcom/narvii/link/snippet/LinkSnippet;->view:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v2, "linkSnippet"

    .line 75
    invoke-static {v2, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public returnSnippetMediaImmediately()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/narvii/link/snippet/LinkSnippet;->callback:Lcom/narvii/util/Callback;

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/link/snippet/LinkSnippet;->bitmapGot:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/narvii/link/snippet/LinkSnippet;->bitmapGot:Z

    .line 89
    invoke-virtual {p0}, Lcom/narvii/link/snippet/LinkSnippet;->getViewBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    .line 91
    iget-object v1, p0, Lcom/narvii/link/snippet/LinkSnippet;->callback:Lcom/narvii/util/Callback;

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 92
    invoke-interface {v1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    return-void

    .line 97
    :cond_2
    iget-object v1, p0, Lcom/narvii/link/snippet/LinkSnippet;->callback:Lcom/narvii/util/Callback;

    invoke-direct {p0, v0, v1}, Lcom/narvii/link/snippet/LinkSnippet;->saveSnippetBitmap(Landroid/graphics/Bitmap;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method protected useOtherCommunityFrame()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected widthDp()I
    .locals 1

    const/16 v0, 0x10d

    return v0
.end method
