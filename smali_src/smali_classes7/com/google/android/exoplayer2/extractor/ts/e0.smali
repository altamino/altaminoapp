.class final Lcom/google/android/exoplayer2/extractor/ts/e0;
.super Lcom/google/android/exoplayer2/extractor/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ts/e0$a;
    }
.end annotation


# static fields
.field private static final MINIMUM_SEARCH_RANGE_BYTES:I = 0x3ac

.field private static final SEEK_TOLERANCE_US:J = 0x186a0L


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/util/l0;JJII)V
    .locals 16

    .line 1
    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/extractor/a$b;

    .line 3
    .line 4
    .line 5
    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/a$b;-><init>()V

    .line 6
    .line 7
    new-instance v2, Lcom/google/android/exoplayer2/extractor/ts/e0$a;

    .line 8
    .line 9
    move-object/from16 v0, p1

    .line 10
    .line 11
    move/from16 v3, p6

    .line 12
    .line 13
    move/from16 v4, p7

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/exoplayer2/extractor/ts/e0$a;-><init>(ILcom/google/android/exoplayer2/util/l0;I)V

    .line 17
    .line 18
    const-wide/16 v5, 0x0

    .line 19
    .line 20
    const-wide/16 v3, 0x1

    .line 21
    .line 22
    add-long v7, p2, v3

    .line 23
    .line 24
    const-wide/16 v9, 0x0

    .line 25
    .line 26
    const-wide/16 v13, 0xbc

    .line 27
    .line 28
    const/16 v15, 0x3ac

    .line 29
    .line 30
    move-object/from16 v0, p0

    .line 31
    .line 32
    move-wide/from16 v3, p2

    .line 33
    .line 34
    move-wide/from16 v11, p4

    .line 35
    .line 36
    .line 37
    invoke-direct/range {v0 .. v15}, Lcom/google/android/exoplayer2/extractor/a;-><init>(Lcom/google/android/exoplayer2/extractor/a$d;Lcom/google/android/exoplayer2/extractor/a$f;JJJJJJI)V

    .line 38
    return-void
.end method
