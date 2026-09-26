.class public Lcom/google/android/exoplayer2/extractor/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final approxBytesPerFrame:J

.field private final ceilingBytePosition:J

.field private final ceilingTimePosition:J

.field private final durationUs:J

.field private final floorBytePosition:J

.field private final floorTimePosition:J

.field private final seekTimestampConverter:Lcom/google/android/exoplayer2/extractor/a$d;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/a$d;JJJJJJ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/a$a;->seekTimestampConverter:Lcom/google/android/exoplayer2/extractor/a$d;

    .line 6
    .line 7
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/a$a;->durationUs:J

    .line 8
    .line 9
    iput-wide p4, p0, Lcom/google/android/exoplayer2/extractor/a$a;->floorTimePosition:J

    .line 10
    .line 11
    iput-wide p6, p0, Lcom/google/android/exoplayer2/extractor/a$a;->ceilingTimePosition:J

    .line 12
    .line 13
    iput-wide p8, p0, Lcom/google/android/exoplayer2/extractor/a$a;->floorBytePosition:J

    .line 14
    .line 15
    iput-wide p10, p0, Lcom/google/android/exoplayer2/extractor/a$a;->ceilingBytePosition:J

    .line 16
    .line 17
    iput-wide p12, p0, Lcom/google/android/exoplayer2/extractor/a$a;->approxBytesPerFrame:J

    .line 18
    return-void
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/extractor/a$a;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a$a;->floorTimePosition:J

    .line 3
    return-wide v0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/extractor/a$a;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a$a;->ceilingTimePosition:J

    .line 3
    return-wide v0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/extractor/a$a;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a$a;->floorBytePosition:J

    .line 3
    return-wide v0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/extractor/a$a;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a$a;->ceilingBytePosition:J

    .line 3
    return-wide v0
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/extractor/a$a;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a$a;->approxBytesPerFrame:J

    .line 3
    return-wide v0
.end method


# virtual methods
.method public g(J)J
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a$a;->seekTimestampConverter:Lcom/google/android/exoplayer2/extractor/a$d;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/a$d;->a(J)J

    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public getDurationUs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a$a;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/b0$a;
    .locals 13

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a$a;->seekTimestampConverter:Lcom/google/android/exoplayer2/extractor/a$d;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/a$d;->a(J)J

    .line 6
    move-result-wide v1

    .line 7
    .line 8
    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/a$a;->floorTimePosition:J

    .line 9
    .line 10
    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/a$a;->ceilingTimePosition:J

    .line 11
    .line 12
    iget-wide v7, p0, Lcom/google/android/exoplayer2/extractor/a$a;->floorBytePosition:J

    .line 13
    .line 14
    iget-wide v9, p0, Lcom/google/android/exoplayer2/extractor/a$a;->ceilingBytePosition:J

    .line 15
    .line 16
    iget-wide v11, p0, Lcom/google/android/exoplayer2/extractor/a$a;->approxBytesPerFrame:J

    .line 17
    .line 18
    .line 19
    invoke-static/range {v1 .. v12}, Lcom/google/android/exoplayer2/extractor/a$c;->h(JJJJJJ)J

    .line 20
    move-result-wide v0

    .line 21
    .line 22
    new-instance v2, Lcom/google/android/exoplayer2/extractor/b0$a;

    .line 23
    .line 24
    new-instance v3, Lcom/google/android/exoplayer2/extractor/c0;

    .line 25
    .line 26
    .line 27
    invoke-direct {v3, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/extractor/c0;-><init>(JJ)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/extractor/b0$a;-><init>(Lcom/google/android/exoplayer2/extractor/c0;)V

    .line 31
    return-object v2
.end method

.method public isSeekable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
