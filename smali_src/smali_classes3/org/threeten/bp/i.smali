.class public final Lorg/threeten/bp/i;
.super Lra/c;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/temporal/d;
.implements Lorg/threeten/bp/temporal/f;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lra/c;",
        "Lorg/threeten/bp/temporal/d;",
        "Lorg/threeten/bp/temporal/f;",
        "Ljava/lang/Comparable<",
        "Lorg/threeten/bp/i;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final FROM:Lorg/threeten/bp/temporal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/j<",
            "Lorg/threeten/bp/i;",
            ">;"
        }
    .end annotation
.end field

.field private static final HOURS:[Lorg/threeten/bp/i;

.field static final HOURS_PER_DAY:I = 0x18

.field public static final MAX:Lorg/threeten/bp/i;

.field static final MICROS_PER_DAY:J = 0x141dd76000L

.field public static final MIDNIGHT:Lorg/threeten/bp/i;

.field static final MILLIS_PER_DAY:J = 0x5265c00L

.field public static final MIN:Lorg/threeten/bp/i;

.field static final MINUTES_PER_DAY:I = 0x5a0

.field static final MINUTES_PER_HOUR:I = 0x3c

.field static final NANOS_PER_DAY:J = 0x4e94914f0000L

.field static final NANOS_PER_HOUR:J = 0x34630b8a000L

.field static final NANOS_PER_MINUTE:J = 0xdf8475800L

.field static final NANOS_PER_SECOND:J = 0x3b9aca00L

.field public static final NOON:Lorg/threeten/bp/i;

.field static final SECONDS_PER_DAY:I = 0x15180

.field static final SECONDS_PER_HOUR:I = 0xe10

.field static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final serialVersionUID:J = 0x5904a8b626e1a4f1L


# instance fields
.field private final hour:B

.field private final minute:B

.field private final nano:I

.field private final second:B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/i$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lorg/threeten/bp/i$a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lorg/threeten/bp/i;->FROM:Lorg/threeten/bp/temporal/j;

    .line 8
    .line 9
    const/16 v0, 0x18

    .line 10
    .line 11
    new-array v0, v0, [Lorg/threeten/bp/i;

    .line 12
    .line 13
    sput-object v0, Lorg/threeten/bp/i;->HOURS:[Lorg/threeten/bp/i;

    .line 14
    const/4 v0, 0x0

    .line 15
    move v1, v0

    .line 16
    .line 17
    :goto_0
    sget-object v2, Lorg/threeten/bp/i;->HOURS:[Lorg/threeten/bp/i;

    .line 18
    array-length v3, v2

    .line 19
    .line 20
    if-ge v1, v3, :cond_0

    .line 21
    .line 22
    new-instance v3, Lorg/threeten/bp/i;

    .line 23
    .line 24
    .line 25
    invoke-direct {v3, v1, v0, v0, v0}, Lorg/threeten/bp/i;-><init>(IIII)V

    .line 26
    .line 27
    aput-object v3, v2, v1

    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_0
    aget-object v0, v2, v0

    .line 33
    .line 34
    sput-object v0, Lorg/threeten/bp/i;->MIDNIGHT:Lorg/threeten/bp/i;

    .line 35
    .line 36
    const/16 v1, 0xc

    .line 37
    .line 38
    aget-object v1, v2, v1

    .line 39
    .line 40
    sput-object v1, Lorg/threeten/bp/i;->NOON:Lorg/threeten/bp/i;

    .line 41
    .line 42
    sput-object v0, Lorg/threeten/bp/i;->MIN:Lorg/threeten/bp/i;

    .line 43
    .line 44
    new-instance v0, Lorg/threeten/bp/i;

    .line 45
    .line 46
    const/16 v1, 0x17

    .line 47
    .line 48
    .line 49
    const v2, 0x3b9ac9ff

    .line 50
    .line 51
    const/16 v3, 0x3b

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, v1, v3, v3, v2}, Lorg/threeten/bp/i;-><init>(IIII)V

    .line 55
    .line 56
    sput-object v0, Lorg/threeten/bp/i;->MAX:Lorg/threeten/bp/i;

    .line 57
    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lra/c;-><init>()V

    .line 4
    int-to-byte p1, p1

    .line 5
    .line 6
    iput-byte p1, p0, Lorg/threeten/bp/i;->hour:B

    .line 7
    int-to-byte p1, p2

    .line 8
    .line 9
    iput-byte p1, p0, Lorg/threeten/bp/i;->minute:B

    .line 10
    int-to-byte p1, p3

    .line 11
    .line 12
    iput-byte p1, p0, Lorg/threeten/bp/i;->second:B

    .line 13
    .line 14
    iput p4, p0, Lorg/threeten/bp/i;->nano:I

    .line 15
    return-void
.end method

.method static F(Ljava/io/DataInput;)Lorg/threeten/bp/i;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-gez v0, :cond_0

    .line 8
    not-int v0, v0

    .line 9
    move p0, v1

    .line 10
    move v2, p0

    .line 11
    goto :goto_1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    .line 15
    move-result v2

    .line 16
    .line 17
    if-gez v2, :cond_1

    .line 18
    not-int p0, v2

    .line 19
    move v2, v1

    .line 20
    move v1, p0

    .line 21
    move p0, v2

    .line 22
    goto :goto_1

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    .line 26
    move-result v3

    .line 27
    .line 28
    if-gez v3, :cond_2

    .line 29
    not-int p0, v3

    .line 30
    :goto_0
    move v4, v2

    .line 31
    move v2, v1

    .line 32
    move v1, v4

    .line 33
    goto :goto_1

    .line 34
    .line 35
    .line 36
    :cond_2
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    .line 37
    move-result v1

    .line 38
    move p0, v3

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-static {v0, v1, p0, v2}, Lorg/threeten/bp/i;->w(IIII)Lorg/threeten/bp/i;

    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method private static p(IIII)Lorg/threeten/bp/i;
    .locals 1

    .line 1
    .line 2
    or-int v0, p1, p2

    .line 3
    or-int/2addr v0, p3

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Lorg/threeten/bp/i;->HOURS:[Lorg/threeten/bp/i;

    .line 8
    .line 9
    aget-object p0, p1, p0

    .line 10
    return-object p0

    .line 11
    .line 12
    :cond_0
    new-instance v0, Lorg/threeten/bp/i;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0, p1, p2, p3}, Lorg/threeten/bp/i;-><init>(IIII)V

    .line 16
    return-object v0
.end method

.method public static q(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/i;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lorg/threeten/bp/temporal/i;->c()Lorg/threeten/bp/temporal/j;

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
    check-cast v0, Lorg/threeten/bp/i;

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
    const-string v2, "Unable to obtain LocalTime from TemporalAccessor: "

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

.method private r(Lorg/threeten/bp/temporal/h;)I
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/i$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

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
    .line 15
    const/16 v2, 0xc

    .line 16
    .line 17
    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    new-instance v0, Lorg/threeten/bp/temporal/l;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    const-string v2, "Unsupported field: "

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, p1}, Lorg/threeten/bp/temporal/l;-><init>(Ljava/lang/String;)V

    .line 41
    throw v0

    .line 42
    .line 43
    :pswitch_0
    iget-byte p1, p0, Lorg/threeten/bp/i;->hour:B

    .line 44
    div-int/2addr p1, v2

    .line 45
    return p1

    .line 46
    .line 47
    :pswitch_1
    iget-byte p1, p0, Lorg/threeten/bp/i;->hour:B

    .line 48
    .line 49
    if-nez p1, :cond_0

    .line 50
    .line 51
    const/16 p1, 0x18

    .line 52
    :cond_0
    return p1

    .line 53
    .line 54
    :pswitch_2
    iget-byte p1, p0, Lorg/threeten/bp/i;->hour:B

    .line 55
    return p1

    .line 56
    .line 57
    :pswitch_3
    iget-byte p1, p0, Lorg/threeten/bp/i;->hour:B

    .line 58
    rem-int/2addr p1, v2

    .line 59
    .line 60
    rem-int/lit8 v0, p1, 0xc

    .line 61
    .line 62
    if-nez v0, :cond_1

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    move v2, p1

    .line 65
    :goto_0
    return v2

    .line 66
    .line 67
    :pswitch_4
    iget-byte p1, p0, Lorg/threeten/bp/i;->hour:B

    .line 68
    rem-int/2addr p1, v2

    .line 69
    return p1

    .line 70
    .line 71
    :pswitch_5
    iget-byte p1, p0, Lorg/threeten/bp/i;->hour:B

    .line 72
    .line 73
    mul-int/lit8 p1, p1, 0x3c

    .line 74
    .line 75
    iget-byte v0, p0, Lorg/threeten/bp/i;->minute:B

    .line 76
    add-int/2addr p1, v0

    .line 77
    return p1

    .line 78
    .line 79
    :pswitch_6
    iget-byte p1, p0, Lorg/threeten/bp/i;->minute:B

    .line 80
    return p1

    .line 81
    .line 82
    .line 83
    :pswitch_7
    invoke-virtual {p0}, Lorg/threeten/bp/i;->H()I

    .line 84
    move-result p1

    .line 85
    return p1

    .line 86
    .line 87
    :pswitch_8
    iget-byte p1, p0, Lorg/threeten/bp/i;->second:B

    .line 88
    return p1

    .line 89
    .line 90
    .line 91
    :pswitch_9
    invoke-virtual {p0}, Lorg/threeten/bp/i;->G()J

    .line 92
    move-result-wide v0

    .line 93
    .line 94
    .line 95
    const-wide/32 v2, 0xf4240

    .line 96
    div-long/2addr v0, v2

    .line 97
    long-to-int p1, v0

    .line 98
    return p1

    .line 99
    .line 100
    :pswitch_a
    iget p1, p0, Lorg/threeten/bp/i;->nano:I

    .line 101
    .line 102
    .line 103
    const v0, 0xf4240

    .line 104
    div-int/2addr p1, v0

    .line 105
    return p1

    .line 106
    .line 107
    :pswitch_b
    new-instance v0, Lorg/threeten/bp/b;

    .line 108
    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object p1

    .line 123
    .line 124
    .line 125
    invoke-direct {v0, p1}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 126
    throw v0

    .line 127
    .line 128
    :pswitch_c
    iget p1, p0, Lorg/threeten/bp/i;->nano:I

    .line 129
    .line 130
    div-int/lit16 p1, p1, 0x3e8

    .line 131
    return p1

    .line 132
    .line 133
    :pswitch_d
    new-instance v0, Lorg/threeten/bp/b;

    .line 134
    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object p1

    .line 149
    .line 150
    .line 151
    invoke-direct {v0, p1}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 152
    throw v0

    .line 153
    .line 154
    :pswitch_e
    iget p1, p0, Lorg/threeten/bp/i;->nano:I

    .line 155
    return p1

    .line 156
    nop

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
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
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

.method public static w(IIII)Lorg/threeten/bp/i;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->HOUR_OF_DAY:Lorg/threeten/bp/temporal/a;

    .line 3
    int-to-long v1, p0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/a;->j(J)J

    .line 7
    .line 8
    sget-object v0, Lorg/threeten/bp/temporal/a;->MINUTE_OF_HOUR:Lorg/threeten/bp/temporal/a;

    .line 9
    int-to-long v1, p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/a;->j(J)J

    .line 13
    .line 14
    sget-object v0, Lorg/threeten/bp/temporal/a;->SECOND_OF_MINUTE:Lorg/threeten/bp/temporal/a;

    .line 15
    int-to-long v1, p2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/a;->j(J)J

    .line 19
    .line 20
    sget-object v0, Lorg/threeten/bp/temporal/a;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/a;

    .line 21
    int-to-long v1, p3

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/a;->j(J)J

    .line 25
    .line 26
    .line 27
    invoke-static {p0, p1, p2, p3}, Lorg/threeten/bp/i;->p(IIII)Lorg/threeten/bp/i;

    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/o;

    .line 3
    const/4 v1, 0x5

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/o;-><init>(BLjava/lang/Object;)V

    .line 7
    return-object v0
.end method

.method public static x(J)Lorg/threeten/bp/i;
    .locals 7

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->NANO_OF_DAY:Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Lorg/threeten/bp/temporal/a;->j(J)J

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    const-wide v0, 0x34630b8a000L

    .line 11
    .line 12
    div-long v2, p0, v0

    .line 13
    long-to-int v2, v2

    .line 14
    int-to-long v3, v2

    .line 15
    mul-long/2addr v3, v0

    .line 16
    sub-long/2addr p0, v3

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    const-wide v0, 0xdf8475800L

    .line 22
    .line 23
    div-long v3, p0, v0

    .line 24
    long-to-int v3, v3

    .line 25
    int-to-long v4, v3

    .line 26
    mul-long/2addr v4, v0

    .line 27
    sub-long/2addr p0, v4

    .line 28
    .line 29
    .line 30
    const-wide/32 v0, 0x3b9aca00

    .line 31
    .line 32
    div-long v4, p0, v0

    .line 33
    long-to-int v4, v4

    .line 34
    int-to-long v5, v4

    .line 35
    mul-long/2addr v5, v0

    .line 36
    sub-long/2addr p0, v5

    .line 37
    long-to-int p0, p0

    .line 38
    .line 39
    .line 40
    invoke-static {v2, v3, v4, p0}, Lorg/threeten/bp/i;->p(IIII)Lorg/threeten/bp/i;

    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method public static y(J)Lorg/threeten/bp/i;
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->SECOND_OF_DAY:Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Lorg/threeten/bp/temporal/a;->j(J)J

    .line 6
    .line 7
    const-wide/16 v0, 0xe10

    .line 8
    .line 9
    div-long v0, p0, v0

    .line 10
    long-to-int v0, v0

    .line 11
    .line 12
    mul-int/lit16 v1, v0, 0xe10

    .line 13
    int-to-long v1, v1

    .line 14
    sub-long/2addr p0, v1

    .line 15
    .line 16
    const-wide/16 v1, 0x3c

    .line 17
    .line 18
    div-long v1, p0, v1

    .line 19
    long-to-int v1, v1

    .line 20
    .line 21
    mul-int/lit8 v2, v1, 0x3c

    .line 22
    int-to-long v2, v2

    .line 23
    sub-long/2addr p0, v2

    .line 24
    long-to-int p0, p0

    .line 25
    const/4 p1, 0x0

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1, p0, p1}, Lorg/threeten/bp/i;->p(IIII)Lorg/threeten/bp/i;

    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method static z(JI)Lorg/threeten/bp/i;
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->SECOND_OF_DAY:Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Lorg/threeten/bp/temporal/a;->j(J)J

    .line 6
    .line 7
    sget-object v0, Lorg/threeten/bp/temporal/a;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/a;

    .line 8
    int-to-long v1, p2

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/a;->j(J)J

    .line 12
    .line 13
    const-wide/16 v0, 0xe10

    .line 14
    .line 15
    div-long v0, p0, v0

    .line 16
    long-to-int v0, v0

    .line 17
    .line 18
    mul-int/lit16 v1, v0, 0xe10

    .line 19
    int-to-long v1, v1

    .line 20
    sub-long/2addr p0, v1

    .line 21
    .line 22
    const-wide/16 v1, 0x3c

    .line 23
    .line 24
    div-long v1, p0, v1

    .line 25
    long-to-int v1, v1

    .line 26
    .line 27
    mul-int/lit8 v2, v1, 0x3c

    .line 28
    int-to-long v2, v2

    .line 29
    sub-long/2addr p0, v2

    .line 30
    long-to-int p0, p0

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1, p0, p2}, Lorg/threeten/bp/i;->p(IIII)Lorg/threeten/bp/i;

    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method


# virtual methods
.method public A(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/i;
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
    sget-object v1, Lorg/threeten/bp/i$b;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

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
    const-wide/16 v0, 0x2

    .line 44
    rem-long/2addr p1, v0

    .line 45
    .line 46
    const-wide/16 v0, 0xc

    .line 47
    mul-long/2addr p1, v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/i;->B(J)Lorg/threeten/bp/i;

    .line 51
    move-result-object p1

    .line 52
    return-object p1

    .line 53
    .line 54
    .line 55
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/i;->B(J)Lorg/threeten/bp/i;

    .line 56
    move-result-object p1

    .line 57
    return-object p1

    .line 58
    .line 59
    .line 60
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/i;->C(J)Lorg/threeten/bp/i;

    .line 61
    move-result-object p1

    .line 62
    return-object p1

    .line 63
    .line 64
    .line 65
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/i;->E(J)Lorg/threeten/bp/i;

    .line 66
    move-result-object p1

    .line 67
    return-object p1

    .line 68
    .line 69
    .line 70
    :pswitch_4
    const-wide/32 v0, 0x5265c00

    .line 71
    rem-long/2addr p1, v0

    .line 72
    .line 73
    .line 74
    const-wide/32 v0, 0xf4240

    .line 75
    mul-long/2addr p1, v0

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/i;->D(J)Lorg/threeten/bp/i;

    .line 79
    move-result-object p1

    .line 80
    return-object p1

    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    :pswitch_5
    const-wide v0, 0x141dd76000L

    .line 86
    rem-long/2addr p1, v0

    .line 87
    .line 88
    const-wide/16 v0, 0x3e8

    .line 89
    mul-long/2addr p1, v0

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/i;->D(J)Lorg/threeten/bp/i;

    .line 93
    move-result-object p1

    .line 94
    return-object p1

    .line 95
    .line 96
    .line 97
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/i;->D(J)Lorg/threeten/bp/i;

    .line 98
    move-result-object p1

    .line 99
    return-object p1

    .line 100
    .line 101
    .line 102
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/k;->b(Lorg/threeten/bp/temporal/d;J)Lorg/threeten/bp/temporal/d;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    check-cast p1, Lorg/threeten/bp/i;

    .line 106
    return-object p1

    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public B(J)Lorg/threeten/bp/i;
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
    :cond_0
    const-wide/16 v0, 0x18

    .line 10
    rem-long/2addr p1, v0

    .line 11
    long-to-int p1, p1

    .line 12
    .line 13
    iget-byte p2, p0, Lorg/threeten/bp/i;->hour:B

    .line 14
    add-int/2addr p1, p2

    .line 15
    .line 16
    add-int/lit8 p1, p1, 0x18

    .line 17
    .line 18
    rem-int/lit8 p1, p1, 0x18

    .line 19
    .line 20
    iget-byte p2, p0, Lorg/threeten/bp/i;->minute:B

    .line 21
    .line 22
    iget-byte v0, p0, Lorg/threeten/bp/i;->second:B

    .line 23
    .line 24
    iget v1, p0, Lorg/threeten/bp/i;->nano:I

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2, v0, v1}, Lorg/threeten/bp/i;->p(IIII)Lorg/threeten/bp/i;

    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method

.method public C(J)Lorg/threeten/bp/i;
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
    iget-byte v0, p0, Lorg/threeten/bp/i;->hour:B

    .line 10
    .line 11
    mul-int/lit8 v0, v0, 0x3c

    .line 12
    .line 13
    iget-byte v1, p0, Lorg/threeten/bp/i;->minute:B

    .line 14
    add-int/2addr v0, v1

    .line 15
    .line 16
    const-wide/16 v1, 0x5a0

    .line 17
    rem-long/2addr p1, v1

    .line 18
    long-to-int p1, p1

    .line 19
    add-int/2addr p1, v0

    .line 20
    .line 21
    add-int/lit16 p1, p1, 0x5a0

    .line 22
    .line 23
    rem-int/lit16 p1, p1, 0x5a0

    .line 24
    .line 25
    if-ne v0, p1, :cond_1

    .line 26
    return-object p0

    .line 27
    .line 28
    :cond_1
    div-int/lit8 p2, p1, 0x3c

    .line 29
    .line 30
    rem-int/lit8 p1, p1, 0x3c

    .line 31
    .line 32
    iget-byte v0, p0, Lorg/threeten/bp/i;->second:B

    .line 33
    .line 34
    iget v1, p0, Lorg/threeten/bp/i;->nano:I

    .line 35
    .line 36
    .line 37
    invoke-static {p2, p1, v0, v1}, Lorg/threeten/bp/i;->p(IIII)Lorg/threeten/bp/i;

    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method

.method public D(J)Lorg/threeten/bp/i;
    .locals 9

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
    invoke-virtual {p0}, Lorg/threeten/bp/i;->G()J

    .line 11
    move-result-wide v0

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    const-wide v2, 0x4e94914f0000L

    .line 17
    rem-long/2addr p1, v2

    .line 18
    add-long/2addr p1, v0

    .line 19
    add-long/2addr p1, v2

    .line 20
    rem-long/2addr p1, v2

    .line 21
    .line 22
    cmp-long v0, v0, p1

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    return-object p0

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    :cond_1
    const-wide v0, 0x34630b8a000L

    .line 31
    .line 32
    div-long v0, p1, v0

    .line 33
    long-to-int v0, v0

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    const-wide v1, 0xdf8475800L

    .line 39
    .line 40
    div-long v1, p1, v1

    .line 41
    .line 42
    const-wide/16 v3, 0x3c

    .line 43
    rem-long/2addr v1, v3

    .line 44
    long-to-int v1, v1

    .line 45
    .line 46
    .line 47
    const-wide/32 v5, 0x3b9aca00

    .line 48
    .line 49
    div-long v7, p1, v5

    .line 50
    rem-long/2addr v7, v3

    .line 51
    long-to-int v2, v7

    .line 52
    rem-long/2addr p1, v5

    .line 53
    long-to-int p1, p1

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v1, v2, p1}, Lorg/threeten/bp/i;->p(IIII)Lorg/threeten/bp/i;

    .line 57
    move-result-object p1

    .line 58
    return-object p1
