.class final Lcom/google/android/exoplayer2/analytics/q1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/analytics/q1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private adMediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

.field private isActive:Z

.field private isCreated:Z

.field private final sessionId:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/exoplayer2/analytics/q1;

.field private windowIndex:I

.field private windowSequenceNumber:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/analytics/q1;Ljava/lang/String;ILcom/google/android/exoplayer2/source/b0$b;)V
    .locals 0
    .param p3    # I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/q1$a;->this$0:Lcom/google/android/exoplayer2/analytics/q1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/q1$a;->sessionId:Ljava/lang/String;

    .line 8
    .line 9
    iput p3, p0, Lcom/google/android/exoplayer2/analytics/q1$a;->windowIndex:I

    .line 10
    .line 11
    if-nez p4, :cond_0

    .line 12
    .line 13
    const-wide/16 p1, -0x1

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-wide p1, p4, Lcom/google/android/exoplayer2/source/z;->windowSequenceNumber:J

    .line 17
    .line 18
    :goto_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/analytics/q1$a;->windowSequenceNumber:J

    .line 19
    .line 20
    if-eqz p4, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p4}, Lcom/google/android/exoplayer2/source/z;->b()Z

    .line 24
    move-result p1

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    iput-object p4, p0, Lcom/google/android/exoplayer2/analytics/q1$a;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 29
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/analytics/q1$a;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/q1$a;->sessionId:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/analytics/q1$a;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/q1$a;->windowSequenceNumber:J

    .line 3
    return-wide v0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/analytics/q1$a;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/analytics/q1$a;->windowIndex:I

    .line 3
    return p0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/analytics/q1$a;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/analytics/q1$a;->isCreated:Z

    .line 3
    return p0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/analytics/q1$a;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/analytics/q1$a;->isCreated:Z

    .line 3
    return p1
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/analytics/q1$a;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/analytics/q1$a;->isActive:Z

    .line 3
    return p0
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/analytics/q1$a;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/analytics/q1$a;->isActive:Z

    .line 3
    return p1
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/analytics/q1$a;)Lcom/google/android/exoplayer2/source/b0$b;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/q1$a;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 3
    return-object p0
.end method

