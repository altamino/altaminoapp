.class public Lcom/linkedin/urls/detection/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linkedin/urls/detection/c$a;,
        Lcom/linkedin/urls/detection/c$b;
    }
.end annotation


# static fields
.field private static final DNC_MIN_TOP_LEVEL_DOMAIN:I = 0x1

.field private static final HEX_ENCODED_DOT:Ljava/lang/String; = "2e"

.field private static final INTERNATIONAL_CHAR_START:I = 0xc0

.field private static final MAX_DOMAIN_LENGTH:I = 0xff

.field private static final MAX_IP_PART:I = 0xff

.field private static final MAX_LABEL_LENGTH:I = 0x40

.field private static final MAX_NUMBER_LABELS:I = 0x7f

.field private static final MAX_NUMERIC_DOMAIN_VALUE:J = 0xffffffffL

.field private static final MAX_TOP_LEVEL_DOMAIN:I = 0x16

.field private static final MIN_IP_PART:I = 0x0

.field private static final MIN_NUMERIC_DOMAIN_VALUE:J = 0x1010100L

.field private static final MIN_TOP_LEVEL_DOMAIN:I = 0x2


# instance fields
.field private _buffer:Lcom/linkedin/urls/detection/e;

.field private final _characterHandler:Lcom/linkedin/urls/detection/c$a;

.field private _current:Ljava/lang/String;

.field private _currentLabelLength:I

.field private _dots:I

.field private _numeric:Z

.field private _options:Lcom/linkedin/urls/detection/g;

.field private final _reader:Lcom/linkedin/urls/detection/d;

.field private _schemeType:I

.field private _seenBracket:Z

.field private _seenCompleteBracketSet:Z

.field private _startDomainName:I

.field private _topLevelLength:I

.field private _zoneIndex:Z


