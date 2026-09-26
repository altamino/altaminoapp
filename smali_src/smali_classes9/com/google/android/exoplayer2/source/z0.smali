.class public final Lcom/google/android/exoplayer2/source/z0;
.super Lcom/google/android/exoplayer2/z3;
.source "SourceFile"


# static fields
.field private static final MEDIA_ITEM:Lcom/google/android/exoplayer2/i2;

.field private static final UID:Ljava/lang/Object;


# instance fields
.field private final elapsedRealtimeEpochOffsetMs:J

.field private final isDynamic:Z

.field private final isSeekable:Z

.field private final liveConfiguration:Lcom/google/android/exoplayer2/i2$g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final manifest:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mediaItem:Lcom/google/android/exoplayer2/i2;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final periodDurationUs:J

.field private final presentationStartTimeMs:J

.field private final suppressPositionProjection:Z

.field private final windowDefaultStartPositionUs:J

.field private final windowDurationUs:J

.field private final windowPositionInPeriodUs:J

.field private final windowStartTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/android/exoplayer2/source/z0;->UID:Ljava/lang/Object;

    .line 8
    .line 9
    new-instance v0, Lcom/google/android/exoplayer2/i2$c;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Lcom/google/android/exoplayer2/i2$c;-><init>()V

    .line 13
    .line 14
    const-string v1, "SinglePeriodTimeline"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/i2$c;->d(Ljava/lang/String;)Lcom/google/android/exoplayer2/i2$c;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/i2$c;->g(Landroid/net/Uri;)Lcom/google/android/exoplayer2/i2$c;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i2$c;->a()Lcom/google/android/exoplayer2/i2;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    sput-object v0, Lcom/google/android/exoplayer2/source/z0;->MEDIA_ITEM:Lcom/google/android/exoplayer2/i2;

    .line 31
    return-void
.end method

.method public constructor <init>(JJJJJJJZZLjava/lang/Object;Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/i2$g;)V
    .locals 21
    .param p17    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p19    # Lcom/google/android/exoplayer2/i2$g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    move/from16 v15, p15

    move/from16 v16, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    const/16 v17, 0x0

    .line 9
    invoke-direct/range {v0 .. v20}, Lcom/google/android/exoplayer2/source/z0;-><init>(JJJJJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/i2$g;)V

    return-void
.end method

.method public constructor <init>(JJJJJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/i2$g;)V
    .locals 3
    .param p18    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p20    # Lcom/google/android/exoplayer2/i2$g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    .line 10
    invoke-direct {p0}, Lcom/google/android/exoplayer2/z3;-><init>()V

    move-wide v1, p1

    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/z0;->presentationStartTimeMs:J

    move-wide v1, p3

    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/z0;->windowStartTimeMs:J

    move-wide v1, p5

    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/z0;->elapsedRealtimeEpochOffsetMs:J

    move-wide v1, p7

    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/z0;->periodDurationUs:J

    move-wide v1, p9

    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/z0;->windowDurationUs:J

    move-wide v1, p11

    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/z0;->windowPositionInPeriodUs:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/z0;->windowDefaultStartPositionUs:J

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/google/android/exoplayer2/source/z0;->isSeekable:Z

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/google/android/exoplayer2/source/z0;->isDynamic:Z

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/google/android/exoplayer2/source/z0;->suppressPositionProjection:Z

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/z0;->manifest:Ljava/lang/Object;

    .line 11
    invoke-static/range {p19 .. p19}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/i2;

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/z0;->mediaItem:Lcom/google/android/exoplayer2/i2;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/z0;->liveConfiguration:Lcom/google/android/exoplayer2/i2$g;

    return-void
.end method

