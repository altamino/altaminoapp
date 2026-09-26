.class public final Lorg/threeten/bp/chrono/s;
.super Lorg/threeten/bp/chrono/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/threeten/bp/chrono/a<",
        "Lorg/threeten/bp/chrono/s;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x120bd9be64a3de1eL


# instance fields
.field private final isoDate:Lorg/threeten/bp/g;


# direct methods
.method constructor <init>(Lorg/threeten/bp/g;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/threeten/bp/chrono/a;-><init>()V

    .line 4
    .line 5
    const-string v0, "date"

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p1, p0, Lorg/threeten/bp/chrono/s;->isoDate:Lorg/threeten/bp/g;

    .line 11
    return-void
.end method

.method private D()J
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/threeten/bp/chrono/s;->E()I

    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    .line 7
    const-wide/16 v2, 0xc

    .line 8
    mul-long/2addr v0, v2

    .line 9
    .line 10
    iget-object v2, p0, Lorg/threeten/bp/chrono/s;->isoDate:Lorg/threeten/bp/g;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2}, Lorg/threeten/bp/g;->H()I

    .line 14
    move-result v2

    .line 15
    int-to-long v2, v2

    .line 16
    add-long/2addr v0, v2

    .line 17
    .line 18
    const-wide/16 v2, 0x1

    .line 19
    sub-long/2addr v0, v2

    .line 20
    return-wide v0
.end method

.method private E()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/chrono/s;->isoDate:Lorg/threeten/bp/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/threeten/bp/g;->J()I

    .line 6
    move-result v0

    .line 7
    .line 8
    add-int/lit16 v0, v0, -0x777

    .line 9
    return v0
.end method

.method static K(Ljava/io/DataInput;)Lorg/threeten/bp/chrono/b;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
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
    .line 7
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    .line 12
    move-result p0

    .line 13
    .line 14
    sget-object v2, Lorg/threeten/bp/chrono/r;->INSTANCE:Lorg/threeten/bp/chrono/r;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v0, v1, p0}, Lorg/threeten/bp/chrono/r;->s(III)Lorg/threeten/bp/chrono/s;

    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method private L(Lorg/threeten/bp/g;)Lorg/threeten/bp/chrono/s;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/chrono/s;->isoDate:Lorg/threeten/bp/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lorg/threeten/bp/g;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    move-object v0, p0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    new-instance v0, Lorg/threeten/bp/chrono/s;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p1}, Lorg/threeten/bp/chrono/s;-><init>(Lorg/threeten/bp/g;)V

    .line 16
    :goto_0
    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/chrono/u;

    .line 3
    const/4 v1, 0x5

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/chrono/u;-><init>(BLjava/lang/Object;)V

    .line 7
    return-object v0
.end method


# virtual methods
.method bridge synthetic A(J)Lorg/threeten/bp/chrono/a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/s;->J(J)Lorg/threeten/bp/chrono/s;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public B()Lorg/threeten/bp/chrono/r;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/chrono/r;->INSTANCE:Lorg/threeten/bp/chrono/r;

    .line 3
    return-object v0
.end method

.method public C()Lorg/threeten/bp/chrono/t;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lorg/threeten/bp/chrono/b;->q()Lorg/threeten/bp/chrono/i;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Lorg/threeten/bp/chrono/t;

    .line 7
    return-object v0
.end method

