.class public final Lorg/threeten/bp/s;
.super Lorg/threeten/bp/r;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/temporal/e;
.implements Lorg/threeten/bp/temporal/f;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/threeten/bp/r;",
        "Lorg/threeten/bp/temporal/e;",
        "Lorg/threeten/bp/temporal/f;",
        "Ljava/lang/Comparable<",
        "Lorg/threeten/bp/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final FROM:Lorg/threeten/bp/temporal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/j<",
            "Lorg/threeten/bp/s;",
            ">;"
        }
    .end annotation
.end field

.field private static final ID_CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/s;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX:Lorg/threeten/bp/s;

.field private static final MAX_SECONDS:I = 0xfd20

.field public static final MIN:Lorg/threeten/bp/s;

.field private static final MINUTES_PER_HOUR:I = 0x3c

.field private static final SECONDS_CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "Lorg/threeten/bp/s;",
            ">;"
        }
    .end annotation
.end field

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field public static final UTC:Lorg/threeten/bp/s;

.field private static final serialVersionUID:J = 0x20b8141d7a029c21L


# instance fields
.field private final transient id:Ljava/lang/String;

.field private final totalSeconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/s$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lorg/threeten/bp/s$a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lorg/threeten/bp/s;->FROM:Lorg/threeten/bp/temporal/j;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    const/16 v1, 0x10

    .line 12
    .line 13
    const/high16 v2, 0x3f400000    # 0.75f

    .line 14
    const/4 v3, 0x4

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 18
    .line 19
    sput-object v0, Lorg/threeten/bp/s;->SECONDS_CACHE:Ljava/util/concurrent/ConcurrentMap;

    .line 20
    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 25
    .line 26
    sput-object v0, Lorg/threeten/bp/s;->ID_CACHE:Ljava/util/concurrent/ConcurrentMap;

    .line 27
    const/4 v0, 0x0

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lorg/threeten/bp/s;->y(I)Lorg/threeten/bp/s;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    sput-object v0, Lorg/threeten/bp/s;->UTC:Lorg/threeten/bp/s;

    .line 34
    .line 35
    .line 36
    const v0, -0xfd20

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lorg/threeten/bp/s;->y(I)Lorg/threeten/bp/s;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    sput-object v0, Lorg/threeten/bp/s;->MIN:Lorg/threeten/bp/s;

    .line 43
    .line 44
    .line 45
    const v0, 0xfd20

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lorg/threeten/bp/s;->y(I)Lorg/threeten/bp/s;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    sput-object v0, Lorg/threeten/bp/s;->MAX:Lorg/threeten/bp/s;

    .line 52
    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/threeten/bp/r;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lorg/threeten/bp/s;->totalSeconds:I

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lorg/threeten/bp/s;->s(I)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iput-object p1, p0, Lorg/threeten/bp/s;->id:Ljava/lang/String;

    .line 12
    return-void
.end method

.method static A(Ljava/io/DataInput;)Lorg/threeten/bp/s;
    .locals 2
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
    .line 6
    const/16 v1, 0x7f

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    .line 12
    move-result p0

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Lorg/threeten/bp/s;->y(I)Lorg/threeten/bp/s;

    .line 16
    move-result-object p0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    mul-int/lit16 v0, v0, 0x384

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lorg/threeten/bp/s;->y(I)Lorg/threeten/bp/s;

    .line 23
    move-result-object p0

    .line 24
    :goto_0
    return-object p0
.end method

.method private static B(III)I
    .locals 0

    .line 1
    mul-int/lit16 p0, p0, 0xe10

    mul-int/lit8 p1, p1, 0x3c

    add-int/2addr p0, p1

    add-int/2addr p0, p2

    return p0
.end method

