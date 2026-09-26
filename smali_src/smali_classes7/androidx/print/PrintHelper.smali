.class public final Landroidx/print/PrintHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/print/PrintHelper$PrintUriAdapter;,
        Landroidx/print/PrintHelper$PrintBitmapAdapter;,
        Landroidx/print/PrintHelper$OnPrintFinishCallback;
    }
.end annotation


# static fields
.field public static final COLOR_MODE_COLOR:I = 0x2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field public static final COLOR_MODE_MONOCHROME:I = 0x1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field static final IS_MIN_MARGINS_HANDLING_CORRECT:Z

.field private static final LOG_TAG:Ljava/lang/String; = "PrintHelper"

.field private static final MAX_PRINT_SIZE:I = 0xdac

.field public static final ORIENTATION_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_PORTRAIT:I = 0x2

.field static final PRINT_ACTIVITY_RESPECTS_ORIENTATION:Z

.field public static final SCALE_MODE_FILL:I = 0x2

.field public static final SCALE_MODE_FIT:I = 0x1


# instance fields
.field mColorMode:I

.field final mContext:Landroid/content/Context;

.field mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

.field final mLock:Ljava/lang/Object;

.field mOrientation:I

.field mScaleMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    const/4 v3, 0x1

    if-le v0, v2, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    sput-boolean v4, Landroidx/print/PrintHelper;->PRINT_ACTIVITY_RESPECTS_ORIENTATION:Z

    if-eq v0, v2, :cond_1

    move v1, v3

    :cond_1
    sput-boolean v1, Landroidx/print/PrintHelper;->IS_MIN_MARGINS_HANDLING_CORRECT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/print/PrintHelper;->mLock:Ljava/lang/Object;

    .line 14
    const/4 v0, 0x2

    .line 15
    .line 16
    iput v0, p0, Landroidx/print/PrintHelper;->mScaleMode:I

    .line 17
    .line 18
    iput v0, p0, Landroidx/print/PrintHelper;->mColorMode:I

    .line 19
    const/4 v0, 0x1

    .line 20
    .line 21
    iput v0, p0, Landroidx/print/PrintHelper;->mOrientation:I

    .line 22
    .line 23
    iput-object p1, p0, Landroidx/print/PrintHelper;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    return-object p0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 8
    move-result p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 12
    move-result v0

    .line 13
    .line 14
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    new-instance v0, Landroid/graphics/Canvas;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 24
    .line 25
    new-instance v1, Landroid/graphics/Paint;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 29
    .line 30
    new-instance v2, Landroid/graphics/ColorMatrix;

    .line 31
    .line 32
    .line 33
    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 34
    const/4 v3, 0x0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 38
    .line 39
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    .line 40
    .line 41
    .line 42
    invoke-direct {v4, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 49
    const/4 p0, 0x0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 53
    return-object p1
.end method

.method private static b(Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes$Builder;
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/print/PrintAttributes$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getResolution()Landroid/print/PrintAttributes$Resolution;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setResolution(Landroid/print/PrintAttributes$Resolution;)Landroid/print/PrintAttributes$Builder;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Builder;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getColorMode()I

    .line 33
    move-result v1

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getColorMode()I

    .line 39
    move-result v1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getDuplexMode()I

    .line 46
    move-result v1

    .line 47
    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getDuplexMode()I

    .line 52
    move-result p0

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p0}, Landroid/print/PrintAttributes$Builder;->setDuplexMode(I)Landroid/print/PrintAttributes$Builder;

    .line 56
    :cond_1
    return-object v0
.end method

.method static c(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    .line 9
    move-result v1

    .line 10
    int-to-float p0, p0

    .line 11
    div-float/2addr v1, p0

    .line 12
    const/4 v2, 0x2

    .line 13
    .line 14
    if-ne p3, v2, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    .line 18
    move-result p3

    .line 19
    int-to-float v2, p1

    .line 20
    div-float/2addr p3, v2

    .line 21
    .line 22
    .line 23
    invoke-static {v1, p3}, Ljava/lang/Math;->max(FF)F

    .line 24
    move-result p3

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    .line 29
    move-result p3

    .line 30
    int-to-float v2, p1

    .line 31
    div-float/2addr p3, v2

    .line 32
    .line 33
    .line 34
    invoke-static {v1, p3}, Ljava/lang/Math;->min(FF)F

    .line 35
    move-result p3

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-virtual {v0, p3, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    .line 42
    move-result v1

    .line 43
    mul-float/2addr p0, p3

    .line 44
    sub-float/2addr v1, p0

    .line 45
    .line 46
    const/high16 p0, 0x40000000    # 2.0f

    .line 47
    div-float/2addr v1, p0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    .line 51
    move-result p2

    .line 52
    int-to-float p1, p1

    .line 53
    mul-float/2addr p1, p3

    .line 54
    sub-float/2addr p2, p1

    .line 55
    div-float/2addr p2, p0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 59
    return-object v0
.end method

.method static d(Landroid/graphics/Bitmap;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 8
    move-result p0

    .line 9
    .line 10
    if-gt v0, p0, :cond_0

    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method private e(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "close fail "

    .line 3
    .line 4
    const-string v1, "PrintHelper"

    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/print/PrintHelper;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    if-eqz v2, :cond_2

    .line 11
    const/4 v3, 0x0

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 19
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    .line 21
    .line 22
    :try_start_1
    invoke-static {p1, v3, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 23
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    .line 28
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    :cond_0
    :goto_0
    return-object p2

    .line 35
    :catchall_0
    move-exception p2

    .line 36
    move-object v3, p1

    .line 37
    goto :goto_1

    .line 38
    :catchall_1
    move-exception p2

    .line 39
    .line 40
    :goto_1
    if-eqz v3, :cond_1

    .line 41
    .line 42
    .line 43
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 44
    goto :goto_2

    .line 45
    :catch_1
    move-exception p1

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    :cond_1
    :goto_2
    throw p2

    .line 50
    .line 51
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    const-string p2, "bad argument to loadBitmap"

    .line 54
    .line 55
    .line 56
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 57
    throw p1
.end method


# virtual methods
.method f(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/print/PrintHelper;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 12
    const/4 v1, 0x1

    .line 13
    .line 14
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1, v0}, Landroidx/print/PrintHelper;->e(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 18
    .line 19
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 20
    .line 21
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 22
    const/4 v3, 0x0

    .line 23
    .line 24
    if-lez v2, :cond_3

    .line 25
    .line 26
    if-gtz v0, :cond_0

    .line 27
    goto :goto_1

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 31
    move-result v4

    .line 32
    move v5, v1

    .line 33
    .line 34
    :goto_0
    const/16 v6, 0xdac

    .line 35
    .line 36
    if-le v4, v6, :cond_1

    .line 37
    .line 38
    ushr-int/lit8 v4, v4, 0x1

    .line 39
    .line 40
    shl-int/lit8 v5, v5, 0x1

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_1
    if-lez v5, :cond_3

    .line 44
    .line 45
    .line 46
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    .line 47
    move-result v0

    .line 48
    div-int/2addr v0, v5

    .line 49
    .line 50
    if-gtz v0, :cond_2

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_2
    iget-object v0, p0, Landroidx/print/PrintHelper;->mLock:Ljava/lang/Object;

    .line 54
    monitor-enter v0

    .line 55
    .line 56
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    .line 57
    .line 58
    .line 59
    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 60
    .line 61
    iput-object v2, p0, Landroidx/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 62
    .line 63
    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 64
    .line 65
    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 66
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 67
    .line 68
    .line 69
    :try_start_1
    invoke-direct {p0, p1, v2}, Landroidx/print/PrintHelper;->e(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 70
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 71
    .line 72
    iget-object v0, p0, Landroidx/print/PrintHelper;->mLock:Ljava/lang/Object;

    .line 73
    monitor-enter v0

    .line 74
    .line 75
    :try_start_2
    iput-object v3, p0, Landroidx/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 76
    monitor-exit v0

    .line 77
    return-object p1

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    throw p1

    .line 81
    :catchall_1
    move-exception p1

    .line 82
    .line 83
    iget-object v1, p0, Landroidx/print/PrintHelper;->mLock:Ljava/lang/Object;

    .line 84
    monitor-enter v1

    .line 85
    .line 86
    :try_start_3
    iput-object v3, p0, Landroidx/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 87
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 88
    throw p1

    .line 89
    :catchall_2
    move-exception p1

    .line 90
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 91
    throw p1

    .line 92
    :catchall_3
    move-exception p1

    .line 93
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 94
    throw p1

    .line 95
    :cond_3
    :goto_1
    return-object v3

    .line 96
    .line 97
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 98
    .line 99
    const-string v0, "bad argument to getScaledBitmap"

    .line 100
    .line 101
    .line 102
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 103
    throw p1
.end method

.method g(Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 11
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    sget-boolean v0, Landroidx/print/PrintHelper;->IS_MIN_MARGINS_HANDLING_CORRECT:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    move-object v5, p1

    .line 7
    goto :goto_0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {p1}, Landroidx/print/PrintHelper;->b(Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes$Builder;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    new-instance v2, Landroid/print/PrintAttributes$Margins;

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, v1, v1, v1, v1}, Landroid/print/PrintAttributes$Margins;-><init>(IIII)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/print/PrintAttributes$Builder;->setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Builder;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    .line 24
    move-result-object v0

    .line 25
    move-object v5, v0

    .line 26
    .line 27
    :goto_0
    new-instance v0, Landroidx/print/PrintHelper$1;

    .line 28
    move-object v2, v0

    .line 29
    move-object v3, p0

    .line 30
    .line 31
    move-object/from16 v4, p5

    .line 32
    move-object v6, p3

    .line 33
    move-object v7, p1

    .line 34
    move v8, p2

    .line 35
    move-object v9, p4

    .line 36
    .line 37
    move-object/from16 v10, p6

    .line 38
    .line 39
    .line 40
    invoke-direct/range {v2 .. v10}, Landroidx/print/PrintHelper$1;-><init>(Landroidx/print/PrintHelper;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/graphics/Bitmap;Landroid/print/PrintAttributes;ILandroid/os/ParcelFileDescriptor;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    .line 41
    .line 42
    new-array v1, v1, [Ljava/lang/Void;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 46
    return-void
.end method