.end method

.method public E(J)Lorg/threeten/bp/i;
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
    iget-byte v0, p0, Lorg/threeten/bp/i;->hour:B

    .line 10
    .line 11
    mul-int/lit16 v0, v0, 0xe10

    .line 12
    .line 13
    iget-byte v1, p0, Lorg/threeten/bp/i;->minute:B

    .line 14
    .line 15
    mul-int/lit8 v1, v1, 0x3c

    .line 16
    add-int/2addr v0, v1

    .line 17
    .line 18
    iget-byte v1, p0, Lorg/threeten/bp/i;->second:B

    .line 19
    add-int/2addr v0, v1

    .line 20
    .line 21
    .line 22
    const-wide/32 v1, 0x15180

    .line 23
    rem-long/2addr p1, v1

    .line 24
    long-to-int p1, p1

    .line 25
    add-int/2addr p1, v0

    .line 26
    .line 27
    .line 28
    const p2, 0x15180

    .line 29
    add-int/2addr p1, p2

    .line 30
    rem-int/2addr p1, p2

    .line 31
    .line 32
    if-ne v0, p1, :cond_1

    .line 33
    return-object p0

    .line 34
    .line 35
    :cond_1
    div-int/lit16 p2, p1, 0xe10

    .line 36
    .line 37
    div-int/lit8 v0, p1, 0x3c

    .line 38
    .line 39
    rem-int/lit8 v0, v0, 0x3c

    .line 40
    .line 41
    rem-int/lit8 p1, p1, 0x3c

    .line 42
    .line 43
    iget v1, p0, Lorg/threeten/bp/i;->nano:I

    .line 44
    .line 45
    .line 46
    invoke-static {p2, v0, p1, v1}, Lorg/threeten/bp/i;->p(IIII)Lorg/threeten/bp/i;

    .line 47
    move-result-object p1

    .line 48
    return-object p1
