.class final Lcom/google/android/exoplayer2/a3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PLACEHOLDER_MEDIA_PERIOD_ID:Lcom/google/android/exoplayer2/source/b0$b;


# instance fields
.field public volatile bufferedPositionUs:J

.field public final discontinuityStartPositionUs:J

.field public final isLoading:Z

.field public final loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

.field public final periodId:Lcom/google/android/exoplayer2/source/b0$b;

.field public final playWhenReady:Z

.field public final playbackError:Lcom/google/android/exoplayer2/q;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final playbackParameters:Lcom/google/android/exoplayer2/c3;

.field public final playbackState:I

.field public final playbackSuppressionReason:I

.field public volatile positionUs:J

.field public final requestedContentPositionUs:J

.field public final sleepingForOffload:Z

.field public final staticMetadata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ">;"
        }
    .end annotation
.end field

.field public final timeline:Lcom/google/android/exoplayer2/z3;

.field public volatile totalBufferedDurationUs:J

.field public final trackGroups:Lcom/google/android/exoplayer2/source/h1;

.field public final trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/source/b0$b;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/b0$b;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    sput-object v0, Lcom/google/android/exoplayer2/a3;->PLACEHOLDER_MEDIA_PERIOD_ID:Lcom/google/android/exoplayer2/source/b0$b;

    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/source/b0$b;JJILcom/google/android/exoplayer2/q;ZLcom/google/android/exoplayer2/source/h1;Lcom/google/android/exoplayer2/trackselection/c0;Ljava/util/List;Lcom/google/android/exoplayer2/source/b0$b;ZILcom/google/android/exoplayer2/c3;JJJZ)V
    .locals 3
    .param p8    # Lcom/google/android/exoplayer2/q;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/z3;",
            "Lcom/google/android/exoplayer2/source/b0$b;",
            "JJI",
            "Lcom/google/android/exoplayer2/q;",
            "Z",
            "Lcom/google/android/exoplayer2/source/h1;",
            "Lcom/google/android/exoplayer2/trackselection/c0;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ">;",
            "Lcom/google/android/exoplayer2/source/b0$b;",
            "ZI",
            "Lcom/google/android/exoplayer2/c3;",
            "JJJZ)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    move-wide v1, p3

    iput-wide v1, v0, Lcom/google/android/exoplayer2/a3;->requestedContentPositionUs:J

    move-wide v1, p5

    iput-wide v1, v0, Lcom/google/android/exoplayer2/a3;->discontinuityStartPositionUs:J

    move v1, p7

    iput v1, v0, Lcom/google/android/exoplayer2/a3;->playbackState:I

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/exoplayer2/a3;->playbackError:Lcom/google/android/exoplayer2/q;

    move v1, p9

    iput-boolean v1, v0, Lcom/google/android/exoplayer2/a3;->isLoading:Z

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/exoplayer2/a3;->trackGroups:Lcom/google/android/exoplayer2/source/h1;

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/exoplayer2/a3;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/c0;

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/exoplayer2/a3;->staticMetadata:Ljava/util/List;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/exoplayer2/a3;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/google/android/exoplayer2/a3;->playWhenReady:Z

    move/from16 v1, p15

    iput v1, v0, Lcom/google/android/exoplayer2/a3;->playbackSuppressionReason:I

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/exoplayer2/a3;->playbackParameters:Lcom/google/android/exoplayer2/c3;

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lcom/google/android/exoplayer2/a3;->bufferedPositionUs:J

    move-wide/from16 v1, p19

    iput-wide v1, v0, Lcom/google/android/exoplayer2/a3;->totalBufferedDurationUs:J

    move-wide/from16 v1, p21

    iput-wide v1, v0, Lcom/google/android/exoplayer2/a3;->positionUs:J

    move/from16 v1, p23

    iput-boolean v1, v0, Lcom/google/android/exoplayer2/a3;->sleepingForOffload:Z

    return-void
.end method