.method private static C(III)V
    .locals 4

    .line 1
    .line 2
    const/16 v0, -0x12

    .line 3
    .line 4
    if-lt p0, v0, :cond_b

    .line 5
    .line 6
    const/16 v0, 0x12

    .line 7
    .line 8
    if-gt p0, v0, :cond_b

    .line 9
    .line 10
    if-lez p0, :cond_1

    .line 11
    .line 12
    if-ltz p1, :cond_0

    .line 13
    .line 14
    if-ltz p2, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    new-instance p0, Lorg/threeten/bp/b;

    .line 18
    .line 19
    const-string p1, "Zone offset minutes and seconds must be positive because hours is positive"

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 23
    throw p0

    .line 24
    .line 25
    :cond_1
    if-gez p0, :cond_3

    .line 26
    .line 27
    if-gtz p1, :cond_2

    .line 28
    .line 29
    if-gtz p2, :cond_2

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_2
    new-instance p0, Lorg/threeten/bp/b;

    .line 33
    .line 34
    const-string p1, "Zone offset minutes and seconds must be negative because hours is negative"

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, p1}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 38
    throw p0

    .line 39
    .line 40
    :cond_3
    if-lez p1, :cond_4

    .line 41
    .line 42
    if-ltz p2, :cond_5

    .line 43
    .line 44
    :cond_4
    if-gez p1, :cond_6

    .line 45
    .line 46
    if-gtz p2, :cond_5

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_5
    new-instance p0, Lorg/threeten/bp/b;

    .line 50
    .line 51
    const-string p1, "Zone offset minutes and seconds must have the same sign"

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, p1}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 55
    throw p0

    .line 56
    .line 57
    .line 58
    :cond_6
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 59
    move-result v1

    .line 60
    .line 61
    const-string v2, " is not in the range 0 to 59"

    .line 62
    .line 63
    const/16 v3, 0x3b

    .line 64
    .line 65
    if-gt v1, v3, :cond_a

    .line 66
    .line 67
    .line 68
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 69
    move-result v1

    .line 70
    .line 71
    if-gt v1, v3, :cond_9

    .line 72
    .line 73
    .line 74
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    .line 75
    move-result p0

    .line 76
    .line 77
    if-ne p0, v0, :cond_8

    .line 78
    .line 79
    .line 80
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 81
    move-result p0

    .line 82
    .line 83
    if-gtz p0, :cond_7

    .line 84
    .line 85
    .line 86
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 87
    move-result p0

    .line 88
    .line 89
    if-gtz p0, :cond_7

    .line 90
    goto :goto_1

    .line 91
    .line 92
    :cond_7
    new-instance p0, Lorg/threeten/bp/b;

    .line 93
    .line 94
    const-string p1, "Zone offset not in valid range: -18:00 to +18:00"

    .line 95
    .line 96
    .line 97
    invoke-direct {p0, p1}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 98
    throw p0

    .line 99
    :cond_8
    :goto_1
    return-void

    .line 100
    .line 101
    :cond_9
    new-instance p0, Lorg/threeten/bp/b;

    .line 102
    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    const-string v0, "Zone offset seconds not in valid range: abs(value) "

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 115
    move-result p2

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object p1

    .line 126
    .line 127
    .line 128
    invoke-direct {p0, p1}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 129
    throw p0

    .line 130
    .line 131
    :cond_a
    new-instance p0, Lorg/threeten/bp/b;

    .line 132
    .line 133
    new-instance p2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    const-string v0, "Zone offset minutes not in valid range: abs(value) "

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 145
    move-result p1

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    move-result-object p1

    .line 156
    .line 157
    .line 158
    invoke-direct {p0, p1}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 159
    throw p0

    .line 160
    .line 161
    :cond_b
    new-instance p1, Lorg/threeten/bp/b;

    .line 162
    .line 163
    new-instance p2, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    const-string v0, "Zone offset hours not in valid range: value "

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    const-string p0, " is not in the range -18 to 18"

    .line 177
    .line 178
    .line 179
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    move-result-object p0

    .line 184
    .line 185
    .line 186
    invoke-direct {p1, p0}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 187
    throw p1
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

