.class public final Landroidx/media3/extractor/AvcConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# instance fields
.field public final codecs:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final colorRange:I

.field public final colorSpace:I

.field public final colorTransfer:I

.field public final height:I

.field public final initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final nalUnitLengthFieldLength:I

.field public final pixelWidthHeightRatio:F

.field public final width:I


# direct methods
.method private constructor <init>(Ljava/util/List;IIIIIIFLjava/lang/String;)V
    .locals 0
    .param p9    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;IIIIIIF",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/media3/extractor/AvcConfig;->initializationData:Ljava/util/List;

    .line 6
    .line 7
    iput p2, p0, Landroidx/media3/extractor/AvcConfig;->nalUnitLengthFieldLength:I

    .line 8
    .line 9
    iput p3, p0, Landroidx/media3/extractor/AvcConfig;->width:I

    .line 10
    .line 11
    iput p4, p0, Landroidx/media3/extractor/AvcConfig;->height:I

    .line 12
    .line 13
    iput p5, p0, Landroidx/media3/extractor/AvcConfig;->colorSpace:I

    .line 14
    .line 15
    iput p6, p0, Landroidx/media3/extractor/AvcConfig;->colorRange:I

    .line 16
    .line 17
    iput p7, p0, Landroidx/media3/extractor/AvcConfig;->colorTransfer:I

    .line 18
    .line 19
    iput p8, p0, Landroidx/media3/extractor/AvcConfig;->pixelWidthHeightRatio:F

    .line 20
    .line 21
    iput-object p9, p0, Landroidx/media3/extractor/AvcConfig;->codecs:Ljava/lang/String;

    .line 22
    return-void
.end method

.method private static a(Landroidx/media3/common/util/ParsableByteArray;)[B
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->N()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->f()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->V(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->e()[B

    .line 15
    move-result-object p0

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v1, v0}, Landroidx/media3/common/util/CodecSpecificDataUtil;->d([BII)[B

    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static b(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/AvcConfig;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->V(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x3

    .line 10
    and-int/2addr v0, v1

    .line 11
    .line 12
    add-int/lit8 v4, v0, 0x1

    .line 13
    .line 14
    if-eq v4, v1, :cond_3

    .line 15
    .line 16
    new-instance v3, Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    .line 23
    move-result v0

    .line 24
    .line 25
    and-int/lit8 v0, v0, 0x1f

    .line 26
    const/4 v1, 0x0

    .line 27
    move v2, v1

    .line 28
    .line 29
    :goto_0
    if-ge v2, v0, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-static {p0}, Landroidx/media3/extractor/AvcConfig;->a(Landroidx/media3/common/util/ParsableByteArray;)[B

    .line 33
    move-result-object v5

    .line 34
    .line 35
    .line 36
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    .line 42
    goto/16 :goto_3

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    .line 46
    move-result v2

    .line 47
    move v5, v1

    .line 48
    .line 49
    :goto_1
    if-ge v5, v2, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-static {p0}, Landroidx/media3/extractor/AvcConfig;->a(Landroidx/media3/common/util/ParsableByteArray;)[B

    .line 53
    move-result-object v6

    .line 54
    .line 55
    .line 56
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    add-int/lit8 v5, v5, 0x1

    .line 59
    goto :goto_1

    .line 60
    .line 61
    :cond_1
    if-lez v0, :cond_2

    .line 62
    .line 63
    .line 64
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    move-result-object p0

    .line 66
    .line 67
    check-cast p0, [B

    .line 68
    .line 69
    .line 70
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    check-cast v0, [B

    .line 74
    array-length p0, p0

    .line 75
    .line 76
    .line 77
    invoke-static {v0, v4, p0}, Landroidx/media3/container/NalUnitUtil;->l([BII)Landroidx/media3/container/NalUnitUtil$SpsData;

    .line 78
    move-result-object p0

    .line 79
    .line 80
    iget v0, p0, Landroidx/media3/container/NalUnitUtil$SpsData;->width:I

    .line 81
    .line 82
    iget v1, p0, Landroidx/media3/container/NalUnitUtil$SpsData;->height:I

    .line 83
    .line 84
    iget v2, p0, Landroidx/media3/container/NalUnitUtil$SpsData;->colorSpace:I

    .line 85
    .line 86
    iget v5, p0, Landroidx/media3/container/NalUnitUtil$SpsData;->colorRange:I

    .line 87
    .line 88
    iget v6, p0, Landroidx/media3/container/NalUnitUtil$SpsData;->colorTransfer:I

    .line 89
    .line 90
    iget v7, p0, Landroidx/media3/container/NalUnitUtil$SpsData;->pixelWidthHeightRatio:F

    .line 91
    .line 92
    iget v8, p0, Landroidx/media3/container/NalUnitUtil$SpsData;->profileIdc:I

    .line 93
    .line 94
    iget v9, p0, Landroidx/media3/container/NalUnitUtil$SpsData;->constraintsFlagsAndReservedZero2Bits:I

    .line 95
    .line 96
    iget p0, p0, Landroidx/media3/container/NalUnitUtil$SpsData;->levelIdc:I

    .line 97
    .line 98
    .line 99
    invoke-static {v8, v9, p0}, Landroidx/media3/common/util/CodecSpecificDataUtil;->a(III)Ljava/lang/String;

    .line 100
    move-result-object p0

    .line 101
    move-object v11, p0

    .line 102
    move v8, v5

    .line 103
    move v9, v6

    .line 104
    move v10, v7

    .line 105
    move v5, v0

    .line 106
    move v6, v1

    .line 107
    move v7, v2

    .line 108
    goto :goto_2

    .line 109
    :cond_2
    const/4 p0, -0x1

    .line 110
    .line 111
    const/high16 v0, 0x3f800000    # 1.0f

    .line 112
    const/4 v1, 0x0

    .line 113
    move v5, p0

    .line 114
    move v6, v5

    .line 115
    move v7, v6

    .line 116
    move v8, v7

    .line 117
    move v9, v8

    .line 118
    move v10, v0

    .line 119
    move-object v11, v1

    .line 120
    .line 121
    :goto_2
    new-instance p0, Landroidx/media3/extractor/AvcConfig;

    .line 122
    move-object v2, p0

    .line 123
    .line 124
    .line 125
    invoke-direct/range {v2 .. v11}, Landroidx/media3/extractor/AvcConfig;-><init>(Ljava/util/List;IIIIIIFLjava/lang/String;)V

    .line 126
    return-object p0

    .line 127
    .line 128
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 129
    .line 130
    .line 131
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 132
    throw p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .line 134
    :goto_3
    const-string v0, "Error parsing AVC config"

    .line 135
    .line 136
    .line 137
    invoke-static {v0, p0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 138
    move-result-object p0

    .line 139
    throw p0
.end method
