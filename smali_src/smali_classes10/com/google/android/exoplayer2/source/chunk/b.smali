.class public abstract Lcom/google/android/exoplayer2/source/chunk/b;
.super Lcom/google/android/exoplayer2/source/chunk/a;
.source "SourceFile"


# instance fields
.field public final chunkIndex:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/k;Lcom/google/android/exoplayer2/upstream/o;Lcom/google/android/exoplayer2/a2;ILjava/lang/Object;JJJ)V
    .locals 11
    .param p5    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v3, 0x1

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v4, p3

    .line 6
    move v5, p4

    .line 7
    .line 8
    move-object/from16 v6, p5

    .line 9
    .line 10
    move-wide/from16 v7, p6

    .line 11
    .line 12
    move-wide/from16 v9, p8

    .line 13
    .line 14
    .line 15
    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/source/chunk/a;-><init>(Lcom/google/android/exoplayer2/upstream/k;Lcom/google/android/exoplayer2/upstream/o;ILcom/google/android/exoplayer2/a2;ILjava/lang/Object;JJ)V

    .line 16
    .line 17
    .line 18
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    move-wide/from16 v1, p10

    .line 21
    .line 22
    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/chunk/b;->chunkIndex:J

    .line 23
    return-void
.end method