.method private static s(I)Ljava/lang/String;
    .locals 6

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    const-string p0, "Z"

    .line 5
    return-object p0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    .line 9
    move-result v0

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    div-int/lit16 v2, v0, 0xe10

    .line 17
    .line 18
    div-int/lit8 v3, v0, 0x3c

    .line 19
    .line 20
    rem-int/lit8 v3, v3, 0x3c

    .line 21
    .line 22
    if-gez p0, :cond_1

    .line 23
    .line 24
    const-string p0, "-"

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_1
    const-string p0, "+"

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const/16 p0, 0xa

    .line 33
    .line 34
    if-ge v2, p0, :cond_2

    .line 35
    .line 36
    const-string v4, "0"

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_2
    const-string v4, ""

    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v2, ":"

    .line 48
    .line 49
    const-string v4, ":0"

    .line 50
    .line 51
    if-ge v3, p0, :cond_3

    .line 52
    move-object v5, v4

    .line 53
    goto :goto_2

    .line 54
    :cond_3
    move-object v5, v2

    .line 55
    .line 56
    .line 57
    :goto_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    rem-int/lit8 v0, v0, 0x3c

    .line 63
    .line 64
    if-eqz v0, :cond_5

    .line 65
    .line 66
    if-ge v0, p0, :cond_4

    .line 67
    move-object v2, v4

    .line 68
    .line 69
    .line 70
    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object p0

    .line 78
    return-object p0
.end method

