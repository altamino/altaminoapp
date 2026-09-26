.class final Lorg/threeten/bp/zone/b;
.super Lorg/threeten/bp/zone/f;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final LAST_CACHED_YEAR:I = 0x834

.field private static final serialVersionUID:J = 0x2a3f985312278703L


# instance fields
.field private final lastRules:[Lorg/threeten/bp/zone/e;

.field private final lastRulesCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "[",
            "Lorg/threeten/bp/zone/d;",
            ">;"
        }
    .end annotation
.end field

.field private final savingsInstantTransitions:[J

.field private final savingsLocalTransitions:[Lorg/threeten/bp/h;

.field private final standardOffsets:[Lorg/threeten/bp/s;

.field private final standardTransitions:[J

.field private final wallOffsets:[Lorg/threeten/bp/s;


# direct methods
.method private constructor <init>([J[Lorg/threeten/bp/s;[J[Lorg/threeten/bp/s;[Lorg/threeten/bp/zone/e;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/threeten/bp/zone/f;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lorg/threeten/bp/zone/b;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    .line 11
    .line 12
    iput-object p1, p0, Lorg/threeten/bp/zone/b;->standardTransitions:[J

    .line 13
    .line 14
    iput-object p2, p0, Lorg/threeten/bp/zone/b;->standardOffsets:[Lorg/threeten/bp/s;

    .line 15
    .line 16
    iput-object p3, p0, Lorg/threeten/bp/zone/b;->savingsInstantTransitions:[J

    .line 17
    .line 18
    iput-object p4, p0, Lorg/threeten/bp/zone/b;->wallOffsets:[Lorg/threeten/bp/s;

    .line 19
    .line 20
    iput-object p5, p0, Lorg/threeten/bp/zone/b;->lastRules:[Lorg/threeten/bp/zone/e;

    .line 21
    .line 22
    new-instance p1, Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    const/4 p2, 0x0

    .line 27
    :goto_0
    array-length p5, p3

    .line 28
    .line 29
    if-ge p2, p5, :cond_1

    .line 30
    .line 31
    aget-object p5, p4, p2

    .line 32
    .line 33
    add-int/lit8 v0, p2, 0x1

    .line 34
    .line 35
    aget-object v1, p4, v0

    .line 36
    .line 37
    new-instance v2, Lorg/threeten/bp/zone/d;

    .line 38
    .line 39
    aget-wide v3, p3, p2

    .line 40
    .line 41
    .line 42
    invoke-direct {v2, v3, v4, p5, v1}, Lorg/threeten/bp/zone/d;-><init>(JLorg/threeten/bp/s;Lorg/threeten/bp/s;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Lorg/threeten/bp/zone/d;->k()Z

    .line 46
    move-result p2

    .line 47
    .line 48
    if-eqz p2, :cond_0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Lorg/threeten/bp/zone/d;->c()Lorg/threeten/bp/h;

    .line 52
    move-result-object p2

    .line 53
    .line 54
    .line 55
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Lorg/threeten/bp/zone/d;->b()Lorg/threeten/bp/h;

    .line 59
    move-result-object p2

    .line 60
    .line 61
    .line 62
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    goto :goto_1

    .line 64
    .line 65
    .line 66
    :cond_0
    invoke-virtual {v2}, Lorg/threeten/bp/zone/d;->b()Lorg/threeten/bp/h;

    .line 67
    move-result-object p2

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Lorg/threeten/bp/zone/d;->c()Lorg/threeten/bp/h;

    .line 74
    move-result-object p2

    .line 75
    .line 76
    .line 77
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :goto_1
    move p2, v0

    .line 79
    goto :goto_0

    .line 80
    .line 81
    .line 82
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 83
    move-result p2

    .line 84
    .line 85
    new-array p2, p2, [Lorg/threeten/bp/h;

    .line 86
    .line 87
    .line 88
    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    check-cast p1, [Lorg/threeten/bp/h;

    .line 92
    .line 93
    iput-object p1, p0, Lorg/threeten/bp/zone/b;->savingsLocalTransitions:[Lorg/threeten/bp/h;

    .line 94
    return-void
.end method

.method private g(Lorg/threeten/bp/h;Lorg/threeten/bp/zone/d;)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Lorg/threeten/bp/zone/d;->c()Lorg/threeten/bp/h;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Lorg/threeten/bp/zone/d;->k()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lorg/threeten/bp/h;->r(Lorg/threeten/bp/chrono/c;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Lorg/threeten/bp/zone/d;->i()Lorg/threeten/bp/s;

    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p2}, Lorg/threeten/bp/zone/d;->b()Lorg/threeten/bp/h;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lorg/threeten/bp/h;->r(Lorg/threeten/bp/chrono/c;)Z

    .line 29
    move-result p1

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    return-object p2

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {p2}, Lorg/threeten/bp/zone/d;->h()Lorg/threeten/bp/s;

    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-virtual {p1, v0}, Lorg/threeten/bp/h;->r(Lorg/threeten/bp/chrono/c;)Z

    .line 41
    move-result v0

    .line 42
    .line 43
    if-nez v0, :cond_3

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Lorg/threeten/bp/zone/d;->h()Lorg/threeten/bp/s;

    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    .line 50
    .line 51
    :cond_3
    invoke-virtual {p2}, Lorg/threeten/bp/zone/d;->b()Lorg/threeten/bp/h;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Lorg/threeten/bp/h;->r(Lorg/threeten/bp/chrono/c;)Z

    .line 56
    move-result p1

    .line 57
    .line 58
    if-eqz p1, :cond_4

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Lorg/threeten/bp/zone/d;->i()Lorg/threeten/bp/s;

    .line 62
    move-result-object p1

    .line 63
    return-object p1

    .line 64
    :cond_4
    return-object p2
.end method

.method private h(I)[Lorg/threeten/bp/zone/d;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lorg/threeten/bp/zone/b;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    .line 7
    .line 8
    .line 9
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    check-cast v1, [Lorg/threeten/bp/zone/d;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    return-object v1

    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, Lorg/threeten/bp/zone/b;->lastRules:[Lorg/threeten/bp/zone/e;

    .line 18
    array-length v2, v1

    .line 19
    .line 20
    new-array v2, v2, [Lorg/threeten/bp/zone/d;

    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_0
    array-length v4, v1

    .line 23
    .line 24
    if-ge v3, v4, :cond_1

    .line 25
    .line 26
    aget-object v4, v1, v3

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, p1}, Lorg/threeten/bp/zone/e;->b(I)Lorg/threeten/bp/zone/d;

    .line 30
    move-result-object v4

    .line 31
    .line 32
    aput-object v4, v2, v3

    .line 33
    .line 34
    add-int/lit8 v3, v3, 0x1

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_1
    const/16 v1, 0x834

    .line 38
    .line 39
    if-ge p1, v1, :cond_2

    .line 40
    .line 41
    iget-object p1, p0, Lorg/threeten/bp/zone/b;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    .line 42
    .line 43
    .line 44
    invoke-interface {p1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_2
    return-object v2
.end method

.method private i(JLorg/threeten/bp/s;)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3}, Lorg/threeten/bp/s;->v()I

    .line 4
    move-result p3

    .line 5
    int-to-long v0, p3

    .line 6
    add-long/2addr p1, v0

    .line 7
    .line 8
    .line 9
    const-wide/32 v0, 0x15180

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p2, v0, v1}, Lra/d;->e(JJ)J

    .line 13
    move-result-wide p1

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p2}, Lorg/threeten/bp/g;->S(J)Lorg/threeten/bp/g;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lorg/threeten/bp/g;->J()I

    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method private j(Lorg/threeten/bp/h;)Ljava/lang/Object;
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/zone/b;->lastRules:[Lorg/threeten/bp/zone/e;

    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    if-lez v0, :cond_4

    .line 7
    .line 8
    iget-object v0, p0, Lorg/threeten/bp/zone/b;->savingsLocalTransitions:[Lorg/threeten/bp/h;

    .line 9
    array-length v2, v0

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    array-length v2, v0

    .line 13
    .line 14
    add-int/lit8 v2, v2, -0x1

    .line 15
    .line 16
    aget-object v0, v0, v2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lorg/threeten/bp/h;->q(Lorg/threeten/bp/chrono/c;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_4

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p1}, Lorg/threeten/bp/h;->G()I

    .line 26
    move-result v0

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v0}, Lorg/threeten/bp/zone/b;->h(I)[Lorg/threeten/bp/zone/d;

    .line 30
    move-result-object v0

    .line 31
    array-length v2, v0

    .line 32
    const/4 v3, 0x0

    .line 33
    .line 34
    :goto_0
    if-ge v1, v2, :cond_3

    .line 35
    .line 36
    aget-object v3, v0, v1

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, p1, v3}, Lorg/threeten/bp/zone/b;->g(Lorg/threeten/bp/h;Lorg/threeten/bp/zone/d;)Ljava/lang/Object;

    .line 40
    move-result-object v4

    .line 41
    .line 42
    instance-of v5, v4, Lorg/threeten/bp/zone/d;

    .line 43
    .line 44
    if-nez v5, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Lorg/threeten/bp/zone/d;->i()Lorg/threeten/bp/s;

    .line 48
    move-result-object v3

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v3

    .line 53
    .line 54
    if-eqz v3, :cond_1

    .line 55
    goto :goto_1

    .line 56
    .line 57
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 58
    move-object v3, v4

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    :goto_1
    return-object v4

    .line 61
    :cond_3
    return-object v3

    .line 62
    .line 63
    :cond_4
    iget-object v0, p0, Lorg/threeten/bp/zone/b;->savingsLocalTransitions:[Lorg/threeten/bp/h;

    .line 64
    .line 65
    .line 66
    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 67
    move-result p1

    .line 68
    const/4 v0, -0x1

    .line 69
    .line 70
    if-ne p1, v0, :cond_5

    .line 71
    .line 72
    iget-object p1, p0, Lorg/threeten/bp/zone/b;->wallOffsets:[Lorg/threeten/bp/s;

    .line 73
    .line 74
    aget-object p1, p1, v1

    .line 75
    return-object p1

    .line 76
    .line 77
    :cond_5
    if-gez p1, :cond_6

    .line 78
    neg-int p1, p1

    .line 79
    .line 80
    add-int/lit8 p1, p1, -0x2

    .line 81
    goto :goto_2

    .line 82
    .line 83
    :cond_6
    iget-object v0, p0, Lorg/threeten/bp/zone/b;->savingsLocalTransitions:[Lorg/threeten/bp/h;

    .line 84
    array-length v1, v0

    .line 85
    .line 86
    add-int/lit8 v1, v1, -0x1

    .line 87
    .line 88
    if-ge p1, v1, :cond_7

    .line 89
    .line 90
    aget-object v1, v0, p1

    .line 91
    .line 92
    add-int/lit8 v2, p1, 0x1

    .line 93
    .line 94
    aget-object v0, v0, v2

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v0}, Lorg/threeten/bp/h;->equals(Ljava/lang/Object;)Z

    .line 98
    move-result v0

    .line 99
    .line 100
    if-eqz v0, :cond_7

    .line 101
    move p1, v2

    .line 102
    .line 103
    :cond_7
    :goto_2
    and-int/lit8 v0, p1, 0x1

    .line 104
    .line 105
    if-nez v0, :cond_9

    .line 106
    .line 107
    iget-object v0, p0, Lorg/threeten/bp/zone/b;->savingsLocalTransitions:[Lorg/threeten/bp/h;

    .line 108
    .line 109
    aget-object v1, v0, p1

    .line 110
    .line 111
    add-int/lit8 v2, p1, 0x1

    .line 112
    .line 113
    aget-object v0, v0, v2

    .line 114
    .line 115
    iget-object v2, p0, Lorg/threeten/bp/zone/b;->wallOffsets:[Lorg/threeten/bp/s;

    .line 116
    .line 117
    div-int/lit8 p1, p1, 0x2

    .line 118
    .line 119
    aget-object v3, v2, p1

    .line 120
    .line 121
    add-int/lit8 p1, p1, 0x1

    .line 122
    .line 123
    aget-object p1, v2, p1

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Lorg/threeten/bp/s;->v()I

    .line 127
    move-result v2

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3}, Lorg/threeten/bp/s;->v()I

    .line 131
    move-result v4

    .line 132
    .line 133
    if-le v2, v4, :cond_8

    .line 134
    .line 135
    new-instance v0, Lorg/threeten/bp/zone/d;

    .line 136
    .line 137
    .line 138
    invoke-direct {v0, v1, v3, p1}, Lorg/threeten/bp/zone/d;-><init>(Lorg/threeten/bp/h;Lorg/threeten/bp/s;Lorg/threeten/bp/s;)V

    .line 139
    return-object v0

    .line 140
    .line 141
    :cond_8
    new-instance v1, Lorg/threeten/bp/zone/d;

    .line 142
    .line 143
    .line 144
    invoke-direct {v1, v0, v3, p1}, Lorg/threeten/bp/zone/d;-><init>(Lorg/threeten/bp/h;Lorg/threeten/bp/s;Lorg/threeten/bp/s;)V

    .line 145
    return-object v1

    .line 146
    .line 147
    :cond_9
    iget-object v0, p0, Lorg/threeten/bp/zone/b;->wallOffsets:[Lorg/threeten/bp/s;

    .line 148
    .line 149
    div-int/lit8 p1, p1, 0x2

    .line 150
    .line 151
    add-int/lit8 p1, p1, 0x1

    .line 152
    .line 153
    aget-object p1, v0, p1

    .line 154
    return-object p1
.end method

.method static k(Ljava/io/DataInput;)Lorg/threeten/bp/zone/b;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    .line 4
    move-result v0

    .line 5
    .line 6
    new-array v2, v0, [J

    .line 7
    const/4 v1, 0x0

    .line 8
    move v3, v1

    .line 9
    .line 10
    :goto_0
    if-ge v3, v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lorg/threeten/bp/zone/a;->b(Ljava/io/DataInput;)J

    .line 14
    move-result-wide v4

    .line 15
    .line 16
    aput-wide v4, v2, v3

    .line 17
    .line 18
    add-int/lit8 v3, v3, 0x1

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    new-array v3, v0, [Lorg/threeten/bp/s;

    .line 24
    move v4, v1

    .line 25
    .line 26
    :goto_1
    if-ge v4, v0, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-static {p0}, Lorg/threeten/bp/zone/a;->d(Ljava/io/DataInput;)Lorg/threeten/bp/s;

    .line 30
    move-result-object v5

    .line 31
    .line 32
    aput-object v5, v3, v4

    .line 33
    .line 34
    add-int/lit8 v4, v4, 0x1

    .line 35
    goto :goto_1

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    .line 39
    move-result v0

    .line 40
    .line 41
    new-array v4, v0, [J

    .line 42
    move v5, v1

    .line 43
    .line 44
    :goto_2
    if-ge v5, v0, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-static {p0}, Lorg/threeten/bp/zone/a;->b(Ljava/io/DataInput;)J

    .line 48
    move-result-wide v6

    .line 49
    .line 50
    aput-wide v6, v4, v5

    .line 51
    .line 52
    add-int/lit8 v5, v5, 0x1

    .line 53
    goto :goto_2

    .line 54
    .line 55
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 56
    .line 57
    new-array v5, v0, [Lorg/threeten/bp/s;

    .line 58
    move v6, v1

    .line 59
    .line 60
    :goto_3
    if-ge v6, v0, :cond_3

    .line 61
    .line 62
    .line 63
    invoke-static {p0}, Lorg/threeten/bp/zone/a;->d(Ljava/io/DataInput;)Lorg/threeten/bp/s;

    .line 64
    move-result-object v7

    .line 65
    .line 66
    aput-object v7, v5, v6

    .line 67
    .line 68
    add-int/lit8 v6, v6, 0x1

    .line 69
    goto :goto_3

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    .line 73
    move-result v0

    .line 74
    .line 75
    new-array v6, v0, [Lorg/threeten/bp/zone/e;

    .line 76
    .line 77
    :goto_4
    if-ge v1, v0, :cond_4

    .line 78
    .line 79
    .line 80
    invoke-static {p0}, Lorg/threeten/bp/zone/e;->c(Ljava/io/DataInput;)Lorg/threeten/bp/zone/e;

    .line 81
    move-result-object v7

    .line 82
    .line 83
    aput-object v7, v6, v1

    .line 84
    .line 85
    add-int/lit8 v1, v1, 0x1

    .line 86
    goto :goto_4

    .line 87
    .line 88
    :cond_4
    new-instance p0, Lorg/threeten/bp/zone/b;

    .line 89
    move-object v1, p0

    .line 90
    .line 91
    .line 92
    invoke-direct/range {v1 .. v6}, Lorg/threeten/bp/zone/b;-><init>([J[Lorg/threeten/bp/s;[J[Lorg/threeten/bp/s;[Lorg/threeten/bp/zone/e;)V

    .line 93
    return-object p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/zone/a;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/zone/a;-><init>(BLjava/lang/Object;)V

    .line 7
    return-object v0
.end method


# virtual methods
.method public a(Lorg/threeten/bp/f;)Lorg/threeten/bp/s;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/threeten/bp/f;->q()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget-object p1, p0, Lorg/threeten/bp/zone/b;->lastRules:[Lorg/threeten/bp/zone/e;

    .line 7
    array-length p1, p1

    .line 8
    .line 9
    if-lez p1, :cond_3

    .line 10
    .line 11
    iget-object p1, p0, Lorg/threeten/bp/zone/b;->savingsInstantTransitions:[J

    .line 12
    array-length v2, p1

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    array-length v2, p1

    .line 16
    .line 17
    add-int/lit8 v2, v2, -0x1

    .line 18
    .line 19
    aget-wide v2, p1, v2

    .line 20
    .line 21
    cmp-long p1, v0, v2

    .line 22
    .line 23
    if-lez p1, :cond_3

    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Lorg/threeten/bp/zone/b;->wallOffsets:[Lorg/threeten/bp/s;

    .line 26
    array-length v2, p1

    .line 27
    .line 28
    add-int/lit8 v2, v2, -0x1

    .line 29
    .line 30
    aget-object p1, p1, v2

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v0, v1, p1}, Lorg/threeten/bp/zone/b;->i(JLorg/threeten/bp/s;)I

    .line 34
    move-result p1

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, p1}, Lorg/threeten/bp/zone/b;->h(I)[Lorg/threeten/bp/zone/d;

    .line 38
    move-result-object p1

    .line 39
    const/4 v2, 0x0

    .line 40
    const/4 v3, 0x0

    .line 41
    :goto_0
    array-length v4, p1

    .line 42
    .line 43
    if-ge v3, v4, :cond_2

    .line 44
    .line 45
    aget-object v2, p1, v3

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Lorg/threeten/bp/zone/d;->n()J

    .line 49
    move-result-wide v4

    .line 50
    .line 51
    cmp-long v4, v0, v4

    .line 52
    .line 53
    if-gez v4, :cond_1

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Lorg/threeten/bp/zone/d;->i()Lorg/threeten/bp/s;

    .line 57
    move-result-object p1

    .line 58
    return-object p1

    .line 59
    .line 60
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 61
    goto :goto_0

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-virtual {v2}, Lorg/threeten/bp/zone/d;->h()Lorg/threeten/bp/s;

    .line 65
    move-result-object p1

    .line 66
    return-object p1

    .line 67
    .line 68
    :cond_3
    iget-object p1, p0, Lorg/threeten/bp/zone/b;->savingsInstantTransitions:[J

    .line 69
    .line 70
    .line 71
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    .line 72
    move-result p1

    .line 73
    .line 74
    if-gez p1, :cond_4

    .line 75
    neg-int p1, p1

    .line 76
    .line 77
    add-int/lit8 p1, p1, -0x2

    .line 78
    .line 79
    :cond_4
    iget-object v0, p0, Lorg/threeten/bp/zone/b;->wallOffsets:[Lorg/threeten/bp/s;

    .line 80
    .line 81
    add-int/lit8 p1, p1, 0x1

    .line 82
    .line 83
    aget-object p1, v0, p1

    .line 84
    return-object p1
.end method

.method public b(Lorg/threeten/bp/h;)Lorg/threeten/bp/zone/d;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lorg/threeten/bp/zone/b;->j(Lorg/threeten/bp/h;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    instance-of v0, p1, Lorg/threeten/bp/zone/d;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lorg/threeten/bp/zone/d;

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    return-object p1
.end method

.method public c(Lorg/threeten/bp/h;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/h;",
            ")",
            "Ljava/util/List<",
            "Lorg/threeten/bp/s;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lorg/threeten/bp/zone/b;->j(Lorg/threeten/bp/h;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    instance-of v0, p1, Lorg/threeten/bp/zone/d;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lorg/threeten/bp/zone/d;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lorg/threeten/bp/zone/d;->j()Ljava/util/List;

    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    .line 17
    :cond_0
    check-cast p1, Lorg/threeten/bp/s;

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public d()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/zone/b;->savingsInstantTransitions:[J

    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lorg/threeten/bp/zone/b;->lastRules:[Lorg/threeten/bp/zone/e;

    .line 9
    array-length v0, v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lorg/threeten/bp/zone/b;->wallOffsets:[Lorg/threeten/bp/s;

    .line 14
    .line 15
    aget-object v0, v0, v1

    .line 16
    .line 17
    iget-object v2, p0, Lorg/threeten/bp/zone/b;->standardOffsets:[Lorg/threeten/bp/s;

    .line 18
    .line 19
    aget-object v2, v2, v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Lorg/threeten/bp/s;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    const/4 v1, 0x1

    .line 27
    :cond_0
    return v1
.end method

.method public e(Lorg/threeten/bp/h;Lorg/threeten/bp/s;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/zone/b;->c(Lorg/threeten/bp/h;)Ljava/util/List;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    instance-of v1, p1, Lorg/threeten/bp/zone/b;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    check-cast p1, Lorg/threeten/bp/zone/b;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/threeten/bp/zone/b;->standardTransitions:[J

    .line 14
    .line 15
    iget-object v3, p1, Lorg/threeten/bp/zone/b;->standardTransitions:[J

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([J[J)Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lorg/threeten/bp/zone/b;->standardOffsets:[Lorg/threeten/bp/s;

    .line 24
    .line 25
    iget-object v3, p1, Lorg/threeten/bp/zone/b;->standardOffsets:[Lorg/threeten/bp/s;

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 29
    move-result v1

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    iget-object v1, p0, Lorg/threeten/bp/zone/b;->savingsInstantTransitions:[J

    .line 34
    .line 35
    iget-object v3, p1, Lorg/threeten/bp/zone/b;->savingsInstantTransitions:[J

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([J[J)Z

    .line 39
    move-result v1

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    iget-object v1, p0, Lorg/threeten/bp/zone/b;->wallOffsets:[Lorg/threeten/bp/s;

    .line 44
    .line 45
    iget-object v3, p1, Lorg/threeten/bp/zone/b;->wallOffsets:[Lorg/threeten/bp/s;

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 49
    move-result v1

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    iget-object v1, p0, Lorg/threeten/bp/zone/b;->lastRules:[Lorg/threeten/bp/zone/e;

    .line 54
    .line 55
    iget-object p1, p1, Lorg/threeten/bp/zone/b;->lastRules:[Lorg/threeten/bp/zone/e;

    .line 56
    .line 57
    .line 58
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 59
    move-result p1

    .line 60
    .line 61
    if-eqz p1, :cond_1

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    move v0, v2

    .line 64
    :goto_0
    return v0

    .line 65
    .line 66
    :cond_2
    instance-of v1, p1, Lorg/threeten/bp/zone/f$a;

    .line 67
    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lorg/threeten/bp/zone/b;->d()Z

    .line 72
    move-result v1

    .line 73
    .line 74
    if-eqz v1, :cond_3

    .line 75
    .line 76
    sget-object v1, Lorg/threeten/bp/f;->EPOCH:Lorg/threeten/bp/f;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v1}, Lorg/threeten/bp/zone/b;->a(Lorg/threeten/bp/f;)Lorg/threeten/bp/s;

    .line 80
    move-result-object v3

    .line 81
    .line 82
    check-cast p1, Lorg/threeten/bp/zone/f$a;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v1}, Lorg/threeten/bp/zone/f$a;->a(Lorg/threeten/bp/f;)Lorg/threeten/bp/s;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, p1}, Lorg/threeten/bp/s;->equals(Ljava/lang/Object;)Z

    .line 90
    move-result p1

    .line 91
    .line 92
    if-eqz p1, :cond_3

    .line 93
    goto :goto_1

    .line 94
    :cond_3
    move v0, v2

    .line 95
    :goto_1
    return v0

    .line 96
    :cond_4
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/zone/b;->standardTransitions:[J

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Lorg/threeten/bp/zone/b;->standardOffsets:[Lorg/threeten/bp/s;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 12
    move-result v1

    .line 13
    xor-int/2addr v0, v1

    .line 14
    .line 15
    iget-object v1, p0, Lorg/threeten/bp/zone/b;->savingsInstantTransitions:[J

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    .line 19
    move-result v1

    .line 20
    xor-int/2addr v0, v1

    .line 21
    .line 22
    iget-object v1, p0, Lorg/threeten/bp/zone/b;->wallOffsets:[Lorg/threeten/bp/s;

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 26
    move-result v1

    .line 27
    xor-int/2addr v0, v1

    .line 28
    .line 29
    iget-object v1, p0, Lorg/threeten/bp/zone/b;->lastRules:[Lorg/threeten/bp/zone/e;

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 33
    move-result v1

    .line 34
    xor-int/2addr v0, v1

    .line 35
    return v0
.end method

.method l(Ljava/io/DataOutput;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/zone/b;->standardTransitions:[J

    .line 3
    array-length v0, v0

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 7
    .line 8
    iget-object v0, p0, Lorg/threeten/bp/zone/b;->standardTransitions:[J

    .line 9
    array-length v1, v0

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    .line 13
    :goto_0
    if-ge v3, v1, :cond_0

    .line 14
    .line 15
    aget-wide v4, v0, v3

    .line 16
    .line 17
    .line 18
    invoke-static {v4, v5, p1}, Lorg/threeten/bp/zone/a;->e(JLjava/io/DataOutput;)V

    .line 19
    .line 20
    add-int/lit8 v3, v3, 0x1

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/zone/b;->standardOffsets:[Lorg/threeten/bp/s;

    .line 24
    array-length v1, v0

    .line 25
    move v3, v2

    .line 26
    .line 27
    :goto_1
    if-ge v3, v1, :cond_1

    .line 28
    .line 29
    aget-object v4, v0, v3

    .line 30
    .line 31
    .line 32
    invoke-static {v4, p1}, Lorg/threeten/bp/zone/a;->g(Lorg/threeten/bp/s;Ljava/io/DataOutput;)V

    .line 33
    .line 34
    add-int/lit8 v3, v3, 0x1

    .line 35
    goto :goto_1

    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lorg/threeten/bp/zone/b;->savingsInstantTransitions:[J

    .line 38
    array-length v0, v0

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 42
    .line 43
    iget-object v0, p0, Lorg/threeten/bp/zone/b;->savingsInstantTransitions:[J

    .line 44
    array-length v1, v0

    .line 45
    move v3, v2

    .line 46
    .line 47
    :goto_2
    if-ge v3, v1, :cond_2

    .line 48
    .line 49
    aget-wide v4, v0, v3

    .line 50
    .line 51
    .line 52
    invoke-static {v4, v5, p1}, Lorg/threeten/bp/zone/a;->e(JLjava/io/DataOutput;)V

    .line 53
    .line 54
    add-int/lit8 v3, v3, 0x1

    .line 55
    goto :goto_2

    .line 56
    .line 57
    :cond_2
    iget-object v0, p0, Lorg/threeten/bp/zone/b;->wallOffsets:[Lorg/threeten/bp/s;

    .line 58
    array-length v1, v0

    .line 59
    move v3, v2

    .line 60
    .line 61
    :goto_3
    if-ge v3, v1, :cond_3

    .line 62
    .line 63
    aget-object v4, v0, v3

    .line 64
    .line 65
    .line 66
    invoke-static {v4, p1}, Lorg/threeten/bp/zone/a;->g(Lorg/threeten/bp/s;Ljava/io/DataOutput;)V

    .line 67
    .line 68
    add-int/lit8 v3, v3, 0x1

    .line 69
    goto :goto_3

    .line 70
    .line 71
    :cond_3
    iget-object v0, p0, Lorg/threeten/bp/zone/b;->lastRules:[Lorg/threeten/bp/zone/e;

    .line 72
    array-length v0, v0

    .line 73
    .line 74
    .line 75
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 76
    .line 77
    iget-object v0, p0, Lorg/threeten/bp/zone/b;->lastRules:[Lorg/threeten/bp/zone/e;

    .line 78
    array-length v1, v0

    .line 79
    .line 80
    :goto_4
    if-ge v2, v1, :cond_4

    .line 81
    .line 82
    aget-object v3, v0, v2

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, p1}, Lorg/threeten/bp/zone/e;->d(Ljava/io/DataOutput;)V

    .line 86
    .line 87
    add-int/lit8 v2, v2, 0x1

    .line 88
    goto :goto_4

    .line 89
    :cond_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "StandardZoneRules[currentStandardOffset="

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Lorg/threeten/bp/zone/b;->standardOffsets:[Lorg/threeten/bp/s;

    .line 13
    array-length v2, v1

    .line 14
    .line 15
    add-int/lit8 v2, v2, -0x1

    .line 16
    .line 17
    aget-object v1, v1, v2

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, "]"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method
