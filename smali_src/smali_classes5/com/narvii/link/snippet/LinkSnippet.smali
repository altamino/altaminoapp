.class public abstract Lcom/narvii/link/snippet/LinkSnippet;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/link/snippet/LinkSnippet;->nvContext:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iput-object p1, p0, Lcom/narvii/link/snippet/LinkSnippet;->context:Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    const v0, 0x43868000    # 269.0f

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 18
    move-result p1

    .line 19
    .line 20
    iput p1, p0, Lcom/narvii/link/snippet/LinkSnippet;->standardWidth:I

    .line 21
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/link/snippet/LinkSnippet;Landroid/graphics/Bitmap;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/link/snippet/LinkSnippet;->saveSnippetBitmap(Landroid/graphics/Bitmap;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method private checkSingleLine(Landroid/view/ViewGroup;)V
    .locals 4

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    move-result v1

    .line 9
    .line 10
    if-ge v0, v1, :cond_3

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    instance-of v2, v1, Landroid/view/ViewGroup;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    check-cast v1, Landroid/view/ViewGroup;

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v1}, Lcom/narvii/link/snippet/LinkSnippet;->checkSingleLine(Landroid/view/ViewGroup;)V

    .line 24
    goto :goto_1

    .line 25
    .line 26
    :cond_1
    instance-of v2, v1, Landroid/widget/TextView;

    .line 27
    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    check-cast v1, Landroid/widget/TextView;

    .line 31
    .line 32
    :try_start_0
    const-class v2, Landroid/widget/TextView;

    .line 33
    .line 34
    const-string v3, "mSingleLine"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 38
    move-result-object v2

    .line 39
    const/4 v3, 0x1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    .line 46
    move-result v1

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    const-string v1, "linkSnippet"

    .line 51
    .line 52
    const-string v2, "TextView use singleLine true may cause arabic not be shown,report it to Jason"

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_1

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    .line 62
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    return-void
.end method

.method private getWidthMeasureSpec()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/link/snippet/LinkSnippet;->context:Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/link/snippet/LinkSnippet;->widthDp()I

    .line 6
    move-result v1

    .line 7
    int-to-float v1, v1

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 11
    move-result v0

    .line 12
    .line 13
    const/high16 v1, 0x40000000    # 2.0f

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 17
    move-result v0

    .line 18
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

    .line 1
    .line 2
    if-eqz p2, :cond_1

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    .line 8
    invoke-interface {p2, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 9
    .line 10
    :cond_0
    new-instance v0, Lcom/narvii/link/snippet/LinkSnippet$1;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/link/snippet/LinkSnippet$1;-><init>(Lcom/narvii/link/snippet/LinkSnippet;Landroid/graphics/Bitmap;Lcom/narvii/util/Callback;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 17
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/link/snippet/LinkSnippet;->getView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 13
    :cond_0
    return-void

    .line 14
    .line 15
    :cond_1
    iput-object v0, p0, Lcom/narvii/link/snippet/LinkSnippet;->view:Landroid/view/View;

    .line 16
    .line 17
    instance-of v1, v0, Lcom/narvii/link/ILoadTrackView;

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    new-instance v1, Lcom/narvii/link/snippet/LinkSnippet$3;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, p0, p1}, Lcom/narvii/link/snippet/LinkSnippet$3;-><init>(Lcom/narvii/link/snippet/LinkSnippet;Lcom/narvii/util/Callback;)V

    .line 25
    move-object p1, v0

    .line 26
    .line 27
    check-cast p1, Lcom/narvii/link/ILoadTrackView;

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, v1}, Lcom/narvii/link/ILoadTrackView;->setLoadFinishListener(Lcom/narvii/link/LoadFinishListener;)V

    .line 31
    .line 32
    :cond_2
    sget-boolean p1, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 33
    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    instance-of p1, v0, Landroid/view/ViewGroup;

    .line 37
    .line 38
    if-eqz p1, :cond_3

    .line 39
    move-object p1, v0

    .line 40
    .line 41
    check-cast p1, Landroid/view/ViewGroup;

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, p1}, Lcom/narvii/link/snippet/LinkSnippet;->checkSingleLine(Landroid/view/ViewGroup;)V

    .line 45
    .line 46
    :cond_3
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    .line 47
    const/4 v1, -0x2

    .line 48
    .line 49
    .line 50
    invoke-direct {p1, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 57
    move-result p1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Lcom/narvii/link/snippet/LinkSnippet;->getWidthMeasureSpec()I

    .line 64
    move-result p1

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/narvii/link/snippet/LinkSnippet;->getHeightMeasureSpec()I

    .line 68
    move-result v1

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p1, v1}, Landroid/view/View;->measure(II)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 75
    move-result p1

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 79
    move-result v1

    .line 80
    const/4 v2, 0x0

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v2, v2, p1, v1}, Landroid/view/View;->layout(IIII)V

    .line 84
    return-void
.end method