.end method

.method public G()J
    .locals 6

    .line 1
    iget-byte v0, p0, Lorg/threeten/bp/i;->hour:B

    int-to-long v0, v0

    const-wide v2, 0x34630b8a000L

    mul-long/2addr v0, v2

    iget-byte v2, p0, Lorg/threeten/bp/i;->minute:B

    int-to-long v2, v2

    const-wide v4, 0xdf8475800L

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-byte v2, p0, Lorg/threeten/bp/i;->second:B

    int-to-long v2, v2

    const-wide/32 v4, 0x3b9aca00

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget v2, p0, Lorg/threeten/bp/i;->nano:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public H()I
    .locals 2

    .line 1
    iget-byte v0, p0, Lorg/threeten/bp/i;->hour:B

    mul-int/lit16 v0, v0, 0xe10

    iget-byte v1, p0, Lorg/threeten/bp/i;->minute:B

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    iget-byte v1, p0, Lorg/threeten/bp/i;->second:B

    add-int/2addr v0, v1

    return v0
.end method

.method public I(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/i;
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/i;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lorg/threeten/bp/i;

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
    check-cast p1, Lorg/threeten/bp/i;

    .line 14
    return-object p1
.end method

.method public J(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/i;
    .locals 5

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
    sget-object v1, Lorg/threeten/bp/i$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

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
    .line 20
    const-wide/16 v1, 0x0

    .line 21
    .line 22
    const-wide/16 v3, 0xc

    .line 23
    .line 24
    .line 25
    packed-switch v0, :pswitch_data_0

    .line 26
    .line 27
    new-instance p2, Lorg/threeten/bp/temporal/l;

    .line 28
    .line 29
    new-instance p3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    const-string v0, "Unsupported field: "

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-direct {p2, p1}, Lorg/threeten/bp/temporal/l;-><init>(Ljava/lang/String;)V

    .line 48
    throw p2

    .line 49
    .line 50
    :pswitch_0
    iget-byte p1, p0, Lorg/threeten/bp/i;->hour:B

    .line 51
    .line 52
    div-int/lit8 p1, p1, 0xc

    .line 53
    int-to-long v0, p1

    .line 54
    sub-long/2addr p2, v0

    .line 55
    mul-long/2addr p2, v3

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/i;->B(J)Lorg/threeten/bp/i;

    .line 59
    move-result-object p1

    .line 60
    return-object p1

    .line 61
    .line 62
    :pswitch_1
    const-wide/16 v3, 0x18

    .line 63
    .line 64
    cmp-long p1, p2, v3

    .line 65
    .line 66
    if-nez p1, :cond_0

    .line 67
    move-wide p2, v1

    .line 68
    :cond_0
    long-to-int p1, p2

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Lorg/threeten/bp/i;->K(I)Lorg/threeten/bp/i;

    .line 72
    move-result-object p1

    .line 73
    return-object p1

    .line 74
    :pswitch_2
    long-to-int p1, p2

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lorg/threeten/bp/i;->K(I)Lorg/threeten/bp/i;

    .line 78
    move-result-object p1

    .line 79
    return-object p1

    .line 80
    .line 81
    :pswitch_3
    cmp-long p1, p2, v3

    .line 82
    .line 83
    if-nez p1, :cond_1

    .line 84
    move-wide p2, v1

    .line 85
    .line 86
    :cond_1
    iget-byte p1, p0, Lorg/threeten/bp/i;->hour:B

    .line 87
    .line 88
    rem-int/lit8 p1, p1, 0xc

    .line 89
    int-to-long v0, p1

    .line 90
    sub-long/2addr p2, v0

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/i;->B(J)Lorg/threeten/bp/i;

    .line 94
    move-result-object p1

    .line 95
    return-object p1

    .line 96
    .line 97
    :pswitch_4
    iget-byte p1, p0, Lorg/threeten/bp/i;->hour:B

    .line 98
    .line 99
    rem-int/lit8 p1, p1, 0xc

    .line 100
    int-to-long v0, p1

    .line 101
    sub-long/2addr p2, v0

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/i;->B(J)Lorg/threeten/bp/i;

    .line 105
    move-result-object p1

    .line 106
    return-object p1

    .line 107
    .line 108
    :pswitch_5
    iget-byte p1, p0, Lorg/threeten/bp/i;->hour:B

    .line 109
    .line 110
    mul-int/lit8 p1, p1, 0x3c

    .line 111
    .line 112
    iget-byte v0, p0, Lorg/threeten/bp/i;->minute:B

    .line 113
    add-int/2addr p1, v0

    .line 114
    int-to-long v0, p1

    .line 115
    sub-long/2addr p2, v0

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/i;->C(J)Lorg/threeten/bp/i;

    .line 119
    move-result-object p1

    .line 120
    return-object p1

    .line 121
    :pswitch_6
    long-to-int p1, p2

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, p1}, Lorg/threeten/bp/i;->L(I)Lorg/threeten/bp/i;

    .line 125
    move-result-object p1

    .line 126
    return-object p1

    .line 127
    .line 128
    .line 129
    :pswitch_7
    invoke-virtual {p0}, Lorg/threeten/bp/i;->H()I

    .line 130
    move-result p1

    .line 131
    int-to-long v0, p1

    .line 132
    sub-long/2addr p2, v0

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/i;->E(J)Lorg/threeten/bp/i;

    .line 136
    move-result-object p1

    .line 137
    return-object p1

    .line 138
    :pswitch_8
    long-to-int p1, p2

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, p1}, Lorg/threeten/bp/i;->N(I)Lorg/threeten/bp/i;

    .line 142
    move-result-object p1

    .line 143
    return-object p1

    .line 144
    .line 145
    .line 146
    :pswitch_9
    const-wide/32 v0, 0xf4240

    .line 147
    mul-long/2addr p2, v0

    .line 148
    .line 149
    .line 150
    invoke-static {p2, p3}, Lorg/threeten/bp/i;->x(J)Lorg/threeten/bp/i;

    .line 151
    move-result-object p1

    .line 152
    return-object p1

    .line 153
    :pswitch_a
    long-to-int p1, p2

    .line 154
    .line 155
    .line 156
    const p2, 0xf4240

    .line 157
    mul-int/2addr p1, p2

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, p1}, Lorg/threeten/bp/i;->M(I)Lorg/threeten/bp/i;

    .line 161
    move-result-object p1

    .line 162
    return-object p1

    .line 163
    .line 164
    :pswitch_b
    const-wide/16 v0, 0x3e8

    .line 165
    mul-long/2addr p2, v0

    .line 166
    .line 167
    .line 168
    invoke-static {p2, p3}, Lorg/threeten/bp/i;->x(J)Lorg/threeten/bp/i;

    .line 169
    move-result-object p1

    .line 170
    return-object p1

    .line 171
    :pswitch_c
    long-to-int p1, p2

    .line 172
    .line 173
    mul-int/lit16 p1, p1, 0x3e8

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, p1}, Lorg/threeten/bp/i;->M(I)Lorg/threeten/bp/i;

    .line 177
    move-result-object p1

    .line 178
    return-object p1

    .line 179
    .line 180
    .line 181
    :pswitch_d
    invoke-static {p2, p3}, Lorg/threeten/bp/i;->x(J)Lorg/threeten/bp/i;

    .line 182
    move-result-object p1

    .line 183
    return-object p1

    .line 184
    :pswitch_e
    long-to-int p1, p2

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, p1}, Lorg/threeten/bp/i;->M(I)Lorg/threeten/bp/i;

    .line 188
    move-result-object p1

    .line 189
    return-object p1

    .line 190
    .line 191
    .line 192
    :cond_2
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/h;->b(Lorg/threeten/bp/temporal/d;J)Lorg/threeten/bp/temporal/d;

    .line 193
    move-result-object p1

    .line 194
    .line 195
    check-cast p1, Lorg/threeten/bp/i;

    .line 196
    return-object p1

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
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
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

