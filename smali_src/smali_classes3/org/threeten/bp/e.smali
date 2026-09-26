.class public final Lorg/threeten/bp/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/threeten/bp/e;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final BI_NANOS_PER_SECOND:Ljava/math/BigInteger;

.field private static final NANOS_PER_MILLI:I = 0xf4240

.field private static final NANOS_PER_SECOND:I = 0x3b9aca00

.field private static final PATTERN:Ljava/util/regex/Pattern;

.field public static final ZERO:Lorg/threeten/bp/e;

.field private static final serialVersionUID:J = 0x2aba9d02d1c4f832L


# instance fields
.field private final nanos:I

.field private final seconds:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/e;

    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v3}, Lorg/threeten/bp/e;-><init>(JI)V

    .line 9
    .line 10
    sput-object v0, Lorg/threeten/bp/e;->ZERO:Lorg/threeten/bp/e;

    .line 11
    .line 12
    .line 13
    const-wide/32 v0, 0x3b9aca00

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    sput-object v0, Lorg/threeten/bp/e;->BI_NANOS_PER_SECOND:Ljava/math/BigInteger;

    .line 20
    .line 21
    const-string v0, "([-+]?)P(?:([-+]?[0-9]+)D)?(T(?:([-+]?[0-9]+)H)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)(?:[.,]([0-9]{0,9}))?S)?)?"

    .line 22
    const/4 v1, 0x2

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    sput-object v0, Lorg/threeten/bp/e;->PATTERN:Ljava/util/regex/Pattern;

    .line 29
    return-void
.end method

.method private constructor <init>(JI)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-wide p1, p0, Lorg/threeten/bp/e;->seconds:J

    .line 6
    .line 7
    iput p3, p0, Lorg/threeten/bp/e;->nanos:I

    .line 8
    return-void
.end method

.method private static b(JI)Lorg/threeten/bp/e;
    .locals 4

    .line 1
    int-to-long v0, p2

    .line 2
    or-long/2addr v0, p0

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget-object p0, Lorg/threeten/bp/e;->ZERO:Lorg/threeten/bp/e;

    .line 11
    return-object p0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Lorg/threeten/bp/e;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p0, p1, p2}, Lorg/threeten/bp/e;-><init>(JI)V

    .line 17
    return-object v0
.end method

.method public static d(J)Lorg/threeten/bp/e;
    .locals 4

    .line 1
    .line 2
    .line 3
    const-wide/32 v0, 0x3b9aca00

    .line 4
    .line 5
    div-long v2, p0, v0

    .line 6
    rem-long/2addr p0, v0

    .line 7
    long-to-int p0, p0

    .line 8
    .line 9
    if-gez p0, :cond_0

    .line 10
    .line 11
    .line 12
    const p1, 0x3b9aca00

    .line 13
    add-int/2addr p0, p1

    .line 14
    .line 15
    const-wide/16 v0, 0x1

    .line 16
    sub-long/2addr v2, v0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-static {v2, v3, p0}, Lorg/threeten/bp/e;->b(JI)Lorg/threeten/bp/e;

    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static e(J)Lorg/threeten/bp/e;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1, v0}, Lorg/threeten/bp/e;->b(JI)Lorg/threeten/bp/e;

    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static f(JJ)Lorg/threeten/bp/e;
    .locals 2

    .line 1
    .line 2
    .line 3
    const-wide/32 v0, 0x3b9aca00

    .line 4
    .line 5
    .line 6
    invoke-static {p2, p3, v0, v1}, Lra/d;->e(JJ)J

    .line 7
    move-result-wide v0

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1, v0, v1}, Lra/d;->k(JJ)J

    .line 11
    move-result-wide p0

    .line 12
    .line 13
    .line 14
    const v0, 0x3b9aca00

    .line 15
    .line 16
    .line 17
    invoke-static {p2, p3, v0}, Lra/d;->g(JI)I

    .line 18
    move-result p2

    .line 19
    .line 20
    .line 21
    invoke-static {p0, p1, p2}, Lorg/threeten/bp/e;->b(JI)Lorg/threeten/bp/e;

    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method static h(Ljava/io/DataInput;)Lorg/threeten/bp/e;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    .line 8
    move-result p0

    .line 9
    int-to-long v2, p0

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/e;->f(JJ)Lorg/threeten/bp/e;

    .line 13
    move-result-object p0

    .line 14
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
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/o;-><init>(BLjava/lang/Object;)V

    .line 7
    return-object v0
.end method


