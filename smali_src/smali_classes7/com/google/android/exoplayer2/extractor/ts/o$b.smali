.class final Lcom/google/android/exoplayer2/extractor/ts/o$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ts/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field private static final OFFSET_VOP_CODING_TYPE:I = 0x1

.field private static final VOP_CODING_TYPE_INTRA:I


# instance fields
.field private lookingForVopCodingType:Z

.field private final output:Lcom/google/android/exoplayer2/extractor/e0;

.field private readingSample:Z

.field private sampleIsKeyframe:Z

.field private samplePosition:J

.field private sampleTimeUs:J

.field private startCodeValue:I

.field private vopBytesRead:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/e0;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/o$b;->output:Lcom/google/android/exoplayer2/extractor/e0;

    .line 6
    return-void
.end method


# virtual methods
.method public a([BII)V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/o$b;->lookingForVopCodingType:Z

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    add-int/lit8 v0, p2, 0x1

    .line 7
    .line 8
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/o$b;->vopBytesRead:I

    .line 9
    sub-int/2addr v0, v1

    .line 10
    .line 11
    if-ge v0, p3, :cond_1

    .line 12
    .line 13
    aget-byte p1, p1, v0

    .line 14
    .line 15
    and-int/lit16 p1, p1, 0xc0

    .line 16
    .line 17
    shr-int/lit8 p1, p1, 0x6

    .line 18
    const/4 p2, 0x0

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move p1, p2

    .line 24
    .line 25
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/o$b;->sampleIsKeyframe:Z

    .line 26
    .line 27
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/ts/o$b;->lookingForVopCodingType:Z

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    sub-int/2addr p3, p2

    .line 30
    add-int/2addr v1, p3

    .line 31
    .line 32
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/o$b;->vopBytesRead:I

    .line 33
    :cond_2
    :goto_1
    return-void
.end method

.method public b(JIZ)V
    .locals 7

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/o$b;->startCodeValue:I

    .line 3
    .line 4
    const/16 v1, 0xb6

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    if-eqz p4, :cond_0

    .line 9
    .line 10
    iget-boolean p4, p0, Lcom/google/android/exoplayer2/extractor/ts/o$b;->readingSample:Z

    .line 11
    .line 12
    if-eqz p4, :cond_0

    .line 13
    .line 14
    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ts/o$b;->sampleTimeUs:J

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 20
    .line 21
    cmp-long p4, v1, v3

    .line 22
    .line 23
    if-eqz p4, :cond_0

    .line 24
    .line 25
    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/ts/o$b;->samplePosition:J

    .line 26
    .line 27
    sub-long v3, p1, v3

    .line 28
    long-to-int v4, v3

    .line 29
    .line 30
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ts/o$b;->sampleIsKeyframe:Z

    .line 31
    .line 32
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/o$b;->output:Lcom/google/android/exoplayer2/extractor/e0;

    .line 33
    const/4 v6, 0x0

    .line 34
    move v5, p3

    .line 35
    .line 36
    .line 37
    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/e0;->e(JIIILcom/google/android/exoplayer2/extractor/e0$a;)V

    .line 38
    .line 39
    :cond_0
    iget p3, p0, Lcom/google/android/exoplayer2/extractor/ts/o$b;->startCodeValue:I

    .line 40
    .line 41
    const/16 p4, 0xb3

    .line 42
    .line 43
    if-eq p3, p4, :cond_1

    .line 44
    .line 45
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/o$b;->samplePosition:J

    .line 46
    :cond_1
    return-void
.end method

.method public c(IJ)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/o$b;->startCodeValue:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/o$b;->sampleIsKeyframe:Z

    const/4 v1, 0x1

    const/16 v2, 0xb6

    if-eq p1, v2, :cond_1

    const/16 v3, 0xb3

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    :goto_1
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ts/o$b;->readingSample:Z

    if-ne p1, v2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/o$b;->lookingForVopCodingType:Z

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/o$b;->vopBytesRead:I

    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/ts/o$b;->sampleTimeUs:J

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/o$b;->readingSample:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/o$b;->lookingForVopCodingType:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/o$b;->sampleIsKeyframe:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/o$b;->startCodeValue:I

    return-void
.end method