.method public static j(Lcom/google/android/exoplayer2/trackselection/c0;)Lcom/google/android/exoplayer2/a3;
    .locals 25

    .line 1
    .line 2
    move-object/from16 v11, p0

    .line 3
    .line 4
    new-instance v24, Lcom/google/android/exoplayer2/a3;

    .line 5
    .line 6
    move-object/from16 v0, v24

    .line 7
    .line 8
    sget-object v1, Lcom/google/android/exoplayer2/z3;->EMPTY:Lcom/google/android/exoplayer2/z3;

    .line 9
    .line 10
    sget-object v13, Lcom/google/android/exoplayer2/a3;->PLACEHOLDER_MEDIA_PERIOD_ID:Lcom/google/android/exoplayer2/source/b0$b;

    .line 11
    move-object v2, v13

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    .line 18
    const-wide/16 v5, 0x0

    .line 19
    const/4 v7, 0x1

    .line 20
    const/4 v8, 0x0

    .line 21
    const/4 v9, 0x0

    .line 22
    .line 23
    sget-object v10, Lcom/google/android/exoplayer2/source/h1;->EMPTY:Lcom/google/android/exoplayer2/source/h1;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/google/common/collect/a0;->x()Lcom/google/common/collect/a0;

    .line 27
    move-result-object v12

    .line 28
    const/4 v14, 0x0

    .line 29
    const/4 v15, 0x0

    .line 30
    .line 31
    sget-object v16, Lcom/google/android/exoplayer2/c3;->DEFAULT:Lcom/google/android/exoplayer2/c3;

    .line 32
    .line 33
    const-wide/16 v17, 0x0

    .line 34
    .line 35
    const-wide/16 v19, 0x0

    .line 36
    .line 37
    const-wide/16 v21, 0x0

    .line 38
    .line 39
    const/16 v23, 0x0

    .line 40
    .line 41
    .line 42
    invoke-direct/range {v0 .. v23}, Lcom/google/android/exoplayer2/a3;-><init>(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/source/b0$b;JJILcom/google/android/exoplayer2/q;ZLcom/google/android/exoplayer2/source/h1;Lcom/google/android/exoplayer2/trackselection/c0;Ljava/util/List;Lcom/google/android/exoplayer2/source/b0$b;ZILcom/google/android/exoplayer2/c3;JJJZ)V

    .line 43
    return-object v24
.end method

.method public static k()Lcom/google/android/exoplayer2/source/b0$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/a3;->PLACEHOLDER_MEDIA_PERIOD_ID:Lcom/google/android/exoplayer2/source/b0$b;

    return-object v0
.end method


# virtual methods
.method public a(Z)Lcom/google/android/exoplayer2/a3;
    .locals 27
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move/from16 v10, p1

    .line 5
    .line 6
    new-instance v25, Lcom/google/android/exoplayer2/a3;

    .line 7
    .line 8
    move-object/from16 v1, v25

    .line 9
    .line 10
    iget-object v2, v0, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 11
    .line 12
    iget-object v3, v0, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 13
    .line 14
    iget-wide v4, v0, Lcom/google/android/exoplayer2/a3;->requestedContentPositionUs:J

    .line 15
    .line 16
    iget-wide v6, v0, Lcom/google/android/exoplayer2/a3;->discontinuityStartPositionUs:J

    .line 17
    .line 18
    iget v8, v0, Lcom/google/android/exoplayer2/a3;->playbackState:I

    .line 19
    .line 20
    iget-object v9, v0, Lcom/google/android/exoplayer2/a3;->playbackError:Lcom/google/android/exoplayer2/q;

    .line 21
    .line 22
    iget-object v11, v0, Lcom/google/android/exoplayer2/a3;->trackGroups:Lcom/google/android/exoplayer2/source/h1;

    .line 23
    .line 24
    iget-object v12, v0, Lcom/google/android/exoplayer2/a3;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/c0;

    .line 25
    .line 26
    iget-object v13, v0, Lcom/google/android/exoplayer2/a3;->staticMetadata:Ljava/util/List;

    .line 27
    .line 28
    iget-object v14, v0, Lcom/google/android/exoplayer2/a3;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 29
    .line 30
    iget-boolean v15, v0, Lcom/google/android/exoplayer2/a3;->playWhenReady:Z

    .line 31
    .line 32
    move-object/from16 p1, v1

    .line 33
    .line 34
    iget v1, v0, Lcom/google/android/exoplayer2/a3;->playbackSuppressionReason:I

    .line 35
    .line 36
    move/from16 v16, v1

    .line 37
    .line 38
    iget-object v1, v0, Lcom/google/android/exoplayer2/a3;->playbackParameters:Lcom/google/android/exoplayer2/c3;

    .line 39
    .line 40
    move-object/from16 v17, v1

    .line 41
    .line 42
    move-object/from16 v26, v2

    .line 43
    .line 44
    iget-wide v1, v0, Lcom/google/android/exoplayer2/a3;->bufferedPositionUs:J

    .line 45
    .line 46
    move-wide/from16 v18, v1

    .line 47
    .line 48
    iget-wide v1, v0, Lcom/google/android/exoplayer2/a3;->totalBufferedDurationUs:J

    .line 49
    .line 50
    move-wide/from16 v20, v1

    .line 51
    .line 52
    iget-wide v1, v0, Lcom/google/android/exoplayer2/a3;->positionUs:J

    .line 53
    .line 54
    move-wide/from16 v22, v1

    .line 55
    .line 56
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/a3;->sleepingForOffload:Z

    .line 57
    .line 58
    move/from16 v24, v1

    .line 59
    .line 60
    move-object/from16 v1, p1

    .line 61
    .line 62
    move-object/from16 v2, v26

    .line 63
    .line 64
    .line 65
    invoke-direct/range {v1 .. v24}, Lcom/google/android/exoplayer2/a3;-><init>(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/source/b0$b;JJILcom/google/android/exoplayer2/q;ZLcom/google/android/exoplayer2/source/h1;Lcom/google/android/exoplayer2/trackselection/c0;Ljava/util/List;Lcom/google/android/exoplayer2/source/b0$b;ZILcom/google/android/exoplayer2/c3;JJJZ)V

    .line 66
    return-object v25
