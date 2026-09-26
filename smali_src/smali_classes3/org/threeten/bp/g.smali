.class public final Lorg/threeten/bp/g;
.super Lorg/threeten/bp/chrono/b;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final DAYS_0000_TO_1970:J = 0xafaa8L

.field private static final DAYS_PER_CYCLE:I = 0x23ab1

.field public static final FROM:Lorg/threeten/bp/temporal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/j<",
            "Lorg/threeten/bp/g;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX:Lorg/threeten/bp/g;

.field public static final MIN:Lorg/threeten/bp/g;

.field private static final serialVersionUID:J = 0x28d617b1d8f33f1eL


# instance fields
.field private final day:S

.field private final month:S

.field private final year:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    .line 3
    const v0, -0x3b9ac9ff

    .line 4
    const/4 v1, 0x1

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1, v1}, Lorg/threeten/bp/g;->Q(III)Lorg/threeten/bp/g;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sput-object v0, Lorg/threeten/bp/g;->MIN:Lorg/threeten/bp/g;

    .line 11
    .line 12
    const/16 v0, 0xc

    .line 13
    .line 14
    const/16 v1, 0x1f

    .line 15
    .line 16
    .line 17
    const v2, 0x3b9ac9ff

    .line 18
    .line 19
    .line 20
    invoke-static {v2, v0, v1}, Lorg/threeten/bp/g;->Q(III)Lorg/threeten/bp/g;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    sput-object v0, Lorg/threeten/bp/g;->MAX:Lorg/threeten/bp/g;

    .line 24
    .line 25
    new-instance v0, Lorg/threeten/bp/g$a;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0}, Lorg/threeten/bp/g$a;-><init>()V

    .line 29
    .line 30
    sput-object v0, Lorg/threeten/bp/g;->FROM:Lorg/threeten/bp/temporal/j;

    .line 31
    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/threeten/bp/chrono/b;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lorg/threeten/bp/g;->year:I

    .line 6
    int-to-short p1, p2

    .line 7
    .line 8
    iput-short p1, p0, Lorg/threeten/bp/g;->month:S

    .line 9
    int-to-short p1, p3

    .line 10
    .line 11
    iput-short p1, p0, Lorg/threeten/bp/g;->day:S

    .line 12
    return-void
.end method

.method public static A(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/g;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lorg/threeten/bp/temporal/i;->b()Lorg/threeten/bp/temporal/j;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, v0}, Lorg/threeten/bp/temporal/e;->d(Lorg/threeten/bp/temporal/j;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lorg/threeten/bp/g;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    return-object v0

    .line 14
    .line 15
    :cond_0
    new-instance v0, Lorg/threeten/bp/b;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    const-string v2, "Unable to obtain LocalDate from TemporalAccessor: "

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, ", type "

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    move-result-object p0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, p0}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 52
    throw v0
.end method