.method public K(I)Lorg/threeten/bp/i;
    .locals 3

    .line 1
    .line 2
    iget-byte v0, p0, Lorg/threeten/bp/i;->hour:B

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-object p0

    .line 6
    .line 7
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/a;->HOUR_OF_DAY:Lorg/threeten/bp/temporal/a;

    .line 8
    int-to-long v1, p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/a;->j(J)J

    .line 12
    .line 13
    iget-byte v0, p0, Lorg/threeten/bp/i;->minute:B

    .line 14
    .line 15
    iget-byte v1, p0, Lorg/threeten/bp/i;->second:B

    .line 16
    .line 17
    iget v2, p0, Lorg/threeten/bp/i;->nano:I

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0, v1, v2}, Lorg/threeten/bp/i;->p(IIII)Lorg/threeten/bp/i;

    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public L(I)Lorg/threeten/bp/i;
    .locals 3

    .line 1
    .line 2
    iget-byte v0, p0, Lorg/threeten/bp/i;->minute:B

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-object p0

    .line 6
    .line 7
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/a;->MINUTE_OF_HOUR:Lorg/threeten/bp/temporal/a;

    .line 8
    int-to-long v1, p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/a;->j(J)J

    .line 12
    .line 13
    iget-byte v0, p0, Lorg/threeten/bp/i;->hour:B

    .line 14
    .line 15
    iget-byte v1, p0, Lorg/threeten/bp/i;->second:B

    .line 16
    .line 17
    iget v2, p0, Lorg/threeten/bp/i;->nano:I

    .line 18
    .line 19
    .line 20
    invoke-static {v0, p1, v1, v2}, Lorg/threeten/bp/i;->p(IIII)Lorg/threeten/bp/i;

    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public M(I)Lorg/threeten/bp/i;
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lorg/threeten/bp/i;->nano:I

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-object p0

    .line 6
    .line 7
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/a;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/a;

    .line 8
    int-to-long v1, p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/a;->j(J)J

    .line 12
    .line 13
    iget-byte v0, p0, Lorg/threeten/bp/i;->hour:B

    .line 14
    .line 15
    iget-byte v1, p0, Lorg/threeten/bp/i;->minute:B

    .line 16
    .line 17
    iget-byte v2, p0, Lorg/threeten/bp/i;->second:B

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1, v2, p1}, Lorg/threeten/bp/i;->p(IIII)Lorg/threeten/bp/i;

    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public N(I)Lorg/threeten/bp/i;
    .locals 3

    .line 1
    .line 2
    iget-byte v0, p0, Lorg/threeten/bp/i;->second:B

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-object p0

    .line 6
    .line 7
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/a;->SECOND_OF_MINUTE:Lorg/threeten/bp/temporal/a;

    .line 8
    int-to-long v1, p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/a;->j(J)J

    .line 12
    .line 13
    iget-byte v0, p0, Lorg/threeten/bp/i;->hour:B

    .line 14
    .line 15
    iget-byte v1, p0, Lorg/threeten/bp/i;->minute:B

    .line 16
    .line 17
    iget v2, p0, Lorg/threeten/bp/i;->nano:I

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1, p1, v2}, Lorg/threeten/bp/i;->p(IIII)Lorg/threeten/bp/i;

    .line 21
    move-result-object p1

    .line 22
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
    iget v0, p0, Lorg/threeten/bp/i;->nano:I

    .line 3
    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    iget-byte v0, p0, Lorg/threeten/bp/i;->second:B

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-byte v0, p0, Lorg/threeten/bp/i;->minute:B

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-byte v0, p0, Lorg/threeten/bp/i;->hour:B

    .line 15
    not-int v0, v0

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    iget-byte v0, p0, Lorg/threeten/bp/i;->hour:B

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 25
    .line 26
    iget-byte v0, p0, Lorg/threeten/bp/i;->minute:B

    .line 27
    not-int v0, v0

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_1
    iget-byte v0, p0, Lorg/threeten/bp/i;->hour:B

    .line 34
    .line 35
    .line 36
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 37
    .line 38
    iget-byte v0, p0, Lorg/threeten/bp/i;->minute:B

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 42
    .line 43
    iget-byte v0, p0, Lorg/threeten/bp/i;->second:B

    .line 44
    not-int v0, v0

    .line 45
    .line 46
    .line 47
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_2
    iget-byte v0, p0, Lorg/threeten/bp/i;->hour:B

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 54
    .line 55
    iget-byte v0, p0, Lorg/threeten/bp/i;->minute:B

    .line 56
    .line 57
    .line 58
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 59
    .line 60
    iget-byte v0, p0, Lorg/threeten/bp/i;->second:B

    .line 61
    .line 62
    .line 63
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 64
    .line 65
    iget v0, p0, Lorg/threeten/bp/i;->nano:I

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 69
    :goto_0
    return-void