.method public static u(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/s;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lorg/threeten/bp/temporal/i;->d()Lorg/threeten/bp/temporal/j;

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
    check-cast v0, Lorg/threeten/bp/s;

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
    const-string v2, "Unable to obtain ZoneOffset from TemporalAccessor: "

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

.method public static w(Ljava/lang/String;)Lorg/threeten/bp/s;
    .locals 7

    .line 1
    .line 2
    const-string v0, "offsetId"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    sget-object v0, Lorg/threeten/bp/s;->ID_CACHE:Ljava/util/concurrent/ConcurrentMap;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lorg/threeten/bp/s;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    return-object v0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x2

    .line 22
    const/4 v2, 0x1

    .line 23
    const/4 v3, 0x0

    .line 24
    .line 25
    if-eq v0, v1, :cond_5

    .line 26
    const/4 v1, 0x3

    .line 27
    .line 28
    if-eq v0, v1, :cond_6

    .line 29
    const/4 v4, 0x5

    .line 30
    .line 31
    if-eq v0, v4, :cond_4

    .line 32
    const/4 v5, 0x6

    .line 33
    const/4 v6, 0x4

    .line 34
    .line 35
    if-eq v0, v5, :cond_3

    .line 36
    const/4 v5, 0x7

    .line 37
    .line 38
    if-eq v0, v5, :cond_2

    .line 39
    .line 40
    const/16 v1, 0x9

    .line 41
    .line 42
    if-ne v0, v1, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-static {p0, v2, v3}, Lorg/threeten/bp/s;->z(Ljava/lang/CharSequence;IZ)I

    .line 46
    move-result v0

    .line 47
    .line 48
    .line 49
    invoke-static {p0, v6, v2}, Lorg/threeten/bp/s;->z(Ljava/lang/CharSequence;IZ)I

    .line 50
    move-result v1

    .line 51
    .line 52
    .line 53
    invoke-static {p0, v5, v2}, Lorg/threeten/bp/s;->z(Ljava/lang/CharSequence;IZ)I

    .line 54
    move-result v2

    .line 55
    goto :goto_1

    .line 56
    .line 57
    :cond_1
    new-instance v0, Lorg/threeten/bp/b;

    .line 58
    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    const-string v2, "Invalid ID for ZoneOffset, invalid format: "

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 75
    .line 76
    .line 77
    invoke-direct {v0, p0}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 78
    throw v0

    .line 79
    .line 80
    .line 81
    :cond_2
    invoke-static {p0, v2, v3}, Lorg/threeten/bp/s;->z(Ljava/lang/CharSequence;IZ)I

    .line 82
    move-result v0

    .line 83
    .line 84
    .line 85
    invoke-static {p0, v1, v3}, Lorg/threeten/bp/s;->z(Ljava/lang/CharSequence;IZ)I

    .line 86
    move-result v1

    .line 87
    .line 88
    .line 89
    invoke-static {p0, v4, v3}, Lorg/threeten/bp/s;->z(Ljava/lang/CharSequence;IZ)I

    .line 90
    move-result v2

    .line 91
    goto :goto_1

    .line 92
    .line 93
    .line 94
    :cond_3
    invoke-static {p0, v2, v3}, Lorg/threeten/bp/s;->z(Ljava/lang/CharSequence;IZ)I

    .line 95
    move-result v0

    .line 96
    .line 97
    .line 98
    invoke-static {p0, v6, v2}, Lorg/threeten/bp/s;->z(Ljava/lang/CharSequence;IZ)I

    .line 99
    move-result v1

    .line 100
    :goto_0
    move v2, v3

    .line 101
    goto :goto_1

    .line 102
    .line 103
    .line 104
    :cond_4
    invoke-static {p0, v2, v3}, Lorg/threeten/bp/s;->z(Ljava/lang/CharSequence;IZ)I

    .line 105
    move-result v0

    .line 106
    .line 107
    .line 108
    invoke-static {p0, v1, v3}, Lorg/threeten/bp/s;->z(Ljava/lang/CharSequence;IZ)I

    .line 109
    move-result v1

    .line 110
    goto :goto_0

    .line 111
    .line 112
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 119
    move-result v1

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v1, "0"

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 131
    move-result p0

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object p0

    .line 139
    .line 140
    .line 141
    :cond_6
    invoke-static {p0, v2, v3}, Lorg/threeten/bp/s;->z(Ljava/lang/CharSequence;IZ)I

    .line 142
    move-result v0

    .line 143
    move v1, v3

    .line 144
    move v2, v1

    .line 145
    .line 146
    .line 147
    :goto_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 148
    move-result v3

    .line 149
    .line 150
    const/16 v4, 0x2b

    .line 151
    .line 152
    const/16 v5, 0x2d

    .line 153
    .line 154
    if-eq v3, v4, :cond_8

    .line 155
    .line 156
    if-ne v3, v5, :cond_7

    .line 157
    goto :goto_2

    .line 158
    .line 159
    :cond_7
    new-instance v0, Lorg/threeten/bp/b;

    .line 160
    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    const-string v2, "Invalid ID for ZoneOffset, plus/minus not found when expected: "

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    move-result-object p0

    .line 177
    .line 178
    .line 179
    invoke-direct {v0, p0}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 180
    throw v0

    .line 181
    .line 182
    :cond_8
    :goto_2
    if-ne v3, v5, :cond_9

    .line 183
    neg-int p0, v0

    .line 184
    neg-int v0, v1

    .line 185
    neg-int v1, v2

    .line 186
    .line 187
    .line 188
    invoke-static {p0, v0, v1}, Lorg/threeten/bp/s;->x(III)Lorg/threeten/bp/s;

    .line 189
    move-result-object p0

    .line 190
    return-object p0

    .line 191
    .line 192
    .line 193
    :cond_9
    invoke-static {v0, v1, v2}, Lorg/threeten/bp/s;->x(III)Lorg/threeten/bp/s;

    .line 194
    move-result-object p0

    .line 195
    return-object p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/o;

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/o;-><init>(BLjava/lang/Object;)V

    .line 8
    return-object v0
.end method

.method public static x(III)Lorg/threeten/bp/s;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lorg/threeten/bp/s;->C(III)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1, p2}, Lorg/threeten/bp/s;->B(III)I

    .line 7
    move-result p0

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lorg/threeten/bp/s;->y(I)Lorg/threeten/bp/s;

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static y(I)Lorg/threeten/bp/s;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0xfd20

    .line 8
    .line 9
    if-gt v0, v1, :cond_2

    .line 10
    .line 11
    rem-int/lit16 v0, p0, 0x384

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    sget-object v1, Lorg/threeten/bp/s;->SECONDS_CACHE:Ljava/util/concurrent/ConcurrentMap;

    .line 20
    .line 21
    .line 22
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    check-cast v2, Lorg/threeten/bp/s;

    .line 26
    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    new-instance v2, Lorg/threeten/bp/s;

    .line 30
    .line 31
    .line 32
    invoke-direct {v2, p0}, Lorg/threeten/bp/s;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object p0

    .line 40
    move-object v2, p0

    .line 41
    .line 42
    check-cast v2, Lorg/threeten/bp/s;

    .line 43
    .line 44
    sget-object p0, Lorg/threeten/bp/s;->ID_CACHE:Ljava/util/concurrent/ConcurrentMap;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Lorg/threeten/bp/s;->n()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    invoke-interface {p0, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_0
    return-object v2

    .line 53
    .line 54
    :cond_1
    new-instance v0, Lorg/threeten/bp/s;

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, p0}, Lorg/threeten/bp/s;-><init>(I)V

    .line 58
    return-object v0

    .line 59
    .line 60
    :cond_2
    new-instance p0, Lorg/threeten/bp/b;

    .line 61
    .line 62
    const-string v0, "Zone offset not in valid range: -18:00 to +18:00"

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, v0}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 66
    throw p0
