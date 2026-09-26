.class public Lcom/bumptech/glide/load/resource/bitmap/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/f0$d;,
        Lcom/bumptech/glide/load/resource/bitmap/f0$g;,
        Lcom/bumptech/glide/load/resource/bitmap/f0$c;,
        Lcom/bumptech/glide/load/resource/bitmap/f0$f;,
        Lcom/bumptech/glide/load/resource/bitmap/f0$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/k<",
        "TT;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Lcom/bumptech/glide/load/resource/bitmap/f0$e;

.field public static final DEFAULT_FRAME:J = -0x1L

.field static final DEFAULT_FRAME_OPTION:I = 0x2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final FRAME_OPTION:Lcom/bumptech/glide/load/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/h<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "VideoDecoder"

.field public static final TARGET_FRAME:Lcom/bumptech/glide/load/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/h<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

.field private final factory:Lcom/bumptech/glide/load/resource/bitmap/f0$e;

.field private final initializer:Lcom/bumptech/glide/load/resource/bitmap/f0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/bitmap/f0$f<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    const-wide/16 v0, -0x1

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/f0$a;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/f0$a;-><init>()V

    .line 12
    .line 13
    const-string v2, "com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame"

    .line 14
    .line 15
    .line 16
    invoke-static {v2, v0, v1}, Lcom/bumptech/glide/load/h;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/h$b;)Lcom/bumptech/glide/load/h;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/f0;->TARGET_FRAME:Lcom/bumptech/glide/load/h;

    .line 20
    const/4 v0, 0x2

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/f0$b;

    .line 27
    .line 28
    .line 29
    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/f0$b;-><init>()V

    .line 30
    .line 31
    const-string v2, "com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption"

    .line 32
    .line 33
    .line 34
    invoke-static {v2, v0, v1}, Lcom/bumptech/glide/load/h;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/h$b;)Lcom/bumptech/glide/load/h;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/f0;->FRAME_OPTION:Lcom/bumptech/glide/load/h;

    .line 38
    .line 39
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/f0$e;

    .line 40
    .line 41
    .line 42
    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/f0$e;-><init>()V

    .line 43
    .line 44
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/f0;->DEFAULT_FACTORY:Lcom/bumptech/glide/load/resource/bitmap/f0$e;

    .line 45
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Lcom/bumptech/glide/load/resource/bitmap/f0$f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/d;",
            "Lcom/bumptech/glide/load/resource/bitmap/f0$f<",
            "TT;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/f0;->DEFAULT_FACTORY:Lcom/bumptech/glide/load/resource/bitmap/f0$e;

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/resource/bitmap/f0;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Lcom/bumptech/glide/load/resource/bitmap/f0$f;Lcom/bumptech/glide/load/resource/bitmap/f0$e;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Lcom/bumptech/glide/load/resource/bitmap/f0$f;Lcom/bumptech/glide/load/resource/bitmap/f0$e;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/d;",
            "Lcom/bumptech/glide/load/resource/bitmap/f0$f<",
            "TT;>;",
            "Lcom/bumptech/glide/load/resource/bitmap/f0$e;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/f0;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/f0;->initializer:Lcom/bumptech/glide/load/resource/bitmap/f0$f;

    iput-object p3, p0, Lcom/bumptech/glide/load/resource/bitmap/f0;->factory:Lcom/bumptech/glide/load/resource/bitmap/f0$e;

    return-void
.end method

.method public static c(Lcom/bumptech/glide/load/engine/bitmap_recycle/d;)Lcom/bumptech/glide/load/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/d;",
            ")",
            "Lcom/bumptech/glide/load/k<",
            "Landroid/content/res/AssetFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/f0;

    .line 3
    .line 4
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/f0$c;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/f0$c;-><init>(Lcom/bumptech/glide/load/resource/bitmap/f0$a;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0, v1}, Lcom/bumptech/glide/load/resource/bitmap/f0;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Lcom/bumptech/glide/load/resource/bitmap/f0$f;)V

    .line 12
    return-object v0
.end method