.method public constructor <init>(JJJJJJJZZZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 21
    .param p18    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p19    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v17, 0x0

    sget-object v0, Lcom/google/android/exoplayer2/source/z0;->MEDIA_ITEM:Lcom/google/android/exoplayer2/i2;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i2;->b()Lcom/google/android/exoplayer2/i2$c;

    move-result-object v1

    move-object/from16 v2, p19

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/i2$c;->f(Ljava/lang/Object;)Lcom/google/android/exoplayer2/i2$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/i2$c;->a()Lcom/google/android/exoplayer2/i2;

    move-result-object v19

    if-eqz p17, :cond_0

    .line 7
    iget-object v0, v0, Lcom/google/android/exoplayer2/i2;->liveConfiguration:Lcom/google/android/exoplayer2/i2$g;

    :goto_0
    move-object/from16 v20, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    move/from16 v15, p15

    move/from16 v16, p16

    move-object/from16 v18, p18

    .line 8
    invoke-direct/range {v0 .. v20}, Lcom/google/android/exoplayer2/source/z0;-><init>(JJJJJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/i2$g;)V

    return-void
.end method

.method public constructor <init>(JJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/i2;)V
    .locals 21
    .param p12    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v17, 0x0

    move-object/from16 v15, p13

    if-eqz p11, :cond_0

    .line 4
    iget-object v0, v15, Lcom/google/android/exoplayer2/i2;->liveConfiguration:Lcom/google/android/exoplayer2/i2$g;

    :goto_0
    move-object/from16 v20, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    move-object/from16 v0, p0

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    move/from16 v15, p9

    move/from16 v16, p10

    move-object/from16 v18, p12

    move-object/from16 v19, p13

    .line 5
    invoke-direct/range {v0 .. v20}, Lcom/google/android/exoplayer2/source/z0;-><init>(JJJJJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/i2$g;)V

    return-void
.end method

.method public constructor <init>(JJJJZZZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 20
    .param p12    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    move/from16 v15, p9

    move/from16 v16, p10

    move/from16 v17, p11

    move-object/from16 v18, p12

    move-object/from16 v19, p13

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    invoke-direct/range {v0 .. v19}, Lcom/google/android/exoplayer2/source/z0;-><init>(JJJJJJJZZZLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(JZZZLjava/lang/Object;Lcom/google/android/exoplayer2/i2;)V
    .locals 14
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    .line 2
    invoke-direct/range {v0 .. v13}, Lcom/google/android/exoplayer2/source/z0;-><init>(JJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/i2;)V

    return-void
.end method

.method public constructor <init>(JZZZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 14
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    .line 1
    invoke-direct/range {v0 .. v13}, Lcom/google/android/exoplayer2/source/z0;-><init>(JJJJZZZLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)I
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/google/android/exoplayer2/source/z0;->UID:Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, -0x1

    .line 12
    :goto_0
    return p1
.end method

.method public k(ILcom/google/android/exoplayer2/z3$b;Z)Lcom/google/android/exoplayer2/z3$b;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/a;->c(III)I

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    sget-object p1, Lcom/google/android/exoplayer2/source/z0;->UID:Ljava/lang/Object;

    .line 10
    :goto_0
    move-object v2, p1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    goto :goto_0

    .line 14
    :goto_1
    const/4 v1, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    .line 17
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/z0;->periodDurationUs:J

    .line 18
    .line 19
    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/z0;->windowPositionInPeriodUs:J

    .line 20
    neg-long v6, v6

    .line 21
    move-object v0, p2

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/z3$b;->v(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lcom/google/android/exoplayer2/z3$b;

    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public m()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public q(I)Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/a;->c(III)I

    .line 6
    .line 7
    sget-object p1, Lcom/google/android/exoplayer2/source/z0;->UID:Ljava/lang/Object;

    .line 8
    return-object p1
.end method

.method public s(ILcom/google/android/exoplayer2/z3$d;J)Lcom/google/android/exoplayer2/z3$d;
    .locals 24

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    move/from16 v3, p1

    .line 7
    .line 8
    .line 9
    invoke-static {v3, v1, v2}, Lcom/google/android/exoplayer2/util/a;->c(III)I

    .line 10
    .line 11
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/z0;->windowDefaultStartPositionUs:J

    .line 12
    .line 13
    iget-boolean v14, v0, Lcom/google/android/exoplayer2/source/z0;->isDynamic:Z

    .line 14
    .line 15
    if-eqz v14, :cond_1

    .line 16
    .line 17
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/source/z0;->suppressPositionProjection:Z

    .line 18
    .line 19
    if-nez v3, :cond_1

    .line 20
    .line 21
    const-wide/16 v3, 0x0

    .line 22
    .line 23
    cmp-long v3, p3, v3

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/z0;->windowDurationUs:J

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 33
    .line 34
    cmp-long v7, v3, v5

    .line 35
    .line 36
    if-nez v7, :cond_0

    .line 37
    .line 38
    :goto_0
    move-wide/from16 v16, v5

    .line 39
    goto :goto_1

    .line 40
    .line 41
    :cond_0
    add-long v1, v1, p3

    .line 42
    .line 43
    cmp-long v3, v1, v3

    .line 44
    .line 45
    if-lez v3, :cond_1

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_1
    move-wide/from16 v16, v1

    .line 49
    .line 50
    :goto_1
    sget-object v4, Lcom/google/android/exoplayer2/z3$d;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    .line 51
    .line 52
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/z0;->mediaItem:Lcom/google/android/exoplayer2/i2;

    .line 53
    .line 54
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/z0;->manifest:Ljava/lang/Object;

    .line 55
    .line 56
    iget-wide v7, v0, Lcom/google/android/exoplayer2/source/z0;->presentationStartTimeMs:J

    .line 57
    .line 58
    iget-wide v9, v0, Lcom/google/android/exoplayer2/source/z0;->windowStartTimeMs:J

    .line 59
    .line 60
    iget-wide v11, v0, Lcom/google/android/exoplayer2/source/z0;->elapsedRealtimeEpochOffsetMs:J

    .line 61
    .line 62
    iget-boolean v13, v0, Lcom/google/android/exoplayer2/source/z0;->isSeekable:Z

    .line 63
    .line 64
    iget-object v15, v0, Lcom/google/android/exoplayer2/source/z0;->liveConfiguration:Lcom/google/android/exoplayer2/i2$g;

    .line 65
    .line 66
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/z0;->windowDurationUs:J

    .line 67
    .line 68
    move-wide/from16 v18, v1

    .line 69
    .line 70
    const/16 v20, 0x0

    .line 71
    .line 72
    const/16 v21, 0x0

    .line 73
    .line 74
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/z0;->windowPositionInPeriodUs:J

    .line 75
    .line 76
    move-wide/from16 v22, v1

    .line 77
    .line 78
    move-object/from16 v3, p2

    .line 79
    .line 80
    .line 81
    invoke-virtual/range {v3 .. v23}, Lcom/google/android/exoplayer2/z3$d;->k(Ljava/lang/Object;Lcom/google/android/exoplayer2/i2;Ljava/lang/Object;JJJZZLcom/google/android/exoplayer2/i2$g;JJIIJ)Lcom/google/android/exoplayer2/z3$d;

    .line 82
    move-result-object v1

    .line 83
    return-object v1
.end method

.method public t()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method