# direct methods
.method public constructor <init>(Lcom/linkedin/urls/detection/d;Lcom/linkedin/urls/detection/e;Ljava/lang/String;ILcom/linkedin/urls/detection/g;Lcom/linkedin/urls/detection/c$a;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Lcom/linkedin/urls/detection/c;->_dots:I

    .line 7
    .line 8
    iput v0, p0, Lcom/linkedin/urls/detection/c;->_currentLabelLength:I

    .line 9
    .line 10
    iput v0, p0, Lcom/linkedin/urls/detection/c;->_topLevelLength:I

    .line 11
    .line 12
    iput v0, p0, Lcom/linkedin/urls/detection/c;->_startDomainName:I

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/linkedin/urls/detection/c;->_numeric:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/linkedin/urls/detection/c;->_seenBracket:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/linkedin/urls/detection/c;->_seenCompleteBracketSet:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/linkedin/urls/detection/c;->_zoneIndex:Z

    .line 21
    .line 22
    iput-object p2, p0, Lcom/linkedin/urls/detection/c;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 23
    .line 24
    iput-object p3, p0, Lcom/linkedin/urls/detection/c;->_current:Ljava/lang/String;

    .line 25
    .line 26
    iput p4, p0, Lcom/linkedin/urls/detection/c;->_schemeType:I

    .line 27
    .line 28
    iput-object p1, p0, Lcom/linkedin/urls/detection/c;->_reader:Lcom/linkedin/urls/detection/d;

    .line 29
    .line 30
    iput-object p5, p0, Lcom/linkedin/urls/detection/c;->_options:Lcom/linkedin/urls/detection/g;

    .line 31
    .line 32
    iput-object p6, p0, Lcom/linkedin/urls/detection/c;->_characterHandler:Lcom/linkedin/urls/detection/c$a;

    .line 33
    return-void
.end method

.method private a(Lcom/linkedin/urls/detection/c$b;Ljava/lang/Character;)Lcom/linkedin/urls/detection/c$b;
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/linkedin/urls/detection/c;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/e;->h()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x3

    .line 9
    .line 10
    if-le v0, v2, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/linkedin/urls/detection/c;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/e;->h()I

    .line 16
    move-result v3

    .line 17
    sub-int/2addr v3, v2

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v3}, Lcom/linkedin/urls/detection/e;->j(I)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    const-string v3, "%2e"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v2, v1

    .line 32
    .line 33
    :goto_0
    iget-object v0, p0, Lcom/linkedin/urls/detection/c;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/e;->h()I

    .line 37
    move-result v0

    .line 38
    .line 39
    iget v3, p0, Lcom/linkedin/urls/detection/c;->_startDomainName:I

    .line 40
    sub-int/2addr v0, v3

    .line 41
    .line 42
    iget v3, p0, Lcom/linkedin/urls/detection/c;->_currentLabelLength:I

    .line 43
    const/4 v4, 0x0

    .line 44
    .line 45
    if-lez v3, :cond_1

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move v2, v4

    .line 48
    :goto_1
    add-int/2addr v0, v2

    .line 49
    .line 50
    iget v2, p0, Lcom/linkedin/urls/detection/c;->_dots:I

    .line 51
    .line 52
    if-lez v3, :cond_2

    .line 53
    move v5, v1

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    move v5, v4

    .line 56
    :goto_2
    add-int/2addr v5, v2

    .line 57
    .line 58
    const/16 v6, 0xff

    .line 59
    .line 60
    if-ge v0, v6, :cond_4

    .line 61
    .line 62
    const/16 v0, 0x7f

    .line 63
    .line 64
    if-le v5, v0, :cond_3

    .line 65
    goto :goto_3

    .line 66
    .line 67
    :cond_3
    iget-boolean v0, p0, Lcom/linkedin/urls/detection/c;->_numeric:Z

    .line 68
    .line 69
    if-eqz v0, :cond_5

    .line 70
    :cond_4
    :goto_3
    move v1, v4

    .line 71
    .line 72
    goto/16 :goto_7

    .line 73
    .line 74
    :cond_5
    iget-boolean v0, p0, Lcom/linkedin/urls/detection/c;->_seenBracket:Z

    .line 75
    .line 76
    if-eqz v0, :cond_6

    .line 77
    goto :goto_3

    .line 78
    :cond_6
    const/4 v0, 0x2

    .line 79
    .line 80
    if-lez v3, :cond_7

    .line 81
    .line 82
    if-ge v2, v1, :cond_9

    .line 83
    .line 84
    :cond_7
    if-lt v2, v0, :cond_8

    .line 85
    .line 86
    if-eqz v3, :cond_9

    .line 87
    .line 88
    :cond_8
    iget-object v2, p0, Lcom/linkedin/urls/detection/c;->_options:Lcom/linkedin/urls/detection/g;

    .line 89
    .line 90
    sget-object v3, Lcom/linkedin/urls/detection/g;->ALLOW_SINGLE_LEVEL_DOMAIN:Lcom/linkedin/urls/detection/g;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v3}, Lcom/linkedin/urls/detection/g;->b(Lcom/linkedin/urls/detection/g;)Z

    .line 94
    move-result v2

    .line 95
    .line 96
    if-eqz v2, :cond_4

    .line 97
    .line 98
    iget v2, p0, Lcom/linkedin/urls/detection/c;->_dots:I

    .line 99
    .line 100
    if-nez v2, :cond_4

    .line 101
    .line 102
    :cond_9
    iget-object v2, p0, Lcom/linkedin/urls/detection/c;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Lcom/linkedin/urls/detection/e;->h()I

    .line 106
    move-result v2

    .line 107
    .line 108
    iget v3, p0, Lcom/linkedin/urls/detection/c;->_topLevelLength:I

    .line 109
    sub-int/2addr v2, v3

    .line 110
    .line 111
    iget v3, p0, Lcom/linkedin/urls/detection/c;->_currentLabelLength:I

    .line 112
    .line 113
    if-nez v3, :cond_a

    .line 114
    .line 115
    add-int/lit8 v2, v2, -0x1

    .line 116
    .line 117
    .line 118
    :cond_a
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 119
    move-result v2

    .line 120
    .line 121
    iget-object v3, p0, Lcom/linkedin/urls/detection/c;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3}, Lcom/linkedin/urls/detection/e;->h()I

    .line 125
    move-result v5

    .line 126
    sub-int/2addr v5, v2

    .line 127
    const/4 v6, 0x4

    .line 128
    .line 129
    .line 130
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    .line 131
    move-result v5

    .line 132
    add-int/2addr v5, v2

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3, v2, v5}, Lcom/linkedin/urls/detection/e;->k(II)Ljava/lang/String;

    .line 136
    move-result-object v2

    .line 137
    .line 138
    .line 139
    const-string/jumbo v3, "xn--"

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 143
    move-result v2

    .line 144
    .line 145
    if-eqz v2, :cond_b

    .line 146
    .line 147
    goto/16 :goto_7

    .line 148
    .line 149
    :cond_b
    iget v2, p0, Lcom/linkedin/urls/detection/c;->_topLevelLength:I

    .line 150
    .line 151
    iget v3, p0, Lcom/linkedin/urls/detection/c;->_schemeType:I

    .line 152
    .line 153
    if-ne v3, v0, :cond_c

    .line 154
    move v0, v1

    .line 155
    .line 156
    :cond_c
    if-lt v2, v0, :cond_d

    .line 157
    .line 158
    const/16 v0, 0x16

    .line 159
    .line 160
    if-gt v2, v0, :cond_d

    .line 161
    move v0, v1

    .line 162
    goto :goto_4

    .line 163
    :cond_d
    move v0, v4

    .line 164
    .line 165
    :goto_4
    iget v2, p0, Lcom/linkedin/urls/detection/c;->_dots:I

    .line 166
    .line 167
    if-lt v2, v1, :cond_12

    .line 168
    .line 169
    iget-object v2, p0, Lcom/linkedin/urls/detection/c;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2}, Lcom/linkedin/urls/detection/e;->h()I

    .line 173
    move-result v2

    .line 174
    .line 175
    if-lez v2, :cond_e

    .line 176
    .line 177
    iget-object v2, p0, Lcom/linkedin/urls/detection/c;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2}, Lcom/linkedin/urls/detection/e;->h()I

    .line 181
    move-result v3

    .line 182
    sub-int/2addr v3, v1

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2, v3}, Lcom/linkedin/urls/detection/e;->b(I)C

    .line 186
    move-result v2

    .line 187
    .line 188
    const/16 v3, 0x2e

    .line 189
    .line 190
    if-ne v2, v3, :cond_e

    .line 191
    .line 192
    iget-object p1, p0, Lcom/linkedin/urls/detection/c;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1}, Lcom/linkedin/urls/detection/e;->h()I

    .line 196
    move-result v2

    .line 197
    sub-int/2addr v2, v1

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, v2}, Lcom/linkedin/urls/detection/e;->d(I)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    sget-object p1, Lcom/linkedin/urls/detection/c$b;->ValidDomainName:Lcom/linkedin/urls/detection/c$b;

    .line 203
    .line 204
    iget v2, p0, Lcom/linkedin/urls/detection/c;->_dots:I

    .line 205
    sub-int/2addr v2, v1

    .line 206
    .line 207
    iput v2, p0, Lcom/linkedin/urls/detection/c;->_dots:I

    .line 208
    .line 209
    :cond_e
    iget-object v2, p0, Lcom/linkedin/urls/detection/c;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2}, Lcom/linkedin/urls/detection/e;->e()Ljava/lang/String;

    .line 213
    move-result-object v2

    .line 214
    .line 215
    .line 216
    invoke-static {v2}, Lcom/linkedin/urls/detection/a;->p(Ljava/lang/String;)[Ljava/lang/String;

    .line 217
    move-result-object v2

    .line 218
    array-length v3, v2

    .line 219
    .line 220
    if-lez v3, :cond_4

    .line 221
    array-length v3, v2

    .line 222
    sub-int/2addr v3, v1

    .line 223
    .line 224
    aget-object v2, v2, v3

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 228
    move-result-object v2

    .line 229
    .line 230
    iget v3, p0, Lcom/linkedin/urls/detection/c;->_dots:I

    .line 231
    .line 232
    if-ne v3, v1, :cond_11

    .line 233
    .line 234
    sget-object v3, Lcom/linkedin/urls/detection/c$b;->ReadPath:Lcom/linkedin/urls/detection/c$b;

    .line 235
    .line 236
    if-eq p1, v3, :cond_11

    .line 237
    .line 238
    iget v3, p0, Lcom/linkedin/urls/detection/c;->_schemeType:I

    .line 239
    .line 240
    if-nez v3, :cond_11

    .line 241
    .line 242
    sget-object v3, Lcom/linkedin/urls/detection/b;->URL_VALID_GTLD:Ljava/util/HashSet;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 246
    move-result v3

    .line 247
    .line 248
    if-nez v3, :cond_10

    .line 249
    .line 250
    const-string v3, "co"

    .line 251
    .line 252
    .line 253
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 254
    move-result v3

    .line 255
    .line 256
    if-nez v3, :cond_10

    .line 257
    .line 258
    const-string v3, "tv"

    .line 259
    .line 260
    .line 261
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    move-result v2

    .line 263
    .line 264
    if-eqz v2, :cond_f

    .line 265
    goto :goto_5

    .line 266
    :cond_f
    move v1, v4

    .line 267
    :cond_10
    :goto_5
    and-int/2addr v0, v1

    .line 268
    goto :goto_6

    .line 269
    .line 270
    :cond_11
    sget-object v3, Lcom/linkedin/urls/detection/b;->URL_VALID_GTLD:Ljava/util/HashSet;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 274
    move-result v3

    .line 275
    .line 276
    if-nez v3, :cond_10

    .line 277
    .line 278
    sget-object v3, Lcom/linkedin/urls/detection/b;->URl_VALID_CCTLD:Ljava/util/HashSet;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 282
    move-result v2

    .line 283
    .line 284
    if-eqz v2, :cond_f

    .line 285
    goto :goto_5

    .line 286
    :cond_12
    :goto_6
    move v1, v0

    .line 287
    .line 288
    :goto_7
    if-eqz v1, :cond_14

    .line 289
    .line 290
    if-eqz p2, :cond_13

    .line 291
    .line 292
    iget-object v0, p0, Lcom/linkedin/urls/detection/c;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 293
    .line 294
    .line 295
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    .line 296
    move-result p2

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0, p2}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 300
    :cond_13
    return-object p1

    .line 301
    .line 302
    :cond_14
    iget-object p1, p0, Lcom/linkedin/urls/detection/c;->_reader:Lcom/linkedin/urls/detection/d;

    .line 303
    .line 304
    .line 305
    invoke-virtual {p1}, Lcom/linkedin/urls/detection/d;->g()V

    .line 306
    .line 307
    sget-object p1, Lcom/linkedin/urls/detection/c$b;->InvalidDomainName:Lcom/linkedin/urls/detection/c$b;

    .line 308
    return-object p1
