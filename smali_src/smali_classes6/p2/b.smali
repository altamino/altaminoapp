.class final Lp2/b;
.super Lcom/google/android/exoplayer2/extractor/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp2/b$b;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/v;IJJ)V
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    new-instance v1, Lp2/a;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v0}, Lp2/a;-><init>(Lcom/google/android/exoplayer2/extractor/v;)V

    .line 11
    .line 12
    new-instance v2, Lp2/b$b;

    .line 13
    const/4 v3, 0x0

    .line 14
    .line 15
    move/from16 v4, p2

    .line 16
    .line 17
    .line 18
    invoke-direct {v2, v0, v4, v3}, Lp2/b$b;-><init>(Lcom/google/android/exoplayer2/extractor/v;ILp2/b$a;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/v;->g()J

    .line 22
    move-result-wide v3

    .line 23
    .line 24
    const-wide/16 v5, 0x0

    .line 25
    .line 26
    iget-wide v7, v0, Lcom/google/android/exoplayer2/extractor/v;->totalSamples:J

    .line 27
    .line 28
    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/v;->e()J

    .line 30
    move-result-wide v13

    .line 31
    const/4 v9, 0x6

    .line 32
    .line 33
    iget v0, v0, Lcom/google/android/exoplayer2/extractor/v;->minFrameSize:I

    .line 34
    .line 35
    .line 36
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    .line 37
    move-result v15

    .line 38
    .line 39
    move-object/from16 v0, p0

    .line 40
    .line 41
    move-wide/from16 v9, p3

    .line 42
    .line 43
    move-wide/from16 v11, p5

    .line 44
    .line 45
    .line 46
    invoke-direct/range {v0 .. v15}, Lcom/google/android/exoplayer2/extractor/a;-><init>(Lcom/google/android/exoplayer2/extractor/a$d;Lcom/google/android/exoplayer2/extractor/a$f;JJJJJJI)V

    .line 47
    return-void
.end method