.end method

.method public b(Lcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/a3;
    .locals 27
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v14, p1

    .line 5
    .line 6
    new-instance v25, Lcom/google/android/exoplayer2/a3;

    .line 7
    .line 8
    move-object/from16 v1, v25

    .line 9
    .line 10
    iget-object v2, v0, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 11
    .line 12
    iget-object v3, v0, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 13
    .line 14
    iget-wide v4, v0, Lcom/google/android/exoplayer2/a3;->requestedContentPositionUs:J

    .line 15
    .line 16
    iget-wide v6, v0, Lcom/google/android/exoplayer2/a3;->discontinuityStartPositionUs:J

    .line 17
    .line 18
    iget v8, v0, Lcom/google/android/exoplayer2/a3;->playbackState:I

    .line 19
    .line 20
    iget-object v9, v0, Lcom/google/android/exoplayer2/a3;->playbackError:Lcom/google/android/exoplayer2/q;

    .line 21
    .line 22
    iget-boolean v10, v0, Lcom/google/android/exoplayer2/a3;->isLoading:Z

    .line 23
    .line 24
    iget-object v11, v0, Lcom/google/android/exoplayer2/a3;->trackGroups:Lcom/google/android/exoplayer2/source/h1;

    .line 25
    .line 26
    iget-object v12, v0, Lcom/google/android/exoplayer2/a3;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/c0;

    .line 27
    .line 28
    iget-object v13, v0, Lcom/google/android/exoplayer2/a3;->staticMetadata:Ljava/util/List;

    .line 29
    .line 30
    iget-boolean v15, v0, Lcom/google/android/exoplayer2/a3;->playWhenReady:Z

    .line 31
    .line 32
    move-object/from16 p1, v1

    .line 33
    .line 34
    iget v1, v0, Lcom/google/android/exoplayer2/a3;->playbackSuppressionReason:I

    .line 35
    .line 36
    move/from16 v16, v1

    .line 37
    .line 38
    iget-object v1, v0, Lcom/google/android/exoplayer2/a3;->playbackParameters:Lcom/google/android/exoplayer2/c3;

    .line 39
    .line 40
    move-object/from16 v17, v1

    .line 41
    .line 42
    move-object/from16 v26, v2

    .line 43
    .line 44
    iget-wide v1, v0, Lcom/google/android/exoplayer2/a3;->bufferedPositionUs:J

    .line 45
    .line 46
    move-wide/from16 v18, v1

    .line 47
    .line 48
    iget-wide v1, v0, Lcom/google/android/exoplayer2/a3;->totalBufferedDurationUs:J

    .line 49
    .line 50
    move-wide/from16 v20, v1

    .line 51
    .line 52
    iget-wide v1, v0, Lcom/google/android/exoplayer2/a3;->positionUs:J

    .line 53
    .line 54
    move-wide/from16 v22, v1

    .line 55
    .line 56
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/a3;->sleepingForOffload:Z

    .line 57
    .line 58
    move/from16 v24, v1

    .line 59
    .line 60
    move-object/from16 v1, p1

    .line 61
    .line 62
    move-object/from16 v2, v26

    .line 63
    .line 64
    .line 65
    invoke-direct/range {v1 .. v24}, Lcom/google/android/exoplayer2/a3;-><init>(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/source/b0$b;JJILcom/google/android/exoplayer2/q;ZLcom/google/android/exoplayer2/source/h1;Lcom/google/android/exoplayer2/trackselection/c0;Ljava/util/List;Lcom/google/android/exoplayer2/source/b0$b;ZILcom/google/android/exoplayer2/c3;JJJZ)V

    .line 66
    return-object v25
.end method

.method public c(Lcom/google/android/exoplayer2/source/b0$b;JJJJLcom/google/android/exoplayer2/source/h1;Lcom/google/android/exoplayer2/trackselection/c0;Ljava/util/List;)Lcom/google/android/exoplayer2/a3;
    .locals 26
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/b0$b;",
            "JJJJ",
            "Lcom/google/android/exoplayer2/source/h1;",
            "Lcom/google/android/exoplayer2/trackselection/c0;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ">;)",
            "Lcom/google/android/exoplayer2/a3;"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v3, p1

    .line 5
    .line 6
    move-wide/from16 v22, p2

    .line 7
    .line 8
    move-wide/from16 v4, p4

    .line 9
    .line 10
    move-wide/from16 v6, p6

    .line 11
    .line 12
    move-wide/from16 v20, p8

    .line 13
    .line 14
    move-object/from16 v11, p10

    .line 15
    .line 16
    move-object/from16 v12, p11

    .line 17
    .line 18
    move-object/from16 v13, p12

    .line 19
    .line 20
    new-instance v25, Lcom/google/android/exoplayer2/a3;

    .line 21
    .line 22
    move-object/from16 v1, v25

    .line 23
    .line 24
    iget-object v2, v0, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 25
    .line 26
    iget v8, v0, Lcom/google/android/exoplayer2/a3;->playbackState:I

    .line 27
    .line 28
    iget-object v9, v0, Lcom/google/android/exoplayer2/a3;->playbackError:Lcom/google/android/exoplayer2/q;

    .line 29
    .line 30
    iget-boolean v10, v0, Lcom/google/android/exoplayer2/a3;->isLoading:Z

    .line 31
    .line 32
    iget-object v14, v0, Lcom/google/android/exoplayer2/a3;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 33
    .line 34
    iget-boolean v15, v0, Lcom/google/android/exoplayer2/a3;->playWhenReady:Z

    .line 35
    .line 36
    move-object/from16 p1, v1

    .line 37
    .line 38
    iget v1, v0, Lcom/google/android/exoplayer2/a3;->playbackSuppressionReason:I

    .line 39
    .line 40
    move/from16 v16, v1

    .line 41
    .line 42
    iget-object v1, v0, Lcom/google/android/exoplayer2/a3;->playbackParameters:Lcom/google/android/exoplayer2/c3;

    .line 43
    .line 44
    move-object/from16 v17, v1

    .line 45
    .line 46
    move-object/from16 p2, v2

    .line 47
    .line 48
    iget-wide v1, v0, Lcom/google/android/exoplayer2/a3;->bufferedPositionUs:J

    .line 49
    .line 50
    move-wide/from16 v18, v1

    .line 51
    .line 52
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/a3;->sleepingForOffload:Z

    .line 53
    .line 54
    move/from16 v24, v1

    .line 55
    .line 56
    move-object/from16 v1, p1

    .line 57
    .line 58
    move-object/from16 v2, p2

    .line 59
    .line 60
    .line 61
    invoke-direct/range {v1 .. v24}, Lcom/google/android/exoplayer2/a3;-><init>(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/source/b0$b;JJILcom/google/android/exoplayer2/q;ZLcom/google/android/exoplayer2/source/h1;Lcom/google/android/exoplayer2/trackselection/c0;Ljava/util/List;Lcom/google/android/exoplayer2/source/b0$b;ZILcom/google/android/exoplayer2/c3;JJJZ)V

    .line 62
    return-object v25