.end method

.method public b(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/temporal/d;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->NANO_OF_DAY:Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/threeten/bp/i;->G()J

    .line 6
    move-result-wide v1

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/d;->h(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/temporal/d;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public c(Lorg/threeten/bp/temporal/h;)Lorg/threeten/bp/temporal/m;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lra/c;->c(Lorg/threeten/bp/temporal/h;)Lorg/threeten/bp/temporal/m;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lorg/threeten/bp/i;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lorg/threeten/bp/i;->o(Lorg/threeten/bp/i;)I

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
    invoke-static {}, Lorg/threeten/bp/temporal/i;->e()Lorg/threeten/bp/temporal/j;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    sget-object p1, Lorg/threeten/bp/temporal/b;->NANOS:Lorg/threeten/bp/temporal/b;

    .line 9
    return-object p1

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/i;->c()Lorg/threeten/bp/temporal/j;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    return-object p0

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-static {}, Lorg/threeten/bp/temporal/i;->a()Lorg/threeten/bp/temporal/j;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-eq p1, v0, :cond_3

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lorg/threeten/bp/temporal/i;->g()Lorg/threeten/bp/temporal/j;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    if-eq p1, v0, :cond_3

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lorg/threeten/bp/temporal/i;->f()Lorg/threeten/bp/temporal/j;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    if-eq p1, v0, :cond_3

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lorg/threeten/bp/temporal/i;->d()Lorg/threeten/bp/temporal/j;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    if-eq p1, v0, :cond_3

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lorg/threeten/bp/temporal/i;->b()Lorg/threeten/bp/temporal/j;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    if-ne p1, v0, :cond_2

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/j;->a(Lorg/threeten/bp/temporal/e;)Ljava/lang/Object;

    .line 51
    move-result-object p1

    .line 52
    return-object p1

    .line 53
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 54
    return-object p1
.end method

.method public bridge synthetic e(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/i;->v(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/i;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
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
    instance-of v1, p1, Lorg/threeten/bp/i;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    check-cast p1, Lorg/threeten/bp/i;

    .line 12
    .line 13
    iget-byte v1, p0, Lorg/threeten/bp/i;->hour:B

    .line 14
    .line 15
    iget-byte v3, p1, Lorg/threeten/bp/i;->hour:B

    .line 16
    .line 17
    if-ne v1, v3, :cond_1

    .line 18
    .line 19
    iget-byte v1, p0, Lorg/threeten/bp/i;->minute:B

    .line 20
    .line 21
    iget-byte v3, p1, Lorg/threeten/bp/i;->minute:B

    .line 22
    .line 23
    if-ne v1, v3, :cond_1

    .line 24
    .line 25
    iget-byte v1, p0, Lorg/threeten/bp/i;->second:B

    .line 26
    .line 27
    iget-byte v3, p1, Lorg/threeten/bp/i;->second:B

    .line 28
    .line 29
    if-ne v1, v3, :cond_1

    .line 30
    .line 31
    iget v1, p0, Lorg/threeten/bp/i;->nano:I

    .line 32
    .line 33
    iget p1, p1, Lorg/threeten/bp/i;->nano:I

    .line 34
    .line 35
    if-ne v1, p1, :cond_1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v0, v2

    .line 38
    :goto_0
    return v0

    .line 39
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
    invoke-direct {p0, p1}, Lorg/threeten/bp/i;->r(Lorg/threeten/bp/temporal/h;)I

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

.method public bridge synthetic h(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/i;->J(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/i;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public hashCode()I
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/i;->G()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    const/16 v2, 0x20

    .line 7
    .line 8
    ushr-long v2, v0, v2

    .line 9
    xor-long/2addr v0, v2

    .line 10
    long-to-int v0, v0

    .line 11
    return v0
.end method

.method public i(Lorg/threeten/bp/temporal/h;)Z
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
    invoke-interface {p1}, Lorg/threeten/bp/temporal/h;->e()Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    .line 11
    :cond_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->c(Lorg/threeten/bp/temporal/e;)Z

    .line 15
    move-result p1

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    :goto_0
    return p1
.end method

.method public bridge synthetic j(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/i;->I(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/i;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public k(Lorg/threeten/bp/temporal/h;)J
    .locals 4

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    sget-object v0, Lorg/threeten/bp/temporal/a;->NANO_OF_DAY:Lorg/threeten/bp/temporal/a;

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/threeten/bp/i;->G()J

    .line 12
    move-result-wide v0

    .line 13
    return-wide v0

    .line 14
    .line 15
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/a;->MICRO_OF_DAY:Lorg/threeten/bp/temporal/a;

    .line 16
    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/threeten/bp/i;->G()J

    .line 21
    move-result-wide v0

    .line 22
    .line 23
    const-wide/16 v2, 0x3e8

    .line 24
    div-long/2addr v0, v2

    .line 25
    return-wide v0

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-direct {p0, p1}, Lorg/threeten/bp/i;->r(Lorg/threeten/bp/temporal/h;)I

    .line 29
    move-result p1

    .line 30
    int-to-long v0, p1

    .line 31
    return-wide v0

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->h(Lorg/threeten/bp/temporal/e;)J

    .line 35
    move-result-wide v0

    .line 36
    return-wide v0
.end method

.method public bridge synthetic l(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/i;->A(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/i;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public n(Lorg/threeten/bp/s;)Lorg/threeten/bp/m;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lorg/threeten/bp/m;->r(Lorg/threeten/bp/i;Lorg/threeten/bp/s;)Lorg/threeten/bp/m;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public o(Lorg/threeten/bp/i;)I
    .locals 2

    .line 1
    .line 2
    iget-byte v0, p0, Lorg/threeten/bp/i;->hour:B

    .line 3
    .line 4
    iget-byte v1, p1, Lorg/threeten/bp/i;->hour:B

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lra/d;->a(II)I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-byte v0, p0, Lorg/threeten/bp/i;->minute:B

    .line 13
    .line 14
    iget-byte v1, p1, Lorg/threeten/bp/i;->minute:B

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lra/d;->a(II)I

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iget-byte v0, p0, Lorg/threeten/bp/i;->second:B

    .line 23
    .line 24
    iget-byte v1, p1, Lorg/threeten/bp/i;->second:B

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Lra/d;->a(II)I

    .line 28
    move-result v0

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    iget v0, p0, Lorg/threeten/bp/i;->nano:I

    .line 33
    .line 34
    iget p1, p1, Lorg/threeten/bp/i;->nano:I

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p1}, Lra/d;->a(II)I

    .line 38
    move-result v0

    .line 39
    :cond_0
    return v0
.end method

.method public s()I
    .locals 1

    .line 1
    iget-byte v0, p0, Lorg/threeten/bp/i;->hour:B

    return v0
.end method

.method public t()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/threeten/bp/i;->nano:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    const/16 v1, 0x12

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    .line 9
    iget-byte v1, p0, Lorg/threeten/bp/i;->hour:B

    .line 10
    .line 11
    iget-byte v2, p0, Lorg/threeten/bp/i;->minute:B

    .line 12
    .line 13
    iget-byte v3, p0, Lorg/threeten/bp/i;->second:B

    .line 14
    .line 15
    iget v4, p0, Lorg/threeten/bp/i;->nano:I

    .line 16
    .line 17
    const/16 v5, 0xa

    .line 18
    .line 19
    if-ge v1, v5, :cond_0

    .line 20
    .line 21
    const-string v6, "0"

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    const-string v6, ""

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v1, ":"

    .line 33
    .line 34
    const-string v6, ":0"

    .line 35
    .line 36
    if-ge v2, v5, :cond_1

    .line 37
    move-object v7, v6

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move-object v7, v1

    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    if-gtz v3, :cond_2

    .line 48
    .line 49
    if-lez v4, :cond_6

    .line 50
    .line 51
    :cond_2
    if-ge v3, v5, :cond_3

    .line 52
    move-object v1, v6

    .line 53
    .line 54
    .line 55
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    if-lez v4, :cond_6

    .line 61
    .line 62
    const/16 v1, 0x2e

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const v1, 0xf4240

    .line 69
    .line 70
    rem-int v2, v4, v1

    .line 71
    const/4 v3, 0x1

    .line 72
    .line 73
    if-nez v2, :cond_4

    .line 74
    div-int/2addr v4, v1

    .line 75
    .line 76
    add-int/lit16 v4, v4, 0x3e8

    .line 77
    .line 78
    .line 79
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    goto :goto_2

    .line 89
    .line 90
    :cond_4
    rem-int/lit16 v2, v4, 0x3e8

    .line 91
    .line 92
    if-nez v2, :cond_5

    .line 93
    .line 94
    div-int/lit16 v4, v4, 0x3e8

    .line 95
    add-int/2addr v4, v1

    .line 96
    .line 97
    .line 98
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 99
    move-result-object v1

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 103
    move-result-object v1

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    goto :goto_2

    .line 108
    .line 109
    .line 110
    :cond_5
    const v1, 0x3b9aca00

    .line 111
    add-int/2addr v4, v1

    .line 112
    .line 113
    .line 114
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 115
    move-result-object v1

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 119
    move-result-object v1

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    :cond_6
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object v0

    .line 127
    return-object v0
.end method

.method public u()I
    .locals 1

    .line 1
    iget-byte v0, p0, Lorg/threeten/bp/i;->second:B

    return v0
.end method

.method public v(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/i;
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
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/i;->A(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/i;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    const-wide/16 v0, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0, v1, p3}, Lorg/threeten/bp/i;->A(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/i;

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
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/i;->A(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/i;

    .line 27
    move-result-object p1

    .line 28
    :goto_0
    return-object p1
.end method