.method protected getHeightMeasureSpec()I
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0x2710

    .line 3
    .line 4
    const/high16 v1, -0x80000000

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 8
    move-result v0

    .line 9
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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/link/snippet/LinkSnippet;->callback:Lcom/narvii/util/Callback;

    .line 3
    .line 4
    new-instance v0, Lcom/narvii/link/snippet/LinkSnippet$2;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lcom/narvii/link/snippet/LinkSnippet$2;-><init>(Lcom/narvii/link/snippet/LinkSnippet;Lcom/narvii/util/Callback;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/link/snippet/LinkSnippet;->getSnippetBitmap(Lcom/narvii/util/Callback;)V

    .line 11
    return-void
.end method

.method protected abstract getView()Landroid/view/View;
.end method

.method public getViewBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/link/snippet/LinkSnippet;->view:Landroid/view/View;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return-object v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    return-object v1

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/narvii/link/snippet/LinkSnippet;->view:Landroid/view/View;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 19
    move-result v0

    .line 20
    int-to-float v0, v0

    .line 21
    .line 22
    const/high16 v2, 0x3f800000    # 1.0f

    .line 23
    mul-float/2addr v0, v2

    .line 24
    .line 25
    iget-object v3, p0, Lcom/narvii/link/snippet/LinkSnippet;->view:Landroid/view/View;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 29
    move-result v3

    .line 30
    int-to-float v3, v3

    .line 31
    div-float/2addr v0, v3

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/link/snippet/LinkSnippet;->widthDp()I

    .line 35
    move-result v3

    .line 36
    .line 37
    mul-int/lit8 v3, v3, 0x3

    .line 38
    int-to-float v4, v3

    .line 39
    mul-float/2addr v0, v4

    .line 40
    float-to-int v0, v0

    .line 41
    .line 42
    const/16 v5, 0x400

    .line 43
    .line 44
    if-gt v3, v5, :cond_2

    .line 45
    .line 46
    if-le v0, v5, :cond_3

    .line 47
    .line 48
    :cond_2
    const/high16 v3, 0x44800000    # 1024.0f

    .line 49
    .line 50
    div-float v5, v3, v4

    .line 51
    int-to-float v0, v0

    .line 52
    div-float/2addr v3, v0

    .line 53
    .line 54
    .line 55
    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    .line 56
    move-result v3

    .line 57
    .line 58
    .line 59
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 60
    move-result v3

    .line 61
    mul-float/2addr v4, v3

    .line 62
    float-to-int v4, v4

    .line 63
    mul-float/2addr v0, v3

    .line 64
    float-to-int v0, v0

    .line 65
    move v3, v4

    .line 66
    :cond_3
    int-to-float v4, v3

    .line 67
    mul-float/2addr v4, v2

    .line 68
    .line 69
    iget-object v2, p0, Lcom/narvii/link/snippet/LinkSnippet;->view:Landroid/view/View;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 73
    move-result v2

    .line 74
    int-to-float v2, v2

    .line 75
    div-float/2addr v4, v2

    .line 76
    .line 77
    iget-object v2, p0, Lcom/narvii/link/snippet/LinkSnippet;->view:Landroid/view/View;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    .line 81
    .line 82
    iget-object v2, p0, Lcom/narvii/link/snippet/LinkSnippet;->view:Landroid/view/View;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    .line 86
    .line 87
    :try_start_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 88
    .line 89
    .line 90
    invoke-static {v3, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/narvii/link/snippet/LinkSnippet;->getBackgroundColor()I

    .line 95
    move-result v2

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 99
    .line 100
    new-instance v2, Landroid/graphics/Canvas;

    .line 101
    .line 102
    .line 103
    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 107
    .line 108
    iget-object v3, p0, Lcom/narvii/link/snippet/LinkSnippet;->view:Landroid/view/View;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    move-object v1, v0

    .line 113
    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    .line 115
    .line 116
    const-string v2, "linkSnippet"

    .line 117
    .line 118
    .line 119
    invoke-static {v2, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    :goto_0
    return-object v1
.end method

.method public returnSnippetMediaImmediately()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/link/snippet/LinkSnippet;->callback:Lcom/narvii/util/Callback;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/link/snippet/LinkSnippet;->bitmapGot:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    return-void

    .line 11
    :cond_1
    const/4 v0, 0x1

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/narvii/link/snippet/LinkSnippet;->bitmapGot:Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/link/snippet/LinkSnippet;->getViewBitmap()Landroid/graphics/Bitmap;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/link/snippet/LinkSnippet;->callback:Lcom/narvii/util/Callback;

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    const/4 v0, 0x0

    .line 25
    .line 26
    .line 27
    invoke-interface {v1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 28
    return-void

    .line 29
    .line 30
    :cond_2
    iget-object v1, p0, Lcom/narvii/link/snippet/LinkSnippet;->callback:Lcom/narvii/util/Callback;

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v0, v1}, Lcom/narvii/link/snippet/LinkSnippet;->saveSnippetBitmap(Landroid/graphics/Bitmap;Lcom/narvii/util/Callback;)V

    .line 34
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
