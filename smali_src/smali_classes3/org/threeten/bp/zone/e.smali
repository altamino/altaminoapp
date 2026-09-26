.class public final Lorg/threeten/bp/zone/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/zone/e$b;
    }
.end annotation


# static fields
.field private static final SECS_PER_DAY:I = 0x15180

.field private static final serialVersionUID:J = 0x5f9acf201199524bL


# instance fields
.field private final adjustDays:I

.field private final dom:B

.field private final dow:Lorg/threeten/bp/d;

.field private final month:Lorg/threeten/bp/j;

.field private final offsetAfter:Lorg/threeten/bp/s;

.field private final offsetBefore:Lorg/threeten/bp/s;

.field private final standardOffset:Lorg/threeten/bp/s;

.field private final time:Lorg/threeten/bp/i;

.field private final timeDefinition:Lorg/threeten/bp/zone/e$b;


# direct methods
.method constructor <init>(Lorg/threeten/bp/j;ILorg/threeten/bp/d;Lorg/threeten/bp/i;ILorg/threeten/bp/zone/e$b;Lorg/threeten/bp/s;Lorg/threeten/bp/s;Lorg/threeten/bp/s;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lorg/threeten/bp/zone/e;->month:Lorg/threeten/bp/j;

    .line 6
    int-to-byte p1, p2

    .line 7
    .line 8
    iput-byte p1, p0, Lorg/threeten/bp/zone/e;->dom:B

    .line 9
    .line 10
    iput-object p3, p0, Lorg/threeten/bp/zone/e;->dow:Lorg/threeten/bp/d;

    .line 11
    .line 12
    iput-object p4, p0, Lorg/threeten/bp/zone/e;->time:Lorg/threeten/bp/i;

    .line 13
    .line 14
    iput p5, p0, Lorg/threeten/bp/zone/e;->adjustDays:I

    .line 15
    .line 16
    iput-object p6, p0, Lorg/threeten/bp/zone/e;->timeDefinition:Lorg/threeten/bp/zone/e$b;

    .line 17
    .line 18
    iput-object p7, p0, Lorg/threeten/bp/zone/e;->standardOffset:Lorg/threeten/bp/s;

    .line 19
    .line 20
    iput-object p8, p0, Lorg/threeten/bp/zone/e;->offsetBefore:Lorg/threeten/bp/s;

    .line 21
    .line 22
    iput-object p9, p0, Lorg/threeten/bp/zone/e;->offsetAfter:Lorg/threeten/bp/s;

    .line 23
    return-void
.end method

.method private a(Ljava/lang/StringBuilder;J)V
    .locals 2

    .line 1
    .line 2
    const-wide/16 v0, 0xa

    .line 3
    .line 4
    cmp-long v0, p2, v0

    .line 5
    .line 6
    if-gez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    return-void
.end method

.method static c(Ljava/io/DataInput;)Lorg/threeten/bp/zone/e;
    .locals 12
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
    ushr-int/lit8 v1, v0, 0x1c

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Lorg/threeten/bp/j;->r(I)Lorg/threeten/bp/j;

    .line 10
    move-result-object v3

    .line 11
    .line 12
    const/high16 v1, 0xfc00000

    .line 13
    and-int/2addr v1, v0

    .line 14
    .line 15
    ushr-int/lit8 v1, v1, 0x16

    .line 16
    .line 17
    add-int/lit8 v4, v1, -0x20

    .line 18
    .line 19
    const/high16 v1, 0x380000

    .line 20
    and-int/2addr v1, v0

    .line 21
    .line 22
    ushr-int/lit8 v1, v1, 0x13

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    const/4 v1, 0x0

    .line 26
    :goto_0
    move-object v5, v1

    .line 27
    goto :goto_1

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-static {v1}, Lorg/threeten/bp/d;->n(I)Lorg/threeten/bp/d;

    .line 31
    move-result-object v1

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :goto_1
    const v1, 0x7c000

    .line 36
    and-int/2addr v1, v0

    .line 37
    .line 38
    ushr-int/lit8 v1, v1, 0xe

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lorg/threeten/bp/zone/e$b;->values()[Lorg/threeten/bp/zone/e$b;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    and-int/lit16 v6, v0, 0x3000

    .line 45
    .line 46
    ushr-int/lit8 v6, v6, 0xc

    .line 47
    .line 48
    aget-object v8, v2, v6

    .line 49
    .line 50
    and-int/lit16 v2, v0, 0xff0

    .line 51
    .line 52
    ushr-int/lit8 v2, v2, 0x4

    .line 53
    .line 54
    and-int/lit8 v6, v0, 0xc

    .line 55
    .line 56
    ushr-int/lit8 v6, v6, 0x2

    .line 57
    const/4 v7, 0x3

    .line 58
    and-int/2addr v0, v7

    .line 59
    .line 60
    const/16 v9, 0x1f

    .line 61
    .line 62
    if-ne v1, v9, :cond_1

    .line 63
    .line 64
    .line 65
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    .line 66
    move-result v1

    .line 67
    goto :goto_2

    .line 68
    .line 69
    :cond_1
    mul-int/lit16 v1, v1, 0xe10

    .line 70
    .line 71
    :goto_2
    const/16 v10, 0xff

    .line 72
    .line 73
    if-ne v2, v10, :cond_2

    .line 74
    .line 75
    .line 76
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    .line 77
    move-result v2

    .line 78
    .line 79
    .line 80
    :goto_3
    invoke-static {v2}, Lorg/threeten/bp/s;->y(I)Lorg/threeten/bp/s;

    .line 81
    move-result-object v2

    .line 82
    move-object v10, v2

    .line 83
    goto :goto_4

    .line 84
    .line 85
    :cond_2
    add-int/lit8 v2, v2, -0x80

    .line 86
    .line 87
    mul-int/lit16 v2, v2, 0x384

    .line 88
    goto :goto_3

    .line 89
    .line 90
    :goto_4
    if-ne v6, v7, :cond_3

    .line 91
    .line 92
    .line 93
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    .line 94
    move-result v2

    .line 95
    .line 96
    .line 97
    :goto_5
    invoke-static {v2}, Lorg/threeten/bp/s;->y(I)Lorg/threeten/bp/s;

    .line 98
    move-result-object v2

    .line 99
    move-object v11, v2

    .line 100
    goto :goto_6

    .line 101
    .line 102
    .line 103
    :cond_3
    invoke-virtual {v10}, Lorg/threeten/bp/s;->v()I

    .line 104
    move-result v2

    .line 105
    .line 106
    mul-int/lit16 v6, v6, 0x708

    .line 107
    add-int/2addr v2, v6

    .line 108
    goto :goto_5

    .line 109
    .line 110
    :goto_6
    if-ne v0, v7, :cond_4

    .line 111
    .line 112
    .line 113
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    .line 114
    move-result p0

    .line 115
    .line 116
    .line 117
    :goto_7
    invoke-static {p0}, Lorg/threeten/bp/s;->y(I)Lorg/threeten/bp/s;

    .line 118
    move-result-object p0

    .line 119
    goto :goto_8

    .line 120
    .line 121
    .line 122
    :cond_4
    invoke-virtual {v10}, Lorg/threeten/bp/s;->v()I

    .line 123
    move-result p0

    .line 124
    .line 125
    mul-int/lit16 v0, v0, 0x708

    .line 126
    add-int/2addr p0, v0

    .line 127
    goto :goto_7

    .line 128
    .line 129
    :goto_8
    const/16 v0, -0x1c

    .line 130
    .line 131
    if-lt v4, v0, :cond_5

    .line 132
    .line 133
    if-gt v4, v9, :cond_5

    .line 134
    .line 135
    if-eqz v4, :cond_5

    .line 136
    .line 137
    .line 138
    const v0, 0x15180

    .line 139
    .line 140
    .line 141
    invoke-static {v1, v0}, Lra/d;->f(II)I

    .line 142
    move-result v2

    .line 143
    int-to-long v6, v2

    .line 144
    .line 145
    .line 146
    invoke-static {v6, v7}, Lorg/threeten/bp/i;->y(J)Lorg/threeten/bp/i;

    .line 147
    move-result-object v6

    .line 148
    .line 149
    .line 150
    invoke-static {v1, v0}, Lra/d;->d(II)I

    .line 151
    move-result v7

    .line 152
    .line 153
    new-instance v0, Lorg/threeten/bp/zone/e;

    .line 154
    move-object v2, v0

    .line 155
    move-object v9, v10

    .line 156
    move-object v10, v11

    .line 157
    move-object v11, p0

    .line 158
    .line 159
    .line 160
    invoke-direct/range {v2 .. v11}, Lorg/threeten/bp/zone/e;-><init>(Lorg/threeten/bp/j;ILorg/threeten/bp/d;Lorg/threeten/bp/i;ILorg/threeten/bp/zone/e$b;Lorg/threeten/bp/s;Lorg/threeten/bp/s;Lorg/threeten/bp/s;)V

    .line 161
    return-object v0

    .line 162
    .line 163
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 164
    .line 165
    const-string v0, "Day of month indicator must be between -28 and 31 inclusive excluding zero"

    .line 166
    .line 167
    .line 168
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 169
    throw p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/zone/a;

    .line 3
    const/4 v1, 0x3

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/zone/a;-><init>(BLjava/lang/Object;)V

    .line 7
    return-object v0
.end method


# virtual methods
.method public b(I)Lorg/threeten/bp/zone/d;
    .locals 4

    .line 1
    .line 2
    iget-byte v0, p0, Lorg/threeten/bp/zone/e;->dom:B

    .line 3
    .line 4
    if-gez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lorg/threeten/bp/zone/e;->month:Lorg/threeten/bp/j;

    .line 7
    .line 8
    sget-object v1, Lorg/threeten/bp/chrono/m;->INSTANCE:Lorg/threeten/bp/chrono/m;

    .line 9
    int-to-long v2, p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2, v3}, Lorg/threeten/bp/chrono/m;->u(J)Z

    .line 13
    move-result v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lorg/threeten/bp/j;->o(Z)I

    .line 17
    move-result v1

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    iget-byte v2, p0, Lorg/threeten/bp/zone/e;->dom:B

    .line 22
    add-int/2addr v1, v2

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v0, v1}, Lorg/threeten/bp/g;->R(ILorg/threeten/bp/j;I)Lorg/threeten/bp/g;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    iget-object v0, p0, Lorg/threeten/bp/zone/e;->dow:Lorg/threeten/bp/d;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lorg/threeten/bp/temporal/g;->b(Lorg/threeten/bp/d;)Lorg/threeten/bp/temporal/f;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lorg/threeten/bp/g;->b0(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/g;

    .line 38
    move-result-object p1

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_0
    iget-object v1, p0, Lorg/threeten/bp/zone/e;->month:Lorg/threeten/bp/j;

    .line 42
    .line 43
    .line 44
    invoke-static {p1, v1, v0}, Lorg/threeten/bp/g;->R(ILorg/threeten/bp/j;I)Lorg/threeten/bp/g;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    iget-object v0, p0, Lorg/threeten/bp/zone/e;->dow:Lorg/threeten/bp/d;

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lorg/threeten/bp/temporal/g;->a(Lorg/threeten/bp/d;)Lorg/threeten/bp/temporal/f;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lorg/threeten/bp/g;->b0(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/g;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    :cond_1
    :goto_0
    iget v0, p0, Lorg/threeten/bp/zone/e;->adjustDays:I

    .line 60
    int-to-long v0, v0

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0, v1}, Lorg/threeten/bp/g;->V(J)Lorg/threeten/bp/g;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    iget-object v0, p0, Lorg/threeten/bp/zone/e;->time:Lorg/threeten/bp/i;

    .line 67
    .line 68
    .line 69
    invoke-static {p1, v0}, Lorg/threeten/bp/h;->I(Lorg/threeten/bp/g;Lorg/threeten/bp/i;)Lorg/threeten/bp/h;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    iget-object v0, p0, Lorg/threeten/bp/zone/e;->timeDefinition:Lorg/threeten/bp/zone/e$b;

    .line 73
    .line 74
    iget-object v1, p0, Lorg/threeten/bp/zone/e;->standardOffset:Lorg/threeten/bp/s;

    .line 75
    .line 76
    iget-object v2, p0, Lorg/threeten/bp/zone/e;->offsetBefore:Lorg/threeten/bp/s;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p1, v1, v2}, Lorg/threeten/bp/zone/e$b;->a(Lorg/threeten/bp/h;Lorg/threeten/bp/s;Lorg/threeten/bp/s;)Lorg/threeten/bp/h;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    new-instance v0, Lorg/threeten/bp/zone/d;

    .line 83
    .line 84
    iget-object v1, p0, Lorg/threeten/bp/zone/e;->offsetBefore:Lorg/threeten/bp/s;

    .line 85
    .line 86
    iget-object v2, p0, Lorg/threeten/bp/zone/e;->offsetAfter:Lorg/threeten/bp/s;

    .line 87
    .line 88
    .line 89
    invoke-direct {v0, p1, v1, v2}, Lorg/threeten/bp/zone/d;-><init>(Lorg/threeten/bp/h;Lorg/threeten/bp/s;Lorg/threeten/bp/s;)V

    .line 90
    return-object v0