.end method

.method public d(ZI)Lcom/google/android/exoplayer2/a3;
    .locals 26
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move/from16 v15, p1

    .line 5
    .line 6
    move/from16 v16, p2

    .line 7
    .line 8
    new-instance v25, Lcom/google/android/exoplayer2/a3;

    .line 9
    .line 10
    move-object/from16 v1, v25

    .line 11
    .line 12
    iget-object v2, v0, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 13
    .line 14
    iget-object v3, v0, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 15
    .line 16
    iget-wide v4, v0, Lcom/google/android/exoplayer2/a3;->requestedContentPositionUs:J

    .line 17
    .line 18
    iget-wide v6, v0, Lcom/google/android/exoplayer2/a3;->discontinuityStartPositionUs:J

    .line 19
    .line 20
    iget v8, v0, Lcom/google/android/exoplayer2/a3;->playbackState:I

    .line 21
    .line 22
    iget-object v9, v0, Lcom/google/android/exoplayer2/a3;->playbackError:Lcom/google/android/exoplayer2/q;

    .line 23
    .line 24
    iget-boolean v10, v0, Lcom/google/android/exoplayer2/a3;->isLoading:Z

    .line 25
    .line 26
    iget-object v11, v0, Lcom/google/android/exoplayer2/a3;->trackGroups:Lcom/google/android/exoplayer2/source/h1;

    .line 27
    .line 28
    iget-object v12, v0, Lcom/google/android/exoplayer2/a3;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/c0;

    .line 29
    .line 30
    iget-object v13, v0, Lcom/google/android/exoplayer2/a3;->staticMetadata:Ljava/util/List;

    .line 31
    .line 32
    iget-object v14, v0, Lcom/google/android/exoplayer2/a3;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 33
    .line 34
    move-object/from16 p1, v1

    .line 35
    .line 36
    iget-object v1, v0, Lcom/google/android/exoplayer2/a3;->playbackParameters:Lcom/google/android/exoplayer2/c3;

    .line 37
    .line 38
    move-object/from16 v17, v1

    .line 39
    .line 40
    move-object/from16 p2, v2

    .line 41
    .line 42
    iget-wide v1, v0, Lcom/google/android/exoplayer2/a3;->bufferedPositionUs:J

    .line 43
    .line 44
    move-wide/from16 v18, v1

    .line 45
    .line 46
    iget-wide v1, v0, Lcom/google/android/exoplayer2/a3;->totalBufferedDurationUs:J

    .line 47
    .line 48
    move-wide/from16 v20, v1

    .line 49
    .line 50
    iget-wide v1, v0, Lcom/google/android/exoplayer2/a3;->positionUs:J

    .line 51
    .line 52
    move-wide/from16 v22, v1

    .line 53
    .line 54
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/a3;->sleepingForOffload:Z

    .line 55
    .line 56
    move/from16 v24, v1

    .line 57
    .line 58
    move-object/from16 v1, p1

    .line 59
    .line 60
    move-object/from16 v2, p2

    .line 61
    .line 62
    .line 63
    invoke-direct/range {v1 .. v24}, Lcom/google/android/exoplayer2/a3;-><init>(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/source/b0$b;JJILcom/google/android/exoplayer2/q;ZLcom/google/android/exoplayer2/source/h1;Lcom/google/android/exoplayer2/trackselection/c0;Ljava/util/List;Lcom/google/android/exoplayer2/source/b0$b;ZILcom/google/android/exoplayer2/c3;JJJZ)V

    .line 64
    return-object v25
