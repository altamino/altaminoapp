.class final Lorg/threeten/bp/format/c$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/format/c$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/format/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "k"
.end annotation


# static fields
.field static final INSTANCE_ID:Lorg/threeten/bp/format/c$k;

.field static final INSTANCE_ID_ZERO:Lorg/threeten/bp/format/c$k;

.field static final PATTERNS:[Ljava/lang/String;


# instance fields
.field private final noOffsetText:Ljava/lang/String;

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    .line 2
    const-string v0, "+HH"

    .line 3
    .line 4
    const-string v1, "+HHmm"

    .line 5
    .line 6
    const-string v2, "+HH:mm"

    .line 7
    .line 8
    const-string v3, "+HHMM"

    .line 9
    .line 10
    const-string v4, "+HH:MM"

    .line 11
    .line 12
    const-string v5, "+HHMMss"

    .line 13
    .line 14
    const-string v6, "+HH:MM:ss"

    .line 15
    .line 16
    const-string v7, "+HHMMSS"

    .line 17
    .line 18
    const-string v8, "+HH:MM:SS"

    .line 19
    .line 20
    .line 21
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    sput-object v0, Lorg/threeten/bp/format/c$k;->PATTERNS:[Ljava/lang/String;

    .line 25
    .line 26
    new-instance v0, Lorg/threeten/bp/format/c$k;

    .line 27
    .line 28
    const-string v1, "Z"

    .line 29
    .line 30
    const-string v2, "+HH:MM:ss"

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/format/c$k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    sput-object v0, Lorg/threeten/bp/format/c$k;->INSTANCE_ID:Lorg/threeten/bp/format/c$k;

    .line 36
    .line 37
    new-instance v0, Lorg/threeten/bp/format/c$k;

    .line 38
    .line 39
    const-string v1, "0"

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/format/c$k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    sput-object v0, Lorg/threeten/bp/format/c$k;->INSTANCE_ID_ZERO:Lorg/threeten/bp/format/c$k;

    .line 45
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const-string v0, "noOffsetText"

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    const-string v0, "pattern"

    .line 11
    .line 12
    .line 13
    invoke-static {p2, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p1, p0, Lorg/threeten/bp/format/c$k;->noOffsetText:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p2}, Lorg/threeten/bp/format/c$k;->b(Ljava/lang/String;)I

    .line 19
    move-result p1

    .line 20
    .line 21
    iput p1, p0, Lorg/threeten/bp/format/c$k;->type:I

    .line 22
    return-void
.end method

.method private b(Ljava/lang/String;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    sget-object v1, Lorg/threeten/bp/format/c$k;->PATTERNS:[Ljava/lang/String;

    .line 4
    array-length v2, v1

    .line 5
    .line 6
    if-ge v0, v2, :cond_1

    .line 7
    .line 8
    aget-object v1, v1, v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    return v0

    .line 16
    .line 17
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    const-string v2, "Invalid zone offset pattern: "

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    throw v0
.end method


# virtual methods
.method public a(Lorg/threeten/bp/format/d;Ljava/lang/StringBuilder;)Z
    .locals 7

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lorg/threeten/bp/format/d;->f(Lorg/threeten/bp/temporal/h;)Ljava/lang/Long;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 14
    move-result-wide v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lra/d;->p(J)I

    .line 18
    move-result p1

    .line 19
    const/4 v0, 0x1

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lorg/threeten/bp/format/c$k;->noOffsetText:Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    goto/16 :goto_2

    .line 29
    .line 30
    :cond_1
    div-int/lit16 v1, p1, 0xe10

    .line 31
    .line 32
    rem-int/lit8 v1, v1, 0x64

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 36
    move-result v1

    .line 37
    .line 38
    div-int/lit8 v2, p1, 0x3c

    .line 39
    .line 40
    rem-int/lit8 v2, v2, 0x3c

    .line 41
    .line 42
    .line 43
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 44
    move-result v2

    .line 45
    .line 46
    rem-int/lit8 v3, p1, 0x3c

    .line 47
    .line 48
    .line 49
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 50
    move-result v3

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    .line 54
    move-result v4

    .line 55
    .line 56
    if-gez p1, :cond_2

    .line 57
    .line 58
    const-string p1, "-"

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_2
    const-string p1, "+"

    .line 62
    .line 63
    .line 64
    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    div-int/lit8 p1, v1, 0xa

    .line 67
    .line 68
    add-int/lit8 p1, p1, 0x30

    .line 69
    int-to-char p1, p1

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    rem-int/lit8 p1, v1, 0xa

    .line 75
    .line 76
    add-int/lit8 p1, p1, 0x30

    .line 77
    int-to-char p1, p1

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    iget p1, p0, Lorg/threeten/bp/format/c$k;->type:I

    .line 83
    const/4 v5, 0x3

    .line 84
    .line 85
    if-ge p1, v5, :cond_3

    .line 86
    .line 87
    if-lt p1, v0, :cond_7

    .line 88
    .line 89
    if-lez v2, :cond_7

    .line 90
    .line 91
    :cond_3
    rem-int/lit8 p1, p1, 0x2

    .line 92
    .line 93
    const-string v5, ""

    .line 94
    .line 95
    const-string v6, ":"

    .line 96
    .line 97
    if-nez p1, :cond_4

    .line 98
    move-object p1, v6

    .line 99
    goto :goto_1

    .line 100
    :cond_4
    move-object p1, v5

    .line 101
    .line 102
    .line 103
    :goto_1
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    div-int/lit8 p1, v2, 0xa

    .line 106
    .line 107
    add-int/lit8 p1, p1, 0x30

    .line 108
    int-to-char p1, p1

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    rem-int/lit8 p1, v2, 0xa

    .line 114
    .line 115
    add-int/lit8 p1, p1, 0x30

    .line 116
    int-to-char p1, p1

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    add-int/2addr v1, v2

    .line 121
    .line 122
    iget p1, p0, Lorg/threeten/bp/format/c$k;->type:I

    .line 123
    const/4 v2, 0x7

    .line 124
    .line 125
    if-ge p1, v2, :cond_5

    .line 126
    const/4 v2, 0x5

    .line 127
    .line 128
    if-lt p1, v2, :cond_7

    .line 129
    .line 130
    if-lez v3, :cond_7

    .line 131
    .line 132
    :cond_5
    rem-int/lit8 p1, p1, 0x2

    .line 133
    .line 134
    if-nez p1, :cond_6

    .line 135
    move-object v5, v6

    .line 136
    .line 137
    .line 138
    :cond_6
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    div-int/lit8 p1, v3, 0xa

    .line 141
    .line 142
    add-int/lit8 p1, p1, 0x30

    .line 143
    int-to-char p1, p1

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    rem-int/lit8 p1, v3, 0xa

    .line 149
    .line 150
    add-int/lit8 p1, p1, 0x30

    .line 151
    int-to-char p1, p1

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    add-int/2addr v1, v3

    .line 156
    .line 157
    :cond_7
    if-nez v1, :cond_8

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 161
    .line 162
    iget-object p1, p0, Lorg/threeten/bp/format/c$k;->noOffsetText:Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_8
    :goto_2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/format/c$k;->noOffsetText:Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "\'"

    .line 5
    .line 6
    const-string v2, "\'\'"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    const-string v2, "Offset("

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    sget-object v2, Lorg/threeten/bp/format/c$k;->PATTERNS:[Ljava/lang/String;

    .line 23
    .line 24
    iget v3, p0, Lorg/threeten/bp/format/c$k;->type:I

    .line 25
    .line 26
    aget-object v2, v2, v3

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v2, ",\'"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v0, "\')"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    return-object v0
.end method