.method private B(Lorg/threeten/bp/temporal/h;)I
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/g$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 3
    move-object v1, p1

    .line 4
    .line 5
    check-cast v1, Lorg/threeten/bp/temporal/a;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 9
    move-result v1

    .line 10
    .line 11
    aget v0, v0, v1

    .line 12
    .line 13
    const-string v1, "Field too large for an int: "

    .line 14
    const/4 v2, 0x1

    .line 15
    .line 16
    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    new-instance v0, Lorg/threeten/bp/temporal/l;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    const-string v2, "Unsupported field: "

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, p1}, Lorg/threeten/bp/temporal/l;-><init>(Ljava/lang/String;)V

    .line 40
    throw v0

    .line 41
    .line 42
    :pswitch_0
    iget p1, p0, Lorg/threeten/bp/g;->year:I

    .line 43
    .line 44
    if-lt p1, v2, :cond_0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v2, 0x0

    .line 47
    :goto_0
    return v2

    .line 48
    .line 49
    :pswitch_1
    iget p1, p0, Lorg/threeten/bp/g;->year:I

    .line 50
    return p1

    .line 51
    .line 52
    :pswitch_2
    new-instance v0, Lorg/threeten/bp/b;

    .line 53
    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    .line 70
    invoke-direct {v0, p1}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 71
    throw v0

    .line 72
    .line 73
    :pswitch_3
    iget-short p1, p0, Lorg/threeten/bp/g;->month:S

    .line 74
    return p1

    .line 75
    .line 76
    .line 77
    :pswitch_4
    invoke-virtual {p0}, Lorg/threeten/bp/g;->F()I

    .line 78
    move-result p1

    .line 79
    sub-int/2addr p1, v2

    .line 80
    .line 81
    div-int/lit8 p1, p1, 0x7

    .line 82
    add-int/2addr p1, v2

    .line 83
    return p1

    .line 84
    .line 85
    :pswitch_5
    new-instance v0, Lorg/threeten/bp/b;

    .line 86
    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    .line 103
    invoke-direct {v0, p1}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 104
    throw v0

    .line 105
    .line 106
    .line 107
    :pswitch_6
    invoke-virtual {p0}, Lorg/threeten/bp/g;->F()I

    .line 108
    move-result p1

    .line 109
    sub-int/2addr p1, v2

    .line 110
    .line 111
    rem-int/lit8 p1, p1, 0x7

    .line 112
    add-int/2addr p1, v2

    .line 113
    return p1

    .line 114
    .line 115
    :pswitch_7
    iget-short p1, p0, Lorg/threeten/bp/g;->day:S

    .line 116
    sub-int/2addr p1, v2

    .line 117
    .line 118
    rem-int/lit8 p1, p1, 0x7

    .line 119
    add-int/2addr p1, v2

    .line 120
    return p1

    .line 121
    .line 122
    .line 123
    :pswitch_8
    invoke-virtual {p0}, Lorg/threeten/bp/g;->E()Lorg/threeten/bp/d;

    .line 124
    move-result-object p1

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Lorg/threeten/bp/d;->getValue()I

    .line 128
    move-result p1

    .line 129
    return p1

    .line 130
    .line 131
    :pswitch_9
    iget p1, p0, Lorg/threeten/bp/g;->year:I

    .line 132
    .line 133
    if-lt p1, v2, :cond_1

    .line 134
    goto :goto_1

    .line 135
    .line 136
    :cond_1
    rsub-int/lit8 p1, p1, 0x1

    .line 137
    :goto_1
    return p1

    .line 138
    .line 139
    :pswitch_a
    iget-short p1, p0, Lorg/threeten/bp/g;->day:S

    .line 140
    sub-int/2addr p1, v2

    .line 141
    .line 142
    div-int/lit8 p1, p1, 0x7

    .line 143
    add-int/2addr p1, v2

    .line 144
    return p1

    .line 145
    .line 146
    .line 147
    :pswitch_b
    invoke-virtual {p0}, Lorg/threeten/bp/g;->F()I

    .line 148
    move-result p1

    .line 149
    return p1

    .line 150
    .line 151
    :pswitch_c
    iget-short p1, p0, Lorg/threeten/bp/g;->day:S

    .line 152
    return p1

    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private I()J
    .locals 4

    .line 1
    iget v0, p0, Lorg/threeten/bp/g;->year:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    iget-short v2, p0, Lorg/threeten/bp/g;->month:S

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static Q(III)Lorg/threeten/bp/g;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->YEAR:Lorg/threeten/bp/temporal/a;

    .line 3
    int-to-long v1, p0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/a;->j(J)J

    .line 7
    .line 8
    sget-object v0, Lorg/threeten/bp/temporal/a;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/a;

    .line 9
    int-to-long v1, p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/a;->j(J)J

    .line 13
    .line 14
    sget-object v0, Lorg/threeten/bp/temporal/a;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/a;

    .line 15
    int-to-long v1, p2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/a;->j(J)J

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lorg/threeten/bp/j;->r(I)Lorg/threeten/bp/j;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-static {p0, p1, p2}, Lorg/threeten/bp/g;->z(ILorg/threeten/bp/j;I)Lorg/threeten/bp/g;

    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public static R(ILorg/threeten/bp/j;I)Lorg/threeten/bp/g;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->YEAR:Lorg/threeten/bp/temporal/a;

    .line 3
    int-to-long v1, p0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/a;->j(J)J

    .line 7
    .line 8
    const-string v0, "month"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    sget-object v0, Lorg/threeten/bp/temporal/a;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/a;

    .line 14
    int-to-long v1, p2

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/a;->j(J)J

    .line 18
    .line 19
    .line 20
    invoke-static {p0, p1, p2}, Lorg/threeten/bp/g;->z(ILorg/threeten/bp/j;I)Lorg/threeten/bp/g;

    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static S(J)Lorg/threeten/bp/g;
    .locals 23

    .line 1
    .line 2
    move-wide/from16 v0, p0

    .line 3
    .line 4
    sget-object v2, Lorg/threeten/bp/temporal/a;->EPOCH_DAY:Lorg/threeten/bp/temporal/a;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v2, v0, v1}, Lorg/threeten/bp/temporal/a;->j(J)J

    .line 8
    .line 9
    .line 10
    const-wide/32 v2, 0xafa6c

    .line 11
    add-long/2addr v2, v0

    .line 12
    .line 13
    const-wide/16 v4, 0x0

    .line 14
    .line 15
    cmp-long v6, v2, v4

    .line 16
    .line 17
    const-wide/16 v7, 0x1

    .line 18
    .line 19
    .line 20
    const-wide/32 v9, 0x23ab1

    .line 21
    .line 22
    const-wide/16 v11, 0x190

    .line 23
    .line 24
    if-gez v6, :cond_0

    .line 25
    .line 26
    .line 27
    const-wide/32 v13, 0xafa6d

    .line 28
    add-long/2addr v0, v13

    .line 29
    div-long/2addr v0, v9

    .line 30
    sub-long/2addr v0, v7

    .line 31
    .line 32
    mul-long v13, v0, v11

    .line 33
    neg-long v0, v0

    .line 34
    mul-long/2addr v0, v9

    .line 35
    add-long/2addr v2, v0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move-wide v13, v4

    .line 38
    .line 39
    :goto_0
    mul-long v0, v2, v11

    .line 40
    .line 41
    const-wide/16 v15, 0x24f

    .line 42
    add-long/2addr v0, v15

    .line 43
    div-long/2addr v0, v9

    .line 44
    .line 45
    const-wide/16 v9, 0x16d

    .line 46
    .line 47
    mul-long v15, v0, v9

    .line 48
    .line 49
    const-wide/16 v17, 0x4

    .line 50
    .line 51
    div-long v19, v0, v17

    .line 52
    .line 53
    add-long v15, v15, v19

    .line 54
    .line 55
    const-wide/16 v19, 0x64

    .line 56
    .line 57
    div-long v21, v0, v19

    .line 58
    .line 59
    sub-long v15, v15, v21

    .line 60
    .line 61
    div-long v21, v0, v11

    .line 62
    .line 63
    add-long v15, v15, v21

    .line 64
    .line 65
    sub-long v15, v2, v15

    .line 66
    .line 67
    cmp-long v4, v15, v4

    .line 68
    .line 69
    if-gez v4, :cond_1

    .line 70
    sub-long/2addr v0, v7

    .line 71
    mul-long/2addr v9, v0

    .line 72
    .line 73
    div-long v4, v0, v17

    .line 74
    add-long/2addr v9, v4

    .line 75
    .line 76
    div-long v4, v0, v19

    .line 77
    sub-long/2addr v9, v4

    .line 78
    .line 79
    div-long v4, v0, v11

    .line 80
    add-long/2addr v9, v4

    .line 81
    .line 82
    sub-long v15, v2, v9

    .line 83
    :cond_1
    move-wide v2, v15

    .line 84
    add-long/2addr v0, v13

    .line 85
    long-to-int v2, v2

    .line 86
    .line 87
    mul-int/lit8 v3, v2, 0x5

    .line 88
    .line 89
    add-int/lit8 v3, v3, 0x2

    .line 90
    .line 91
    div-int/lit16 v3, v3, 0x99

    .line 92
    .line 93
    add-int/lit8 v4, v3, 0x2

    .line 94
    .line 95
    rem-int/lit8 v4, v4, 0xc

    .line 96
    .line 97
    add-int/lit8 v4, v4, 0x1

    .line 98
    .line 99
    mul-int/lit16 v5, v3, 0x132

    .line 100
    .line 101
    add-int/lit8 v5, v5, 0x5

    .line 102
    .line 103
    div-int/lit8 v5, v5, 0xa

    .line 104
    sub-int/2addr v2, v5

    .line 105
    .line 106
    add-int/lit8 v2, v2, 0x1

    .line 107
    .line 108
    div-int/lit8 v3, v3, 0xa

    .line 109
    int-to-long v5, v3

    .line 110
    add-long/2addr v0, v5

    .line 111
    .line 112
    sget-object v3, Lorg/threeten/bp/temporal/a;->YEAR:Lorg/threeten/bp/temporal/a;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3, v0, v1}, Lorg/threeten/bp/temporal/a;->i(J)I

    .line 116
    move-result v0

    .line 117
    .line 118
    new-instance v1, Lorg/threeten/bp/g;

    .line 119
    .line 120
    .line 121
    invoke-direct {v1, v0, v4, v2}, Lorg/threeten/bp/g;-><init>(III)V

    .line 122
    return-object v1
.end method

