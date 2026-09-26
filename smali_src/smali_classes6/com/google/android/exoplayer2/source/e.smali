.class public final Lcom/google/android/exoplayer2/source/e;
.super Lcom/google/android/exoplayer2/source/j1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/e$a;,
        Lcom/google/android/exoplayer2/source/e$b;
    }
.end annotation


# instance fields
.field private final allowDynamicClippingUpdates:Z

.field private clippingError:Lcom/google/android/exoplayer2/source/e$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private clippingTimeline:Lcom/google/android/exoplayer2/source/e$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final enableInitialDiscontinuity:Z

.field private final endUs:J

.field private final mediaPeriods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/d;",
            ">;"
        }
    .end annotation
.end field

.field private periodEndUs:J

.field private periodStartUs:J

.field private final relativeToDefaultPosition:Z

.field private final startUs:J

.field private final window:Lcom/google/android/exoplayer2/z3$d;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/b0;J)V
    .locals 9

    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    .line 2
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/source/e;-><init>(Lcom/google/android/exoplayer2/source/b0;JJZZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/b0;JJ)V
    .locals 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 1
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/source/e;-><init>(Lcom/google/android/exoplayer2/source/b0;JJZZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/b0;JJZZZ)V
    .locals 2

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/b0;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/j1;-><init>(Lcom/google/android/exoplayer2/source/b0;)V

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/e;->startUs:J

    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/e;->endUs:J

    iput-boolean p6, p0, Lcom/google/android/exoplayer2/source/e;->enableInitialDiscontinuity:Z

    iput-boolean p7, p0, Lcom/google/android/exoplayer2/source/e;->allowDynamicClippingUpdates:Z

    iput-boolean p8, p0, Lcom/google/android/exoplayer2/source/e;->relativeToDefaultPosition:Z

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/e;->mediaPeriods:Ljava/util/ArrayList;

    .line 6
    new-instance p1, Lcom/google/android/exoplayer2/z3$d;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/z3$d;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/e;->window:Lcom/google/android/exoplayer2/z3$d;

    return-void
.end method

.method private Q(Lcom/google/android/exoplayer2/z3;)V
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/e;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    move-object/from16 v4, p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v4, v2, v0}, Lcom/google/android/exoplayer2/z3;->r(ILcom/google/android/exoplayer2/z3$d;)Lcom/google/android/exoplayer2/z3$d;

    .line 10
    .line 11
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/e;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/z3$d;->h()J

    .line 15
    move-result-wide v5

    .line 16
    .line 17
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/e;->clippingTimeline:Lcom/google/android/exoplayer2/source/e$a;

    .line 18
    .line 19
    const-wide/high16 v7, -0x8000000000000000L

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/e;->mediaPeriods:Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/source/e;->allowDynamicClippingUpdates:Z

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :cond_0
    iget-wide v9, v1, Lcom/google/android/exoplayer2/source/e;->periodStartUs:J

    .line 37
    sub-long/2addr v9, v5

    .line 38
    .line 39
    iget-wide v11, v1, Lcom/google/android/exoplayer2/source/e;->endUs:J

    .line 40
    .line 41
    cmp-long v0, v11, v7

    .line 42
    .line 43
    if-nez v0, :cond_1

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_1
    iget-wide v7, v1, Lcom/google/android/exoplayer2/source/e;->periodEndUs:J

    .line 47
    sub-long/2addr v7, v5

    .line 48
    :goto_0
    move-wide v5, v9

    .line 49
    goto :goto_4

    .line 50
    .line 51
    :cond_2
    :goto_1
    iget-wide v9, v1, Lcom/google/android/exoplayer2/source/e;->startUs:J

    .line 52
    .line 53
    iget-wide v11, v1, Lcom/google/android/exoplayer2/source/e;->endUs:J

    .line 54
    .line 55
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/source/e;->relativeToDefaultPosition:Z

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/e;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/z3$d;->f()J

    .line 63
    move-result-wide v13

    .line 64
    add-long/2addr v9, v13

    .line 65
    add-long/2addr v11, v13

    .line 66
    .line 67
    :cond_3
    add-long v13, v5, v9

    .line 68
    .line 69
    iput-wide v13, v1, Lcom/google/android/exoplayer2/source/e;->periodStartUs:J

    .line 70
    .line 71
    iget-wide v13, v1, Lcom/google/android/exoplayer2/source/e;->endUs:J

    .line 72
    .line 73
    cmp-long v0, v13, v7

    .line 74
    .line 75
    if-nez v0, :cond_4

    .line 76
    goto :goto_2

    .line 77
    .line 78
    :cond_4
    add-long v7, v5, v11

    .line 79
    .line 80
    :goto_2
    iput-wide v7, v1, Lcom/google/android/exoplayer2/source/e;->periodEndUs:J

    .line 81
    .line 82
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/e;->mediaPeriods:Ljava/util/ArrayList;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 86
    move-result v0

    .line 87
    move v3, v2

    .line 88
    .line 89
    :goto_3
    if-ge v3, v0, :cond_5

    .line 90
    .line 91
    iget-object v5, v1, Lcom/google/android/exoplayer2/source/e;->mediaPeriods:Ljava/util/ArrayList;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 95
    move-result-object v5

    .line 96
    .line 97
    check-cast v5, Lcom/google/android/exoplayer2/source/d;

    .line 98
    .line 99
    iget-wide v6, v1, Lcom/google/android/exoplayer2/source/e;->periodStartUs:J

    .line 100
    .line 101
    iget-wide v13, v1, Lcom/google/android/exoplayer2/source/e;->periodEndUs:J

    .line 102
    .line 103
    .line 104
    invoke-virtual {v5, v6, v7, v13, v14}, Lcom/google/android/exoplayer2/source/d;->k(JJ)V

    .line 105
    .line 106
    add-int/lit8 v3, v3, 0x1

    .line 107
    goto :goto_3

    .line 108
    :cond_5
    move-wide v5, v9

    .line 109
    move-wide v7, v11

    .line 110
    .line 111
    :goto_4
    :try_start_0
    new-instance v0, Lcom/google/android/exoplayer2/source/e$a;

    .line 112
    move-object v3, v0

    .line 113
    .line 114
    move-object/from16 v4, p1

    .line 115
    .line 116
    .line 117
    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/source/e$a;-><init>(Lcom/google/android/exoplayer2/z3;JJ)V

    .line 118
    .line 119
    iput-object v0, v1, Lcom/google/android/exoplayer2/source/e;->clippingTimeline:Lcom/google/android/exoplayer2/source/e$a;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/source/e$b; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/a;->x(Lcom/google/android/exoplayer2/z3;)V

    .line 123
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .line 126
    iput-object v0, v1, Lcom/google/android/exoplayer2/source/e;->clippingError:Lcom/google/android/exoplayer2/source/e$b;

    .line 127
    .line 128
    :goto_5
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/e;->mediaPeriods:Ljava/util/ArrayList;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 132
    move-result v0

    .line 133
    .line 134
    if-ge v2, v0, :cond_6

    .line 135
    .line 136
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/e;->mediaPeriods:Ljava/util/ArrayList;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 140
    move-result-object v0

    .line 141
    .line 142
    check-cast v0, Lcom/google/android/exoplayer2/source/d;

    .line 143
    .line 144
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/e;->clippingError:Lcom/google/android/exoplayer2/source/e$b;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/source/d;->i(Lcom/google/android/exoplayer2/source/e$b;)V

    .line 148
    .line 149
    add-int/lit8 v2, v2, 0x1

    .line 150
    goto :goto_5

    .line 151
    :cond_6
    return-void