.end method

.method private static z(Ljava/lang/CharSequence;IZ)I
    .locals 2

    .line 1
    .line 2
    if-eqz p2, :cond_1

    .line 3
    .line 4
    add-int/lit8 p2, p1, -0x1

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 8
    move-result p2

    .line 9
    .line 10
    const/16 v0, 0x3a

    .line 11
    .line 12
    if-ne p2, v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    new-instance p1, Lorg/threeten/bp/b;

    .line 16
    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    const-string v0, "Invalid ID for ZoneOffset, colon not found when expected: "

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    .line 34
    .line 35
    invoke-direct {p1, p0}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 36
    throw p1

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 40
    move-result p2

    .line 41
    .line 42
    add-int/lit8 p1, p1, 0x1

    .line 43
    .line 44
    .line 45
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 46
    move-result p1

    .line 47
    .line 48
    const/16 v0, 0x30

    .line 49
    .line 50
    if-lt p2, v0, :cond_2

    .line 51
    .line 52
    const/16 v1, 0x39

    .line 53
    .line 54
    if-gt p2, v1, :cond_2

    .line 55
    .line 56
    if-lt p1, v0, :cond_2

    .line 57
    .line 58
    if-gt p1, v1, :cond_2

    .line 59
    sub-int/2addr p2, v0

    .line 60
    .line 61
    mul-int/lit8 p2, p2, 0xa

    .line 62
    sub-int/2addr p1, v0

    .line 63
    add-int/2addr p2, p1

    .line 64
    return p2

    .line 65
    .line 66
    :cond_2
    new-instance p1, Lorg/threeten/bp/b;

    .line 67
    .line 68
    new-instance p2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    const-string v0, "Invalid ID for ZoneOffset, non numeric characters found: "

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object p0

    .line 84
    .line 85
    .line 86
    invoke-direct {p1, p0}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 87
    throw p1
.end method