.method public F(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/s;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/b;->s(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/b;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Lorg/threeten/bp/chrono/s;

    .line 7
    return-object p1
.end method

.method public G(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/s;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/a;->x(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/a;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Lorg/threeten/bp/chrono/s;

    .line 7
    return-object p1
.end method

.method H(J)Lorg/threeten/bp/chrono/s;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/chrono/s;->isoDate:Lorg/threeten/bp/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/g;->V(J)Lorg/threeten/bp/g;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lorg/threeten/bp/chrono/s;->L(Lorg/threeten/bp/g;)Lorg/threeten/bp/chrono/s;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method I(J)Lorg/threeten/bp/chrono/s;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/chrono/s;->isoDate:Lorg/threeten/bp/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/g;->W(J)Lorg/threeten/bp/g;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lorg/threeten/bp/chrono/s;->L(Lorg/threeten/bp/g;)Lorg/threeten/bp/chrono/s;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method J(J)Lorg/threeten/bp/chrono/s;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/chrono/s;->isoDate:Lorg/threeten/bp/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/g;->Y(J)Lorg/threeten/bp/g;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lorg/threeten/bp/chrono/s;->L(Lorg/threeten/bp/g;)Lorg/threeten/bp/chrono/s;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public M(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/s;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/b;->v(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/b;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Lorg/threeten/bp/chrono/s;

    .line 7
    return-object p1
.end method

.method public N(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/chrono/s;
    .locals 7

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-eqz v0, :cond_7

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Lorg/threeten/bp/temporal/a;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lorg/threeten/bp/chrono/s;->k(Lorg/threeten/bp/temporal/h;)J

    .line 11
    move-result-wide v1

    .line 12
    .line 13
    cmp-long v1, v1, p2

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    return-object p0

    .line 17
    .line 18
    :cond_0
    sget-object v1, Lorg/threeten/bp/chrono/s$a;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 22
    move-result v2

    .line 23
    .line 24
    aget v2, v1, v2

    .line 25
    const/4 v3, 0x7

    .line 26
    const/4 v4, 0x6

    .line 27
    const/4 v5, 0x4

    .line 28
    .line 29
    if-eq v2, v5, :cond_2

    .line 30
    const/4 v6, 0x5

    .line 31
    .line 32
    if-eq v2, v6, :cond_1

    .line 33
    .line 34
    if-eq v2, v4, :cond_2

    .line 35
    .line 36
    if-eq v2, v3, :cond_2

    .line 37
    goto :goto_0

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/s;->B()Lorg/threeten/bp/chrono/r;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lorg/threeten/bp/chrono/r;->v(Lorg/threeten/bp/temporal/a;)Lorg/threeten/bp/temporal/m;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2, p3, v0}, Lorg/threeten/bp/temporal/m;->b(JLorg/threeten/bp/temporal/h;)J

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lorg/threeten/bp/chrono/s;->D()J

    .line 52
    move-result-wide v0

    .line 53
    sub-long/2addr p2, v0

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/chrono/s;->I(J)Lorg/threeten/bp/chrono/s;

    .line 57
    move-result-object p1

    .line 58
    return-object p1

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/s;->B()Lorg/threeten/bp/chrono/r;

    .line 62
    move-result-object v2

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v0}, Lorg/threeten/bp/chrono/r;->v(Lorg/threeten/bp/temporal/a;)Lorg/threeten/bp/temporal/m;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, p2, p3, v0}, Lorg/threeten/bp/temporal/m;->a(JLorg/threeten/bp/temporal/h;)I

    .line 70
    move-result v2

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 74
    move-result v0

    .line 75
    .line 76
    aget v0, v1, v0

    .line 77
    .line 78
    if-eq v0, v5, :cond_5

    .line 79
    .line 80
    if-eq v0, v4, :cond_4

    .line 81
    .line 82
    if-eq v0, v3, :cond_3

    .line 83
    .line 84
    :goto_0
    iget-object v0, p0, Lorg/threeten/bp/chrono/s;->isoDate:Lorg/threeten/bp/g;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/g;->c0(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/g;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    .line 91
    invoke-direct {p0, p1}, Lorg/threeten/bp/chrono/s;->L(Lorg/threeten/bp/g;)Lorg/threeten/bp/chrono/s;

    .line 92
    move-result-object p1

    .line 93
    return-object p1

    .line 94
    .line 95
    :cond_3
    iget-object p1, p0, Lorg/threeten/bp/chrono/s;->isoDate:Lorg/threeten/bp/g;

    .line 96
    .line 97
    .line 98
    invoke-direct {p0}, Lorg/threeten/bp/chrono/s;->E()I

    .line 99
    move-result p2

    .line 100
    .line 101
    rsub-int p2, p2, 0x778

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2}, Lorg/threeten/bp/g;->g0(I)Lorg/threeten/bp/g;

    .line 105
    move-result-object p1

    .line 106
    .line 107
    .line 108
    invoke-direct {p0, p1}, Lorg/threeten/bp/chrono/s;->L(Lorg/threeten/bp/g;)Lorg/threeten/bp/chrono/s;

    .line 109
    move-result-object p1

    .line 110
    return-object p1

    .line 111
    .line 112
    :cond_4
    iget-object p1, p0, Lorg/threeten/bp/chrono/s;->isoDate:Lorg/threeten/bp/g;

    .line 113
    .line 114
    add-int/lit16 v2, v2, 0x777

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v2}, Lorg/threeten/bp/g;->g0(I)Lorg/threeten/bp/g;

    .line 118
    move-result-object p1

    .line 119
    .line 120
    .line 121
    invoke-direct {p0, p1}, Lorg/threeten/bp/chrono/s;->L(Lorg/threeten/bp/g;)Lorg/threeten/bp/chrono/s;

    .line 122
    move-result-object p1

    .line 123
    return-object p1

    .line 124
    .line 125
    :cond_5
    iget-object p1, p0, Lorg/threeten/bp/chrono/s;->isoDate:Lorg/threeten/bp/g;

    .line 126
    .line 127
    .line 128
    invoke-direct {p0}, Lorg/threeten/bp/chrono/s;->E()I

    .line 129
    move-result p2

    .line 130
    const/4 p3, 0x1

    .line 131
    .line 132
    if-lt p2, p3, :cond_6

    .line 133
    .line 134
    add-int/lit16 v2, v2, 0x777

    .line 135
    goto :goto_1

    .line 136
    .line 137
    :cond_6
    rsub-int v2, v2, 0x778

    .line 138
    .line 139
    .line 140
    :goto_1
    invoke-virtual {p1, v2}, Lorg/threeten/bp/g;->g0(I)Lorg/threeten/bp/g;

    .line 141
    move-result-object p1

    .line 142
    .line 143
    .line 144
    invoke-direct {p0, p1}, Lorg/threeten/bp/chrono/s;->L(Lorg/threeten/bp/g;)Lorg/threeten/bp/chrono/s;

    .line 145
    move-result-object p1

    .line 146
    return-object p1

    .line 147
    .line 148
    .line 149
    :cond_7
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/h;->b(Lorg/threeten/bp/temporal/d;J)Lorg/threeten/bp/temporal/d;

    .line 150
    move-result-object p1

    .line 151
    .line 152
    check-cast p1, Lorg/threeten/bp/chrono/s;

    .line 153
    return-object p1
.end method

.method O(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->YEAR:Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lra/c;->f(Lorg/threeten/bp/temporal/h;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 10
    .line 11
    sget-object v0, Lorg/threeten/bp/temporal/a;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/a;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lra/c;->f(Lorg/threeten/bp/temporal/h;)I

    .line 15
    move-result v0

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 19
    .line 20
    sget-object v0, Lorg/threeten/bp/temporal/a;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/a;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lra/c;->f(Lorg/threeten/bp/temporal/h;)I

    .line 24
    move-result v0

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 28
    return-void
.end method

.method public c(Lorg/threeten/bp/temporal/h;)Lorg/threeten/bp/temporal/m;
    .locals 4

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/b;->i(Lorg/threeten/bp/temporal/h;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    move-object v0, p1

    .line 12
    .line 13
    check-cast v0, Lorg/threeten/bp/temporal/a;

    .line 14
    .line 15
    sget-object v1, Lorg/threeten/bp/chrono/s$a;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 19
    move-result v2

    .line 20
    .line 21
    aget v1, v1, v2

    .line 22
    const/4 v2, 0x1

    .line 23
    .line 24
    if-eq v1, v2, :cond_2

    .line 25
    const/4 v2, 0x2

    .line 26
    .line 27
    if-eq v1, v2, :cond_2

    .line 28
    const/4 v2, 0x3

    .line 29
    .line 30
    if-eq v1, v2, :cond_2

    .line 31
    const/4 p1, 0x4

    .line 32
    .line 33
    if-eq v1, p1, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/s;->B()Lorg/threeten/bp/chrono/r;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lorg/threeten/bp/chrono/r;->v(Lorg/threeten/bp/temporal/a;)Lorg/threeten/bp/temporal/m;

    .line 41
    move-result-object p1

    .line 42
    return-object p1

    .line 43
    .line 44
    :cond_0
    sget-object p1, Lorg/threeten/bp/temporal/a;->YEAR:Lorg/threeten/bp/temporal/a;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lorg/threeten/bp/temporal/a;->d()Lorg/threeten/bp/temporal/m;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lorg/threeten/bp/chrono/s;->E()I

    .line 52
    move-result v0

    .line 53
    .line 54
    if-gtz v0, :cond_1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lorg/threeten/bp/temporal/m;->d()J

    .line 58
    move-result-wide v0

    .line 59
    neg-long v0, v0

    .line 60
    .line 61
    const-wide/16 v2, 0x778

    .line 62
    add-long/2addr v0, v2

    .line 63
    goto :goto_0

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-virtual {p1}, Lorg/threeten/bp/temporal/m;->c()J

    .line 67
    move-result-wide v0

    .line 68
    .line 69
    const-wide/16 v2, 0x777

    .line 70
    sub-long/2addr v0, v2

    .line 71
    .line 72
    :goto_0
    const-wide/16 v2, 0x1

    .line 73
    .line 74
    .line 75
    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 76
    move-result-object p1

    .line 77
    return-object p1

    .line 78
    .line 79
    :cond_2
    iget-object v0, p0, Lorg/threeten/bp/chrono/s;->isoDate:Lorg/threeten/bp/g;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p1}, Lorg/threeten/bp/g;->c(Lorg/threeten/bp/temporal/h;)Lorg/threeten/bp/temporal/m;

    .line 83
    move-result-object p1

    .line 84
    return-object p1

    .line 85
    .line 86
    :cond_3
    new-instance v0, Lorg/threeten/bp/temporal/l;

    .line 87
    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    const-string v2, "Unsupported field: "

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    .line 106
    invoke-direct {v0, p1}, Lorg/threeten/bp/temporal/l;-><init>(Ljava/lang/String;)V

    .line 107
    throw v0

    .line 108
    .line 109
    .line 110
    :cond_4
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->f(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/temporal/m;

    .line 111
    move-result-object p1

    .line 112
    return-object p1
.end method

.method public bridge synthetic e(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/s;->F(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/s;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    .line 6
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/chrono/s;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    check-cast p1, Lorg/threeten/bp/chrono/s;

    .line 11
    .line 12
    iget-object v0, p0, Lorg/threeten/bp/chrono/s;->isoDate:Lorg/threeten/bp/g;

    .line 13
    .line 14
    iget-object p1, p1, Lorg/threeten/bp/chrono/s;->isoDate:Lorg/threeten/bp/g;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lorg/threeten/bp/g;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    return p1
.end method

.method public bridge synthetic h(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/s;->N(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/chrono/s;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/s;->B()Lorg/threeten/bp/chrono/r;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/threeten/bp/chrono/r;->j()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 12
    move-result v0

    .line 13
    .line 14
    iget-object v1, p0, Lorg/threeten/bp/chrono/s;->isoDate:Lorg/threeten/bp/g;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lorg/threeten/bp/g;->hashCode()I

    .line 18
    move-result v1

    .line 19
    xor-int/2addr v0, v1

    .line 20
    return v0
.end method

.method public bridge synthetic j(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/s;->M(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/s;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public k(Lorg/threeten/bp/temporal/h;)J
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    sget-object v0, Lorg/threeten/bp/chrono/s$a;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 7
    move-object v1, p1

    .line 8
    .line 9
    check-cast v1, Lorg/threeten/bp/temporal/a;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 13
    move-result v1

    .line 14
    .line 15
    aget v0, v0, v1

    .line 16
    const/4 v1, 0x4

    .line 17
    const/4 v2, 0x1

    .line 18
    .line 19
    if-eq v0, v1, :cond_4

    .line 20
    const/4 v1, 0x5

    .line 21
    .line 22
    if-eq v0, v1, :cond_3

    .line 23
    const/4 v1, 0x6

    .line 24
    .line 25
    if-eq v0, v1, :cond_2

    .line 26
    const/4 v1, 0x7

    .line 27
    .line 28
    if-eq v0, v1, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lorg/threeten/bp/chrono/s;->isoDate:Lorg/threeten/bp/g;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lorg/threeten/bp/g;->k(Lorg/threeten/bp/temporal/h;)J

    .line 34
    move-result-wide v0

    .line 35
    return-wide v0

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-direct {p0}, Lorg/threeten/bp/chrono/s;->E()I

    .line 39
    move-result p1

    .line 40
    .line 41
    if-lt p1, v2, :cond_1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v2, 0x0

    .line 44
    :goto_0
    int-to-long v0, v2

    .line 45
    return-wide v0

    .line 46
    .line 47
    .line 48
    :cond_2
    invoke-direct {p0}, Lorg/threeten/bp/chrono/s;->E()I

    .line 49
    move-result p1

    .line 50
    int-to-long v0, p1

    .line 51
    return-wide v0

    .line 52
    .line 53
    .line 54
    :cond_3
    invoke-direct {p0}, Lorg/threeten/bp/chrono/s;->D()J

    .line 55
    move-result-wide v0

    .line 56
    return-wide v0

    .line 57
    .line 58
    .line 59
    :cond_4
    invoke-direct {p0}, Lorg/threeten/bp/chrono/s;->E()I

    .line 60
    move-result p1

    .line 61
    .line 62
    if-lt p1, v2, :cond_5

    .line 63
    goto :goto_1

    .line 64
    .line 65
    :cond_5
    rsub-int/lit8 p1, p1, 0x1

    .line 66
    :goto_1
    int-to-long v0, p1

    .line 67
    return-wide v0

    .line 68
    .line 69
    .line 70
    :cond_6
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->h(Lorg/threeten/bp/temporal/e;)J

    .line 71
    move-result-wide v0

    .line 72
    return-wide v0
.end method

.method public bridge synthetic l(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/s;->G(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/s;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final n(Lorg/threeten/bp/i;)Lorg/threeten/bp/chrono/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/i;",
            ")",
            "Lorg/threeten/bp/chrono/c<",
            "Lorg/threeten/bp/chrono/s;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/a;->n(Lorg/threeten/bp/i;)Lorg/threeten/bp/chrono/c;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic p()Lorg/threeten/bp/chrono/h;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/s;->B()Lorg/threeten/bp/chrono/r;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic q()Lorg/threeten/bp/chrono/i;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/s;->C()Lorg/threeten/bp/chrono/t;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic s(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/b;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/s;->F(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/s;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic t(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/b;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/s;->G(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/s;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public u()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/chrono/s;->isoDate:Lorg/threeten/bp/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/threeten/bp/g;->u()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public bridge synthetic v(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/b;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/s;->M(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/s;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic w(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/chrono/b;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/s;->N(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/chrono/s;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic x(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/s;->G(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/s;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method bridge synthetic y(J)Lorg/threeten/bp/chrono/a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/s;->H(J)Lorg/threeten/bp/chrono/s;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method bridge synthetic z(J)Lorg/threeten/bp/chrono/a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/s;->I(J)Lorg/threeten/bp/chrono/s;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