.method public static T(II)Lorg/threeten/bp/g;
    .locals 5

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->YEAR:Lorg/threeten/bp/temporal/a;

    .line 3
    int-to-long v1, p0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/a;->j(J)J

    .line 7
    .line 8
    sget-object v0, Lorg/threeten/bp/temporal/a;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/a;

    .line 9
    int-to-long v3, p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v3, v4}, Lorg/threeten/bp/temporal/a;->j(J)J

    .line 13
    .line 14
    sget-object v0, Lorg/threeten/bp/chrono/m;->INSTANCE:Lorg/threeten/bp/chrono/m;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/chrono/m;->u(J)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    const/16 v1, 0x16e

    .line 21
    .line 22
    if-ne p1, v1, :cond_1

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    new-instance p1, Lorg/threeten/bp/b;

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    const-string v1, "Invalid date \'DayOfYear 366\' as \'"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string p0, "\' is not a leap year"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    .line 51
    .line 52
    invoke-direct {p1, p0}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 53
    throw p1

    .line 54
    .line 55
    :cond_1
    :goto_0
    add-int/lit8 v1, p1, -0x1

    .line 56
    .line 57
    div-int/lit8 v1, v1, 0x1f

    .line 58
    .line 59
    add-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    .line 62
    invoke-static {v1}, Lorg/threeten/bp/j;->r(I)Lorg/threeten/bp/j;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v0}, Lorg/threeten/bp/j;->a(Z)I

    .line 67
    move-result v2

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v0}, Lorg/threeten/bp/j;->o(Z)I

    .line 71
    move-result v3

    .line 72
    add-int/2addr v2, v3

    .line 73
    .line 74
    add-int/lit8 v2, v2, -0x1

    .line 75
    .line 76
    if-le p1, v2, :cond_2

    .line 77
    .line 78
    const-wide/16 v2, 0x1

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2, v3}, Lorg/threeten/bp/j;->s(J)Lorg/threeten/bp/j;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    .line 85
    :cond_2
    invoke-virtual {v1, v0}, Lorg/threeten/bp/j;->a(Z)I

    .line 86
    move-result v0

    .line 87
    sub-int/2addr p1, v0

    .line 88
    .line 89
    add-int/lit8 p1, p1, 0x1

    .line 90
    .line 91
    .line 92
    invoke-static {p0, v1, p1}, Lorg/threeten/bp/g;->z(ILorg/threeten/bp/j;I)Lorg/threeten/bp/g;

    .line 93
    move-result-object p0

    .line 94
    return-object p0
.end method

.method static Z(Ljava/io/DataInput;)Lorg/threeten/bp/g;
    .locals 2
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
    .line 15
    invoke-static {v0, v1, p0}, Lorg/threeten/bp/g;->Q(III)Lorg/threeten/bp/g;

    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private static a0(III)Lorg/threeten/bp/g;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    const/4 v0, 0x4

    .line 5
    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    const/4 v0, 0x6

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    const/16 v0, 0x9

    .line 12
    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    const/16 v0, 0xb

    .line 16
    .line 17
    if-eq p1, v0, :cond_0

    .line 18
    goto :goto_1

    .line 19
    .line 20
    :cond_0
    const/16 v0, 0x1e

    .line 21
    .line 22
    .line 23
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 24
    move-result p2

    .line 25
    goto :goto_1

    .line 26
    .line 27
    :cond_1
    sget-object v0, Lorg/threeten/bp/chrono/m;->INSTANCE:Lorg/threeten/bp/chrono/m;

    .line 28
    int-to-long v1, p0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/chrono/m;->u(J)Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    const/16 v0, 0x1d

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_2
    const/16 v0, 0x1c

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 43
    move-result p2

    .line 44
    .line 45
    .line 46
    :goto_1
    invoke-static {p0, p1, p2}, Lorg/threeten/bp/g;->Q(III)Lorg/threeten/bp/g;

    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/io/InvalidObjectException;

    .line 3
    .line 4
    const-string v1, "Deserialization via serialization delegate"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/o;

    .line 3
    const/4 v1, 0x3

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/o;-><init>(BLjava/lang/Object;)V

    .line 7
    return-object v0
.end method

.method private static z(ILorg/threeten/bp/j;I)Lorg/threeten/bp/g;
    .locals 3

    .line 1
    .line 2
    const/16 v0, 0x1c

    .line 3
    .line 4
    if-le p2, v0, :cond_1

    .line 5
    .line 6
    sget-object v0, Lorg/threeten/bp/chrono/m;->INSTANCE:Lorg/threeten/bp/chrono/m;

    .line 7
    int-to-long v1, p0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/chrono/m;->u(J)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lorg/threeten/bp/j;->o(Z)I

    .line 15
    move-result v0

    .line 16
    .line 17
    if-le p2, v0, :cond_1

    .line 18
    .line 19
    const/16 v0, 0x1d

    .line 20
    .line 21
    if-ne p2, v0, :cond_0

    .line 22
    .line 23
    new-instance p1, Lorg/threeten/bp/b;

    .line 24
    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    const-string v0, "Invalid date \'February 29\' as \'"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string p0, "\' is not a leap year"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    .line 47
    .line 48
    invoke-direct {p1, p0}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 49
    throw p1

    .line 50
    .line 51
    :cond_0
    new-instance p0, Lorg/threeten/bp/b;

    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    const-string v1, "Invalid date \'"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string p1, " "

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string p1, "\'"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    .line 88
    invoke-direct {p0, p1}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 89
    throw p0

    .line 90
    .line 91
    :cond_1
    new-instance v0, Lorg/threeten/bp/g;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lorg/threeten/bp/j;->getValue()I

    .line 95
    move-result p1

    .line 96
    .line 97
    .line 98
    invoke-direct {v0, p0, p1, p2}, Lorg/threeten/bp/g;-><init>(III)V

    .line 99
    return-object v0
.end method


# virtual methods
.method public C()Lorg/threeten/bp/chrono/m;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/chrono/m;->INSTANCE:Lorg/threeten/bp/chrono/m;

    .line 3
    return-object v0
.end method

.method public D()I
    .locals 1

    .line 1
    iget-short v0, p0, Lorg/threeten/bp/g;->day:S

    return v0
.end method

.method public E()Lorg/threeten/bp/d;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/g;->u()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    const-wide/16 v2, 0x3

    .line 7
    add-long/2addr v0, v2

    .line 8
    const/4 v2, 0x7

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, v2}, Lra/d;->g(JI)I

    .line 12
    move-result v0

    .line 13
    .line 14
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lorg/threeten/bp/d;->n(I)Lorg/threeten/bp/d;

    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public F()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/g;->G()Lorg/threeten/bp/j;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/threeten/bp/g;->K()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lorg/threeten/bp/j;->a(Z)I

    .line 12
    move-result v0

    .line 13
    .line 14
    iget-short v1, p0, Lorg/threeten/bp/g;->day:S

    .line 15
    add-int/2addr v0, v1

    .line 16
    .line 17
    add-int/lit8 v0, v0, -0x1

    .line 18
    return v0