.method public static d(Lcom/bumptech/glide/load/engine/bitmap_recycle/d;)Lcom/bumptech/glide/load/k;
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/d;",
            ")",
            "Lcom/bumptech/glide/load/k<",
            "Ljava/nio/ByteBuffer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/f0;

    .line 3
    .line 4
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/f0$d;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/f0$d;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, v1}, Lcom/bumptech/glide/load/resource/bitmap/f0;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Lcom/bumptech/glide/load/resource/bitmap/f0$f;)V

    .line 11
    return-object v0
.end method

.method private static e(Landroid/media/MediaMetadataRetriever;JIIILcom/bumptech/glide/load/resource/bitmap/l;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1b

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    const/high16 v0, -0x80000000

    .line 9
    .line 10
    if-eq p4, v0, :cond_0

    .line 11
    .line 12
    if-eq p5, v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/l;->NONE:Lcom/bumptech/glide/load/resource/bitmap/l;

    .line 15
    .line 16
    if-eq p6, v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-static/range {p0 .. p6}, Lcom/bumptech/glide/load/resource/bitmap/f0;->g(Landroid/media/MediaMetadataRetriever;JIIILcom/bumptech/glide/load/resource/bitmap/l;)Landroid/graphics/Bitmap;

    .line 20
    move-result-object p4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p4, 0x0

    .line 23
    .line 24
    :goto_0
    if-nez p4, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-static {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/f0;->f(Landroid/media/MediaMetadataRetriever;JI)Landroid/graphics/Bitmap;

    .line 28
    move-result-object p4

    .line 29
    :cond_1
    return-object p4
.end method

.method private static f(Landroid/media/MediaMetadataRetriever;JI)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static g(Landroid/media/MediaMetadataRetriever;JIIILcom/bumptech/glide/load/resource/bitmap/l;)Landroid/graphics/Bitmap;
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1b
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0x12

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 10
    move-result v0

    .line 11
    .line 12
    const/16 v1, 0x13

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 20
    move-result v1

    .line 21
    .line 22
    const/16 v2, 0x18

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 30
    move-result v2

    .line 31
    .line 32
    const/16 v3, 0x5a

    .line 33
    .line 34
    if-eq v2, v3, :cond_0

    .line 35
    .line 36
    const/16 v3, 0x10e

    .line 37
    .line 38
    if-ne v2, v3, :cond_1

    .line 39
    :cond_0
    move v8, v1

    .line 40
    move v1, v0

    .line 41
    move v0, v8

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {p6, v0, v1, p4, p5}, Lcom/bumptech/glide/load/resource/bitmap/l;->b(IIII)F

    .line 45
    move-result p4

    .line 46
    int-to-float p5, v0

    .line 47
    mul-float/2addr p5, p4

    .line 48
    .line 49
    .line 50
    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    .line 51
    move-result v6

    .line 52
    int-to-float p5, v1

    .line 53
    mul-float/2addr p4, p5

    .line 54
    .line 55
    .line 56
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    .line 57
    move-result v7

    .line 58
    move-object v2, p0

    .line 59
    move-wide v3, p1

    .line 60
    move v5, p3

    .line 61
    .line 62
    .line 63
    invoke-static/range {v2 .. v7}, Lcom/bumptech/glide/load/resource/bitmap/e0;->a(Landroid/media/MediaMetadataRetriever;JIII)Landroid/graphics/Bitmap;

    .line 64
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    return-object p0

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    const/4 p1, 0x3

    .line 68
    .line 69
    const-string p2, "VideoDecoder"

    .line 70
    .line 71
    .line 72
    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 73
    move-result p1

    .line 74
    .line 75
    if-eqz p1, :cond_2

    .line 76
    .line 77
    const-string p1, "Exception trying to decode frame on oreo+"

    .line 78
    .line 79
    .line 80
    invoke-static {p2, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    :cond_2
    const/4 p0, 0x0

    .line 82
    return-object p0
.end method

.method public static h(Lcom/bumptech/glide/load/engine/bitmap_recycle/d;)Lcom/bumptech/glide/load/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/d;",
            ")",
            "Lcom/bumptech/glide/load/k<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/f0;

    .line 3
    .line 4
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/f0$g;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/f0$g;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, v1}, Lcom/bumptech/glide/load/resource/bitmap/f0;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Lcom/bumptech/glide/load/resource/bitmap/f0$f;)V

    .line 11
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/bumptech/glide/load/i;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/bumptech/glide/load/i;",
            ")Z"
        }
    .end annotation

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljava/lang/Object;IILcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/engine/v;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II",
            "Lcom/bumptech/glide/load/i;",
            ")",
            "Lcom/bumptech/glide/load/engine/v<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/f0;->TARGET_FRAME:Lcom/bumptech/glide/load/h;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p4, v0}, Lcom/bumptech/glide/load/i;->c(Lcom/bumptech/glide/load/h;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Long;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 12
    move-result-wide v2

    .line 13
    .line 14
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    cmp-long v0, v2, v0

    .line 17
    .line 18
    if-gez v0, :cond_1

    .line 19
    .line 20
    const-wide/16 v0, -0x1

    .line 21
    .line 22
    cmp-long v0, v2, v0

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    const-string p3, "Requested frame must be non-negative, or DEFAULT_FRAME, given: "

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p2

    .line 45
    .line 46
    .line 47
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    throw p1

    .line 49
    .line 50
    :cond_1
    :goto_0
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/f0;->FRAME_OPTION:Lcom/bumptech/glide/load/h;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p4, v0}, Lcom/bumptech/glide/load/i;->c(Lcom/bumptech/glide/load/h;)Ljava/lang/Object;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    check-cast v0, Ljava/lang/Integer;

    .line 57
    .line 58
    if-nez v0, :cond_2

    .line 59
    const/4 v0, 0x2

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    :cond_2
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/l;->OPTION:Lcom/bumptech/glide/load/h;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p4, v1}, Lcom/bumptech/glide/load/i;->c(Lcom/bumptech/glide/load/h;)Ljava/lang/Object;

    .line 69
    move-result-object p4

    .line 70
    .line 71
    check-cast p4, Lcom/bumptech/glide/load/resource/bitmap/l;

    .line 72
    .line 73
    if-nez p4, :cond_3

    .line 74
    .line 75
    sget-object p4, Lcom/bumptech/glide/load/resource/bitmap/l;->DEFAULT:Lcom/bumptech/glide/load/resource/bitmap/l;

    .line 76
    :cond_3
    move-object v7, p4

    .line 77
    .line 78
    iget-object p4, p0, Lcom/bumptech/glide/load/resource/bitmap/f0;->factory:Lcom/bumptech/glide/load/resource/bitmap/f0$e;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p4}, Lcom/bumptech/glide/load/resource/bitmap/f0$e;->a()Landroid/media/MediaMetadataRetriever;

    .line 82
    move-result-object p4

    .line 83
    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/f0;->initializer:Lcom/bumptech/glide/load/resource/bitmap/f0$f;

    .line 85
    .line 86
    .line 87
    invoke-interface {v1, p4, p1}, Lcom/bumptech/glide/load/resource/bitmap/f0$f;->a(Landroid/media/MediaMetadataRetriever;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 91
    move-result v4

    .line 92
    move-object v1, p4

    .line 93
    move v5, p2

    .line 94
    move v6, p3

    .line 95
    .line 96
    .line 97
    invoke-static/range {v1 .. v7}, Lcom/bumptech/glide/load/resource/bitmap/f0;->e(Landroid/media/MediaMetadataRetriever;JIIILcom/bumptech/glide/load/resource/bitmap/l;)Landroid/graphics/Bitmap;

    .line 98
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .line 100
    .line 101
    invoke-virtual {p4}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 102
    .line 103
    iget-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/f0;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    .line 104
    .line 105
    .line 106
    invoke-static {p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/f;->d(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/d;)Lcom/bumptech/glide/load/resource/bitmap/f;

    .line 107
    move-result-object p1

    .line 108
    return-object p1

    .line 109
    :catchall_0
    move-exception p1

    .line 110
    goto :goto_1

    .line 111
    :catch_0
    move-exception p1

    .line 112
    .line 113
    :try_start_1
    new-instance p2, Ljava/io/IOException;

    .line 114
    .line 115
    .line 116
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 117
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    .line 119
    .line 120
    :goto_1
    invoke-virtual {p4}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 121
    throw p1
.end method