.end method

.method public e(Lcom/google/android/exoplayer2/q;)Lcom/google/android/exoplayer2/a3;
    .locals 27
    .param p1    # Lcom/google/android/exoplayer2/q;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v9, p1

    .line 5
    .line 6
    new-instance v25, Lcom/google/android/exoplayer2/a3;

    .line 7
    .line 8
    move-object/from16 v1, v25

    .line 9
    .line 10
    iget-object v2, v0, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 11
    .line 12
    iget-object v3, v0, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 13
    .line 14
    iget-wide v4, v0, Lcom/google/android/exoplayer2/a3;->requestedContentPositionUs:J

    .line 15
    .line 16
    iget-wide v6, v0, Lcom/google/android/exoplayer2/a3;->discontinuityStartPositionUs:J

    .line 17
    .line 18
    iget v8, v0, Lcom/google/android/exoplayer2/a3;->playbackState:I

    .line 19
    .line 20
    iget-boolean v10, v0, Lcom/google/android/exoplayer2/a3;->isLoading:Z

    .line 21
    .line 22
    iget-object v11, v0, Lcom/google/android/exoplayer2/a3;->trackGroups:Lcom/google/android/exoplayer2/source/h1;

    .line 23
    .line 24
    iget-object v12, v0, Lcom/google/android/exoplayer2/a3;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/c0;

    .line 25
    .line 26
    iget-object v13, v0, Lcom/google/android/exoplayer2/a3;->staticMetadata:Ljava/util/List;

    .line 27
    .line 28
    iget-object v14, v0, Lcom/google/android/exoplayer2/a3;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 29
    .line 30
    iget-boolean v15, v0, Lcom/google/android/exoplayer2/a3;->playWhenReady:Z

    .line 31
    .line 32
    move-object/from16 p1, v1

    .line 33
    .line 34
    iget v1, v0, Lcom/google/android/exoplayer2/a3;->playbackSuppressionReason:I

    .line 35
    .line 36
    move/from16 v16, v1

    .line 37
    .line 38
    iget-object v1, v0, Lcom/google/android/exoplayer2/a3;->playbackParameters:Lcom/google/android/exoplayer2/c3;

    .line 39
    .line 40
    move-object/from16 v17, v1

    .line 41
    .line 42
    move-object/from16 v26, v2

    .line 43
    .line 44
    iget-wide v1, v0, Lcom/google/android/exoplayer2/a3;->bufferedPositionUs:J

    .line 45
    .line 46
    move-wide/from16 v18, v1

    .line 47
    .line 48
    iget-wide v1, v0, Lcom/google/android/exoplayer2/a3;->totalBufferedDurationUs:J

    .line 49
    .line 50
    move-wide/from16 v20, v1

    .line 51
    .line 52
    iget-wide v1, v0, Lcom/google/android/exoplayer2/a3;->positionUs:J

    .line 53
    .line 54
    move-wide/from16 v22, v1

    .line 55
    .line 56
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/a3;->sleepingForOffload:Z

    .line 57
    .line 58
    move/from16 v24, v1

    .line 59
    .line 60
    move-object/from16 v1, p1

    .line 61
    .line 62
    move-object/from16 v2, v26

    .line 63
    .line 64
    .line 65
    invoke-direct/range {v1 .. v24}, Lcom/google/android/exoplayer2/a3;-><init>(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/source/b0$b;JJILcom/google/android/exoplayer2/q;ZLcom/google/android/exoplayer2/source/h1;Lcom/google/android/exoplayer2/trackselection/c0;Ljava/util/List;Lcom/google/android/exoplayer2/source/b0$b;ZILcom/google/android/exoplayer2/c3;JJJZ)V

    .line 66
    return-object v25
