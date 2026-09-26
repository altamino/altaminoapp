.class final Lorg/threeten/bp/t;
.super Lorg/threeten/bp/r;
.source "SourceFile"


# static fields
.field private static final PATTERN:Ljava/util/regex/Pattern;

.field private static final serialVersionUID:J = 0x746262147bb70e18L


# instance fields
.field private final id:Ljava/lang/String;

.field private final transient rules:Lorg/threeten/bp/zone/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "[A-Za-z][A-Za-z0-9~/._+-]+"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Lorg/threeten/bp/t;->PATTERN:Ljava/util/regex/Pattern;

    .line 9
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/threeten/bp/zone/f;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/threeten/bp/r;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lorg/threeten/bp/t;->id:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p2, p0, Lorg/threeten/bp/t;->rules:Lorg/threeten/bp/zone/f;

    .line 8
    return-void
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

.method static s(Ljava/lang/String;Z)Lorg/threeten/bp/t;
    .locals 2

    .line 1
    .line 2
    const-string v0, "zoneId"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x2

    .line 11
    .line 12
    if-lt v0, v1, :cond_2

    .line 13
    .line 14
    sget-object v0, Lorg/threeten/bp/t;->PATTERN:Ljava/util/regex/Pattern;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    const/4 v0, 0x1

    .line 26
    .line 27
    .line 28
    :try_start_0
    invoke-static {p0, v0}, Lorg/threeten/bp/zone/i;->b(Ljava/lang/String;Z)Lorg/threeten/bp/zone/f;

    .line 29
    move-result-object p1
    :try_end_0
    .catch Lorg/threeten/bp/zone/g; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .line 33
    const-string v1, "GMT0"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v1

    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    sget-object p1, Lorg/threeten/bp/s;->UTC:Lorg/threeten/bp/s;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lorg/threeten/bp/s;->o()Lorg/threeten/bp/zone/f;

    .line 45
    move-result-object p1

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_0
    if-nez p1, :cond_1

    .line 49
    const/4 p1, 0x0

    .line 50
    .line 51
    :goto_0
    new-instance v0, Lorg/threeten/bp/t;

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, p0, p1}, Lorg/threeten/bp/t;-><init>(Ljava/lang/String;Lorg/threeten/bp/zone/f;)V

    .line 55
    return-object v0

    .line 56
    :cond_1
    throw v0

    .line 57
    .line 58
    :cond_2
    new-instance p1, Lorg/threeten/bp/b;

    .line 59
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    const-string v1, "Invalid ID for region-based ZoneId, invalid format: "

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p0

    .line 76
    .line 77
    .line 78
    invoke-direct {p1, p0}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 79
    throw p1
.end method

