.class public final Lcom/bumptech/glide/load/resource/bitmap/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/ImageHeaderParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/k$d;,
        Lcom/bumptech/glide/load/resource/bitmap/k$a;,
        Lcom/bumptech/glide/load/resource/bitmap/k$c;,
        Lcom/bumptech/glide/load/resource/bitmap/k$b;
    }
.end annotation


# static fields
.field private static final BYTES_PER_FORMAT:[I

.field static final EXIF_MAGIC_NUMBER:I = 0xffd8

.field static final EXIF_SEGMENT_TYPE:I = 0xe1

.field private static final GIF_HEADER:I = 0x474946

.field private static final INTEL_TIFF_MAGIC_NUMBER:I = 0x4949

.field private static final JPEG_EXIF_SEGMENT_PREAMBLE:Ljava/lang/String; = "Exif\u0000\u0000"

.field static final JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

.field private static final MARKER_EOI:I = 0xd9

.field private static final MOTOROLA_TIFF_MAGIC_NUMBER:I = 0x4d4d

.field private static final ORIENTATION_TAG_TYPE:I = 0x112

.field private static final PNG_HEADER:I = -0x76afb1b9

.field private static final RIFF_HEADER:I = 0x52494646

.field private static final SEGMENT_SOS:I = 0xda

.field static final SEGMENT_START_ID:I = 0xff

.field private static final TAG:Ljava/lang/String; = "DfltImageHeaderParser"

.field private static final VP8_HEADER:I = 0x56503800

.field private static final VP8_HEADER_MASK:I = -0x100

.field private static final VP8_HEADER_TYPE_EXTENDED:I = 0x58

.field private static final VP8_HEADER_TYPE_LOSSLESS:I = 0x4c

.field private static final VP8_HEADER_TYPE_MASK:I = 0xff

.field private static final WEBP_EXTENDED_ALPHA_FLAG:I = 0x10

.field private static final WEBP_HEADER:I = 0x57454250

.field private static final WEBP_LOSSLESS_ALPHA_FLAG:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "UTF-8"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "Exif\u0000\u0000"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 12
    move-result-object v0

    .line 13
    .line 14
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/k;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    .line 15
    .line 16
    const/16 v0, 0xd

    .line 17
    .line 18
    new-array v0, v0, [I

    .line 19
    .line 20
    .line 21
    fill-array-data v0, :array_0

    .line 22
    .line 23
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/k;->BYTES_PER_FORMAT:[I

    .line 24
    return-void

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static d(II)I
    .locals 0

    .line 1
    add-int/lit8 p0, p0, 0x2

    mul-int/lit8 p1, p1, 0xc

    add-int/2addr p0, p1

    return p0
.end method

.method private e(Lcom/bumptech/glide/load/resource/bitmap/k$c;Lcom/bumptech/glide/load/engine/bitmap_recycle/b;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/k$c;->a()I

    .line 5
    move-result v1

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Lcom/bumptech/glide/load/resource/bitmap/k;->g(I)Z

    .line 9
    move-result v2
    :try_end_0
    .catch Lcom/bumptech/glide/load/resource/bitmap/k$c$a; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    const/4 v3, 0x3

    .line 11
    .line 12
    const-string v4, "DfltImageHeaderParser"

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    .line 17
    :try_start_1
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    const-string p2, "Parser doesn\'t handle magic number: "

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    return v0

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/k;->i(Lcom/bumptech/glide/load/resource/bitmap/k$c;)I

    .line 45
    move-result v1

    .line 46
    .line 47
    if-ne v1, v0, :cond_3

    .line 48
    .line 49
    .line 50
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 51
    move-result p1

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    const-string p1, "Failed to parse exif segment length, or exif segment not found"

    .line 56
    .line 57
    .line 58
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_2
    return v0

    .line 60
    .line 61
    :cond_3
    const-class v2, [B

    .line 62
    .line 63
    .line 64
    invoke-interface {p2, v1, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/b;->c(ILjava/lang/Class;)Ljava/lang/Object;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    check-cast v2, [B
    :try_end_1
    .catch Lcom/bumptech/glide/load/resource/bitmap/k$c$a; {:try_start_1 .. :try_end_1} :catch_0

    .line 68
    .line 69
    .line 70
    :try_start_2
    invoke-direct {p0, p1, v2, v1}, Lcom/bumptech/glide/load/resource/bitmap/k;->k(Lcom/bumptech/glide/load/resource/bitmap/k$c;[BI)I

    .line 71
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    .line 73
    .line 74
    :try_start_3
    invoke-interface {p2, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/b;->e(Ljava/lang/Object;)V

    .line 75
    return p1

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    .line 78
    .line 79
    invoke-interface {p2, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/b;->e(Ljava/lang/Object;)V

    .line 80
    throw p1
    :try_end_3
    .catch Lcom/bumptech/glide/load/resource/bitmap/k$c$a; {:try_start_3 .. :try_end_3} :catch_0

    .line 81
    :catch_0
    return v0
.end method

.method private f(Lcom/bumptech/glide/load/resource/bitmap/k$c;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/k$c;->a()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0xffd8

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 12
    return-object p1

    .line 13
    .line 14
    :cond_0
    shl-int/lit8 v0, v0, 0x8

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/k$c;->c()S

    .line 18
    move-result v1

    .line 19
    or-int/2addr v0, v1

    .line 20
    .line 21
    .line 22
    const v1, 0x474946

    .line 23
    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    .line 26
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 27
    return-object p1

    .line 28
    .line 29
    :cond_1
    shl-int/lit8 v0, v0, 0x8

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/k$c;->c()S

    .line 33
    move-result v1

    .line 34
    or-int/2addr v0, v1

    .line 35
    .line 36
    .line 37
    const v1, -0x76afb1b9

    .line 38
    .line 39
    if-ne v0, v1, :cond_3

    .line 40
    .line 41
    const-wide/16 v0, 0x15

    .line 42
    .line 43
    .line 44
    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/k$c;->skip(J)J
    :try_end_0
    .catch Lcom/bumptech/glide/load/resource/bitmap/k$c$a; {:try_start_0 .. :try_end_0} :catch_1

    .line 45
    .line 46
    .line 47
    :try_start_1
    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/k$c;->c()S

    .line 48
    move-result p1

    .line 49
    const/4 v0, 0x3

    .line 50
    .line 51
    if-lt p1, v0, :cond_2

    .line 52
    .line 53
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_2
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    :try_end_1
    .catch Lcom/bumptech/glide/load/resource/bitmap/k$c$a; {:try_start_1 .. :try_end_1} :catch_0

    .line 57
    :goto_0
    return-object p1

    .line 58
    .line 59
    :catch_0
    :try_start_2
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 60
    return-object p1

    .line 61
    .line 62
    .line 63
    :cond_3
    const v1, 0x52494646

    .line 64
    .line 65
    if-eq v0, v1, :cond_4

    .line 66
    .line 67
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 68
    return-object p1

    .line 69
    .line 70
    :cond_4
    const-wide/16 v0, 0x4

    .line 71
    .line 72
    .line 73
    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/k$c;->skip(J)J

    .line 74
    .line 75
    .line 76
    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/k$c;->a()I

    .line 77
    move-result v2

    .line 78
    .line 79
    shl-int/lit8 v2, v2, 0x10

    .line 80
    .line 81
    .line 82
    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/k$c;->a()I

    .line 83
    move-result v3

    .line 84
    or-int/2addr v2, v3

    .line 85
    .line 86
    .line 87
    const v3, 0x57454250

    .line 88
    .line 89
    if-eq v2, v3, :cond_5

    .line 90
    .line 91
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 92
    return-object p1

    .line 93
    .line 94
    .line 95
    :cond_5
    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/k$c;->a()I

    .line 96
    move-result v2

    .line 97
    .line 98
    shl-int/lit8 v2, v2, 0x10

    .line 99
    .line 100
    .line 101
    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/k$c;->a()I

    .line 102
    move-result v3

    .line 103
    or-int/2addr v2, v3

    .line 104
    .line 105
    and-int/lit16 v3, v2, -0x100

    .line 106
    .line 107
    .line 108
    const v4, 0x56503800

    .line 109
    .line 110
    if-eq v3, v4, :cond_6

    .line 111
    .line 112
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 113
    return-object p1

    .line 114
    .line 115
    :cond_6
    and-int/lit16 v2, v2, 0xff

    .line 116
    .line 117
    const/16 v3, 0x58

    .line 118
    .line 119
    if-ne v2, v3, :cond_8

    .line 120
    .line 121
    .line 122
    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/k$c;->skip(J)J

    .line 123
    .line 124
    .line 125
    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/k$c;->c()S

    .line 126
    move-result p1

    .line 127
    .line 128
    and-int/lit8 p1, p1, 0x10

    .line 129
    .line 130
    if-eqz p1, :cond_7

    .line 131
    .line 132
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 133
    goto :goto_1

    .line 134
    .line 135
    :cond_7
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 136
    :goto_1
    return-object p1

    .line 137
    .line 138
    :cond_8
    const/16 v3, 0x4c

    .line 139
    .line 140
    if-ne v2, v3, :cond_a

    .line 141
    .line 142
    .line 143
    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/k$c;->skip(J)J

    .line 144
    .line 145
    .line 146
    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/k$c;->c()S

    .line 147
    move-result p1

    .line 148
    .line 149
    and-int/lit8 p1, p1, 0x8

    .line 150
    .line 151
    if-eqz p1, :cond_9

    .line 152
    .line 153
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 154
    goto :goto_2

    .line 155
    .line 156
    :cond_9
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 157
    :goto_2
    return-object p1

    .line 158
    .line 159
    :cond_a
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    :try_end_2
    .catch Lcom/bumptech/glide/load/resource/bitmap/k$c$a; {:try_start_2 .. :try_end_2} :catch_1

    .line 160
    return-object p1

    .line 161
    .line 162
    :catch_1
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 163
    return-object p1
.end method

.method private static g(I)Z
    .locals 2

    .line 1
    const v0, 0xffd8

    and-int v1, p0, v0

    if-eq v1, v0, :cond_1

    const/16 v0, 0x4d4d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4949

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

.method private h([BI)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/k;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    .line 6
    array-length v1, v1

    .line 7
    .line 8
    if-le p2, v1, :cond_0

    .line 9
    const/4 p2, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move p2, v0

    .line 12
    .line 13
    :goto_0
    if-eqz p2, :cond_2

    .line 14
    move v1, v0

    .line 15
    .line 16
    :goto_1
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/k;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    .line 17
    array-length v3, v2

    .line 18
    .line 19
    if-ge v1, v3, :cond_2

    .line 20
    .line 21
    aget-byte v3, p1, v1

    .line 22
    .line 23
    aget-byte v2, v2, v1

    .line 24
    .line 25
    if-eq v3, v2, :cond_1

    .line 26
    goto :goto_2

    .line 27
    .line 28
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    move v0, p2

    .line 31
    :goto_2
    return v0
.end method

.method private i(Lcom/bumptech/glide/load/resource/bitmap/k$c;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/k$c;->c()S

    .line 4
    move-result v0

    .line 5
    .line 6
    const/16 v1, 0xff

    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, -0x1

    .line 9
    .line 10
    const-string v4, "DfltImageHeaderParser"

    .line 11
    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    .line 15
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 16
    move-result p1

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    const-string v1, "Unknown segmentId="

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_1
    return v3

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/k$c;->c()S

    .line 43
    move-result v0

    .line 44
    .line 45
    const/16 v1, 0xda

    .line 46
    .line 47
    if-ne v0, v1, :cond_3

    .line 48
    return v3

    .line 49
    .line 50
    :cond_3
    const/16 v1, 0xd9

    .line 51
    .line 52
    if-ne v0, v1, :cond_5

    .line 53
    .line 54
    .line 55
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 56
    move-result p1

    .line 57
    .line 58
    if-eqz p1, :cond_4

    .line 59
    .line 60
    const-string p1, "Found MARKER_EOI in exif segment"

    .line 61
    .line 62
    .line 63
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_4
    return v3

    .line 65
    .line 66
    .line 67
    :cond_5
    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/k$c;->a()I

    .line 68
    move-result v1

    .line 69
    .line 70
    add-int/lit8 v1, v1, -0x2

    .line 71
    .line 72
    const/16 v5, 0xe1

    .line 73
    .line 74
    if-eq v0, v5, :cond_7

    .line 75
    int-to-long v5, v1

    .line 76
    .line 77
    .line 78
    invoke-interface {p1, v5, v6}, Lcom/bumptech/glide/load/resource/bitmap/k$c;->skip(J)J

    .line 79
    move-result-wide v7

    .line 80
    .line 81
    cmp-long v5, v7, v5

    .line 82
    .line 83
    if-eqz v5, :cond_0

    .line 84
    .line 85
    .line 86
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 87
    move-result p1

    .line 88
    .line 89
    if-eqz p1, :cond_6

    .line 90
    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    const-string v2, "Unable to skip enough data, type: "

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v0, ", wanted to skip: "

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v0, ", but actually skipped: "

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object p1

    .line 123
    .line 124
    .line 125
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_6
    return v3

    .line 127
    :cond_7
    return v1
.end method

.method private static j(Lcom/bumptech/glide/load/resource/bitmap/k$b;)I
    .locals 12

    .line 1
    const/4 v0, 0x6

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/resource/bitmap/k$b;->a(I)S

    .line 5
    move-result v1

    .line 6
    .line 7
    const/16 v2, 0x4949

    .line 8
    const/4 v3, 0x3

    .line 9
    .line 10
    const-string v4, "DfltImageHeaderParser"

    .line 11
    .line 12
    if-eq v1, v2, :cond_2

    .line 13
    .line 14
    const/16 v2, 0x4d4d

    .line 15
    .line 16
    if-eq v1, v2, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 20
    move-result v2

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    const-string v5, "Unknown endianness = "

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    :cond_0
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_1
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_2
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/resource/bitmap/k$b;->e(Ljava/nio/ByteOrder;)V

    .line 54
    .line 55
    const/16 v1, 0xa

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/resource/bitmap/k$b;->b(I)I

    .line 59
    move-result v1

    .line 60
    add-int/2addr v1, v0

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/resource/bitmap/k$b;->a(I)S

    .line 64
    move-result v0

    .line 65
    const/4 v2, 0x0

    .line 66
    .line 67
    :goto_1
    if-ge v2, v0, :cond_e

    .line 68
    .line 69
    .line 70
    invoke-static {v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/k;->d(II)I

    .line 71
    move-result v5

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v5}, Lcom/bumptech/glide/load/resource/bitmap/k$b;->a(I)S

    .line 75
    move-result v6

    .line 76
    .line 77
    const/16 v7, 0x112

    .line 78
    .line 79
    if-eq v6, v7, :cond_3

    .line 80
    .line 81
    goto/16 :goto_5

    .line 82
    .line 83
    :cond_3
    add-int/lit8 v7, v5, 0x2

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v7}, Lcom/bumptech/glide/load/resource/bitmap/k$b;->a(I)S

    .line 87
    move-result v7

    .line 88
    const/4 v8, 0x1

    .line 89
    .line 90
    if-lt v7, v8, :cond_c

    .line 91
    .line 92
    const/16 v8, 0xc

    .line 93
    .line 94
    if-le v7, v8, :cond_4

    .line 95
    .line 96
    goto/16 :goto_4

    .line 97
    .line 98
    :cond_4
    add-int/lit8 v8, v5, 0x4

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v8}, Lcom/bumptech/glide/load/resource/bitmap/k$b;->b(I)I

    .line 102
    move-result v8

    .line 103
    .line 104
    if-gez v8, :cond_5

    .line 105
    .line 106
    .line 107
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 108
    move-result v5

    .line 109
    .line 110
    if-eqz v5, :cond_d

    .line 111
    .line 112
    const-string v5, "Negative tiff component count"

    .line 113
    .line 114
    .line 115
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    goto/16 :goto_5

    .line 118
    .line 119
    .line 120
    :cond_5
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 121
    move-result v9

    .line 122
    .line 123
    const-string v10, " tagType="

    .line 124
    .line 125
    if-eqz v9, :cond_6

    .line 126
    .line 127
    new-instance v9, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    const-string v11, "Got tagIndex="

    .line 133
    .line 134
    .line 135
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    const-string v11, " formatCode="

    .line 147
    .line 148
    .line 149
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    const-string v11, " componentCount="

    .line 155
    .line 156
    .line 157
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object v9

    .line 165
    .line 166
    .line 167
    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    :cond_6
    sget-object v9, Lcom/bumptech/glide/load/resource/bitmap/k;->BYTES_PER_FORMAT:[I

    .line 170
    .line 171
    aget v9, v9, v7

    .line 172
    add-int/2addr v8, v9

    .line 173
    const/4 v9, 0x4

    .line 174
    .line 175
    if-le v8, v9, :cond_7

    .line 176
    .line 177
    .line 178
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 179
    move-result v5

    .line 180
    .line 181
    if-eqz v5, :cond_d

    .line 182
    .line 183
    new-instance v5, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    const-string v6, "Got byte count > 4, not orientation, continuing, formatCode="

    .line 189
    .line 190
    .line 191
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    move-result-object v5

    .line 199
    .line 200
    .line 201
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .line 203
    goto/16 :goto_5

    .line 204
    .line 205
    :cond_7
    add-int/lit8 v5, v5, 0x8

    .line 206
    .line 207
    if-ltz v5, :cond_b

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/k$b;->d()I

    .line 211
    move-result v7

    .line 212
    .line 213
    if-le v5, v7, :cond_8

    .line 214
    goto :goto_3

    .line 215
    .line 216
    :cond_8
    if-ltz v8, :cond_a

    .line 217
    add-int/2addr v8, v5

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/k$b;->d()I

    .line 221
    move-result v7

    .line 222
    .line 223
    if-le v8, v7, :cond_9

    .line 224
    goto :goto_2

    .line 225
    .line 226
    .line 227
    :cond_9
    invoke-virtual {p0, v5}, Lcom/bumptech/glide/load/resource/bitmap/k$b;->a(I)S

    .line 228
    move-result p0

    .line 229
    return p0

    .line 230
    .line 231
    .line 232
    :cond_a
    :goto_2
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 233
    move-result v5

    .line 234
    .line 235
    if-eqz v5, :cond_d

    .line 236
    .line 237
    new-instance v5, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .line 242
    const-string v7, "Illegal number of bytes for TI tag data tagType="

    .line 243
    .line 244
    .line 245
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    move-result-object v5

    .line 253
    .line 254
    .line 255
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    goto :goto_5

    .line 257
    .line 258
    .line 259
    :cond_b
    :goto_3
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 260
    move-result v7

    .line 261
    .line 262
    if-eqz v7, :cond_d

    .line 263
    .line 264
    new-instance v7, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .line 269
    const-string v8, "Illegal tagValueOffset="

    .line 270
    .line 271
    .line 272
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    move-result-object v5

    .line 286
    .line 287
    .line 288
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    goto :goto_5

    .line 290
    .line 291
    .line 292
    :cond_c
    :goto_4
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 293
    move-result v5

    .line 294
    .line 295
    if-eqz v5, :cond_d

    .line 296
    .line 297
    new-instance v5, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .line 302
    const-string v6, "Got invalid format code = "

    .line 303
    .line 304
    .line 305
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    move-result-object v5

    .line 313
    .line 314
    .line 315
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .line 317
    :cond_d
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 318
    .line 319
    goto/16 :goto_1

    .line 320
    :cond_e
    const/4 p0, -0x1

    .line 321
    return p0
.end method

.method private k(Lcom/bumptech/glide/load/resource/bitmap/k$c;[BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/k$c;->b([BI)I

    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    const/4 v1, 0x3

    .line 7
    .line 8
    const-string v2, "DfltImageHeaderParser"

    .line 9
    .line 10
    if-eq p1, p3, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 14
    move-result p2

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    const-string v1, "Unable to read exif segment data, length: "

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string p3, ", actually read: "

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    return v0

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/k;->h([BI)Z

    .line 49
    move-result p1

    .line 50
    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    new-instance p1, Lcom/bumptech/glide/load/resource/bitmap/k$b;

    .line 54
    .line 55
    .line 56
    invoke-direct {p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/k$b;-><init>([BI)V

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Lcom/bumptech/glide/load/resource/bitmap/k;->j(Lcom/bumptech/glide/load/resource/bitmap/k$b;)I

    .line 60
    move-result p1

    .line 61
    return p1

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 65
    move-result p1

    .line 66
    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    const-string p1, "Missing jpeg exif preamble"

    .line 70
    .line 71
    .line 72
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_3
    return v0
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 1
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/k$d;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/bumptech/glide/util/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Ljava/io/InputStream;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/resource/bitmap/k$d;-><init>(Ljava/io/InputStream;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/resource/bitmap/k;->f(Lcom/bumptech/glide/load/resource/bitmap/k$c;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public b(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/b;)I
    .locals 1
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/engine/bitmap_recycle/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/k$d;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/bumptech/glide/util/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Ljava/io/InputStream;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/resource/bitmap/k$d;-><init>(Ljava/io/InputStream;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p2}, Lcom/bumptech/glide/util/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v0, p1}, Lcom/bumptech/glide/load/resource/bitmap/k;->e(Lcom/bumptech/glide/load/resource/bitmap/k$c;Lcom/bumptech/glide/load/engine/bitmap_recycle/b;)I

    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method public c(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 1
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/k$a;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/bumptech/glide/util/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/resource/bitmap/k$a;-><init>(Ljava/nio/ByteBuffer;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/resource/bitmap/k;->f(Lcom/bumptech/glide/load/resource/bitmap/k$c;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method