.end method

.method public f(Lcom/google/android/exoplayer2/c3;)Lcom/google/android/exoplayer2/a3;
    .locals 27
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v17, p1

    .line 5
    .line 6
    new-instance v25, Lcom/google/android/exoplayer2/a3;

    .line 7
    .line 8
    move-object/from16 v1, v25

    .line 9
    .line 10
    iget-object v2, v0, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 11
    .line 12
    iget-object v3, v0, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 13
    .line 14
    iget-wide v4, v0, Lcom/google/android/exoplayer2/a3;->requestedContentPositionUs:J

    .line 15
    .line 16
    iget-wide v6, v0, Lcom/google/android/exoplayer2/a3;->discontinuityStartPositionUs:J

    .line 17
    .line 18
    iget v8, v0, Lcom/google/android/exoplayer2/a3;->playbackState:I

    .line 19
    .line 20
    iget-object v9, v0, Lcom/google/android/exoplayer2/a3;->playbackError:Lcom/google/android/exoplayer2/q;

    .line 21
    .line 22
    iget-boolean v10, v0, Lcom/google/android/exoplayer2/a3;->isLoading:Z

    .line 23
    .line 24
    iget-object v11, v0, Lcom/google/android/exoplayer2/a3;->trackGroups:Lcom/google/android/exoplayer2/source/h1;

    .line 25
    .line 26
    iget-object v12, v0, Lcom/google/android/exoplayer2/a3;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/c0;

    .line 27
    .line 28
    iget-object v13, v0, Lcom/google/android/exoplayer2/a3;->staticMetadata:Ljava/util/List;

    .line 29
    .line 30
    iget-object v14, v0, Lcom/google/android/exoplayer2/a3;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 31
    .line 32
    iget-boolean v15, v0, Lcom/google/android/exoplayer2/a3;->playWhenReady:Z

    .line 33
    .line 34
    move-object/from16 p1, v1

    .line 35
    .line 36
    iget v1, v0, Lcom/google/android/exoplayer2/a3;->playbackSuppressionReason:I

    .line 37
    .line 38
    move/from16 v16, v1

    .line 39
    .line 40
    move-object/from16 v26, v2

    .line 41
    .line 42
    iget-wide v1, v0, Lcom/google/android/exoplayer2/a3;->bufferedPositionUs:J

    .line 43
    .line 44
    move-wide/from16 v18, v1

    .line 45
    .line 46
    iget-wide v1, v0, Lcom/google/android/exoplayer2/a3;->totalBufferedDurationUs:J

    .line 47
    .line 48
    move-wide/from16 v20, v1

    .line 49
    .line 50
    iget-wide v1, v0, Lcom/google/android/exoplayer2/a3;->positionUs:J

    .line 51
    .line 52
    move-wide/from16 v22, v1

    .line 53
    .line 54
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/a3;->sleepingForOffload:Z

    .line 55
    .line 56
    move/from16 v24, v1

    .line 57
    .line 58
    move-object/from16 v1, p1

    .line 59
    .line 60
    move-object/from16 v2, v26

    .line 61
    .line 62
    .line 63
    invoke-direct/range {v1 .. v24}, Lcom/google/android/exoplayer2/a3;-><init>(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/source/b0$b;JJILcom/google/android/exoplayer2/q;ZLcom/google/android/exoplayer2/source/h1;Lcom/google/android/exoplayer2/trackselection/c0;Ljava/util/List;Lcom/google/android/exoplayer2/source/b0$b;ZILcom/google/android/exoplayer2/c3;JJJZ)V

    .line 64
    return-object v25
.end method

