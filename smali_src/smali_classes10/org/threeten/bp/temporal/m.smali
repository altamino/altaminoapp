.class public final Lorg/threeten/bp/temporal/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x658e56a90d32a548L


# instance fields
.field private final maxLargest:J

.field private final maxSmallest:J

.field private final minLargest:J

.field private final minSmallest:J


# direct methods
.method private constructor <init>(JJJJ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-wide p1, p0, Lorg/threeten/bp/temporal/m;->minSmallest:J

    .line 6
    .line 7
    iput-wide p3, p0, Lorg/threeten/bp/temporal/m;->minLargest:J

    .line 8
    .line 9
    iput-wide p5, p0, Lorg/threeten/bp/temporal/m;->maxSmallest:J

    .line 10
    .line 11
    iput-wide p7, p0, Lorg/threeten/bp/temporal/m;->maxLargest:J

    .line 12
    return-void
.end method

.method public static i(JJ)Lorg/threeten/bp/temporal/m;
    .locals 10

    .line 1
    .line 2
    cmp-long v0, p0, p2

    .line 3
    .line 4
    if-gtz v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lorg/threeten/bp/temporal/m;

    .line 7
    move-object v1, v0

    .line 8
    move-wide v2, p0

    .line 9
    move-wide v4, p0

    .line 10
    move-wide v6, p2

    .line 11
    move-wide v8, p2

    .line 12
    .line 13
    .line 14
    invoke-direct/range {v1 .. v9}, Lorg/threeten/bp/temporal/m;-><init>(JJJJ)V

    .line 15
    return-object v0

    .line 16
    .line 17
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string p1, "Minimum value must be less than maximum value"

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p0
.end method

.method public static j(JJJ)Lorg/threeten/bp/temporal/m;
    .locals 8

    .line 1
    move-wide v0, p0

    .line 2
    move-wide v2, p0

    .line 3
    move-wide v4, p2

    .line 4
    move-wide v6, p4

    .line 5
    .line 6
    .line 7
    invoke-static/range {v0 .. v7}, Lorg/threeten/bp/temporal/m;->k(JJJJ)Lorg/threeten/bp/temporal/m;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static k(JJJJ)Lorg/threeten/bp/temporal/m;
    .locals 10

    .line 1
    .line 2
    cmp-long v0, p0, p2

    .line 3
    .line 4
    if-gtz v0, :cond_2

    .line 5
    .line 6
    cmp-long v0, p4, p6

    .line 7
    .line 8
    if-gtz v0, :cond_1

    .line 9
    .line 10
    cmp-long v0, p2, p6

    .line 11
    .line 12
    if-gtz v0, :cond_0

    .line 13
    .line 14
    new-instance v9, Lorg/threeten/bp/temporal/m;

    .line 15
    move-object v0, v9

    .line 16
    move-wide v1, p0

    .line 17
    move-wide v3, p2

    .line 18
    move-wide v5, p4

    .line 19
    .line 20
    move-wide/from16 v7, p6

    .line 21
    .line 22
    .line 23
    invoke-direct/range {v0 .. v8}, Lorg/threeten/bp/temporal/m;-><init>(JJJJ)V

    .line 24
    return-object v9

    .line 25
    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string v1, "Minimum value must be less than maximum value"

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    throw v0

    .line 33
    .line 34
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    const-string v1, "Smallest maximum value must be less than largest maximum value"

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    throw v0

    .line 41
    .line 42
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    const-string v1, "Smallest minimum value must be less than largest minimum value"

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    throw v0
.end method


# virtual methods
.method public a(JLorg/threeten/bp/temporal/h;)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/temporal/m;->g(J)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    long-to-int p1, p1

    .line 8
    return p1

    .line 9
    .line 10
    :cond_0
    new-instance v0, Lorg/threeten/bp/b;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    const-string v2, "Invalid int value for "

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string p3, ": "

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, p1}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 39
    throw v0
.end method

.method public b(JLorg/threeten/bp/temporal/h;)J
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/temporal/m;->h(J)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    const-string v0, "): "

    .line 9
    .line 10
    if-eqz p3, :cond_0

    .line 11
    .line 12
    new-instance v1, Lorg/threeten/bp/b;

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    const-string v3, "Invalid value for "

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string p3, " (valid values "

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-direct {v1, p1}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 47
    throw v1

    .line 48
    .line 49
    :cond_0
    new-instance p3, Lorg/threeten/bp/b;

    .line 50
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    const-string v2, "Invalid value (valid values "

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    invoke-direct {p3, p1}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 76
    throw p3

    .line 77
    :cond_1
    return-wide p1
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/threeten/bp/temporal/m;->maxLargest:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/threeten/bp/temporal/m;->minSmallest:J

    return-wide v0
.end method