.method private l(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/z3;I)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/z3;->t()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    .line 7
    if-lt p3, v0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/z3;->t()I

    .line 11
    move-result p1

    .line 12
    .line 13
    if-ge p3, p1, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move p3, v1

    .line 16
    :goto_0
    return p3

    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/q1$a;->this$0:Lcom/google/android/exoplayer2/analytics/q1;

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/q1;->i(Lcom/google/android/exoplayer2/analytics/q1;)Lcom/google/android/exoplayer2/z3$d;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p3, v0}, Lcom/google/android/exoplayer2/z3;->r(ILcom/google/android/exoplayer2/z3$d;)Lcom/google/android/exoplayer2/z3$d;

    .line 26
    .line 27
    iget-object p3, p0, Lcom/google/android/exoplayer2/analytics/q1$a;->this$0:Lcom/google/android/exoplayer2/analytics/q1;

    .line 28
    .line 29
    .line 30
    invoke-static {p3}, Lcom/google/android/exoplayer2/analytics/q1;->i(Lcom/google/android/exoplayer2/analytics/q1;)Lcom/google/android/exoplayer2/z3$d;

    .line 31
    move-result-object p3

    .line 32
    .line 33
    iget p3, p3, Lcom/google/android/exoplayer2/z3$d;->firstPeriodIndex:I

    .line 34
    .line 35
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/q1$a;->this$0:Lcom/google/android/exoplayer2/analytics/q1;

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/q1;->i(Lcom/google/android/exoplayer2/analytics/q1;)Lcom/google/android/exoplayer2/z3$d;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    iget v0, v0, Lcom/google/android/exoplayer2/z3$d;->lastPeriodIndex:I

    .line 42
    .line 43
    if-gt p3, v0, :cond_3

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/z3;->q(I)Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/z3;->f(Ljava/lang/Object;)I

    .line 51
    move-result v0

    .line 52
    .line 53
    if-eq v0, v1, :cond_2

    .line 54
    .line 55
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/q1$a;->this$0:Lcom/google/android/exoplayer2/analytics/q1;

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lcom/google/android/exoplayer2/analytics/q1;->j(Lcom/google/android/exoplayer2/analytics/q1;)Lcom/google/android/exoplayer2/z3$b;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v0, p1}, Lcom/google/android/exoplayer2/z3;->j(ILcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    iget p1, p1, Lcom/google/android/exoplayer2/z3$b;->windowIndex:I

    .line 66
    return p1

    .line 67
    .line 68
    :cond_2
    add-int/lit8 p3, p3, 0x1

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    return v1
.end method


# virtual methods
.method public i(ILcom/google/android/exoplayer2/source/b0$b;)Z
    .locals 6
    .param p2    # Lcom/google/android/exoplayer2/source/b0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    .line 4
    if-nez p2, :cond_1

    .line 5
    .line 6
    iget p2, p0, Lcom/google/android/exoplayer2/analytics/q1$a;->windowIndex:I

    .line 7
    .line 8
    if-ne p1, p2, :cond_0

    .line 9
    move v0, v1

    .line 10
    :cond_0
    return v0

    .line 11
    .line 12
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/q1$a;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 13
    .line 14
    if-nez p1, :cond_3

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/z;->b()Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-nez p1, :cond_2

    .line 21
    .line 22
    iget-wide p1, p2, Lcom/google/android/exoplayer2/source/z;->windowSequenceNumber:J

    .line 23
    .line 24
    iget-wide v2, p0, Lcom/google/android/exoplayer2/analytics/q1$a;->windowSequenceNumber:J

    .line 25
    .line 26
    cmp-long p1, p1, v2

    .line 27
    .line 28
    if-nez p1, :cond_2

    .line 29
    move v0, v1

    .line 30
    :cond_2
    return v0

    .line 31
    .line 32
    :cond_3
    iget-wide v2, p2, Lcom/google/android/exoplayer2/source/z;->windowSequenceNumber:J

    .line 33
    .line 34
    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/z;->windowSequenceNumber:J

    .line 35
    .line 36
    cmp-long v2, v2, v4

    .line 37
    .line 38
    if-nez v2, :cond_4

    .line 39
    .line 40
    iget v2, p2, Lcom/google/android/exoplayer2/source/z;->adGroupIndex:I

    .line 41
    .line 42
    iget v3, p1, Lcom/google/android/exoplayer2/source/z;->adGroupIndex:I

    .line 43
    .line 44
    if-ne v2, v3, :cond_4

    .line 45
    .line 46
    iget p2, p2, Lcom/google/android/exoplayer2/source/z;->adIndexInAdGroup:I

    .line 47
    .line 48
    iget p1, p1, Lcom/google/android/exoplayer2/source/z;->adIndexInAdGroup:I

    .line 49
    .line 50
    if-ne p2, p1, :cond_4

    .line 51
    move v0, v1

    .line 52
    :cond_4
    return v0
.end method

.method public j(Lcom/google/android/exoplayer2/analytics/c$a;)Z
    .locals 9

    .line 1
    .line 2
    iget-object v0, p1, Lcom/google/android/exoplayer2/analytics/c$a;->mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/q1$a;->windowIndex:I

    .line 9
    .line 10
    iget p1, p1, Lcom/google/android/exoplayer2/analytics/c$a;->windowIndex:I

    .line 11
    .line 12
    if-eq v0, p1, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v1, v2

    .line 15
    :goto_0
    return v1

    .line 16
    .line 17
    :cond_1
    iget-wide v3, p0, Lcom/google/android/exoplayer2/analytics/q1$a;->windowSequenceNumber:J

    .line 18
    .line 19
    const-wide/16 v5, -0x1

    .line 20
    .line 21
    cmp-long v5, v3, v5

    .line 22
    .line 23
    if-nez v5, :cond_2

    .line 24
    return v2

    .line 25
    .line 26
    :cond_2
    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/z;->windowSequenceNumber:J

    .line 27
    .line 28
    cmp-long v3, v5, v3

    .line 29
    .line 30
    if-lez v3, :cond_3

    .line 31
    return v1

    .line 32
    .line 33
    :cond_3
    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/q1$a;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 34
    .line 35
    if-nez v3, :cond_4

    .line 36
    return v2

    .line 37
    .line 38
    :cond_4
    iget-object v3, p1, Lcom/google/android/exoplayer2/analytics/c$a;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/z3;->f(Ljava/lang/Object;)I

    .line 44
    move-result v0

    .line 45
    .line 46
    iget-object v3, p1, Lcom/google/android/exoplayer2/analytics/c$a;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 47
    .line 48
    iget-object v4, p0, Lcom/google/android/exoplayer2/analytics/q1$a;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 49
    .line 50
    iget-object v4, v4, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/z3;->f(Ljava/lang/Object;)I

    .line 54
    move-result v3

    .line 55
    .line 56
    iget-object v4, p1, Lcom/google/android/exoplayer2/analytics/c$a;->mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 57
    .line 58
    iget-wide v5, v4, Lcom/google/android/exoplayer2/source/z;->windowSequenceNumber:J

    .line 59
    .line 60
    iget-object v7, p0, Lcom/google/android/exoplayer2/analytics/q1$a;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 61
    .line 62
    iget-wide v7, v7, Lcom/google/android/exoplayer2/source/z;->windowSequenceNumber:J

    .line 63
    .line 64
    cmp-long v5, v5, v7

    .line 65
    .line 66
    if-ltz v5, :cond_c

    .line 67
    .line 68
    if-ge v0, v3, :cond_5

    .line 69
    goto :goto_3

    .line 70
    .line 71
    :cond_5
    if-le v0, v3, :cond_6

    .line 72
    return v1

    .line 73
    .line 74
    .line 75
    :cond_6
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/z;->b()Z

    .line 76
    move-result v0

    .line 77
    .line 78
    if-eqz v0, :cond_9

    .line 79
    .line 80
    iget-object p1, p1, Lcom/google/android/exoplayer2/analytics/c$a;->mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 81
    .line 82
    iget v0, p1, Lcom/google/android/exoplayer2/source/z;->adGroupIndex:I

    .line 83
    .line 84
    iget p1, p1, Lcom/google/android/exoplayer2/source/z;->adIndexInAdGroup:I

    .line 85
    .line 86
    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/q1$a;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 87
    .line 88
    iget v4, v3, Lcom/google/android/exoplayer2/source/z;->adGroupIndex:I

    .line 89
    .line 90
    if-gt v0, v4, :cond_8

    .line 91
    .line 92
    if-ne v0, v4, :cond_7

    .line 93
    .line 94
    iget v0, v3, Lcom/google/android/exoplayer2/source/z;->adIndexInAdGroup:I

    .line 95
    .line 96
    if-le p1, v0, :cond_7

    .line 97
    goto :goto_1

    .line 98
    :cond_7
    move v1, v2

    .line 99
    :cond_8
    :goto_1
    return v1

    .line 100
    .line 101
    :cond_9
    iget-object p1, p1, Lcom/google/android/exoplayer2/analytics/c$a;->mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 102
    .line 103
    iget p1, p1, Lcom/google/android/exoplayer2/source/z;->nextAdGroupIndex:I

    .line 104
    const/4 v0, -0x1

    .line 105
    .line 106
    if-eq p1, v0, :cond_b

    .line 107
    .line 108
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/q1$a;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 109
    .line 110
    iget v0, v0, Lcom/google/android/exoplayer2/source/z;->adGroupIndex:I

    .line 111
    .line 112
    if-le p1, v0, :cond_a

    .line 113
    goto :goto_2

    .line 114
    :cond_a
    move v1, v2

    .line 115
    :cond_b
    :goto_2
    return v1

    .line 116
    :cond_c
    :goto_3
    return v2
.end method

.method public k(ILcom/google/android/exoplayer2/source/b0$b;)V
    .locals 4
    .param p2    # Lcom/google/android/exoplayer2/source/b0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/q1$a;->windowSequenceNumber:J

    .line 3
    .line 4
    const-wide/16 v2, -0x1

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/q1$a;->windowIndex:I

    .line 11
    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    iget-wide p1, p2, Lcom/google/android/exoplayer2/source/z;->windowSequenceNumber:J

    .line 17
    .line 18
    iput-wide p1, p0, Lcom/google/android/exoplayer2/analytics/q1$a;->windowSequenceNumber:J

    .line 19
    :cond_0
    return-void
.end method

.method public m(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/z3;)Z
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/q1$a;->windowIndex:I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/analytics/q1$a;->l(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/z3;I)I

    .line 6
    move-result p1

    .line 7
    .line 8
    iput p1, p0, Lcom/google/android/exoplayer2/analytics/q1$a;->windowIndex:I

    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, -0x1

    .line 11
    .line 12
    if-ne p1, v1, :cond_0

    .line 13
    return v0

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/q1$a;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 16
    const/4 v2, 0x1

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    return v2

    .line 20
    .line 21
    :cond_1
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/z3;->f(Ljava/lang/Object;)I

    .line 25
    move-result p1

    .line 26
    .line 27
    if-eq p1, v1, :cond_2

    .line 28
    move v0, v2

    .line 29
    :cond_2
    return v0
.end method