.method public g(I)Lcom/google/android/exoplayer2/a3;
    .locals 27
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move/from16 v8, p1

    .line 5
    .line 6
    new-instance v25, Lcom/google/android/exoplayer2/a3;

    .line 7
    .line 8
    move-object/from16 v1, v25

    .line 9
    .line 10
    iget-object v2, v0, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 11
    .line 12
    iget-object v3, v0, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 13
    .line 14
    iget-wide v4, v0, Lcom/google/android/exoplayer2/a3;->requestedContentPositionUs:J

    .line 15
    .line 16
    iget-wide v6, v0, Lcom/google/android/exoplayer2/a3;->discontinuityStartPositionUs:J

    .line 17
    .line 18
    iget-object v9, v0, Lcom/google/android/exoplayer2/a3;->playbackError:Lcom/google/android/exoplayer2/q;

    .line 19
    .line 20
    iget-boolean v10, v0, Lcom/google/android/exoplayer2/a3;->isLoading:Z

    .line 21
    .line 22
    iget-object v11, v0, Lcom/google/android/exoplayer2/a3;->trackGroups:Lcom/google/android/exoplayer2/source/h1;

    .line 23
    .line 24
    iget-object v12, v0, Lcom/google/android/exoplayer2/a3;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/c0;

    .line 25
    .line 26
    iget-object v13, v0, Lcom/google/android/exoplayer2/a3;->staticMetadata:Ljava/util/List;

    .line 27
    .line 28
    iget-object v14, v0, Lcom/google/android/exoplayer2/a3;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 29
    .line 30
    iget-boolean v15, v0, Lcom/google/android/exoplayer2/a3;->playWhenReady:Z

    .line 31
    .line 32
    move-object/from16 p1, v1

    .line 33
    .line 34
    iget v1, v0, Lcom/google/android/exoplayer2/a3;->playbackSuppressionReason:I

    .line 35
    .line 36
    move/from16 v16, v1

    .line 37
    .line 38
    iget-object v1, v0, Lcom/google/android/exoplayer2/a3;->playbackParameters:Lcom/google/android/exoplayer2/c3;

    .line 39
    .line 40
    move-object/from16 v17, v1

    .line 41
    .line 42
    move-object/from16 v26, v2

    .line 43
    .line 44
    iget-wide v1, v0, Lcom/google/android/exoplayer2/a3;->bufferedPositionUs:J

    .line 45
    .line 46
    move-wide/from16 v18, v1

    .line 47
    .line 48
    iget-wide v1, v0, Lcom/google/android/exoplayer2/a3;->totalBufferedDurationUs:J

    .line 49
    .line 50
    move-wide/from16 v20, v1

    .line 51
    .line 52
    iget-wide v1, v0, Lcom/google/android/exoplayer2/a3;->positionUs:J

    .line 53
    .line 54
    move-wide/from16 v22, v1

    .line 55
    .line 56
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/a3;->sleepingForOffload:Z

    .line 57
    .line 58
    move/from16 v24, v1

    .line 59
    .line 60
    move-object/from16 v1, p1

    .line 61
    .line 62
    move-object/from16 v2, v26

    .line 63
    .line 64
    .line 65
    invoke-direct/range {v1 .. v24}, Lcom/google/android/exoplayer2/a3;-><init>(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/source/b0$b;JJILcom/google/android/exoplayer2/q;ZLcom/google/android/exoplayer2/source/h1;Lcom/google/android/exoplayer2/trackselection/c0;Ljava/util/List;Lcom/google/android/exoplayer2/source/b0$b;ZILcom/google/android/exoplayer2/c3;JJJZ)V

    .line 66
    return-object v25
.end method

.method public h(Z)Lcom/google/android/exoplayer2/a3;
    .locals 27
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move/from16 v24, p1

    .line 5
    .line 6
    new-instance v25, Lcom/google/android/exoplayer2/a3;

    .line 7
    .line 8
    move-object/from16 v1, v25

    .line 9
    .line 10
    iget-object v2, v0, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 11
    .line 12
    iget-object v3, v0, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 13
    .line 14
    iget-wide v4, v0, Lcom/google/android/exoplayer2/a3;->requestedContentPositionUs:J

    .line 15
    .line 16
    iget-wide v6, v0, Lcom/google/android/exoplayer2/a3;->discontinuityStartPositionUs:J

    .line 17
    .line 18
    iget v8, v0, Lcom/google/android/exoplayer2/a3;->playbackState:I

    .line 19
    .line 20
    iget-object v9, v0, Lcom/google/android/exoplayer2/a3;->playbackError:Lcom/google/android/exoplayer2/q;

    .line 21
    .line 22
    iget-boolean v10, v0, Lcom/google/android/exoplayer2/a3;->isLoading:Z

    .line 23
    .line 24
    iget-object v11, v0, Lcom/google/android/exoplayer2/a3;->trackGroups:Lcom/google/android/exoplayer2/source/h1;

    .line 25
    .line 26
    iget-object v12, v0, Lcom/google/android/exoplayer2/a3;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/c0;

    .line 27
    .line 28
    iget-object v13, v0, Lcom/google/android/exoplayer2/a3;->staticMetadata:Ljava/util/List;

    .line 29
    .line 30
    iget-object v14, v0, Lcom/google/android/exoplayer2/a3;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 31
    .line 32
    iget-boolean v15, v0, Lcom/google/android/exoplayer2/a3;->playWhenReady:Z

    .line 33
    .line 34
    move-object/from16 p1, v1

    .line 35
    .line 36
    iget v1, v0, Lcom/google/android/exoplayer2/a3;->playbackSuppressionReason:I

    .line 37
    .line 38
    move/from16 v16, v1

    .line 39
    .line 40
    iget-object v1, v0, Lcom/google/android/exoplayer2/a3;->playbackParameters:Lcom/google/android/exoplayer2/c3;

    .line 41
    .line 42
    move-object/from16 v17, v1

    .line 43
    .line 44
    move-object/from16 v26, v2

    .line 45
    .line 46
    iget-wide v1, v0, Lcom/google/android/exoplayer2/a3;->bufferedPositionUs:J

    .line 47
    .line 48
    move-wide/from16 v18, v1

    .line 49
    .line 50
    iget-wide v1, v0, Lcom/google/android/exoplayer2/a3;->totalBufferedDurationUs:J

    .line 51
    .line 52
    move-wide/from16 v20, v1

    .line 53
    .line 54
    iget-wide v1, v0, Lcom/google/android/exoplayer2/a3;->positionUs:J

    .line 55
    .line 56
    move-wide/from16 v22, v1

    .line 57
    .line 58
    move-object/from16 v1, p1

    .line 59
    .line 60
    move-object/from16 v2, v26

    .line 61
    .line 62
    .line 63
    invoke-direct/range {v1 .. v24}, Lcom/google/android/exoplayer2/a3;-><init>(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/source/b0$b;JJILcom/google/android/exoplayer2/q;ZLcom/google/android/exoplayer2/source/h1;Lcom/google/android/exoplayer2/trackselection/c0;Ljava/util/List;Lcom/google/android/exoplayer2/source/b0$b;ZILcom/google/android/exoplayer2/c3;JJJZ)V

    .line 64
    return-object v25