# virtual methods
.method public a(Lorg/threeten/bp/e;)I
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Lorg/threeten/bp/e;->seconds:J

    .line 3
    .line 4
    iget-wide v2, p1, Lorg/threeten/bp/e;->seconds:J

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1, v2, v3}, Lra/d;->b(JJ)I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    return v0

    .line 12
    .line 13
    :cond_0
    iget v0, p0, Lorg/threeten/bp/e;->nanos:I

    .line 14
    .line 15
    iget p1, p1, Lorg/threeten/bp/e;->nanos:I

    .line 16
    sub-int/2addr v0, p1

    .line 17
    return v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/threeten/bp/e;->seconds:J

    return-wide v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lorg/threeten/bp/e;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lorg/threeten/bp/e;->a(Lorg/threeten/bp/e;)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

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
    instance-of v1, p1, Lorg/threeten/bp/e;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    check-cast p1, Lorg/threeten/bp/e;

    .line 12
    .line 13
    iget-wide v3, p0, Lorg/threeten/bp/e;->seconds:J

    .line 14
    .line 15
    iget-wide v5, p1, Lorg/threeten/bp/e;->seconds:J

    .line 16
    .line 17
    cmp-long v1, v3, v5

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    iget v1, p0, Lorg/threeten/bp/e;->nanos:I

    .line 22
    .line 23
    iget p1, p1, Lorg/threeten/bp/e;->nanos:I

    .line 24
    .line 25
    if-ne v1, p1, :cond_1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v0, v2

    .line 28
    :goto_0
    return v0

    .line 29
    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lorg/threeten/bp/e;->seconds:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Lorg/threeten/bp/e;->nanos:I

    mul-int/lit8 v1, v1, 0x33

    add-int/2addr v0, v1

    return v0
.end method

.method i(Ljava/io/DataOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-wide v0, p0, Lorg/threeten/bp/e;->seconds:J

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 6
    .line 7
    iget v0, p0, Lorg/threeten/bp/e;->nanos:I

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 11
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/e;->ZERO:Lorg/threeten/bp/e;

    .line 3
    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    const-string v0, "PT0S"

    .line 7
    return-object v0

    .line 8
    .line 9
    :cond_0
    iget-wide v0, p0, Lorg/threeten/bp/e;->seconds:J

    .line 10
    .line 11
    const-wide/16 v2, 0xe10

    .line 12
    .line 13
    div-long v4, v0, v2

    .line 14
    .line 15
    rem-long v2, v0, v2

    .line 16
    .line 17
    const-wide/16 v6, 0x3c

    .line 18
    div-long/2addr v2, v6

    .line 19
    long-to-int v2, v2

    .line 20
    rem-long/2addr v0, v6

    .line 21
    long-to-int v0, v0

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const/16 v3, 0x18

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 29
    .line 30
    const-string v3, "PT"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-wide/16 v6, 0x0

    .line 36
    .line 37
    cmp-long v3, v4, v6

    .line 38
    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const/16 v3, 0x48

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    :cond_1
    if-eqz v2, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const/16 v2, 0x4d

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    :cond_2
    if-nez v0, :cond_3

    .line 60
    .line 61
    iget v2, p0, Lorg/threeten/bp/e;->nanos:I

    .line 62
    .line 63
    if-nez v2, :cond_3

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 67
    move-result v2

    .line 68
    const/4 v3, 0x2

    .line 69
    .line 70
    if-le v2, v3, :cond_3

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    return-object v0

    .line 76
    .line 77
    :cond_3
    if-gez v0, :cond_5

    .line 78
    .line 79
    iget v2, p0, Lorg/threeten/bp/e;->nanos:I

    .line 80
    .line 81
    if-lez v2, :cond_5

    .line 82
    const/4 v2, -0x1

    .line 83
    .line 84
    if-ne v0, v2, :cond_4

    .line 85
    .line 86
    const-string v2, "-0"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    goto :goto_0

    .line 91
    .line 92
    :cond_4
    add-int/lit8 v2, v0, 0x1

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    goto :goto_0

    .line 97
    .line 98
    .line 99
    :cond_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    :goto_0
    iget v2, p0, Lorg/threeten/bp/e;->nanos:I

    .line 102
    .line 103
    if-lez v2, :cond_8

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 107
    move-result v2

    .line 108
    .line 109
    if-gez v0, :cond_6

    .line 110
    .line 111
    .line 112
    const v0, 0x77359400

    .line 113
    .line 114
    iget v3, p0, Lorg/threeten/bp/e;->nanos:I

    .line 115
    sub-int/2addr v0, v3

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    goto :goto_1

    .line 120
    .line 121
    :cond_6
    iget v0, p0, Lorg/threeten/bp/e;->nanos:I

    .line 122
    .line 123
    .line 124
    const v3, 0x3b9aca00

    .line 125
    add-int/2addr v0, v3

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 132
    move-result v0

    .line 133
    .line 134
    add-int/lit8 v0, v0, -0x1

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 138
    move-result v0

    .line 139
    .line 140
    const/16 v3, 0x30

    .line 141
    .line 142
    if-ne v0, v3, :cond_7

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 146
    move-result v0

    .line 147
    .line 148
    add-int/lit8 v0, v0, -0x1

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 152
    goto :goto_1

    .line 153
    .line 154
    :cond_7
    const/16 v0, 0x2e

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 158
    .line 159
    :cond_8
    const/16 v0, 0x53

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    move-result-object v0

    .line 167
    return-object v0
.end method