.end method

.method public G()Lorg/threeten/bp/j;
    .locals 1

    .line 1
    .line 2
    iget-short v0, p0, Lorg/threeten/bp/g;->month:S

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lorg/threeten/bp/j;->r(I)Lorg/threeten/bp/j;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public H()I
    .locals 1

    .line 1
    iget-short v0, p0, Lorg/threeten/bp/g;->month:S

    return v0
.end method

.method public J()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/threeten/bp/g;->year:I

    return v0
.end method

.method public K()Z
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/chrono/m;->INSTANCE:Lorg/threeten/bp/chrono/m;

    .line 3
    .line 4
    iget v1, p0, Lorg/threeten/bp/g;->year:I

    .line 5
    int-to-long v1, v1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/chrono/m;->u(J)Z

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public L()I
    .locals 2

    .line 1
    .line 2
    iget-short v0, p0, Lorg/threeten/bp/g;->month:S

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    const/4 v1, 0x4

    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    const/4 v1, 0x6

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    const/16 v1, 0x9

    .line 14
    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    const/16 v1, 0xb

    .line 18
    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    const/16 v0, 0x1f

    .line 22
    return v0

    .line 23
    .line 24
    :cond_0
    const/16 v0, 0x1e

    .line 25
    return v0

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p0}, Lorg/threeten/bp/g;->K()Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    const/16 v0, 0x1d

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_2
    const/16 v0, 0x1c

    .line 37
    :goto_0
    return v0
.end method

.method public M()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/g;->K()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/16 v0, 0x16e

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    const/16 v0, 0x16d

    .line 12
    :goto_0
    return v0
.end method

.method public N(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/g;
    .locals 2

    .line 1
    .line 2
    const-wide/high16 v0, -0x8000000000000000L

    .line 3
    .line 4
    cmp-long v0, p1, v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const-wide p1, 0x7fffffffffffffffL

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/g;->U(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/g;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    const-wide/16 v0, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0, v1, p3}, Lorg/threeten/bp/g;->U(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/g;

    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    neg-long p1, p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/g;->U(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/g;

    .line 27
    move-result-object p1

    .line 28
    :goto_0
    return-object p1
.end method

.method public O(J)Lorg/threeten/bp/g;
    .locals 2

    .line 1
    .line 2
    const-wide/high16 v0, -0x8000000000000000L

    .line 3
    .line 4
    cmp-long v0, p1, v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const-wide p1, 0x7fffffffffffffffL

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/g;->V(J)Lorg/threeten/bp/g;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    const-wide/16 v0, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Lorg/threeten/bp/g;->V(J)Lorg/threeten/bp/g;

    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    neg-long p1, p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/g;->V(J)Lorg/threeten/bp/g;

    .line 27
    move-result-object p1

    .line 28
    :goto_0
    return-object p1
.end method

.method public P(J)Lorg/threeten/bp/g;
    .locals 2

    .line 1
    .line 2
    const-wide/high16 v0, -0x8000000000000000L

    .line 3
    .line 4
    cmp-long v0, p1, v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const-wide p1, 0x7fffffffffffffffL

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/g;->Y(J)Lorg/threeten/bp/g;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    const-wide/16 v0, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Lorg/threeten/bp/g;->Y(J)Lorg/threeten/bp/g;

    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    neg-long p1, p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/g;->Y(J)Lorg/threeten/bp/g;

    .line 27
    move-result-object p1

    .line 28
    :goto_0
    return-object p1
.end method

.method public U(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/g;
    .locals 2

    .line 1
    .line 2
    instance-of v0, p3, Lorg/threeten/bp/temporal/b;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Lorg/threeten/bp/temporal/b;

    .line 8
    .line 9
    sget-object v1, Lorg/threeten/bp/g$b;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 13
    move-result v0

    .line 14
    .line 15
    aget v0, v1, v0

    .line 16
    .line 17
    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    new-instance p1, Lorg/threeten/bp/temporal/l;

    .line 21
    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    const-string v0, "Unsupported unit: "

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, p2}, Lorg/threeten/bp/temporal/l;-><init>(Ljava/lang/String;)V

    .line 41
    throw p1

    .line 42
    .line 43
    :pswitch_0
    sget-object p3, Lorg/threeten/bp/temporal/a;->ERA:Lorg/threeten/bp/temporal/a;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p3}, Lorg/threeten/bp/g;->k(Lorg/threeten/bp/temporal/h;)J

    .line 47
    move-result-wide v0

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v1, p1, p2}, Lra/d;->k(JJ)J

    .line 51
    move-result-wide p1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p3, p1, p2}, Lorg/threeten/bp/g;->c0(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/g;

    .line 55
    move-result-object p1

    .line 56
    return-object p1

    .line 57
    .line 58
    :pswitch_1
    const/16 p3, 0x3e8

    .line 59
    .line 60
    .line 61
    invoke-static {p1, p2, p3}, Lra/d;->l(JI)J

    .line 62
    move-result-wide p1

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/g;->Y(J)Lorg/threeten/bp/g;

    .line 66
    move-result-object p1

    .line 67
    return-object p1

    .line 68
    .line 69
    :pswitch_2
    const/16 p3, 0x64

    .line 70
    .line 71
    .line 72
    invoke-static {p1, p2, p3}, Lra/d;->l(JI)J

    .line 73
    move-result-wide p1

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/g;->Y(J)Lorg/threeten/bp/g;

    .line 77
    move-result-object p1

    .line 78
    return-object p1

    .line 79
    .line 80
    :pswitch_3
    const/16 p3, 0xa

    .line 81
    .line 82
    .line 83
    invoke-static {p1, p2, p3}, Lra/d;->l(JI)J

    .line 84
    move-result-wide p1

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/g;->Y(J)Lorg/threeten/bp/g;

    .line 88
    move-result-object p1

    .line 89
    return-object p1

    .line 90
    .line 91
    .line 92
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/g;->Y(J)Lorg/threeten/bp/g;

    .line 93
    move-result-object p1

    .line 94
    return-object p1

    .line 95
    .line 96
    .line 97
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/g;->W(J)Lorg/threeten/bp/g;

    .line 98
    move-result-object p1

    .line 99
    return-object p1

    .line 100
    .line 101
    .line 102
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/g;->X(J)Lorg/threeten/bp/g;

    .line 103
    move-result-object p1

    .line 104
    return-object p1

    .line 105
    .line 106
    .line 107
    :pswitch_7
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/g;->V(J)Lorg/threeten/bp/g;

    .line 108
    move-result-object p1

    .line 109
    return-object p1

    .line 110
    .line 111
    .line 112
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/k;->b(Lorg/threeten/bp/temporal/d;J)Lorg/threeten/bp/temporal/d;

    .line 113
    move-result-object p1

    .line 114
    .line 115
    check-cast p1, Lorg/threeten/bp/g;

    .line 116
    return-object p1

    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public V(J)Lorg/threeten/bp/g;
    .locals 2

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmp-long v0, p1, v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-object p0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lorg/threeten/bp/g;->u()J

    .line 11
    move-result-wide v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1, p1, p2}, Lra/d;->k(JJ)J

    .line 15
    move-result-wide p1

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p2}, Lorg/threeten/bp/g;->S(J)Lorg/threeten/bp/g;

    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public W(J)Lorg/threeten/bp/g;
    .locals 6

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmp-long v0, p1, v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-object p0

    .line 8
    .line 9
    :cond_0
    iget v0, p0, Lorg/threeten/bp/g;->year:I

    .line 10
    int-to-long v0, v0

    .line 11
    .line 12
    const-wide/16 v2, 0xc

    .line 13
    mul-long/2addr v0, v2

    .line 14
    .line 15
    iget-short v4, p0, Lorg/threeten/bp/g;->month:S

    .line 16
    .line 17
    add-int/lit8 v4, v4, -0x1

    .line 18
    int-to-long v4, v4

    .line 19
    add-long/2addr v0, v4

    .line 20
    add-long/2addr v0, p1

    .line 21
    .line 22
    sget-object p1, Lorg/threeten/bp/temporal/a;->YEAR:Lorg/threeten/bp/temporal/a;

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1, v2, v3}, Lra/d;->e(JJ)J

    .line 26
    move-result-wide v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v2, v3}, Lorg/threeten/bp/temporal/a;->i(J)I

    .line 30
    move-result p1

    .line 31
    .line 32
    const/16 p2, 0xc

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1, p2}, Lra/d;->g(JI)I

    .line 36
    move-result p2

    .line 37
    .line 38
    add-int/lit8 p2, p2, 0x1

    .line 39
    .line 40
    iget-short v0, p0, Lorg/threeten/bp/g;->day:S

    .line 41
    .line 42
    .line 43
    invoke-static {p1, p2, v0}, Lorg/threeten/bp/g;->a0(III)Lorg/threeten/bp/g;

    .line 44
    move-result-object p1

    .line 45
    return-object p1