.end method

.method public i(Lcom/google/android/exoplayer2/z3;)Lcom/google/android/exoplayer2/a3;
    .locals 27
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v2, p1

    .line 5
    .line 6
    new-instance v25, Lcom/google/android/exoplayer2/a3;

    .line 7
    .line 8
    move-object/from16 v1, v25

    .line 9
    .line 10
    iget-object v3, v0, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 11
    .line 12
    iget-wide v4, v0, Lcom/google/android/exoplayer2/a3;->requestedContentPositionUs:J

    .line 13
    .line 14
    iget-wide v6, v0, Lcom/google/android/exoplayer2/a3;->discontinuityStartPositionUs:J

    .line 15
    .line 16
    iget v8, v0, Lcom/google/android/exoplayer2/a3;->playbackState:I

    .line 17
    .line 18
    iget-object v9, v0, Lcom/google/android/exoplayer2/a3;->playbackError:Lcom/google/android/exoplayer2/q;

    .line 19
    .line 20
    iget-boolean v10, v0, Lcom/google/android/exoplayer2/a3;->isLoading:Z

    .line 21
    .line 22
    iget-object v11, v0, Lcom/google/android/exoplayer2/a3;->trackGroups:Lcom/google/android/exoplayer2/source/h1;

    .line 23
    .line 24
    iget-object v12, v0, Lcom/google/android/exoplayer2/a3;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/c0;

    .line 25
    .line 26
    iget-object v13, v0, Lcom/google/android/exoplayer2/a3;->staticMetadata:Ljava/util/List;

    .line 27
    .line 28
    iget-object v14, v0, Lcom/google/android/exoplayer2/a3;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 29
    .line 30
    iget-boolean v15, v0, Lcom/google/android/exoplayer2/a3;->playWhenReady:Z

    .line 31
    .line 32
    move-object/from16 p1, v1

    .line 33
    .line 34
    iget v1, v0, Lcom/google/android/exoplayer2/a3;->playbackSuppressionReason:I

    .line 35
    .line 36
    move/from16 v16, v1

    .line 37
    .line 38
    iget-object v1, v0, Lcom/google/android/exoplayer2/a3;->playbackParameters:Lcom/google/android/exoplayer2/c3;

    .line 39
    .line 40
    move-object/from16 v17, v1

    .line 41
    .line 42
    move-object/from16 v26, v2

    .line 43
    .line 44
    iget-wide v1, v0, Lcom/google/android/exoplayer2/a3;->bufferedPositionUs:J

    .line 45
    .line 46
    move-wide/from16 v18, v1

    .line 47
    .line 48
    iget-wide v1, v0, Lcom/google/android/exoplayer2/a3;->totalBufferedDurationUs:J

    .line 49
    .line 50
    move-wide/from16 v20, v1

    .line 51
    .line 52
    iget-wide v1, v0, Lcom/google/android/exoplayer2/a3;->positionUs:J

    .line 53
    .line 54
    move-wide/from16 v22, v1

    .line 55
    .line 56
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/a3;->sleepingForOffload:Z

    .line 57
    .line 58
    move/from16 v24, v1

    .line 59
    .line 60
    move-object/from16 v1, p1

    .line 61
    .line 62
    move-object/from16 v2, v26

    .line 63
    .line 64
    .line 65
    invoke-direct/range {v1 .. v24}, Lcom/google/android/exoplayer2/a3;-><init>(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/source/b0$b;JJILcom/google/android/exoplayer2/q;ZLcom/google/android/exoplayer2/source/h1;Lcom/google/android/exoplayer2/trackselection/c0;Ljava/util/List;Lcom/google/android/exoplayer2/source/b0$b;ZILcom/google/android/exoplayer2/c3;JJJZ)V

    .line 66
    return-object v25
.end method