.method public e()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lorg/threeten/bp/temporal/m;->minSmallest:J

    iget-wide v2, p0, Lorg/threeten/bp/temporal/m;->minLargest:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/threeten/bp/temporal/m;->maxSmallest:J

    iget-wide v2, p0, Lorg/threeten/bp/temporal/m;->maxLargest:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p1, p0, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    instance-of v1, p1, Lorg/threeten/bp/temporal/m;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    check-cast p1, Lorg/threeten/bp/temporal/m;

    .line 12
    .line 13
    iget-wide v3, p0, Lorg/threeten/bp/temporal/m;->minSmallest:J

    .line 14
    .line 15
    iget-wide v5, p1, Lorg/threeten/bp/temporal/m;->minSmallest:J

    .line 16
    .line 17
    cmp-long v1, v3, v5

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    iget-wide v3, p0, Lorg/threeten/bp/temporal/m;->minLargest:J

    .line 22
    .line 23
    iget-wide v5, p1, Lorg/threeten/bp/temporal/m;->minLargest:J

    .line 24
    .line 25
    cmp-long v1, v3, v5

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    iget-wide v3, p0, Lorg/threeten/bp/temporal/m;->maxSmallest:J

    .line 30
    .line 31
    iget-wide v5, p1, Lorg/threeten/bp/temporal/m;->maxSmallest:J

    .line 32
    .line 33
    cmp-long v1, v3, v5

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    iget-wide v3, p0, Lorg/threeten/bp/temporal/m;->maxLargest:J

    .line 38
    .line 39
    iget-wide v5, p1, Lorg/threeten/bp/temporal/m;->maxLargest:J

    .line 40
    .line 41
    cmp-long p1, v3, v5

    .line 42
    .line 43
    if-nez p1, :cond_1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move v0, v2

    .line 46
    :goto_0
    return v0

    .line 47
    :cond_2
    return v2
.end method

.method public f()Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/m;->d()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    const-wide/32 v2, -0x80000000

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-ltz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/m;->c()J

    .line 15
    move-result-wide v0

    .line 16
    .line 17
    .line 18
    const-wide/32 v2, 0x7fffffff

    .line 19
    .line 20
    cmp-long v0, v0, v2

    .line 21
    .line 22
    if-gtz v0, :cond_0

    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method

.method public g(J)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/m;->f()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/temporal/m;->h(J)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method public h(J)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/m;->d()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    cmp-long v0, p1, v0

    .line 7
    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/m;->c()J

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    cmp-long p1, p1, v0

    .line 15
    .line 16
    if-gtz p1, :cond_0

    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 8

    iget-wide v0, p0, Lorg/threeten/bp/temporal/m;->minSmallest:J

    iget-wide v2, p0, Lorg/threeten/bp/temporal/m;->minLargest:J

    add-long/2addr v0, v2

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    long-to-int v2, v2

    shl-long/2addr v0, v2

    iget-wide v2, p0, Lorg/threeten/bp/temporal/m;->maxSmallest:J

    const-wide/16 v4, 0x30

    add-long v6, v2, v4

    long-to-int v6, v6

    shr-long/2addr v0, v6

    const-wide/16 v6, 0x20

    add-long/2addr v2, v6

    long-to-int v2, v2

    shl-long/2addr v0, v2

    iget-wide v2, p0, Lorg/threeten/bp/temporal/m;->maxLargest:J

    add-long/2addr v6, v2

    long-to-int v6, v6

    shr-long/2addr v0, v6

    add-long/2addr v2, v4

    long-to-int v2, v2

    shl-long/2addr v0, v2

    const/16 v2, 0x10

    shr-long/2addr v0, v2

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    iget-wide v1, p0, Lorg/threeten/bp/temporal/m;->minSmallest:J

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-wide v1, p0, Lorg/threeten/bp/temporal/m;->minSmallest:J

    .line 13
    .line 14
    iget-wide v3, p0, Lorg/threeten/bp/temporal/m;->minLargest:J

    .line 15
    .line 16
    cmp-long v1, v1, v3

    .line 17
    .line 18
    const/16 v2, 0x2f

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    iget-wide v3, p0, Lorg/threeten/bp/temporal/m;->minLargest:J

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    :cond_0
    const-string v1, " - "

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    iget-wide v3, p0, Lorg/threeten/bp/temporal/m;->maxSmallest:J

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    iget-wide v3, p0, Lorg/threeten/bp/temporal/m;->maxSmallest:J

    .line 41
    .line 42
    iget-wide v5, p0, Lorg/threeten/bp/temporal/m;->maxLargest:J

    .line 43
    .line 44
    cmp-long v1, v3, v5

    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    iget-wide v1, p0, Lorg/threeten/bp/temporal/m;->maxLargest:J

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    return-object v0
.end method