.end method

.method d(Ljava/io/DataOutput;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/zone/e;->time:Lorg/threeten/bp/i;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/threeten/bp/i;->H()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget v1, p0, Lorg/threeten/bp/zone/e;->adjustDays:I

    .line 9
    .line 10
    .line 11
    const v2, 0x15180

    .line 12
    mul-int/2addr v1, v2

    .line 13
    add-int/2addr v0, v1

    .line 14
    .line 15
    iget-object v1, p0, Lorg/threeten/bp/zone/e;->standardOffset:Lorg/threeten/bp/s;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lorg/threeten/bp/s;->v()I

    .line 19
    move-result v1

    .line 20
    .line 21
    iget-object v3, p0, Lorg/threeten/bp/zone/e;->offsetBefore:Lorg/threeten/bp/s;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Lorg/threeten/bp/s;->v()I

    .line 25
    move-result v3

    .line 26
    sub-int/2addr v3, v1

    .line 27
    .line 28
    iget-object v4, p0, Lorg/threeten/bp/zone/e;->offsetAfter:Lorg/threeten/bp/s;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4}, Lorg/threeten/bp/s;->v()I

    .line 32
    move-result v4

    .line 33
    sub-int/2addr v4, v1

    .line 34
    .line 35
    rem-int/lit16 v5, v0, 0xe10

    .line 36
    .line 37
    const/16 v6, 0x1f

    .line 38
    .line 39
    if-nez v5, :cond_1

    .line 40
    .line 41
    if-gt v0, v2, :cond_1

    .line 42
    .line 43
    if-ne v0, v2, :cond_0

    .line 44
    .line 45
    const/16 v2, 0x18

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_0
    iget-object v2, p0, Lorg/threeten/bp/zone/e;->time:Lorg/threeten/bp/i;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Lorg/threeten/bp/i;->s()I

    .line 52
    move-result v2

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    move v2, v6

    .line 55
    .line 56
    :goto_0
    rem-int/lit16 v5, v1, 0x384

    .line 57
    .line 58
    const/16 v7, 0xff

    .line 59
    .line 60
    if-nez v5, :cond_2

    .line 61
    .line 62
    div-int/lit16 v5, v1, 0x384

    .line 63
    .line 64
    add-int/lit16 v5, v5, 0x80

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    move v5, v7

    .line 67
    :goto_1
    const/4 v8, 0x3

    .line 68
    .line 69
    const/16 v9, 0x708

    .line 70
    .line 71
    const/16 v10, 0xe10

    .line 72
    .line 73
    if-eqz v3, :cond_4

    .line 74
    .line 75
    if-eq v3, v9, :cond_4

    .line 76
    .line 77
    if-ne v3, v10, :cond_3

    .line 78
    goto :goto_2

    .line 79
    :cond_3
    move v3, v8

    .line 80
    goto :goto_3

    .line 81
    :cond_4
    :goto_2
    div-int/2addr v3, v9

    .line 82
    .line 83
    :goto_3
    if-eqz v4, :cond_6

    .line 84
    .line 85
    if-eq v4, v9, :cond_6

    .line 86
    .line 87
    if-ne v4, v10, :cond_5

    .line 88
    goto :goto_4

    .line 89
    :cond_5
    move v4, v8

    .line 90
    goto :goto_5

    .line 91
    :cond_6
    :goto_4
    div-int/2addr v4, v9

    .line 92
    .line 93
    :goto_5
    iget-object v9, p0, Lorg/threeten/bp/zone/e;->dow:Lorg/threeten/bp/d;

    .line 94
    .line 95
    if-nez v9, :cond_7

    .line 96
    const/4 v9, 0x0

    .line 97
    goto :goto_6

    .line 98
    .line 99
    .line 100
    :cond_7
    invoke-virtual {v9}, Lorg/threeten/bp/d;->getValue()I

    .line 101
    move-result v9

    .line 102
    .line 103
    :goto_6
    iget-object v10, p0, Lorg/threeten/bp/zone/e;->month:Lorg/threeten/bp/j;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v10}, Lorg/threeten/bp/j;->getValue()I

    .line 107
    move-result v10

    .line 108
    .line 109
    shl-int/lit8 v10, v10, 0x1c

    .line 110
    .line 111
    iget-byte v11, p0, Lorg/threeten/bp/zone/e;->dom:B

    .line 112
    .line 113
    add-int/lit8 v11, v11, 0x20

    .line 114
    .line 115
    shl-int/lit8 v11, v11, 0x16

    .line 116
    add-int/2addr v10, v11

    .line 117
    .line 118
    shl-int/lit8 v9, v9, 0x13

    .line 119
    add-int/2addr v10, v9

    .line 120
    .line 121
    shl-int/lit8 v9, v2, 0xe

    .line 122
    add-int/2addr v10, v9

    .line 123
    .line 124
    iget-object v9, p0, Lorg/threeten/bp/zone/e;->timeDefinition:Lorg/threeten/bp/zone/e$b;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 128
    move-result v9

    .line 129
    .line 130
    shl-int/lit8 v9, v9, 0xc

    .line 131
    add-int/2addr v10, v9

    .line 132
    .line 133
    shl-int/lit8 v9, v5, 0x4

    .line 134
    add-int/2addr v10, v9

    .line 135
    .line 136
    shl-int/lit8 v9, v3, 0x2

    .line 137
    add-int/2addr v10, v9

    .line 138
    add-int/2addr v10, v4

    .line 139
    .line 140
    .line 141
    invoke-interface {p1, v10}, Ljava/io/DataOutput;->writeInt(I)V

    .line 142
    .line 143
    if-ne v2, v6, :cond_8

    .line 144
    .line 145
    .line 146
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 147
    .line 148
    :cond_8
    if-ne v5, v7, :cond_9

    .line 149
    .line 150
    .line 151
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 152
    .line 153
    :cond_9
    if-ne v3, v8, :cond_a

    .line 154
    .line 155
    iget-object v0, p0, Lorg/threeten/bp/zone/e;->offsetBefore:Lorg/threeten/bp/s;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Lorg/threeten/bp/s;->v()I

    .line 159
    move-result v0

    .line 160
    .line 161
    .line 162
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 163
    .line 164
    :cond_a
    if-ne v4, v8, :cond_b

    .line 165
    .line 166
    iget-object v0, p0, Lorg/threeten/bp/zone/e;->offsetAfter:Lorg/threeten/bp/s;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Lorg/threeten/bp/s;->v()I

    .line 170
    move-result v0

    .line 171
    .line 172
    .line 173
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 174
    :cond_b
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

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
    instance-of v1, p1, Lorg/threeten/bp/zone/e;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    check-cast p1, Lorg/threeten/bp/zone/e;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/threeten/bp/zone/e;->month:Lorg/threeten/bp/j;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/threeten/bp/zone/e;->month:Lorg/threeten/bp/j;

    .line 16
    .line 17
    if-ne v1, v3, :cond_1

    .line 18
    .line 19
    iget-byte v1, p0, Lorg/threeten/bp/zone/e;->dom:B

    .line 20
    .line 21
    iget-byte v3, p1, Lorg/threeten/bp/zone/e;->dom:B

    .line 22
    .line 23
    if-ne v1, v3, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Lorg/threeten/bp/zone/e;->dow:Lorg/threeten/bp/d;

    .line 26
    .line 27
    iget-object v3, p1, Lorg/threeten/bp/zone/e;->dow:Lorg/threeten/bp/d;

    .line 28
    .line 29
    if-ne v1, v3, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lorg/threeten/bp/zone/e;->timeDefinition:Lorg/threeten/bp/zone/e$b;

    .line 32
    .line 33
    iget-object v3, p1, Lorg/threeten/bp/zone/e;->timeDefinition:Lorg/threeten/bp/zone/e$b;

    .line 34
    .line 35
    if-ne v1, v3, :cond_1

    .line 36
    .line 37
    iget v1, p0, Lorg/threeten/bp/zone/e;->adjustDays:I

    .line 38
    .line 39
    iget v3, p1, Lorg/threeten/bp/zone/e;->adjustDays:I

    .line 40
    .line 41
    if-ne v1, v3, :cond_1

    .line 42
    .line 43
    iget-object v1, p0, Lorg/threeten/bp/zone/e;->time:Lorg/threeten/bp/i;

    .line 44
    .line 45
    iget-object v3, p1, Lorg/threeten/bp/zone/e;->time:Lorg/threeten/bp/i;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v3}, Lorg/threeten/bp/i;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v1

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    iget-object v1, p0, Lorg/threeten/bp/zone/e;->standardOffset:Lorg/threeten/bp/s;

    .line 54
    .line 55
    iget-object v3, p1, Lorg/threeten/bp/zone/e;->standardOffset:Lorg/threeten/bp/s;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v3}, Lorg/threeten/bp/s;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v1

    .line 60
    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    iget-object v1, p0, Lorg/threeten/bp/zone/e;->offsetBefore:Lorg/threeten/bp/s;

    .line 64
    .line 65
    iget-object v3, p1, Lorg/threeten/bp/zone/e;->offsetBefore:Lorg/threeten/bp/s;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v3}, Lorg/threeten/bp/s;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result v1

    .line 70
    .line 71
    if-eqz v1, :cond_1

    .line 72
    .line 73
    iget-object v1, p0, Lorg/threeten/bp/zone/e;->offsetAfter:Lorg/threeten/bp/s;

    .line 74
    .line 75
    iget-object p1, p1, Lorg/threeten/bp/zone/e;->offsetAfter:Lorg/threeten/bp/s;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, p1}, Lorg/threeten/bp/s;->equals(Ljava/lang/Object;)Z

    .line 79
    move-result p1

    .line 80
    .line 81
    if-eqz p1, :cond_1

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    move v0, v2

    .line 84
    :goto_0
    return v0

    .line 85
    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/zone/e;->time:Lorg/threeten/bp/i;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/threeten/bp/i;->H()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget v1, p0, Lorg/threeten/bp/zone/e;->adjustDays:I

    .line 9
    add-int/2addr v0, v1

    .line 10
    .line 11
    shl-int/lit8 v0, v0, 0xf

    .line 12
    .line 13
    iget-object v1, p0, Lorg/threeten/bp/zone/e;->month:Lorg/threeten/bp/j;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 17
    move-result v1

    .line 18
    .line 19
    shl-int/lit8 v1, v1, 0xb

    .line 20
    add-int/2addr v0, v1

    .line 21
    .line 22
    iget-byte v1, p0, Lorg/threeten/bp/zone/e;->dom:B

    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x20

    .line 25
    .line 26
    shl-int/lit8 v1, v1, 0x5

    .line 27
    add-int/2addr v0, v1

    .line 28
    .line 29
    iget-object v1, p0, Lorg/threeten/bp/zone/e;->dow:Lorg/threeten/bp/d;

    .line 30
    .line 31
    if-nez v1, :cond_0

    .line 32
    const/4 v1, 0x7

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 37
    move-result v1

    .line 38
    .line 39
    :goto_0
    shl-int/lit8 v1, v1, 0x2

    .line 40
    add-int/2addr v0, v1

    .line 41
    .line 42
    iget-object v1, p0, Lorg/threeten/bp/zone/e;->timeDefinition:Lorg/threeten/bp/zone/e$b;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 46
    move-result v1

    .line 47
    add-int/2addr v0, v1

    .line 48
    .line 49
    iget-object v1, p0, Lorg/threeten/bp/zone/e;->standardOffset:Lorg/threeten/bp/s;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lorg/threeten/bp/s;->hashCode()I

    .line 53
    move-result v1

    .line 54
    xor-int/2addr v0, v1

    .line 55
    .line 56
    iget-object v1, p0, Lorg/threeten/bp/zone/e;->offsetBefore:Lorg/threeten/bp/s;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lorg/threeten/bp/s;->hashCode()I

    .line 60
    move-result v1

    .line 61
    xor-int/2addr v0, v1

    .line 62
    .line 63
    iget-object v1, p0, Lorg/threeten/bp/zone/e;->offsetAfter:Lorg/threeten/bp/s;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Lorg/threeten/bp/s;->hashCode()I

    .line 67
    move-result v1

    .line 68
    xor-int/2addr v0, v1

    .line 69
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
    const-string v1, "TransitionRule["

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Lorg/threeten/bp/zone/e;->offsetBefore:Lorg/threeten/bp/s;

    .line 13
    .line 14
    iget-object v2, p0, Lorg/threeten/bp/zone/e;->offsetAfter:Lorg/threeten/bp/s;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lorg/threeten/bp/s;->t(Lorg/threeten/bp/s;)I

    .line 18
    move-result v1

    .line 19
    .line 20
    if-lez v1, :cond_0

    .line 21
    .line 22
    const-string v1, "Gap "

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    const-string v1, "Overlap "

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    iget-object v1, p0, Lorg/threeten/bp/zone/e;->offsetBefore:Lorg/threeten/bp/s;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v1, " to "

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    iget-object v1, p0, Lorg/threeten/bp/zone/e;->offsetAfter:Lorg/threeten/bp/s;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v1, ", "

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    iget-object v1, p0, Lorg/threeten/bp/zone/e;->dow:Lorg/threeten/bp/d;

    .line 51
    .line 52
    const/16 v2, 0x20

    .line 53
    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    iget-byte v3, p0, Lorg/threeten/bp/zone/e;->dom:B

    .line 57
    const/4 v4, -0x1

    .line 58
    .line 59
    if-ne v3, v4, :cond_1

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v1, " on or before last day of "

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    iget-object v1, p0, Lorg/threeten/bp/zone/e;->month:Lorg/threeten/bp/j;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    goto :goto_1

    .line 82
    .line 83
    :cond_1
    if-gez v3, :cond_2

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v1, " on or before last day minus "

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    iget-byte v1, p0, Lorg/threeten/bp/zone/e;->dom:B

    .line 98
    neg-int v1, v1

    .line 99
    .line 100
    add-int/lit8 v1, v1, -0x1

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v1, " of "

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    iget-object v1, p0, Lorg/threeten/bp/zone/e;->month:Lorg/threeten/bp/j;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 114
    move-result-object v1

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    goto :goto_1

    .line 119
    .line 120
    .line 121
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 122
    move-result-object v1

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string v1, " on or after "

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    iget-object v1, p0, Lorg/threeten/bp/zone/e;->month:Lorg/threeten/bp/j;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 136
    move-result-object v1

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    iget-byte v1, p0, Lorg/threeten/bp/zone/e;->dom:B

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    goto :goto_1

    .line 149
    .line 150
    :cond_3
    iget-object v1, p0, Lorg/threeten/bp/zone/e;->month:Lorg/threeten/bp/j;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 154
    move-result-object v1

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    iget-byte v1, p0, Lorg/threeten/bp/zone/e;->dom:B

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    :goto_1
    const-string v1, " at "

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    iget v1, p0, Lorg/threeten/bp/zone/e;->adjustDays:I

    .line 173
    .line 174
    if-nez v1, :cond_4

    .line 175
    .line 176
    iget-object v1, p0, Lorg/threeten/bp/zone/e;->time:Lorg/threeten/bp/i;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    goto :goto_2

    .line 181
    .line 182
    :cond_4
    iget-object v1, p0, Lorg/threeten/bp/zone/e;->time:Lorg/threeten/bp/i;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1}, Lorg/threeten/bp/i;->H()I

    .line 186
    move-result v1

    .line 187
    .line 188
    const/16 v2, 0x3c

    .line 189
    div-int/2addr v1, v2

    .line 190
    .line 191
    iget v3, p0, Lorg/threeten/bp/zone/e;->adjustDays:I

    .line 192
    .line 193
    mul-int/lit16 v3, v3, 0x5a0

    .line 194
    add-int/2addr v1, v3

    .line 195
    int-to-long v3, v1

    .line 196
    .line 197
    const-wide/16 v5, 0x3c

    .line 198
    .line 199
    .line 200
    invoke-static {v3, v4, v5, v6}, Lra/d;->e(JJ)J

    .line 201
    move-result-wide v5

    .line 202
    .line 203
    .line 204
    invoke-direct {p0, v0, v5, v6}, Lorg/threeten/bp/zone/e;->a(Ljava/lang/StringBuilder;J)V

    .line 205
    .line 206
    const/16 v1, 0x3a

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-static {v3, v4, v2}, Lra/d;->g(JI)I

    .line 213
    move-result v1

    .line 214
    int-to-long v1, v1

    .line 215
    .line 216
    .line 217
    invoke-direct {p0, v0, v1, v2}, Lorg/threeten/bp/zone/e;->a(Ljava/lang/StringBuilder;J)V

    .line 218
    .line 219
    :goto_2
    const-string v1, " "

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    iget-object v1, p0, Lorg/threeten/bp/zone/e;->timeDefinition:Lorg/threeten/bp/zone/e$b;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    const-string v1, ", standard offset "

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    iget-object v1, p0, Lorg/threeten/bp/zone/e;->standardOffset:Lorg/threeten/bp/s;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    const/16 v1, 0x5d

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    move-result-object v0

    .line 247
    return-object v0
.end method
