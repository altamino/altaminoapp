.class final Lcom/google/android/exoplayer2/extractor/mp4/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mp4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final bitrate:J

.field private final initializationData:[B

.field private final mimeType:Ljava/lang/String;

.field private final peakBitrate:J


# direct methods
.method public constructor <init>(Ljava/lang/String;[BJJ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/b$b;->mimeType:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/b$b;->initializationData:[B

    .line 8
    .line 9
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/b$b;->bitrate:J

    .line 10
    .line 11
    iput-wide p5, p0, Lcom/google/android/exoplayer2/extractor/mp4/b$b;->peakBitrate:J

    .line 12
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/extractor/mp4/b$b;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/b$b;->mimeType:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/extractor/mp4/b$b;)[B
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/b$b;->initializationData:[B

    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/extractor/mp4/b$b;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/b$b;->peakBitrate:J

    .line 3
    return-wide v0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/extractor/mp4/b$b;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/b$b;->bitrate:J

    .line 3
    return-wide v0
.end method
