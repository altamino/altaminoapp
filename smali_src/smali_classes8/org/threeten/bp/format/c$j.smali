.class Lorg/threeten/bp/format/c$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/format/c$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/format/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "j"
.end annotation


# static fields
.field static final EXCEED_POINTS:[I


# instance fields
.field final field:Lorg/threeten/bp/temporal/h;

.field final maxWidth:I

.field final minWidth:I

.field final signStyle:Lorg/threeten/bp/format/h;

.field final subsequentWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/threeten/bp/format/c$j;->EXCEED_POINTS:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data
.end method

.method constructor <init>(Lorg/threeten/bp/temporal/h;IILorg/threeten/bp/format/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/threeten/bp/format/c$j;->field:Lorg/threeten/bp/temporal/h;

    iput p2, p0, Lorg/threeten/bp/format/c$j;->minWidth:I

    iput p3, p0, Lorg/threeten/bp/format/c$j;->maxWidth:I

    iput-object p4, p0, Lorg/threeten/bp/format/c$j;->signStyle:Lorg/threeten/bp/format/h;

    const/4 p1, 0x0

    iput p1, p0, Lorg/threeten/bp/format/c$j;->subsequentWidth:I

    return-void
.end method

.method private constructor <init>(Lorg/threeten/bp/temporal/h;IILorg/threeten/bp/format/h;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/threeten/bp/format/c$j;->field:Lorg/threeten/bp/temporal/h;

    iput p2, p0, Lorg/threeten/bp/format/c$j;->minWidth:I

    iput p3, p0, Lorg/threeten/bp/format/c$j;->maxWidth:I

    iput-object p4, p0, Lorg/threeten/bp/format/c$j;->signStyle:Lorg/threeten/bp/format/h;

    iput p5, p0, Lorg/threeten/bp/format/c$j;->subsequentWidth:I

    return-void
.end method


# virtual methods
.method public a(Lorg/threeten/bp/format/d;Ljava/lang/StringBuilder;)Z
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/format/c$j;->field:Lorg/threeten/bp/temporal/h;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lorg/threeten/bp/format/d;->f(Lorg/threeten/bp/temporal/h;)Ljava/lang/Long;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return v1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 14
    move-result-wide v2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1, v2, v3}, Lorg/threeten/bp/format/c$j;->b(Lorg/threeten/bp/format/d;J)J

    .line 18
    move-result-wide v2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lorg/threeten/bp/format/d;->d()Lorg/threeten/bp/format/f;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    const-wide/high16 v4, -0x8000000000000000L

    .line 25
    .line 26
    cmp-long v0, v2, v4

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    const-string v0, "9223372036854775808"

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    .line 35
    move-result-wide v4

    .line 36
    .line 37
    .line 38
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 43
    move-result v4

    .line 44
    .line 45
    iget v5, p0, Lorg/threeten/bp/format/c$j;->maxWidth:I

    .line 46
    .line 47
    const-string v6, " cannot be printed as the value "

    .line 48
    .line 49
    const-string v7, "Field "

    .line 50
    .line 51
    if-gt v4, v5, :cond_9

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lorg/threeten/bp/format/f;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    const-wide/16 v4, 0x0

    .line 58
    .line 59
    cmp-long v4, v2, v4

    .line 60
    const/4 v5, 0x2

    .line 61
    const/4 v8, 0x1

    .line 62
    .line 63
    if-ltz v4, :cond_4

    .line 64
    .line 65
    sget-object v4, Lorg/threeten/bp/format/c$d;->$SwitchMap$org$threeten$bp$format$SignStyle:[I

    .line 66
    .line 67
    iget-object v6, p0, Lorg/threeten/bp/format/c$j;->signStyle:Lorg/threeten/bp/format/h;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 71
    move-result v6

    .line 72
    .line 73
    aget v4, v4, v6

    .line 74
    .line 75
    if-eq v4, v8, :cond_3

    .line 76
    .line 77
    if-eq v4, v5, :cond_2

    .line 78
    goto :goto_1

    .line 79
    .line 80
    .line 81
    :cond_2
    invoke-virtual {p1}, Lorg/threeten/bp/format/f;->d()C

    .line 82
    move-result v2

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    goto :goto_1

    .line 87
    .line 88
    :cond_3
    iget v4, p0, Lorg/threeten/bp/format/c$j;->minWidth:I

    .line 89
    .line 90
    const/16 v5, 0x13

    .line 91
    .line 92
    if-ge v4, v5, :cond_7

    .line 93
    .line 94
    sget-object v5, Lorg/threeten/bp/format/c$j;->EXCEED_POINTS:[I

    .line 95
    .line 96
    aget v4, v5, v4

    .line 97
    int-to-long v4, v4

    .line 98
    .line 99
    cmp-long v2, v2, v4

    .line 100
    .line 101
    if-ltz v2, :cond_7

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Lorg/threeten/bp/format/f;->d()C

    .line 105
    move-result v2

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    goto :goto_1

    .line 110
    .line 111
    :cond_4
    sget-object v4, Lorg/threeten/bp/format/c$d;->$SwitchMap$org$threeten$bp$format$SignStyle:[I

    .line 112
    .line 113
    iget-object v9, p0, Lorg/threeten/bp/format/c$j;->signStyle:Lorg/threeten/bp/format/h;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 117
    move-result v9

    .line 118
    .line 119
    aget v4, v4, v9

    .line 120
    .line 121
    if-eq v4, v8, :cond_6

    .line 122
    .line 123
    if-eq v4, v5, :cond_6

    .line 124
    const/4 v5, 0x3

    .line 125
    .line 126
    if-eq v4, v5, :cond_6

    .line 127
    const/4 v5, 0x4

    .line 128
    .line 129
    if-eq v4, v5, :cond_5

    .line 130
    goto :goto_1

    .line 131
    .line 132
    :cond_5
    new-instance p1, Lorg/threeten/bp/b;

    .line 133
    .line 134
    new-instance p2, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    iget-object v0, p0, Lorg/threeten/bp/format/c$j;->field:Lorg/threeten/bp/temporal/h;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string v0, " cannot be negative according to the SignStyle"

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object p2

    .line 161
    .line 162
    .line 163
    invoke-direct {p1, p2}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 164
    throw p1

    .line 165
    .line 166
    .line 167
    :cond_6
    invoke-virtual {p1}, Lorg/threeten/bp/format/f;->c()C

    .line 168
    move-result v2

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    :cond_7
    :goto_1
    iget v2, p0, Lorg/threeten/bp/format/c$j;->minWidth:I

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 177
    move-result v3

    .line 178
    sub-int/2addr v2, v3

    .line 179
    .line 180
    if-ge v1, v2, :cond_8

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1}, Lorg/threeten/bp/format/f;->e()C

    .line 184
    move-result v2

    .line 185
    .line 186
    .line 187
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    add-int/lit8 v1, v1, 0x1

    .line 190
    goto :goto_1

    .line 191
    .line 192
    .line 193
    :cond_8
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    return v8

    .line 195
    .line 196
    :cond_9
    new-instance p1, Lorg/threeten/bp/b;

    .line 197
    .line 198
    new-instance p2, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    iget-object v0, p0, Lorg/threeten/bp/format/c$j;->field:Lorg/threeten/bp/temporal/h;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    const-string v0, " exceeds the maximum print width of "

    .line 218
    .line 219
    .line 220
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    iget v0, p0, Lorg/threeten/bp/format/c$j;->maxWidth:I

    .line 223
    .line 224
    .line 225
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    move-result-object p2

    .line 230
    .line 231
    .line 232
    invoke-direct {p1, p2}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 233
    throw p1
.end method

.method b(Lorg/threeten/bp/format/d;J)J
    .locals 0

    .line 1
    return-wide p2
.end method

.method c()Lorg/threeten/bp/format/c$j;
    .locals 8

    .line 1
    .line 2
    iget v0, p0, Lorg/threeten/bp/format/c$j;->subsequentWidth:I

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    return-object p0

    .line 7
    .line 8
    :cond_0
    new-instance v0, Lorg/threeten/bp/format/c$j;

    .line 9
    .line 10
    iget-object v3, p0, Lorg/threeten/bp/format/c$j;->field:Lorg/threeten/bp/temporal/h;

    .line 11
    .line 12
    iget v4, p0, Lorg/threeten/bp/format/c$j;->minWidth:I

    .line 13
    .line 14
    iget v5, p0, Lorg/threeten/bp/format/c$j;->maxWidth:I

    .line 15
    .line 16
    iget-object v6, p0, Lorg/threeten/bp/format/c$j;->signStyle:Lorg/threeten/bp/format/h;

    .line 17
    const/4 v7, -0x1

    .line 18
    move-object v2, v0

    .line 19
    .line 20
    .line 21
    invoke-direct/range {v2 .. v7}, Lorg/threeten/bp/format/c$j;-><init>(Lorg/threeten/bp/temporal/h;IILorg/threeten/bp/format/h;I)V

    .line 22
    return-object v0
.end method

.method d(I)Lorg/threeten/bp/format/c$j;
    .locals 7

    .line 1
    .line 2
    new-instance v6, Lorg/threeten/bp/format/c$j;

    .line 3
    .line 4
    iget-object v1, p0, Lorg/threeten/bp/format/c$j;->field:Lorg/threeten/bp/temporal/h;

    .line 5
    .line 6
    iget v2, p0, Lorg/threeten/bp/format/c$j;->minWidth:I

    .line 7
    .line 8
    iget v3, p0, Lorg/threeten/bp/format/c$j;->maxWidth:I

    .line 9
    .line 10
    iget-object v4, p0, Lorg/threeten/bp/format/c$j;->signStyle:Lorg/threeten/bp/format/h;

    .line 11
    .line 12
    iget v0, p0, Lorg/threeten/bp/format/c$j;->subsequentWidth:I

    .line 13
    .line 14
    add-int v5, v0, p1

    .line 15
    move-object v0, v6

    .line 16
    .line 17
    .line 18
    invoke-direct/range {v0 .. v5}, Lorg/threeten/bp/format/c$j;-><init>(Lorg/threeten/bp/temporal/h;IILorg/threeten/bp/format/h;I)V

    .line 19
    return-object v6
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Lorg/threeten/bp/format/c$j;->minWidth:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    const-string v2, ")"

    .line 6
    .line 7
    const-string v3, "Value("

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget v1, p0, Lorg/threeten/bp/format/c$j;->maxWidth:I

    .line 12
    .line 13
    const/16 v4, 0x13

    .line 14
    .line 15
    if-ne v1, v4, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lorg/threeten/bp/format/c$j;->signStyle:Lorg/threeten/bp/format/h;

    .line 18
    .line 19
    sget-object v4, Lorg/threeten/bp/format/h;->NORMAL:Lorg/threeten/bp/format/h;

    .line 20
    .line 21
    if-ne v1, v4, :cond_0

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    iget-object v1, p0, Lorg/threeten/bp/format/c$j;->field:Lorg/threeten/bp/temporal/h;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    return-object v0

    .line 43
    .line 44
    :cond_0
    iget v1, p0, Lorg/threeten/bp/format/c$j;->maxWidth:I

    .line 45
    .line 46
    const-string v4, ","

    .line 47
    .line 48
    if-ne v0, v1, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Lorg/threeten/bp/format/c$j;->signStyle:Lorg/threeten/bp/format/h;

    .line 51
    .line 52
    sget-object v1, Lorg/threeten/bp/format/h;->NOT_NEGATIVE:Lorg/threeten/bp/format/h;

    .line 53
    .line 54
    if-ne v0, v1, :cond_1

    .line 55
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    iget-object v1, p0, Lorg/threeten/bp/format/c$j;->field:Lorg/threeten/bp/temporal/h;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    iget v1, p0, Lorg/threeten/bp/format/c$j;->minWidth:I

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 83
    return-object v0

    .line 84
    .line 85
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    iget-object v1, p0, Lorg/threeten/bp/format/c$j;->field:Lorg/threeten/bp/temporal/h;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    iget v1, p0, Lorg/threeten/bp/format/c$j;->minWidth:I

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    iget v1, p0, Lorg/threeten/bp/format/c$j;->maxWidth:I

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    iget-object v1, p0, Lorg/threeten/bp/format/c$j;->signStyle:Lorg/threeten/bp/format/h;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object v0

    .line 128
    return-object v0
.end method