.end method

.method public X(J)Lorg/threeten/bp/g;
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p2, v0}, Lra/d;->l(JI)J

    .line 5
    move-result-wide p1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/g;->V(J)Lorg/threeten/bp/g;

    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public Y(J)Lorg/threeten/bp/g;
    .locals 3

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmp-long v0, p1, v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-object p0

    .line 8
    .line 9
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/a;->YEAR:Lorg/threeten/bp/temporal/a;

    .line 10
    .line 11
    iget v1, p0, Lorg/threeten/bp/g;->year:I

    .line 12
    int-to-long v1, v1

    .line 13
    add-long/2addr v1, p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/a;->i(J)I

    .line 17
    move-result p1

    .line 18
    .line 19
    iget-short p2, p0, Lorg/threeten/bp/g;->month:S

    .line 20
    .line 21
    iget-short v0, p0, Lorg/threeten/bp/g;->day:S

    .line 22
    .line 23
    .line 24
    invoke-static {p1, p2, v0}, Lorg/threeten/bp/g;->a0(III)Lorg/threeten/bp/g;

    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public b(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/b;->b(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/temporal/d;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b0(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/g;
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/g;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lorg/threeten/bp/g;

    .line 7
    return-object p1

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/f;->b(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/temporal/d;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Lorg/threeten/bp/g;

    .line 14
    return-object p1
.end method

.method public c(Lorg/threeten/bp/temporal/h;)Lorg/threeten/bp/temporal/m;
    .locals 4

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
    invoke-virtual {v0}, Lorg/threeten/bp/temporal/a;->a()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_6

    .line 14
    .line 15
    sget-object v1, Lorg/threeten/bp/g$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 19
    move-result v0

    .line 20
    .line 21
    aget v0, v1, v0

    .line 22
    const/4 v1, 0x1

    .line 23
    .line 24
    const-wide/16 v2, 0x1

    .line 25
    .line 26
    if-eq v0, v1, :cond_5

    .line 27
    const/4 v1, 0x2

    .line 28
    .line 29
    if-eq v0, v1, :cond_4

    .line 30
    const/4 v1, 0x3

    .line 31
    .line 32
    if-eq v0, v1, :cond_2

    .line 33
    const/4 v1, 0x4

    .line 34
    .line 35
    if-eq v0, v1, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-interface {p1}, Lorg/threeten/bp/temporal/h;->d()Lorg/threeten/bp/temporal/m;

    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {p0}, Lorg/threeten/bp/g;->J()I

    .line 44
    move-result p1

    .line 45
    .line 46
    if-gtz p1, :cond_1

    .line 47
    .line 48
    .line 49
    const-wide/32 v0, 0x3b9aca00

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 53
    move-result-object p1

    .line 54
    goto :goto_1

    .line 55
    .line 56
    .line 57
    :cond_1
    const-wide/32 v0, 0x3b9ac9ff

    .line 58
    goto :goto_0

    .line 59
    :goto_1
    return-object p1

    .line 60
    .line 61
    .line 62
    :cond_2
    invoke-virtual {p0}, Lorg/threeten/bp/g;->G()Lorg/threeten/bp/j;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    sget-object v0, Lorg/threeten/bp/j;->FEBRUARY:Lorg/threeten/bp/j;

    .line 66
    .line 67
    if-ne p1, v0, :cond_3

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lorg/threeten/bp/g;->K()Z

    .line 71
    move-result p1

    .line 72
    .line 73
    if-nez p1, :cond_3

    .line 74
    .line 75
    const-wide/16 v0, 0x4

    .line 76
    goto :goto_2

    .line 77
    .line 78
    :cond_3
    const-wide/16 v0, 0x5

    .line 79
    .line 80
    .line 81
    :goto_2
    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 82
    move-result-object p1

    .line 83
    return-object p1

    .line 84
    .line 85
    .line 86
    :cond_4
    invoke-virtual {p0}, Lorg/threeten/bp/g;->M()I

    .line 87
    move-result p1

    .line 88
    int-to-long v0, p1

    .line 89
    .line 90
    .line 91
    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 92
    move-result-object p1

    .line 93
    return-object p1

    .line 94
    .line 95
    .line 96
    :cond_5
    invoke-virtual {p0}, Lorg/threeten/bp/g;->L()I

    .line 97
    move-result p1

    .line 98
    int-to-long v0, p1

    .line 99
    .line 100
    .line 101
    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 102
    move-result-object p1

    .line 103
    return-object p1

    .line 104
    .line 105
    :cond_6
    new-instance v0, Lorg/threeten/bp/temporal/l;

    .line 106
    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    const-string v2, "Unsupported field: "

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object p1

    .line 123
    .line 124
    .line 125
    invoke-direct {v0, p1}, Lorg/threeten/bp/temporal/l;-><init>(Ljava/lang/String;)V

    .line 126
    throw v0

    .line 127
    .line 128
    .line 129
    :cond_7
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->f(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/temporal/m;

    .line 130
    move-result-object p1

    .line 131
    return-object p1
.end method

.method public c0(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/g;
    .locals 4

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Lorg/threeten/bp/temporal/a;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p2, p3}, Lorg/threeten/bp/temporal/a;->j(J)J

    .line 11
    .line 12
    sget-object v1, Lorg/threeten/bp/g$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 16
    move-result v0

    .line 17
    .line 18
    aget v0, v1, v0

    .line 19
    const/4 v1, 0x1

    .line 20
    .line 21
    .line 22
    packed-switch v0, :pswitch_data_0

    .line 23
    .line 24
    new-instance p2, Lorg/threeten/bp/temporal/l;

    .line 25
    .line 26
    new-instance p3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    const-string v0, "Unsupported field: "

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-direct {p2, p1}, Lorg/threeten/bp/temporal/l;-><init>(Ljava/lang/String;)V

    .line 45
    throw p2

    .line 46
    .line 47
    :pswitch_0
    sget-object p1, Lorg/threeten/bp/temporal/a;->ERA:Lorg/threeten/bp/temporal/a;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lorg/threeten/bp/g;->k(Lorg/threeten/bp/temporal/h;)J

    .line 51
    move-result-wide v2

    .line 52
    .line 53
    cmp-long p1, v2, p2

    .line 54
    .line 55
    if-nez p1, :cond_0

    .line 56
    move-object p1, p0

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :cond_0
    iget p1, p0, Lorg/threeten/bp/g;->year:I

    .line 60
    sub-int/2addr v1, p1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v1}, Lorg/threeten/bp/g;->g0(I)Lorg/threeten/bp/g;

    .line 64
    move-result-object p1

    .line 65
    :goto_0
    return-object p1

    .line 66
    :pswitch_1
    long-to-int p1, p2

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1}, Lorg/threeten/bp/g;->g0(I)Lorg/threeten/bp/g;

    .line 70
    move-result-object p1

    .line 71
    return-object p1

    .line 72
    .line 73
    :pswitch_2
    sget-object p1, Lorg/threeten/bp/temporal/a;->PROLEPTIC_MONTH:Lorg/threeten/bp/temporal/a;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lorg/threeten/bp/g;->k(Lorg/threeten/bp/temporal/h;)J

    .line 77
    move-result-wide v0

    .line 78
    sub-long/2addr p2, v0

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/g;->W(J)Lorg/threeten/bp/g;

    .line 82
    move-result-object p1

    .line 83
    return-object p1

    .line 84
    :pswitch_3
    long-to-int p1, p2

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1}, Lorg/threeten/bp/g;->f0(I)Lorg/threeten/bp/g;

    .line 88
    move-result-object p1

    .line 89
    return-object p1

    .line 90
    .line 91
    :pswitch_4
    sget-object p1, Lorg/threeten/bp/temporal/a;->ALIGNED_WEEK_OF_YEAR:Lorg/threeten/bp/temporal/a;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p1}, Lorg/threeten/bp/g;->k(Lorg/threeten/bp/temporal/h;)J

    .line 95
    move-result-wide v0

    .line 96
    sub-long/2addr p2, v0

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/g;->X(J)Lorg/threeten/bp/g;

    .line 100
    move-result-object p1

    .line 101
    return-object p1

    .line 102
    .line 103
    .line 104
    :pswitch_5
    invoke-static {p2, p3}, Lorg/threeten/bp/g;->S(J)Lorg/threeten/bp/g;

    .line 105
    move-result-object p1

    .line 106
    return-object p1

    .line 107
    .line 108
    :pswitch_6
    sget-object p1, Lorg/threeten/bp/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lorg/threeten/bp/temporal/a;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, p1}, Lorg/threeten/bp/g;->k(Lorg/threeten/bp/temporal/h;)J

    .line 112
    move-result-wide v0

    .line 113
    sub-long/2addr p2, v0

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/g;->V(J)Lorg/threeten/bp/g;

    .line 117
    move-result-object p1

    .line 118
    return-object p1

    .line 119
    .line 120
    :pswitch_7
    sget-object p1, Lorg/threeten/bp/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lorg/threeten/bp/temporal/a;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, p1}, Lorg/threeten/bp/g;->k(Lorg/threeten/bp/temporal/h;)J

    .line 124
    move-result-wide v0

    .line 125
    sub-long/2addr p2, v0

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/g;->V(J)Lorg/threeten/bp/g;

    .line 129
    move-result-object p1

    .line 130
    return-object p1

    .line 131
    .line 132
    .line 133
    :pswitch_8
    invoke-virtual {p0}, Lorg/threeten/bp/g;->E()Lorg/threeten/bp/d;

    .line 134
    move-result-object p1

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Lorg/threeten/bp/d;->getValue()I

    .line 138
    move-result p1

    .line 139
    int-to-long v0, p1

    .line 140
    sub-long/2addr p2, v0

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/g;->V(J)Lorg/threeten/bp/g;

    .line 144
    move-result-object p1

    .line 145
    return-object p1

    .line 146
    .line 147
    :pswitch_9
    iget p1, p0, Lorg/threeten/bp/g;->year:I

    .line 148
    .line 149
    if-lt p1, v1, :cond_1

    .line 150
    goto :goto_1

    .line 151
    .line 152
    :cond_1
    const-wide/16 v0, 0x1

    .line 153
    .line 154
    sub-long p2, v0, p2

    .line 155
    :goto_1
    long-to-int p1, p2

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, p1}, Lorg/threeten/bp/g;->g0(I)Lorg/threeten/bp/g;

    .line 159
    move-result-object p1

    .line 160
    return-object p1

    .line 161
    .line 162
    :pswitch_a
    sget-object p1, Lorg/threeten/bp/temporal/a;->ALIGNED_WEEK_OF_MONTH:Lorg/threeten/bp/temporal/a;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, p1}, Lorg/threeten/bp/g;->k(Lorg/threeten/bp/temporal/h;)J

    .line 166
    move-result-wide v0

    .line 167
    sub-long/2addr p2, v0

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/g;->X(J)Lorg/threeten/bp/g;

    .line 171
    move-result-object p1

    .line 172
    return-object p1

    .line 173
    :pswitch_b
    long-to-int p1, p2

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, p1}, Lorg/threeten/bp/g;->e0(I)Lorg/threeten/bp/g;

    .line 177
    move-result-object p1

    .line 178
    return-object p1

    .line 179
    :pswitch_c
    long-to-int p1, p2

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, p1}, Lorg/threeten/bp/g;->d0(I)Lorg/threeten/bp/g;

    .line 183
    move-result-object p1

    .line 184
    return-object p1

    .line 185
    .line 186
    .line 187
    :cond_2
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/h;->b(Lorg/threeten/bp/temporal/d;J)Lorg/threeten/bp/temporal/d;

    .line 188
    move-result-object p1

    .line 189
    .line 190
    check-cast p1, Lorg/threeten/bp/g;

    .line 191
    return-object p1

    .line 192
    nop

    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lorg/threeten/bp/chrono/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lorg/threeten/bp/g;->o(Lorg/threeten/bp/chrono/b;)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public d(Lorg/threeten/bp/temporal/j;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/threeten/bp/temporal/j<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lorg/threeten/bp/temporal/i;->b()Lorg/threeten/bp/temporal/j;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    return-object p0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/b;->d(Lorg/threeten/bp/temporal/j;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public d0(I)Lorg/threeten/bp/g;
    .locals 2

    .line 1
    .line 2
    iget-short v0, p0, Lorg/threeten/bp/g;->day:S

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-object p0

    .line 6
    .line 7
    :cond_0
    iget v0, p0, Lorg/threeten/bp/g;->year:I

    .line 8
    .line 9
    iget-short v1, p0, Lorg/threeten/bp/g;->month:S

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1, p1}, Lorg/threeten/bp/g;->Q(III)Lorg/threeten/bp/g;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public bridge synthetic e(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/g;->N(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/g;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public e0(I)Lorg/threeten/bp/g;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/g;->F()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-ne v0, p1, :cond_0

    .line 7
    return-object p0

    .line 8
    .line 9
    :cond_0
    iget v0, p0, Lorg/threeten/bp/g;->year:I

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p1}, Lorg/threeten/bp/g;->T(II)Lorg/threeten/bp/g;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

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
    instance-of v1, p1, Lorg/threeten/bp/g;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    check-cast p1, Lorg/threeten/bp/g;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lorg/threeten/bp/g;->y(Lorg/threeten/bp/g;)I

    .line 15
    move-result p1

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move v0, v2

    .line 20
    :goto_0
    return v0

    .line 21
    :cond_2
    return v2
.end method

.method public f(Lorg/threeten/bp/temporal/h;)I
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lorg/threeten/bp/g;->B(Lorg/threeten/bp/temporal/h;)I

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-super {p0, p1}, Lra/c;->f(Lorg/threeten/bp/temporal/h;)I

    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public f0(I)Lorg/threeten/bp/g;
    .locals 3

    .line 1
    .line 2
    iget-short v0, p0, Lorg/threeten/bp/g;->month:S

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-object p0

    .line 6
    .line 7
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/a;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/a;

    .line 8
    int-to-long v1, p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/a;->j(J)J

    .line 12
    .line 13
    iget v0, p0, Lorg/threeten/bp/g;->year:I

    .line 14
    .line 15
    iget-short v1, p0, Lorg/threeten/bp/g;->day:S

    .line 16
    .line 17
    .line 18
    invoke-static {v0, p1, v1}, Lorg/threeten/bp/g;->a0(III)Lorg/threeten/bp/g;

    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public g0(I)Lorg/threeten/bp/g;
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lorg/threeten/bp/g;->year:I

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-object p0

    .line 6
    .line 7
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/a;->YEAR:Lorg/threeten/bp/temporal/a;

    .line 8
    int-to-long v1, p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/a;->j(J)J

    .line 12
    .line 13
    iget-short v0, p0, Lorg/threeten/bp/g;->month:S

    .line 14
    .line 15
    iget-short v1, p0, Lorg/threeten/bp/g;->day:S

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0, v1}, Lorg/threeten/bp/g;->a0(III)Lorg/threeten/bp/g;

    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public bridge synthetic h(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/g;->c0(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/g;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method h0(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lorg/threeten/bp/g;->year:I

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 6
    .line 7
    iget-short v0, p0, Lorg/threeten/bp/g;->month:S

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 11
    .line 12
    iget-short v0, p0, Lorg/threeten/bp/g;->day:S

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 16
    return-void
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lorg/threeten/bp/g;->year:I

    iget-short v1, p0, Lorg/threeten/bp/g;->month:S

    iget-short v2, p0, Lorg/threeten/bp/g;->day:S

    and-int/lit16 v3, v0, -0x800

    shl-int/lit8 v0, v0, 0xb

    shl-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    xor-int/2addr v0, v3

    return v0
.end method

.method public i(Lorg/threeten/bp/temporal/h;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/b;->i(Lorg/threeten/bp/temporal/h;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic j(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/g;->b0(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/g;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public k(Lorg/threeten/bp/temporal/h;)J
    .locals 2

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    sget-object v0, Lorg/threeten/bp/temporal/a;->EPOCH_DAY:Lorg/threeten/bp/temporal/a;

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/threeten/bp/g;->u()J

    .line 12
    move-result-wide v0

    .line 13
    return-wide v0

    .line 14
    .line 15
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/a;->PROLEPTIC_MONTH:Lorg/threeten/bp/temporal/a;

    .line 16
    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lorg/threeten/bp/g;->I()J

    .line 21
    move-result-wide v0

    .line 22
    return-wide v0

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-direct {p0, p1}, Lorg/threeten/bp/g;->B(Lorg/threeten/bp/temporal/h;)I

    .line 26
    move-result p1

    .line 27
    int-to-long v0, p1

    .line 28
    return-wide v0

    .line 29
    .line 30
    .line 31
    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->h(Lorg/threeten/bp/temporal/e;)J

    .line 32
    move-result-wide v0

    .line 33
    return-wide v0
.end method

.method public bridge synthetic l(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/g;->U(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/g;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic n(Lorg/threeten/bp/i;)Lorg/threeten/bp/chrono/c;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/g;->x(Lorg/threeten/bp/i;)Lorg/threeten/bp/h;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public o(Lorg/threeten/bp/chrono/b;)I
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/g;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lorg/threeten/bp/g;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lorg/threeten/bp/g;->y(Lorg/threeten/bp/g;)I

    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/b;->o(Lorg/threeten/bp/chrono/b;)I

    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public bridge synthetic p()Lorg/threeten/bp/chrono/h;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/g;->C()Lorg/threeten/bp/chrono/m;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public q()Lorg/threeten/bp/chrono/i;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lorg/threeten/bp/chrono/b;->q()Lorg/threeten/bp/chrono/i;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public r(Lorg/threeten/bp/chrono/b;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/g;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    check-cast p1, Lorg/threeten/bp/g;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lorg/threeten/bp/g;->y(Lorg/threeten/bp/g;)I

    .line 10
    move-result p1

    .line 11
    .line 12
    if-gez p1, :cond_0

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

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/b;->r(Lorg/threeten/bp/chrono/b;)Z

    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public bridge synthetic s(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/b;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/g;->N(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/g;

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
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/g;->U(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/g;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    .line 2
    iget v0, p0, Lorg/threeten/bp/g;->year:I

    .line 3
    .line 4
    iget-short v1, p0, Lorg/threeten/bp/g;->month:S

    .line 5
    .line 6
    iget-short v2, p0, Lorg/threeten/bp/g;->day:S

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 10
    move-result v3

    .line 11
    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const/16 v5, 0xa

    .line 15
    .line 16
    .line 17
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 18
    .line 19
    const/16 v6, 0x3e8

    .line 20
    .line 21
    if-ge v3, v6, :cond_1

    .line 22
    .line 23
    if-gez v0, :cond_0

    .line 24
    .line 25
    add-int/lit16 v0, v0, -0x2710

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    const/4 v0, 0x1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_0
    add-int/lit16 v0, v0, 0x2710

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    const/4 v0, 0x0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_1
    const/16 v3, 0x270f

    .line 46
    .line 47
    if-le v0, v3, :cond_2

    .line 48
    .line 49
    const/16 v3, 0x2b

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    :goto_0
    const-string v0, "-"

    .line 58
    .line 59
    const-string v3, "-0"

    .line 60
    .line 61
    if-ge v1, v5, :cond_3

    .line 62
    move-object v6, v3

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    move-object v6, v0

    .line 65
    .line 66
    .line 67
    :goto_1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    if-ge v2, v5, :cond_4

    .line 73
    move-object v0, v3

    .line 74
    .line 75
    .line 76
    :cond_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    return-object v0
.end method

.method public u()J
    .locals 12

    .line 1
    .line 2
    iget v0, p0, Lorg/threeten/bp/g;->year:I

    .line 3
    int-to-long v0, v0

    .line 4
    .line 5
    iget-short v2, p0, Lorg/threeten/bp/g;->month:S

    .line 6
    int-to-long v2, v2

    .line 7
    .line 8
    const-wide/16 v4, 0x16d

    .line 9
    mul-long/2addr v4, v0

    .line 10
    .line 11
    const-wide/16 v6, 0x0

    .line 12
    .line 13
    cmp-long v6, v0, v6

    .line 14
    .line 15
    if-ltz v6, :cond_0

    .line 16
    .line 17
    const-wide/16 v6, 0x3

    .line 18
    add-long/2addr v6, v0

    .line 19
    .line 20
    const-wide/16 v8, 0x4

    .line 21
    div-long/2addr v6, v8

    .line 22
    .line 23
    const-wide/16 v8, 0x63

    .line 24
    add-long/2addr v8, v0

    .line 25
    .line 26
    const-wide/16 v10, 0x64

    .line 27
    div-long/2addr v8, v10

    .line 28
    sub-long/2addr v6, v8

    .line 29
    .line 30
    const-wide/16 v8, 0x18f

    .line 31
    add-long/2addr v0, v8

    .line 32
    .line 33
    const-wide/16 v8, 0x190

    .line 34
    div-long/2addr v0, v8

    .line 35
    add-long/2addr v6, v0

    .line 36
    add-long/2addr v4, v6

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_0
    const-wide/16 v6, -0x4

    .line 40
    .line 41
    div-long v6, v0, v6

    .line 42
    .line 43
    const-wide/16 v8, -0x64

    .line 44
    .line 45
    div-long v8, v0, v8

    .line 46
    sub-long/2addr v6, v8

    .line 47
    .line 48
    const-wide/16 v8, -0x190

    .line 49
    div-long/2addr v0, v8

    .line 50
    add-long/2addr v6, v0

    .line 51
    sub-long/2addr v4, v6

    .line 52
    .line 53
    :goto_0
    const-wide/16 v0, 0x16f

    .line 54
    mul-long/2addr v0, v2

    .line 55
    .line 56
    const-wide/16 v6, 0x16a

    .line 57
    sub-long/2addr v0, v6

    .line 58
    .line 59
    const-wide/16 v6, 0xc

    .line 60
    div-long/2addr v0, v6

    .line 61
    add-long/2addr v4, v0

    .line 62
    .line 63
    iget-short v0, p0, Lorg/threeten/bp/g;->day:S

    .line 64
    .line 65
    add-int/lit8 v0, v0, -0x1

    .line 66
    int-to-long v0, v0

    .line 67
    add-long/2addr v4, v0

    .line 68
    .line 69
    const-wide/16 v0, 0x2

    .line 70
    .line 71
    cmp-long v2, v2, v0

    .line 72
    .line 73
    if-lez v2, :cond_2

    .line 74
    .line 75
    const-wide/16 v2, 0x1

    .line 76
    .line 77
    sub-long v2, v4, v2

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lorg/threeten/bp/g;->K()Z

    .line 81
    move-result v6

    .line 82
    .line 83
    if-nez v6, :cond_1

    .line 84
    sub-long/2addr v4, v0

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    move-wide v4, v2

    .line 87
    .line 88
    .line 89
    :cond_2
    :goto_1
    const-wide/32 v0, 0xafaa8

    .line 90
    sub-long/2addr v4, v0

    .line 91
    return-wide v4
.end method

.method public bridge synthetic v(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/b;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/g;->b0(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/g;

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
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/g;->c0(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/g;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public x(Lorg/threeten/bp/i;)Lorg/threeten/bp/h;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lorg/threeten/bp/h;->I(Lorg/threeten/bp/g;Lorg/threeten/bp/i;)Lorg/threeten/bp/h;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method y(Lorg/threeten/bp/g;)I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lorg/threeten/bp/g;->year:I

    .line 3
    .line 4
    iget v1, p1, Lorg/threeten/bp/g;->year:I

    .line 5
    sub-int/2addr v0, v1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-short v0, p0, Lorg/threeten/bp/g;->month:S

    .line 10
    .line 11
    iget-short v1, p1, Lorg/threeten/bp/g;->month:S

    .line 12
    sub-int/2addr v0, v1

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-short v0, p0, Lorg/threeten/bp/g;->day:S

    .line 17
    .line 18
    iget-short p1, p1, Lorg/threeten/bp/g;->day:S

    .line 19
    sub-int/2addr v0, p1

    .line 20
    :cond_0
    return v0
.end method
