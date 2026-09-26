.class public abstract Lcom/google/android/exoplayer2/source/chunk/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/g0$e;


# instance fields
.field protected final dataSource:Lcom/google/android/exoplayer2/upstream/l0;

.field public final dataSpec:Lcom/google/android/exoplayer2/upstream/o;

.field public final endTimeUs:J

.field public final loadTaskId:J

.field public final startTimeUs:J

.field public final trackFormat:Lcom/google/android/exoplayer2/a2;

.field public final trackSelectionData:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final trackSelectionReason:I

.field public final type:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/k;Lcom/google/android/exoplayer2/upstream/o;ILcom/google/android/exoplayer2/a2;ILjava/lang/Object;JJ)V
    .locals 1
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/exoplayer2/upstream/l0;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/upstream/l0;-><init>(Lcom/google/android/exoplayer2/upstream/k;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/a;->dataSource:Lcom/google/android/exoplayer2/upstream/l0;

    .line 11
    .line 12
    .line 13
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Lcom/google/android/exoplayer2/upstream/o;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/a;->dataSpec:Lcom/google/android/exoplayer2/upstream/o;

    .line 19
    .line 20
    iput p3, p0, Lcom/google/android/exoplayer2/source/chunk/a;->type:I

    .line 21
    .line 22
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/chunk/a;->trackFormat:Lcom/google/android/exoplayer2/a2;

    .line 23
    .line 24
    iput p5, p0, Lcom/google/android/exoplayer2/source/chunk/a;->trackSelectionReason:I

    .line 25
    .line 26
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/chunk/a;->trackSelectionData:Ljava/lang/Object;

    .line 27
    .line 28
    iput-wide p7, p0, Lcom/google/android/exoplayer2/source/chunk/a;->startTimeUs:J

    .line 29
    .line 30
    iput-wide p9, p0, Lcom/google/android/exoplayer2/source/chunk/a;->endTimeUs:J

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/google/android/exoplayer2/source/u;->a()J

    .line 34
    move-result-wide p1

    .line 35
    .line 36
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/chunk/a;->loadTaskId:J

    .line 37
    return-void
.end method