.end method


# virtual methods
.method protected M(Lcom/google/android/exoplayer2/z3;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/e;->clippingError:Lcom/google/android/exoplayer2/source/e$b;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/e;->Q(Lcom/google/android/exoplayer2/z3;)V

    .line 9
    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/source/b0$b;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/y;
    .locals 8

    .line 1
    .line 2
    new-instance v7, Lcom/google/android/exoplayer2/source/d;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j1;->mediaSource:Lcom/google/android/exoplayer2/source/b0;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/b0;->c(Lcom/google/android/exoplayer2/source/b0$b;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/y;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/e;->enableInitialDiscontinuity:Z

    .line 11
    .line 12
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/e;->periodStartUs:J

    .line 13
    .line 14
    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/e;->periodEndUs:J

    .line 15
    move-object v0, v7

    .line 16
    .line 17
    .line 18
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/d;-><init>(Lcom/google/android/exoplayer2/source/y;ZJJ)V

    .line 19
    .line 20
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/e;->mediaPeriods:Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    return-object v7
.end method

.method public f(Lcom/google/android/exoplayer2/source/y;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/e;->mediaPeriods:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j1;->mediaSource:Lcom/google/android/exoplayer2/source/b0;

    .line 12
    .line 13
    check-cast p1, Lcom/google/android/exoplayer2/source/d;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/d;->mediaPeriod:Lcom/google/android/exoplayer2/source/y;

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/b0;->f(Lcom/google/android/exoplayer2/source/y;)V

    .line 19
    .line 20
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/e;->mediaPeriods:Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 24
    move-result p1

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/e;->allowDynamicClippingUpdates:Z

    .line 29
    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/e;->clippingTimeline:Lcom/google/android/exoplayer2/source/e$a;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    check-cast p1, Lcom/google/android/exoplayer2/source/e$a;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/s;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/e;->Q(Lcom/google/android/exoplayer2/z3;)V

    .line 44
    :cond_0
    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/e;->clippingError:Lcom/google/android/exoplayer2/source/e$b;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Lcom/google/android/exoplayer2/source/g;->maybeThrowSourceInfoRefreshError()V

    .line 8
    return-void

    .line 9
    :cond_0
    throw v0
.end method

.method protected y()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/android/exoplayer2/source/g;->y()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/e;->clippingError:Lcom/google/android/exoplayer2/source/e$b;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/e;->clippingTimeline:Lcom/google/android/exoplayer2/source/e$a;

    .line 9
    return-void
.end method
