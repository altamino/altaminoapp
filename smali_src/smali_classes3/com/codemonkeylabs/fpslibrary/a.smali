.class public Lcom/codemonkeylabs/fpslibrary/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemonkeylabs/fpslibrary/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static a(Lcom/codemonkeylabs/fpslibrary/b;Ljava/util/List;Ljava/util/List;)Ljava/util/AbstractMap$SimpleEntry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemonkeylabs/fpslibrary/b;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/AbstractMap$SimpleEntry<",
            "Lcom/codemonkeylabs/fpslibrary/a$a;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 16
    move-result-wide v0

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    check-cast p1, Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 27
    move-result-wide v3

    .line 28
    sub-long/2addr v0, v3

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1, p0}, Lcom/codemonkeylabs/fpslibrary/a;->d(JLcom/codemonkeylabs/fpslibrary/b;)J

    .line 32
    move-result-wide v0

    .line 33
    .line 34
    .line 35
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object p1

    .line 37
    move p2, v2

    .line 38
    .line 39
    .line 40
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v3

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    check-cast v3, Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 53
    move-result v4

    .line 54
    add-int/2addr v2, v4

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 58
    move-result v4

    .line 59
    const/4 v5, 0x2

    .line 60
    .line 61
    if-lt v4, v5, :cond_0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 65
    move-result v3

    .line 66
    add-int/2addr p2, v3

    .line 67
    goto :goto_0

    .line 68
    .line 69
    :cond_1
    iget p1, p0, Lcom/codemonkeylabs/fpslibrary/b;->refreshRate:F

    .line 70
    long-to-float v3, v0

    .line 71
    div-float/2addr p1, v3

    .line 72
    int-to-long v4, v2

    .line 73
    sub-long/2addr v0, v4

    .line 74
    long-to-float v0, v0

    .line 75
    mul-float/2addr p1, v0

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 79
    move-result p1

    .line 80
    int-to-long v0, p1

    .line 81
    int-to-float p1, p2

    .line 82
    div-float/2addr p1, v3

    .line 83
    .line 84
    sget-object p2, Lcom/codemonkeylabs/fpslibrary/a$a;->GOOD:Lcom/codemonkeylabs/fpslibrary/a$a;

    .line 85
    .line 86
    iget v2, p0, Lcom/codemonkeylabs/fpslibrary/b;->redFlagPercentage:F

    .line 87
    .line 88
    cmpl-float v2, p1, v2

    .line 89
    .line 90
    if-ltz v2, :cond_2

    .line 91
    .line 92
    sget-object p2, Lcom/codemonkeylabs/fpslibrary/a$a;->BAD:Lcom/codemonkeylabs/fpslibrary/a$a;

    .line 93
    goto :goto_1

    .line 94
    .line 95
    :cond_2
    iget p0, p0, Lcom/codemonkeylabs/fpslibrary/b;->yellowFlagPercentage:F

    .line 96
    .line 97
    cmpl-float p0, p1, p0

    .line 98
    .line 99
    if-ltz p0, :cond_3

    .line 100
    .line 101
    sget-object p2, Lcom/codemonkeylabs/fpslibrary/a$a;->MEDIUM:Lcom/codemonkeylabs/fpslibrary/a$a;

    .line 102
    .line 103
    :cond_3
    :goto_1
    new-instance p0, Ljava/util/AbstractMap$SimpleEntry;

    .line 104
    .line 105
    .line 106
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 107
    move-result-object p1

    .line 108
    .line 109
    .line 110
    invoke-direct {p0, p2, p1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    return-object p0
.end method

.method public static b(JJF)I
    .locals 0

    .line 1
    sub-long/2addr p2, p0

    .line 2
    .line 3
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    .line 5
    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2, p3, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 9
    move-result-wide p0

    .line 10
    .line 11
    .line 12
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    .line 13
    move-result p2

    .line 14
    int-to-long p2, p2

    .line 15
    .line 16
    cmp-long p4, p0, p2

    .line 17
    .line 18
    if-lez p4, :cond_0

    .line 19
    div-long/2addr p0, p2

    .line 20
    long-to-int p0, p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    return p0
.end method

.method public static c(Lcom/codemonkeylabs/fpslibrary/b;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemonkeylabs/fpslibrary/b;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    const-wide/16 v1, -0x1

    .line 12
    move-wide v3, v1

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v5

    .line 17
    .line 18
    if-eqz v5, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v5

    .line 23
    .line 24
    check-cast v5, Ljava/lang/Long;

    .line 25
    .line 26
    cmp-long v6, v3, v1

    .line 27
    .line 28
    if-nez v6, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 32
    move-result-wide v3

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 37
    move-result-wide v6

    .line 38
    .line 39
    iget v8, p0, Lcom/codemonkeylabs/fpslibrary/b;->deviceRefreshRateInMs:F

    .line 40
    .line 41
    .line 42
    invoke-static {v3, v4, v6, v7, v8}, Lcom/codemonkeylabs/fpslibrary/a;->b(JJF)I

    .line 43
    move-result v3

    .line 44
    .line 45
    if-lez v3, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    .line 52
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 56
    move-result-wide v3

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    return-object v0
.end method

.method protected static d(JLcom/codemonkeylabs/fpslibrary/b;)J
    .locals 2

    .line 1
    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    .line 4
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 8
    move-result-wide p0

    .line 9
    long-to-float p0, p0

    .line 10
    .line 11
    iget p1, p2, Lcom/codemonkeylabs/fpslibrary/b;->deviceRefreshRateInMs:F

    .line 12
    div-float/2addr p0, p1

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 16
    move-result p0

    .line 17
    int-to-long p0, p0

    .line 18
    return-wide p0
.end method