.method private static t(Ljava/lang/String;)Lorg/threeten/bp/t;
    .locals 5

    .line 1
    .line 2
    const-string v0, "Z"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_8

    .line 9
    .line 10
    const-string v0, "+"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_8

    .line 17
    .line 18
    const-string v0, "-"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-nez v0, :cond_8

    .line 25
    .line 26
    const-string v0, "UTC"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-nez v0, :cond_7

    .line 33
    .line 34
    const-string v0, "GMT"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v0

    .line 39
    .line 40
    if-nez v0, :cond_7

    .line 41
    .line 42
    const-string v0, "UT"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v1

    .line 47
    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    goto/16 :goto_2

    .line 51
    .line 52
    :cond_0
    const-string v1, "UTC+"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 56
    move-result v1

    .line 57
    const/4 v2, 0x0

    .line 58
    .line 59
    if-nez v1, :cond_5

    .line 60
    .line 61
    const-string v1, "GMT+"

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 65
    move-result v1

    .line 66
    .line 67
    if-nez v1, :cond_5

    .line 68
    .line 69
    const-string v1, "UTC-"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 73
    move-result v1

    .line 74
    .line 75
    if-nez v1, :cond_5

    .line 76
    .line 77
    const-string v1, "GMT-"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 81
    move-result v1

    .line 82
    .line 83
    if-eqz v1, :cond_1

    .line 84
    goto :goto_1

    .line 85
    .line 86
    :cond_1
    const-string v1, "UT+"

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 90
    move-result v1

    .line 91
    .line 92
    if-nez v1, :cond_3

    .line 93
    .line 94
    const-string v1, "UT-"

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 98
    move-result v1

    .line 99
    .line 100
    if-eqz v1, :cond_2

    .line 101
    goto :goto_0

    .line 102
    .line 103
    .line 104
    :cond_2
    invoke-static {p0, v2}, Lorg/threeten/bp/t;->s(Ljava/lang/String;Z)Lorg/threeten/bp/t;

    .line 105
    move-result-object p0

    .line 106
    return-object p0

    .line 107
    :cond_3
    :goto_0
    const/4 v1, 0x2

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 111
    move-result-object p0

    .line 112
    .line 113
    .line 114
    invoke-static {p0}, Lorg/threeten/bp/s;->w(Ljava/lang/String;)Lorg/threeten/bp/s;

    .line 115
    move-result-object p0

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Lorg/threeten/bp/s;->v()I

    .line 119
    move-result v1

    .line 120
    .line 121
    if-nez v1, :cond_4

    .line 122
    .line 123
    new-instance v1, Lorg/threeten/bp/t;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Lorg/threeten/bp/s;->o()Lorg/threeten/bp/zone/f;

    .line 127
    move-result-object p0

    .line 128
    .line 129
    .line 130
    invoke-direct {v1, v0, p0}, Lorg/threeten/bp/t;-><init>(Ljava/lang/String;Lorg/threeten/bp/zone/f;)V

    .line 131
    return-object v1

    .line 132
    .line 133
    :cond_4
    new-instance v1, Lorg/threeten/bp/t;

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
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Lorg/threeten/bp/s;->n()Ljava/lang/String;

    .line 145
    move-result-object v0

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    move-result-object v0

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Lorg/threeten/bp/s;->o()Lorg/threeten/bp/zone/f;

    .line 156
    move-result-object p0

    .line 157
    .line 158
    .line 159
    invoke-direct {v1, v0, p0}, Lorg/threeten/bp/t;-><init>(Ljava/lang/String;Lorg/threeten/bp/zone/f;)V

    .line 160
    return-object v1

    .line 161
    :cond_5
    :goto_1
    const/4 v0, 0x3

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 165
    move-result-object v1

    .line 166
    .line 167
    .line 168
    invoke-static {v1}, Lorg/threeten/bp/s;->w(Ljava/lang/String;)Lorg/threeten/bp/s;

    .line 169
    move-result-object v1

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1}, Lorg/threeten/bp/s;->v()I

    .line 173
    move-result v3

    .line 174
    .line 175
    if-nez v3, :cond_6

    .line 176
    .line 177
    new-instance v3, Lorg/threeten/bp/t;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 181
    move-result-object p0

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1}, Lorg/threeten/bp/s;->o()Lorg/threeten/bp/zone/f;

    .line 185
    move-result-object v0

    .line 186
    .line 187
    .line 188
    invoke-direct {v3, p0, v0}, Lorg/threeten/bp/t;-><init>(Ljava/lang/String;Lorg/threeten/bp/zone/f;)V

    .line 189
    return-object v3

    .line 190
    .line 191
    :cond_6
    new-instance v3, Lorg/threeten/bp/t;

    .line 192
    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 200
    move-result-object p0

    .line 201
    .line 202
    .line 203
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1}, Lorg/threeten/bp/s;->n()Ljava/lang/String;

    .line 207
    move-result-object p0

    .line 208
    .line 209
    .line 210
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    move-result-object p0

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1}, Lorg/threeten/bp/s;->o()Lorg/threeten/bp/zone/f;

    .line 218
    move-result-object v0

    .line 219
    .line 220
    .line 221
    invoke-direct {v3, p0, v0}, Lorg/threeten/bp/t;-><init>(Ljava/lang/String;Lorg/threeten/bp/zone/f;)V

    .line 222
    return-object v3

    .line 223
    .line 224
    :cond_7
    :goto_2
    new-instance v0, Lorg/threeten/bp/t;

    .line 225
    .line 226
    sget-object v1, Lorg/threeten/bp/s;->UTC:Lorg/threeten/bp/s;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1}, Lorg/threeten/bp/s;->o()Lorg/threeten/bp/zone/f;

    .line 230
    move-result-object v1

    .line 231
    .line 232
    .line 233
    invoke-direct {v0, p0, v1}, Lorg/threeten/bp/t;-><init>(Ljava/lang/String;Lorg/threeten/bp/zone/f;)V

    .line 234
    return-object v0

    .line 235
    .line 236
    :cond_8
    new-instance v0, Lorg/threeten/bp/b;

    .line 237
    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .line 243
    const-string v2, "Invalid ID for region-based ZoneId, invalid format: "

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    move-result-object p0

    .line 254
    .line 255
    .line 256
    invoke-direct {v0, p0}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 257
    throw v0
.end method

.method static u(Ljava/io/DataInput;)Lorg/threeten/bp/r;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lorg/threeten/bp/t;->t(Ljava/lang/String;)Lorg/threeten/bp/t;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/o;

    .line 3
    const/4 v1, 0x7

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/o;-><init>(BLjava/lang/Object;)V

    .line 7
    return-object v0
.end method


# virtual methods
.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/t;->id:Ljava/lang/String;

    return-object v0
.end method

.method public o()Lorg/threeten/bp/zone/f;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/t;->rules:Lorg/threeten/bp/zone/f;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/t;->id:Ljava/lang/String;

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lorg/threeten/bp/zone/i;->b(Ljava/lang/String;Z)Lorg/threeten/bp/zone/f;

    .line 12
    move-result-object v0

    .line 13
    :goto_0
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
    const/4 v0, 0x7

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lorg/threeten/bp/t;->v(Ljava/io/DataOutput;)V

    .line 8
    return-void
.end method

.method v(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/t;->id:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 6
    return-void
.end method
