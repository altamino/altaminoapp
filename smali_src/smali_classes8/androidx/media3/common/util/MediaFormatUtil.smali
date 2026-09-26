.class public final Landroidx/media3/common/util/MediaFormatUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field public static final KEY_MAX_BIT_RATE:Ljava/lang/String; = "max-bitrate"

.field public static final KEY_PCM_ENCODING_EXTENDED:Ljava/lang/String; = "exo-pcm-encoding-int"

.field public static final KEY_PIXEL_WIDTH_HEIGHT_RATIO_FLOAT:Ljava/lang/String; = "exo-pixel-width-height-ratio-float"

.field private static final MAX_POWER_OF_TWO_INT:I = 0x40000000


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;)[B
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 4
    move-result v0

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 10
    return-object v0
.end method

.method public static b(Landroid/media/MediaFormat;)Landroidx/media3/common/ColorInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Landroidx/media3/common/util/MediaFormatUtil;->c(Landroid/media/MediaFormat;Z)Landroidx/media3/common/ColorInfo;

    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method private static c(Landroid/media/MediaFormat;Z)Landroidx/media3/common/ColorInfo;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x18

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    return-object v2

    .line 9
    .line 10
    :cond_0
    const-string v0, "color-standard"

    .line 11
    const/4 v1, -0x1

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v0, v1}, Landroidx/media3/common/util/MediaFormatUtil;->d(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    .line 15
    move-result v0

    .line 16
    .line 17
    const-string v3, "color-range"

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v3, v1}, Landroidx/media3/common/util/MediaFormatUtil;->d(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    .line 21
    move-result v3

    .line 22
    .line 23
    const-string v4, "color-transfer"

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v4, v1}, Landroidx/media3/common/util/MediaFormatUtil;->d(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    .line 27
    move-result v4

    .line 28
    .line 29
    const-string v5, "hdr-static-info"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v5}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    .line 33
    move-result-object p0

    .line 34
    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-static {p0}, Landroidx/media3/common/util/MediaFormatUtil;->a(Ljava/nio/ByteBuffer;)[B

    .line 39
    move-result-object p0

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move-object p0, v2

    .line 42
    .line 43
    :goto_0
    if-nez p1, :cond_4

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Landroidx/media3/common/util/MediaFormatUtil;->f(I)Z

    .line 47
    move-result p1

    .line 48
    .line 49
    if-nez p1, :cond_2

    .line 50
    move v0, v1

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-static {v3}, Landroidx/media3/common/util/MediaFormatUtil;->e(I)Z

    .line 54
    move-result p1

    .line 55
    .line 56
    if-nez p1, :cond_3

    .line 57
    move v3, v1

    .line 58
    .line 59
    .line 60
    :cond_3
    invoke-static {v4}, Landroidx/media3/common/util/MediaFormatUtil;->g(I)Z

    .line 61
    move-result p1

    .line 62
    .line 63
    if-nez p1, :cond_4

    .line 64
    move v4, v1

    .line 65
    .line 66
    :cond_4
    if-ne v0, v1, :cond_6

    .line 67
    .line 68
    if-ne v3, v1, :cond_6

    .line 69
    .line 70
    if-ne v4, v1, :cond_6

    .line 71
    .line 72
    if-eqz p0, :cond_5

    .line 73
    goto :goto_1

    .line 74
    :cond_5
    return-object v2

    .line 75
    .line 76
    :cond_6
    :goto_1
    new-instance p1, Landroidx/media3/common/ColorInfo$Builder;

    .line 77
    .line 78
    .line 79
    invoke-direct {p1}, Landroidx/media3/common/ColorInfo$Builder;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0}, Landroidx/media3/common/ColorInfo$Builder;->c(I)Landroidx/media3/common/ColorInfo$Builder;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v3}, Landroidx/media3/common/ColorInfo$Builder;->b(I)Landroidx/media3/common/ColorInfo$Builder;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v4}, Landroidx/media3/common/ColorInfo$Builder;->d(I)Landroidx/media3/common/ColorInfo$Builder;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p0}, Landroidx/media3/common/ColorInfo$Builder;->e([B)Landroidx/media3/common/ColorInfo$Builder;

    .line 95
    move-result-object p0

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Landroidx/media3/common/ColorInfo$Builder;->a()Landroidx/media3/common/ColorInfo;

    .line 99
    move-result-object p0

    .line 100
    return-object p0
.end method

.method public static d(Landroid/media/MediaFormat;Ljava/lang/String;I)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 10
    move-result p2

    .line 11
    :cond_0
    return p2
.end method

.method private static e(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private static f(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private static g(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x6

    if-eq p0, v1, :cond_1

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static h(Landroid/media/MediaFormat;Ljava/lang/String;[B)V
    .locals 0
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 10
    :cond_0
    return-void
.end method

.method public static i(Landroid/media/MediaFormat;Landroidx/media3/common/ColorInfo;)V
    .locals 2
    .param p1    # Landroidx/media3/common/ColorInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const-string v0, "color-transfer"

    .line 5
    .line 6
    iget v1, p1, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0, v1}, Landroidx/media3/common/util/MediaFormatUtil;->k(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 10
    .line 11
    const-string v0, "color-standard"

    .line 12
    .line 13
    iget v1, p1, Landroidx/media3/common/ColorInfo;->colorSpace:I

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0, v1}, Landroidx/media3/common/util/MediaFormatUtil;->k(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 17
    .line 18
    const-string v0, "color-range"

    .line 19
    .line 20
    iget v1, p1, Landroidx/media3/common/ColorInfo;->colorRange:I

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v0, v1}, Landroidx/media3/common/util/MediaFormatUtil;->k(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 24
    .line 25
    const-string v0, "hdr-static-info"

    .line 26
    .line 27
    iget-object p1, p1, Landroidx/media3/common/ColorInfo;->hdrStaticInfo:[B

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v0, p1}, Landroidx/media3/common/util/MediaFormatUtil;->h(Landroid/media/MediaFormat;Ljava/lang/String;[B)V

    .line 31
    :cond_0
    return-void
.end method

.method public static j(Landroid/media/MediaFormat;Ljava/lang/String;F)V
    .locals 1

    .line 1
    .line 2
    const/high16 v0, -0x40800000    # -1.0f

    .line 3
    .line 4
    cmpl-float v0, p2, v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 10
    :cond_0
    return-void
.end method

.method public static k(Landroid/media/MediaFormat;Ljava/lang/String;I)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-eq p2, v0, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 7
    :cond_0
    return-void
.end method

.method public static l(Landroid/media/MediaFormat;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaFormat;",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 5
    move-result v1

    .line 6
    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    const-string v2, "csd-"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    check-cast v2, [B

    .line 31
    .line 32
    .line 33
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1, v2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 38
    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method