.end method

.method private b()Lcom/linkedin/urls/detection/c$b;
    .locals 12

    .line 1
    .line 2
    iget-object v0, p0, Lcom/linkedin/urls/detection/c;->_current:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_11

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/linkedin/urls/detection/c;->_current:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 18
    move-result v0

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/linkedin/urls/detection/a;->c(C)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    sget-object v0, Lcom/linkedin/urls/detection/c$b;->InvalidDomainName:Lcom/linkedin/urls/detection/c$b;

    .line 27
    return-object v0

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/linkedin/urls/detection/c;->_current:Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 33
    move-result v0

    .line 34
    const/4 v3, 0x3

    .line 35
    .line 36
    if-ne v0, v3, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lcom/linkedin/urls/detection/c;->_current:Ljava/lang/String;

    .line 39
    .line 40
    const-string v3, "%2e"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 44
    move-result v0

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    sget-object v0, Lcom/linkedin/urls/detection/c$b;->InvalidDomainName:Lcom/linkedin/urls/detection/c$b;

    .line 49
    return-object v0

    .line 50
    .line 51
    :cond_1
    iget-object v0, p0, Lcom/linkedin/urls/detection/c;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/e;->h()I

    .line 55
    move-result v0

    .line 56
    .line 57
    iget-object v3, p0, Lcom/linkedin/urls/detection/c;->_current:Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 61
    move-result v3

    .line 62
    sub-int/2addr v0, v3

    .line 63
    .line 64
    iput v0, p0, Lcom/linkedin/urls/detection/c;->_startDomainName:I

    .line 65
    .line 66
    iput-boolean v1, p0, Lcom/linkedin/urls/detection/c;->_numeric:Z

    .line 67
    .line 68
    iget-object v0, p0, Lcom/linkedin/urls/detection/c;->_current:Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 72
    move-result-object v0

    .line 73
    array-length v3, v0

    .line 74
    const/4 v4, 0x2

    .line 75
    .line 76
    if-le v3, v4, :cond_3

    .line 77
    .line 78
    aget-char v5, v0, v2

    .line 79
    .line 80
    const/16 v6, 0x30

    .line 81
    .line 82
    if-ne v5, v6, :cond_3

    .line 83
    .line 84
    aget-char v5, v0, v1

    .line 85
    .line 86
    const/16 v6, 0x78

    .line 87
    .line 88
    if-eq v5, v6, :cond_2

    .line 89
    .line 90
    const/16 v6, 0x58

    .line 91
    .line 92
    if-ne v5, v6, :cond_3

    .line 93
    :cond_2
    move v5, v1

    .line 94
    goto :goto_0

    .line 95
    :cond_3
    move v5, v2

    .line 96
    .line 97
    :goto_0
    if-eqz v5, :cond_4

    .line 98
    goto :goto_1

    .line 99
    :cond_4
    move v4, v2

    .line 100
    :goto_1
    move v6, v2

    .line 101
    move v7, v6

    .line 102
    .line 103
    :goto_2
    if-ge v4, v3, :cond_e

    .line 104
    .line 105
    if-nez v6, :cond_e

    .line 106
    .line 107
    aget-char v8, v0, v4

    .line 108
    .line 109
    iget v9, p0, Lcom/linkedin/urls/detection/c;->_currentLabelLength:I

    .line 110
    add-int/2addr v9, v1

    .line 111
    .line 112
    iput v9, p0, Lcom/linkedin/urls/detection/c;->_currentLabelLength:I

    .line 113
    .line 114
    iput v9, p0, Lcom/linkedin/urls/detection/c;->_topLevelLength:I

    .line 115
    .line 116
    const/16 v10, 0x40

    .line 117
    .line 118
    if-le v9, v10, :cond_5

    .line 119
    .line 120
    sget-object v0, Lcom/linkedin/urls/detection/c$b;->InvalidDomainName:Lcom/linkedin/urls/detection/c$b;

    .line 121
    return-object v0

    .line 122
    .line 123
    .line 124
    :cond_5
    invoke-static {v8}, Lcom/linkedin/urls/detection/a;->c(C)Z

    .line 125
    move-result v9

    .line 126
    .line 127
    if-eqz v9, :cond_6

    .line 128
    .line 129
    iget v8, p0, Lcom/linkedin/urls/detection/c;->_dots:I

    .line 130
    add-int/2addr v8, v1

    .line 131
    .line 132
    iput v8, p0, Lcom/linkedin/urls/detection/c;->_dots:I

    .line 133
    .line 134
    iput v2, p0, Lcom/linkedin/urls/detection/c;->_currentLabelLength:I

    .line 135
    .line 136
    goto/16 :goto_5

    .line 137
    .line 138
    :cond_6
    const/16 v9, 0x5b

    .line 139
    .line 140
    if-ne v8, v9, :cond_7

    .line 141
    .line 142
    iput-boolean v1, p0, Lcom/linkedin/urls/detection/c;->_seenBracket:Z

    .line 143
    .line 144
    iput-boolean v2, p0, Lcom/linkedin/urls/detection/c;->_numeric:Z

    .line 145
    .line 146
    goto/16 :goto_5

    .line 147
    .line 148
    :cond_7
    const/16 v9, 0x25

    .line 149
    .line 150
    if-ne v8, v9, :cond_9

    .line 151
    .line 152
    add-int/lit8 v9, v4, 0x2

    .line 153
    .line 154
    if-ge v9, v3, :cond_9

    .line 155
    .line 156
    add-int/lit8 v10, v4, 0x1

    .line 157
    .line 158
    aget-char v11, v0, v10

    .line 159
    .line 160
    .line 161
    invoke-static {v11}, Lcom/linkedin/urls/detection/a;->f(C)Z

    .line 162
    move-result v11

    .line 163
    .line 164
    if-eqz v11, :cond_9

    .line 165
    .line 166
    aget-char v11, v0, v9

    .line 167
    .line 168
    .line 169
    invoke-static {v11}, Lcom/linkedin/urls/detection/a;->f(C)Z

    .line 170
    move-result v11

    .line 171
    .line 172
    if-eqz v11, :cond_9

    .line 173
    .line 174
    aget-char v4, v0, v10

    .line 175
    .line 176
    const/16 v8, 0x32

    .line 177
    .line 178
    if-ne v4, v8, :cond_8

    .line 179
    .line 180
    aget-char v4, v0, v9

    .line 181
    .line 182
    const/16 v8, 0x65

    .line 183
    .line 184
    if-ne v4, v8, :cond_8

    .line 185
    .line 186
    iget v4, p0, Lcom/linkedin/urls/detection/c;->_dots:I

    .line 187
    add-int/2addr v4, v1

    .line 188
    .line 189
    iput v4, p0, Lcom/linkedin/urls/detection/c;->_dots:I

    .line 190
    .line 191
    iput v2, p0, Lcom/linkedin/urls/detection/c;->_currentLabelLength:I

    .line 192
    goto :goto_3

    .line 193
    .line 194
    :cond_8
    iput-boolean v2, p0, Lcom/linkedin/urls/detection/c;->_numeric:Z

    .line 195
    :goto_3
    move v4, v9

    .line 196
    goto :goto_5

    .line 197
    .line 198
    :cond_9
    if-eqz v5, :cond_a

    .line 199
    .line 200
    .line 201
    invoke-static {v8}, Lcom/linkedin/urls/detection/a;->f(C)Z

    .line 202
    move-result v8

    .line 203
    .line 204
    if-nez v8, :cond_d

    .line 205
    .line 206
    iput-boolean v2, p0, Lcom/linkedin/urls/detection/c;->_numeric:Z

    .line 207
    .line 208
    add-int/lit8 v4, v4, -0x1

    .line 209
    move v5, v2

    .line 210
    goto :goto_5

    .line 211
    .line 212
    .line 213
    :cond_a
    invoke-static {v8}, Lcom/linkedin/urls/detection/a;->a(C)Z

    .line 214
    move-result v9

    .line 215
    .line 216
    if-nez v9, :cond_c

    .line 217
    .line 218
    const/16 v9, 0x2d

    .line 219
    .line 220
    if-eq v8, v9, :cond_c

    .line 221
    .line 222
    const/16 v9, 0xc0

    .line 223
    .line 224
    if-lt v8, v9, :cond_b

    .line 225
    goto :goto_4

    .line 226
    .line 227
    .line 228
    :cond_b
    invoke-static {v8}, Lcom/linkedin/urls/detection/a;->h(C)Z

    .line 229
    move-result v8

    .line 230
    .line 231
    if-nez v8, :cond_d

    .line 232
    .line 233
    iget-object v8, p0, Lcom/linkedin/urls/detection/c;->_options:Lcom/linkedin/urls/detection/g;

    .line 234
    .line 235
    sget-object v9, Lcom/linkedin/urls/detection/g;->ALLOW_SINGLE_LEVEL_DOMAIN:Lcom/linkedin/urls/detection/g;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v8, v9}, Lcom/linkedin/urls/detection/g;->b(Lcom/linkedin/urls/detection/g;)Z

    .line 239
    move-result v8

    .line 240
    .line 241
    if-nez v8, :cond_d

    .line 242
    .line 243
    add-int/lit8 v7, v4, 0x1

    .line 244
    .line 245
    iput v2, p0, Lcom/linkedin/urls/detection/c;->_currentLabelLength:I

    .line 246
    .line 247
    iput v2, p0, Lcom/linkedin/urls/detection/c;->_topLevelLength:I

    .line 248
    .line 249
    iput-boolean v1, p0, Lcom/linkedin/urls/detection/c;->_numeric:Z

    .line 250
    .line 251
    iput v2, p0, Lcom/linkedin/urls/detection/c;->_dots:I

    .line 252
    move v6, v1

    .line 253
    goto :goto_5

    .line 254
    .line 255
    :cond_c
    :goto_4
    iput-boolean v2, p0, Lcom/linkedin/urls/detection/c;->_numeric:Z

    .line 256
    :cond_d
    :goto_5
    add-int/2addr v4, v1

    .line 257
    .line 258
    goto/16 :goto_2

    .line 259
    .line 260
    :cond_e
    if-lez v7, :cond_12

    .line 261
    .line 262
    iget-object v0, p0, Lcom/linkedin/urls/detection/c;->_current:Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 266
    move-result v0

    .line 267
    .line 268
    if-ge v7, v0, :cond_f

    .line 269
    .line 270
    iget-object v0, p0, Lcom/linkedin/urls/detection/c;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/e;->h()I

    .line 274
    move-result v1

    .line 275
    .line 276
    iget-object v3, p0, Lcom/linkedin/urls/detection/c;->_current:Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 280
    move-result-object v3

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0, v2, v1, v3}, Lcom/linkedin/urls/detection/e;->i(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    iput v2, p0, Lcom/linkedin/urls/detection/c;->_startDomainName:I

    .line 286
    .line 287
    :cond_f
    iget-object v0, p0, Lcom/linkedin/urls/detection/c;->_current:Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 291
    move-result v0

    .line 292
    .line 293
    if-ge v7, v0, :cond_10

    .line 294
    .line 295
    iget-object v0, p0, Lcom/linkedin/urls/detection/c;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/e;->e()Ljava/lang/String;

    .line 299
    move-result-object v0

    .line 300
    .line 301
    const-string v1, "."

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 305
    move-result v0

    .line 306
    .line 307
    if-eqz v0, :cond_12

    .line 308
    .line 309
    :cond_10
    sget-object v0, Lcom/linkedin/urls/detection/c$b;->InvalidDomainName:Lcom/linkedin/urls/detection/c$b;

    .line 310
    return-object v0

    .line 311
    .line 312
    :cond_11
    iget-object v0, p0, Lcom/linkedin/urls/detection/c;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/e;->h()I

    .line 316
    move-result v0

    .line 317
    .line 318
    iput v0, p0, Lcom/linkedin/urls/detection/c;->_startDomainName:I

    .line 319
    .line 320
    :cond_12
    sget-object v0, Lcom/linkedin/urls/detection/c$b;->ValidDomainName:Lcom/linkedin/urls/detection/c$b;

    .line 321
    return-object v0
.end method


# virtual methods
.method public c()Lcom/linkedin/urls/detection/c$b;
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/linkedin/urls/detection/c;->b()Lcom/linkedin/urls/detection/c$b;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Lcom/linkedin/urls/detection/c$b;->InvalidDomainName:Lcom/linkedin/urls/detection/c$b;

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    return-object v1

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    move v1, v0

    .line 12
    .line 13
    :cond_1
    :goto_0
    if-nez v1, :cond_18

    .line 14
    .line 15
    iget-object v2, p0, Lcom/linkedin/urls/detection/c;->_reader:Lcom/linkedin/urls/detection/d;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/linkedin/urls/detection/d;->c()Z

    .line 19
    move-result v2

    .line 20
    .line 21
    if-nez v2, :cond_18

    .line 22
    .line 23
    iget-object v2, p0, Lcom/linkedin/urls/detection/c;->_reader:Lcom/linkedin/urls/detection/d;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/linkedin/urls/detection/d;->j()C

    .line 27
    move-result v2

    .line 28
    .line 29
    const/16 v3, 0x2f

    .line 30
    .line 31
    if-ne v2, v3, :cond_2

    .line 32
    .line 33
    sget-object v0, Lcom/linkedin/urls/detection/c$b;->ReadPath:Lcom/linkedin/urls/detection/c$b;

    .line 34
    .line 35
    .line 36
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v0, v1}, Lcom/linkedin/urls/detection/c;->a(Lcom/linkedin/urls/detection/c$b;Ljava/lang/Character;)Lcom/linkedin/urls/detection/c$b;

    .line 41
    move-result-object v0

    .line 42
    return-object v0

    .line 43
    .line 44
    :cond_2
    const/16 v3, 0x3a

    .line 45
    .line 46
    if-ne v2, v3, :cond_4

    .line 47
    .line 48
    iget-boolean v4, p0, Lcom/linkedin/urls/detection/c;->_seenBracket:Z

    .line 49
    .line 50
    if-eqz v4, :cond_3

    .line 51
    .line 52
    iget-boolean v4, p0, Lcom/linkedin/urls/detection/c;->_seenCompleteBracketSet:Z

    .line 53
    .line 54
    if-eqz v4, :cond_4

    .line 55
    .line 56
    :cond_3
    sget-object v0, Lcom/linkedin/urls/detection/c$b;->ReadPort:Lcom/linkedin/urls/detection/c$b;

    .line 57
    .line 58
    .line 59
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, v0, v1}, Lcom/linkedin/urls/detection/c;->a(Lcom/linkedin/urls/detection/c$b;Ljava/lang/Character;)Lcom/linkedin/urls/detection/c$b;

    .line 64
    move-result-object v0

    .line 65
    return-object v0

    .line 66
    .line 67
    :cond_4
    const/16 v4, 0x3f

    .line 68
    .line 69
    if-ne v2, v4, :cond_5

    .line 70
    .line 71
    sget-object v0, Lcom/linkedin/urls/detection/c$b;->ReadQueryString:Lcom/linkedin/urls/detection/c$b;

    .line 72
    .line 73
    .line 74
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    .line 78
    invoke-direct {p0, v0, v1}, Lcom/linkedin/urls/detection/c;->a(Lcom/linkedin/urls/detection/c$b;Ljava/lang/Character;)Lcom/linkedin/urls/detection/c$b;

    .line 79
    move-result-object v0

    .line 80
    return-object v0

    .line 81
    .line 82
    :cond_5
    const/16 v4, 0x23

    .line 83
    .line 84
    if-ne v2, v4, :cond_6

    .line 85
    .line 86
    sget-object v0, Lcom/linkedin/urls/detection/c$b;->ReadFragment:Lcom/linkedin/urls/detection/c$b;

    .line 87
    .line 88
    .line 89
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 90
    move-result-object v1

    .line 91
    .line 92
    .line 93
    invoke-direct {p0, v0, v1}, Lcom/linkedin/urls/detection/c;->a(Lcom/linkedin/urls/detection/c$b;Ljava/lang/Character;)Lcom/linkedin/urls/detection/c$b;

    .line 94
    move-result-object v0

    .line 95
    return-object v0

    .line 96
    .line 97
    .line 98
    :cond_6
    invoke-static {v2}, Lcom/linkedin/urls/detection/a;->c(C)Z

    .line 99
    move-result v4

    .line 100
    const/4 v5, 0x1

    .line 101
    .line 102
    if-nez v4, :cond_14

    .line 103
    const/4 v4, 0x2

    .line 104
    .line 105
    const/16 v6, 0x25

    .line 106
    .line 107
    if-ne v2, v6, :cond_7

    .line 108
    .line 109
    iget-object v7, p0, Lcom/linkedin/urls/detection/c;->_reader:Lcom/linkedin/urls/detection/d;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v7, v4}, Lcom/linkedin/urls/detection/d;->a(I)Z

    .line 113
    move-result v7

    .line 114
    .line 115
    if-eqz v7, :cond_7

    .line 116
    .line 117
    iget-object v7, p0, Lcom/linkedin/urls/detection/c;->_reader:Lcom/linkedin/urls/detection/d;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v7, v4}, Lcom/linkedin/urls/detection/d;->h(I)Ljava/lang/String;

    .line 121
    move-result-object v7

    .line 122
    .line 123
    const-string v8, "2e"

    .line 124
    .line 125
    .line 126
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 127
    move-result v7

    .line 128
    .line 129
    if-eqz v7, :cond_7

    .line 130
    .line 131
    goto/16 :goto_3

    .line 132
    .line 133
    :cond_7
    iget-boolean v7, p0, Lcom/linkedin/urls/detection/c;->_seenBracket:Z

    .line 134
    .line 135
    const/16 v8, 0x5b

    .line 136
    .line 137
    if-eqz v7, :cond_d

    .line 138
    .line 139
    .line 140
    invoke-static {v2}, Lcom/linkedin/urls/detection/a;->f(C)Z

    .line 141
    move-result v7

    .line 142
    .line 143
    const/16 v9, 0x5d

    .line 144
    .line 145
    if-nez v7, :cond_8

    .line 146
    .line 147
    if-eq v2, v3, :cond_8

    .line 148
    .line 149
    if-eq v2, v8, :cond_8

    .line 150
    .line 151
    if-eq v2, v9, :cond_8

    .line 152
    .line 153
    if-ne v2, v6, :cond_d

    .line 154
    .line 155
    :cond_8
    iget-boolean v7, p0, Lcom/linkedin/urls/detection/c;->_seenCompleteBracketSet:Z

    .line 156
    .line 157
    if-nez v7, :cond_d

    .line 158
    .line 159
    if-eq v2, v6, :cond_c

    .line 160
    .line 161
    if-eq v2, v3, :cond_b

    .line 162
    .line 163
    if-eq v2, v8, :cond_a

    .line 164
    .line 165
    if-eq v2, v9, :cond_9

    .line 166
    .line 167
    iget v3, p0, Lcom/linkedin/urls/detection/c;->_currentLabelLength:I

    .line 168
    add-int/2addr v3, v5

    .line 169
    .line 170
    iput v3, p0, Lcom/linkedin/urls/detection/c;->_currentLabelLength:I

    .line 171
    goto :goto_1

    .line 172
    .line 173
    :cond_9
    iput-boolean v5, p0, Lcom/linkedin/urls/detection/c;->_seenCompleteBracketSet:Z

    .line 174
    .line 175
    iput-boolean v0, p0, Lcom/linkedin/urls/detection/c;->_zoneIndex:Z

    .line 176
    goto :goto_1

    .line 177
    .line 178
    :cond_a
    iget-object v0, p0, Lcom/linkedin/urls/detection/c;->_reader:Lcom/linkedin/urls/detection/d;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/d;->g()V

    .line 182
    .line 183
    sget-object v0, Lcom/linkedin/urls/detection/c$b;->InvalidDomainName:Lcom/linkedin/urls/detection/c$b;

    .line 184
    return-object v0

    .line 185
    .line 186
    :cond_b
    iput v0, p0, Lcom/linkedin/urls/detection/c;->_currentLabelLength:I

    .line 187
    goto :goto_1

    .line 188
    .line 189
    :cond_c
    iput-boolean v5, p0, Lcom/linkedin/urls/detection/c;->_zoneIndex:Z

    .line 190
    .line 191
    :goto_1
    iput-boolean v0, p0, Lcom/linkedin/urls/detection/c;->_numeric:Z

    .line 192
    .line 193
    iget-object v3, p0, Lcom/linkedin/urls/detection/c;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3, v2}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 197
    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    .line 201
    :cond_d
    invoke-static {v2}, Lcom/linkedin/urls/detection/a;->i(C)Z

    .line 202
    move-result v3

    .line 203
    .line 204
    if-eqz v3, :cond_10

    .line 205
    .line 206
    iget-boolean v3, p0, Lcom/linkedin/urls/detection/c;->_seenCompleteBracketSet:Z

    .line 207
    .line 208
    if-eqz v3, :cond_e

    .line 209
    .line 210
    iget-object v1, p0, Lcom/linkedin/urls/detection/c;->_reader:Lcom/linkedin/urls/detection/d;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1}, Lcom/linkedin/urls/detection/d;->g()V

    .line 214
    :goto_2
    move v1, v5

    .line 215
    .line 216
    goto/16 :goto_0

    .line 217
    .line 218
    :cond_e
    const/16 v3, 0x78

    .line 219
    .line 220
    if-eq v2, v3, :cond_f

    .line 221
    .line 222
    const/16 v3, 0x58

    .line 223
    .line 224
    if-eq v2, v3, :cond_f

    .line 225
    .line 226
    .line 227
    invoke-static {v2}, Lcom/linkedin/urls/detection/a;->h(C)Z

    .line 228
    move-result v3

    .line 229
    .line 230
    if-nez v3, :cond_f

    .line 231
    .line 232
    iput-boolean v0, p0, Lcom/linkedin/urls/detection/c;->_numeric:Z

    .line 233
    .line 234
    :cond_f
    iget-object v3, p0, Lcom/linkedin/urls/detection/c;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v3, v2}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 238
    .line 239
    iget v2, p0, Lcom/linkedin/urls/detection/c;->_currentLabelLength:I

    .line 240
    add-int/2addr v2, v5

    .line 241
    .line 242
    iput v2, p0, Lcom/linkedin/urls/detection/c;->_currentLabelLength:I

    .line 243
    .line 244
    iput v2, p0, Lcom/linkedin/urls/detection/c;->_topLevelLength:I

    .line 245
    .line 246
    goto/16 :goto_0

    .line 247
    .line 248
    :cond_10
    if-ne v2, v8, :cond_11

    .line 249
    .line 250
    iget-boolean v3, p0, Lcom/linkedin/urls/detection/c;->_seenBracket:Z

    .line 251
    .line 252
    if-nez v3, :cond_11

    .line 253
    .line 254
    iput-boolean v5, p0, Lcom/linkedin/urls/detection/c;->_seenBracket:Z

    .line 255
    .line 256
    iput-boolean v0, p0, Lcom/linkedin/urls/detection/c;->_numeric:Z

    .line 257
    .line 258
    iget-object v3, p0, Lcom/linkedin/urls/detection/c;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v3, v2}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 262
    .line 263
    goto/16 :goto_0

    .line 264
    .line 265
    :cond_11
    if-ne v2, v8, :cond_12

    .line 266
    .line 267
    iget-boolean v3, p0, Lcom/linkedin/urls/detection/c;->_seenCompleteBracketSet:Z

    .line 268
    .line 269
    if-eqz v3, :cond_12

    .line 270
    .line 271
    iget-object v1, p0, Lcom/linkedin/urls/detection/c;->_reader:Lcom/linkedin/urls/detection/d;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1}, Lcom/linkedin/urls/detection/d;->g()V

    .line 275
    goto :goto_2

    .line 276
    .line 277
    :cond_12
    if-ne v2, v6, :cond_13

    .line 278
    .line 279
    iget-object v3, p0, Lcom/linkedin/urls/detection/c;->_reader:Lcom/linkedin/urls/detection/d;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v3, v4}, Lcom/linkedin/urls/detection/d;->a(I)Z

    .line 283
    move-result v3

    .line 284
    .line 285
    if-eqz v3, :cond_13

    .line 286
    .line 287
    iget-object v3, p0, Lcom/linkedin/urls/detection/c;->_reader:Lcom/linkedin/urls/detection/d;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v3, v0}, Lcom/linkedin/urls/detection/d;->i(I)C

    .line 291
    move-result v3

    .line 292
    .line 293
    .line 294
    invoke-static {v3}, Lcom/linkedin/urls/detection/a;->f(C)Z

    .line 295
    move-result v3

    .line 296
    .line 297
    if-eqz v3, :cond_13

    .line 298
    .line 299
    iget-object v3, p0, Lcom/linkedin/urls/detection/c;->_reader:Lcom/linkedin/urls/detection/d;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v3, v5}, Lcom/linkedin/urls/detection/d;->i(I)C

    .line 303
    move-result v3

    .line 304
    .line 305
    .line 306
    invoke-static {v3}, Lcom/linkedin/urls/detection/a;->f(C)Z

    .line 307
    move-result v3

    .line 308
    .line 309
    if-eqz v3, :cond_13

    .line 310
    .line 311
    iget-object v3, p0, Lcom/linkedin/urls/detection/c;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v3, v2}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 315
    .line 316
    iget-object v2, p0, Lcom/linkedin/urls/detection/c;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 317
    .line 318
    iget-object v3, p0, Lcom/linkedin/urls/detection/c;->_reader:Lcom/linkedin/urls/detection/d;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v3}, Lcom/linkedin/urls/detection/d;->j()C

    .line 322
    move-result v3

    .line 323
    .line 324
    .line 325
    invoke-virtual {v2, v3}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 326
    .line 327
    iget-object v2, p0, Lcom/linkedin/urls/detection/c;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 328
    .line 329
    iget-object v3, p0, Lcom/linkedin/urls/detection/c;->_reader:Lcom/linkedin/urls/detection/d;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v3}, Lcom/linkedin/urls/detection/d;->j()C

    .line 333
    move-result v3

    .line 334
    .line 335
    .line 336
    invoke-virtual {v2, v3}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 337
    .line 338
    iget v2, p0, Lcom/linkedin/urls/detection/c;->_currentLabelLength:I

    .line 339
    .line 340
    add-int/lit8 v2, v2, 0x3

    .line 341
    .line 342
    iput v2, p0, Lcom/linkedin/urls/detection/c;->_currentLabelLength:I

    .line 343
    .line 344
    iput v2, p0, Lcom/linkedin/urls/detection/c;->_topLevelLength:I

    .line 345
    .line 346
    goto/16 :goto_0

    .line 347
    .line 348
    :cond_13
    iget-object v1, p0, Lcom/linkedin/urls/detection/c;->_characterHandler:Lcom/linkedin/urls/detection/c$a;

    .line 349
    .line 350
    .line 351
    invoke-interface {v1, v2}, Lcom/linkedin/urls/detection/c$a;->a(C)V

    .line 352
    .line 353
    goto/16 :goto_2

    .line 354
    .line 355
    :cond_14
    :goto_3
    iget v3, p0, Lcom/linkedin/urls/detection/c;->_currentLabelLength:I

    .line 356
    .line 357
    if-ge v3, v5, :cond_15

    .line 358
    .line 359
    goto/16 :goto_2

    .line 360
    .line 361
    :cond_15
    iget-object v3, p0, Lcom/linkedin/urls/detection/c;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v3, v2}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 365
    .line 366
    .line 367
    invoke-static {v2}, Lcom/linkedin/urls/detection/a;->c(C)Z

    .line 368
    move-result v2

    .line 369
    .line 370
    if-nez v2, :cond_16

    .line 371
    .line 372
    iget-object v2, p0, Lcom/linkedin/urls/detection/c;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 373
    .line 374
    iget-object v3, p0, Lcom/linkedin/urls/detection/c;->_reader:Lcom/linkedin/urls/detection/d;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v3}, Lcom/linkedin/urls/detection/d;->j()C

    .line 378
    move-result v3

    .line 379
    .line 380
    .line 381
    invoke-virtual {v2, v3}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 382
    .line 383
    iget-object v2, p0, Lcom/linkedin/urls/detection/c;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 384
    .line 385
    iget-object v3, p0, Lcom/linkedin/urls/detection/c;->_reader:Lcom/linkedin/urls/detection/d;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v3}, Lcom/linkedin/urls/detection/d;->j()C

    .line 389
    move-result v3

    .line 390
    .line 391
    .line 392
    invoke-virtual {v2, v3}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 393
    .line 394
    :cond_16
    iget-boolean v2, p0, Lcom/linkedin/urls/detection/c;->_zoneIndex:Z

    .line 395
    .line 396
    if-nez v2, :cond_17

    .line 397
    .line 398
    iget v2, p0, Lcom/linkedin/urls/detection/c;->_dots:I

    .line 399
    add-int/2addr v2, v5

    .line 400
    .line 401
    iput v2, p0, Lcom/linkedin/urls/detection/c;->_dots:I

    .line 402
    .line 403
    iput v0, p0, Lcom/linkedin/urls/detection/c;->_currentLabelLength:I

    .line 404
    .line 405
    :cond_17
    iget v2, p0, Lcom/linkedin/urls/detection/c;->_currentLabelLength:I

    .line 406
    .line 407
    const/16 v3, 0x40

    .line 408
    .line 409
    if-lt v2, v3, :cond_1

    .line 410
    .line 411
    sget-object v0, Lcom/linkedin/urls/detection/c$b;->InvalidDomainName:Lcom/linkedin/urls/detection/c$b;

    .line 412
    return-object v0

    .line 413
    .line 414
    :cond_18
    sget-object v0, Lcom/linkedin/urls/detection/c$b;->ValidDomainName:Lcom/linkedin/urls/detection/c$b;

    .line 415
    const/4 v1, 0x0

    .line 416
    .line 417
    .line 418
    invoke-direct {p0, v0, v1}, Lcom/linkedin/urls/detection/c;->a(Lcom/linkedin/urls/detection/c$b;Ljava/lang/Character;)Lcom/linkedin/urls/detection/c$b;

    .line 419
    move-result-object v0

    .line 420
    return-object v0
.end method
