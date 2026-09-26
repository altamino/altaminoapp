.class final Landroidx/media3/extractor/wav/WavFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final averageBytesPerSecond:I

.field public final bitsPerSample:I

.field public final blockSize:I

.field public final extraData:[B

.field public final formatType:I

.field public final frameRateHz:I

.field public final numChannels:I


# direct methods
.method public constructor <init>(IIIIII[B)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Landroidx/media3/extractor/wav/WavFormat;->formatType:I

    .line 6
    .line 7
    iput p2, p0, Landroidx/media3/extractor/wav/WavFormat;->numChannels:I

    .line 8
    .line 9
    iput p3, p0, Landroidx/media3/extractor/wav/WavFormat;->frameRateHz:I

    .line 10
    .line 11
    iput p4, p0, Landroidx/media3/extractor/wav/WavFormat;->averageBytesPerSecond:I

    .line 12
    .line 13
    iput p5, p0, Landroidx/media3/extractor/wav/WavFormat;->blockSize:I

    .line 14
    .line 15
    iput p6, p0, Landroidx/media3/extractor/wav/WavFormat;->bitsPerSample:I

    .line 16
    .line 17
    iput-object p7, p0, Landroidx/media3/extractor/wav/WavFormat;->extraData:[B

    .line 18
    return-void
.end method