# virtual methods
.method D(Ljava/io/DataOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lorg/threeten/bp/s;->totalSeconds:I

    .line 3
    .line 4
    rem-int/lit16 v1, v0, 0x384

    .line 5
    .line 6
    const/16 v2, 0x7f

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    div-int/lit16 v1, v0, 0x384

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v1, v2

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 16
    .line 17
    if-ne v1, v2, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 21
    :cond_1
    return-void
.end method

.method public b(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/temporal/d;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    iget v1, p0, Lorg/threeten/bp/s;->totalSeconds:I

    .line 5
    int-to-long v1, v1

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/d;->h(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/temporal/d;

    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public c(Lorg/threeten/bp/temporal/h;)Lorg/threeten/bp/temporal/m;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Lorg/threeten/bp/temporal/h;->d()Lorg/threeten/bp/temporal/m;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    .line 11
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->f(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/temporal/m;

    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    .line 20
    :cond_1
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
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lorg/threeten/bp/s;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lorg/threeten/bp/s;->t(Lorg/threeten/bp/s;)I

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
    invoke-static {}, Lorg/threeten/bp/temporal/i;->d()Lorg/threeten/bp/temporal/j;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eq p1, v0, :cond_3

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lorg/threeten/bp/temporal/i;->f()Lorg/threeten/bp/temporal/j;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    goto :goto_1

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/i;->b()Lorg/threeten/bp/temporal/j;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    if-eq p1, v0, :cond_2

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lorg/threeten/bp/temporal/i;->c()Lorg/threeten/bp/temporal/j;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    if-eq p1, v0, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lorg/threeten/bp/temporal/i;->e()Lorg/threeten/bp/temporal/j;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    if-eq p1, v0, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lorg/threeten/bp/temporal/i;->a()Lorg/threeten/bp/temporal/j;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    if-eq p1, v0, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lorg/threeten/bp/temporal/i;->g()Lorg/threeten/bp/temporal/j;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    if-ne p1, v0, :cond_1

    .line 44
    goto :goto_0

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/j;->a(Lorg/threeten/bp/temporal/e;)Ljava/lang/Object;

    .line 48
    move-result-object p1

    .line 49
    return-object p1

    .line 50
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 51
    return-object p1

    .line 52
    :cond_3
    :goto_1
    return-object p0
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
    instance-of v1, p1, Lorg/threeten/bp/s;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    iget v1, p0, Lorg/threeten/bp/s;->totalSeconds:I

    .line 12
    .line 13
    check-cast p1, Lorg/threeten/bp/s;

    .line 14
    .line 15
    iget p1, p1, Lorg/threeten/bp/s;->totalSeconds:I

    .line 16
    .line 17
    if-ne v1, p1, :cond_1

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
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget p1, p0, Lorg/threeten/bp/s;->totalSeconds:I

    .line 7
    return p1

    .line 8
    .line 9
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lorg/threeten/bp/s;->c(Lorg/threeten/bp/temporal/h;)Lorg/threeten/bp/temporal/m;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lorg/threeten/bp/s;->k(Lorg/threeten/bp/temporal/h;)J

    .line 19
    move-result-wide v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, v2, p1}, Lorg/threeten/bp/temporal/m;->a(JLorg/threeten/bp/temporal/h;)I

    .line 23
    move-result p1

    .line 24
    return p1

    .line 25
    .line 26
    :cond_1
    new-instance v0, Lorg/threeten/bp/temporal/l;

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    const-string v2, "Unsupported field: "

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, p1}, Lorg/threeten/bp/temporal/l;-><init>(Ljava/lang/String;)V

    .line 47
    throw v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/threeten/bp/s;->totalSeconds:I

    return v0
.end method

.method public i(Lorg/threeten/bp/temporal/h;)Z
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    sget-object v0, Lorg/threeten/bp/temporal/a;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/a;

    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    move v1, v2

    .line 12
    :cond_0
    return v1

    .line 13
    .line 14
    :cond_1
    if-eqz p1, :cond_2

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->c(Lorg/threeten/bp/temporal/e;)Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    move v1, v2

    .line 22
    :cond_2
    return v1
.end method

.method public k(Lorg/threeten/bp/temporal/h;)J
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget p1, p0, Lorg/threeten/bp/s;->totalSeconds:I

    .line 7
    int-to-long v0, p1

    .line 8
    return-wide v0

    .line 9
    .line 10
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->h(Lorg/threeten/bp/temporal/e;)J

    .line 16
    move-result-wide v0

    .line 17
    return-wide v0

    .line 18
    .line 19
    :cond_1
    new-instance v0, Lorg/threeten/bp/b;

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
    invoke-direct {v0, p1}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 40
    throw v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/s;->id:Ljava/lang/String;

    return-object v0
.end method

.method public o()Lorg/threeten/bp/zone/f;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lorg/threeten/bp/zone/f;->f(Lorg/threeten/bp/s;)Lorg/threeten/bp/zone/f;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method r(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0x8

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lorg/threeten/bp/s;->D(Ljava/io/DataOutput;)V

    .line 9
    return-void
.end method

.method public t(Lorg/threeten/bp/s;)I
    .locals 1

    .line 1
    .line 2
    iget p1, p1, Lorg/threeten/bp/s;->totalSeconds:I

    .line 3
    .line 4
    iget v0, p0, Lorg/threeten/bp/s;->totalSeconds:I

    .line 5
    sub-int/2addr p1, v0

    .line 6
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/s;->id:Ljava/lang/String;

    return-object v0
.end method

.method public v()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/threeten/bp/s;->totalSeconds:I

    return v0
.end method
