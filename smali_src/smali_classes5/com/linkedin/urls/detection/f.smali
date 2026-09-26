.class public Lcom/linkedin/urls/detection/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linkedin/urls/detection/f$d;,
        Lcom/linkedin/urls/detection/f$c;
    }
.end annotation


# instance fields
.field private _buffer:Lcom/linkedin/urls/detection/e;

.field private _characterMatch:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private _currentUrlMarker:Lcom/linkedin/urls/b;

.field private _dontMatchIpv6:Z

.field private final _options:Lcom/linkedin/urls/detection/g;

.field private _quoteStart:Z

.field private final _reader:Lcom/linkedin/urls/detection/d;

.field private _schemeType:I

.field private _singleQuoteStart:Z

.field private _urlList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/linkedin/urls/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/linkedin/urls/detection/g;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Lcom/linkedin/urls/detection/f;->_schemeType:I

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/linkedin/urls/detection/f;->_quoteStart:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/linkedin/urls/detection/f;->_singleQuoteStart:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/linkedin/urls/detection/f;->_dontMatchIpv6:Z

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    iput-object v0, p0, Lcom/linkedin/urls/detection/f;->_urlList:Ljava/util/ArrayList;

    .line 20
    .line 21
    new-instance v0, Ljava/util/HashMap;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    iput-object v0, p0, Lcom/linkedin/urls/detection/f;->_characterMatch:Ljava/util/HashMap;

    .line 27
    .line 28
    new-instance v0, Lcom/linkedin/urls/b;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0}, Lcom/linkedin/urls/b;-><init>()V

    .line 32
    .line 33
    iput-object v0, p0, Lcom/linkedin/urls/detection/f;->_currentUrlMarker:Lcom/linkedin/urls/b;

    .line 34
    .line 35
    new-instance v0, Lcom/linkedin/urls/detection/d;

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, p1}, Lcom/linkedin/urls/detection/d;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    iput-object v0, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 41
    .line 42
    new-instance p1, Lcom/linkedin/urls/detection/e;

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, v0}, Lcom/linkedin/urls/detection/e;-><init>(Lcom/linkedin/urls/detection/d;)V

    .line 46
    .line 47
    iput-object p1, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 48
    .line 49
    iput-object p2, p0, Lcom/linkedin/urls/detection/f;->_options:Lcom/linkedin/urls/detection/g;

    .line 50
    return-void
.end method

.method static bridge synthetic a(Lcom/linkedin/urls/detection/f;C)Lcom/linkedin/urls/detection/f$c;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/linkedin/urls/detection/f;->b(C)Lcom/linkedin/urls/detection/f$c;

    move-result-object p0

    return-object p0
.end method

.method private b(C)Lcom/linkedin/urls/detection/f$c;
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    if-ne p1, v1, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_options:Lcom/linkedin/urls/detection/g;

    .line 8
    .line 9
    sget-object v3, Lcom/linkedin/urls/detection/g;->QUOTE_MATCH:Lcom/linkedin/urls/detection/g;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v3}, Lcom/linkedin/urls/detection/g;->b(Lcom/linkedin/urls/detection/g;)Z

    .line 13
    move-result v2

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    :cond_0
    const/16 v2, 0x27

    .line 18
    .line 19
    if-ne p1, v2, :cond_5

    .line 20
    .line 21
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_options:Lcom/linkedin/urls/detection/g;

    .line 22
    .line 23
    sget-object v3, Lcom/linkedin/urls/detection/g;->SINGLE_QUOTE_MATCH:Lcom/linkedin/urls/detection/g;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Lcom/linkedin/urls/detection/g;->b(Lcom/linkedin/urls/detection/g;)Z

    .line 27
    move-result v2

    .line 28
    .line 29
    if-eqz v2, :cond_5

    .line 30
    .line 31
    :cond_1
    if-ne p1, v1, :cond_2

    .line 32
    .line 33
    iget-boolean v1, p0, Lcom/linkedin/urls/detection/f;->_quoteStart:Z

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/linkedin/urls/detection/f;->_quoteStart:Z

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_2
    iget-boolean v1, p0, Lcom/linkedin/urls/detection/f;->_singleQuoteStart:Z

    .line 39
    .line 40
    iput-boolean v0, p0, Lcom/linkedin/urls/detection/f;->_singleQuoteStart:Z

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-direct {p0, p1}, Lcom/linkedin/urls/detection/f;->d(C)I

    .line 44
    move-result v2

    .line 45
    add-int/2addr v2, v0

    .line 46
    .line 47
    .line 48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_characterMatch:Ljava/util/HashMap;

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    if-nez v1, :cond_4

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 64
    move-result p1

    .line 65
    .line 66
    rem-int/lit8 p1, p1, 0x2

    .line 67
    .line 68
    if-nez p1, :cond_3

    .line 69
    goto :goto_1

    .line 70
    .line 71
    :cond_3
    sget-object p1, Lcom/linkedin/urls/detection/f$c;->CharacterMatchStart:Lcom/linkedin/urls/detection/f$c;

    .line 72
    goto :goto_2

    .line 73
    .line 74
    :cond_4
    :goto_1
    sget-object p1, Lcom/linkedin/urls/detection/f$c;->CharacterMatchStop:Lcom/linkedin/urls/detection/f$c;

    .line 75
    :goto_2
    return-object p1

    .line 76
    .line 77
    :cond_5
    iget-object v1, p0, Lcom/linkedin/urls/detection/f;->_options:Lcom/linkedin/urls/detection/g;

    .line 78
    .line 79
    sget-object v2, Lcom/linkedin/urls/detection/g;->BRACKET_MATCH:Lcom/linkedin/urls/detection/g;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Lcom/linkedin/urls/detection/g;->b(Lcom/linkedin/urls/detection/g;)Z

    .line 83
    move-result v1

    .line 84
    .line 85
    const/16 v3, 0x28

    .line 86
    .line 87
    const/16 v4, 0x7b

    .line 88
    .line 89
    const/16 v5, 0x5b

    .line 90
    .line 91
    if-eqz v1, :cond_7

    .line 92
    .line 93
    if-eq p1, v5, :cond_6

    .line 94
    .line 95
    if-eq p1, v4, :cond_6

    .line 96
    .line 97
    if-ne p1, v3, :cond_7

    .line 98
    .line 99
    :cond_6
    iget-object v1, p0, Lcom/linkedin/urls/detection/f;->_characterMatch:Ljava/util/HashMap;

    .line 100
    .line 101
    .line 102
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 103
    move-result-object v2

    .line 104
    .line 105
    .line 106
    invoke-direct {p0, p1}, Lcom/linkedin/urls/detection/f;->d(C)I

    .line 107
    move-result p1

    .line 108
    add-int/2addr p1, v0

    .line 109
    .line 110
    .line 111
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    move-result-object p1

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    sget-object p1, Lcom/linkedin/urls/detection/f$c;->CharacterMatchStart:Lcom/linkedin/urls/detection/f$c;

    .line 118
    return-object p1

    .line 119
    .line 120
    :cond_7
    iget-object v1, p0, Lcom/linkedin/urls/detection/f;->_options:Lcom/linkedin/urls/detection/g;

    .line 121
    .line 122
    sget-object v6, Lcom/linkedin/urls/detection/g;->XML:Lcom/linkedin/urls/detection/g;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v6}, Lcom/linkedin/urls/detection/g;->b(Lcom/linkedin/urls/detection/g;)Z

    .line 126
    move-result v1

    .line 127
    .line 128
    const/16 v7, 0x3c

    .line 129
    .line 130
    if-eqz v1, :cond_8

    .line 131
    .line 132
    if-ne p1, v7, :cond_8

    .line 133
    .line 134
    iget-object v1, p0, Lcom/linkedin/urls/detection/f;->_characterMatch:Ljava/util/HashMap;

    .line 135
    .line 136
    .line 137
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 138
    move-result-object v2

    .line 139
    .line 140
    .line 141
    invoke-direct {p0, p1}, Lcom/linkedin/urls/detection/f;->d(C)I

    .line 142
    move-result p1

    .line 143
    add-int/2addr p1, v0

    .line 144
    .line 145
    .line 146
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    move-result-object p1

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    sget-object p1, Lcom/linkedin/urls/detection/f$c;->CharacterMatchStart:Lcom/linkedin/urls/detection/f$c;

    .line 153
    return-object p1

    .line 154
    .line 155
    :cond_8
    iget-object v1, p0, Lcom/linkedin/urls/detection/f;->_options:Lcom/linkedin/urls/detection/g;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v2}, Lcom/linkedin/urls/detection/g;->b(Lcom/linkedin/urls/detection/g;)Z

    .line 159
    move-result v1

    .line 160
    .line 161
    const/16 v2, 0x3e

    .line 162
    .line 163
    const/16 v8, 0x29

    .line 164
    .line 165
    const/16 v9, 0x7d

    .line 166
    .line 167
    const/16 v10, 0x5d

    .line 168
    .line 169
    if-eqz v1, :cond_9

    .line 170
    .line 171
    if-eq p1, v10, :cond_a

    .line 172
    .line 173
    if-eq p1, v9, :cond_a

    .line 174
    .line 175
    if-eq p1, v8, :cond_a

    .line 176
    .line 177
    :cond_9
    iget-object v1, p0, Lcom/linkedin/urls/detection/f;->_options:Lcom/linkedin/urls/detection/g;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v6}, Lcom/linkedin/urls/detection/g;->b(Lcom/linkedin/urls/detection/g;)Z

    .line 181
    move-result v1

    .line 182
    .line 183
    if-eqz v1, :cond_10

    .line 184
    .line 185
    if-ne p1, v2, :cond_10

    .line 186
    .line 187
    .line 188
    :cond_a
    invoke-direct {p0, p1}, Lcom/linkedin/urls/detection/f;->d(C)I

    .line 189
    move-result v1

    .line 190
    add-int/2addr v1, v0

    .line 191
    .line 192
    .line 193
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    move-result-object v0

    .line 195
    .line 196
    iget-object v1, p0, Lcom/linkedin/urls/detection/f;->_characterMatch:Ljava/util/HashMap;

    .line 197
    .line 198
    .line 199
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 200
    move-result-object v6

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    if-eq p1, v8, :cond_e

    .line 206
    .line 207
    if-eq p1, v2, :cond_d

    .line 208
    .line 209
    if-eq p1, v10, :cond_c

    .line 210
    .line 211
    if-eq p1, v9, :cond_b

    .line 212
    const/4 v3, 0x0

    .line 213
    goto :goto_3

    .line 214
    :cond_b
    move v3, v4

    .line 215
    goto :goto_3

    .line 216
    :cond_c
    move v3, v5

    .line 217
    goto :goto_3

    .line 218
    :cond_d
    move v3, v7

    .line 219
    .line 220
    .line 221
    :cond_e
    :goto_3
    invoke-direct {p0, v3}, Lcom/linkedin/urls/detection/f;->d(C)I

    .line 222
    move-result p1

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 226
    move-result v0

    .line 227
    .line 228
    if-le p1, v0, :cond_f

    .line 229
    .line 230
    sget-object p1, Lcom/linkedin/urls/detection/f$c;->CharacterMatchStop:Lcom/linkedin/urls/detection/f$c;

    .line 231
    goto :goto_4

    .line 232
    .line 233
    :cond_f
    sget-object p1, Lcom/linkedin/urls/detection/f$c;->CharacterMatchStart:Lcom/linkedin/urls/detection/f$c;

    .line 234
    :goto_4
    return-object p1

    .line 235
    .line 236
    :cond_10
    sget-object p1, Lcom/linkedin/urls/detection/f$c;->CharacterNotMatched:Lcom/linkedin/urls/detection/f$c;

    .line 237
    return-object p1
.end method

.method private d(C)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_characterMatch:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Ljava/lang/Integer;

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    const/4 p1, 0x0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 20
    move-result p1

    .line 21
    :goto_0
    return p1
.end method

.method private e(I)Z
    .locals 6

    .line 1
    .line 2
    const/16 v0, 0x29

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    if-eqz p1, :cond_5

    .line 7
    .line 8
    iget-object p1, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 9
    .line 10
    const/16 v3, 0x2f

    .line 11
    .line 12
    .line 13
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 14
    move-result-object v3

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v3}, Lcom/linkedin/urls/detection/e;->g(Ljava/lang/String;)I

    .line 18
    move-result p1

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    .line 22
    move-result p1

    .line 23
    move v3, v2

    .line 24
    move v2, p1

    .line 25
    .line 26
    :goto_0
    iget-object v4, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Lcom/linkedin/urls/detection/e;->h()I

    .line 30
    move-result v4

    .line 31
    .line 32
    if-ge p1, v4, :cond_4

    .line 33
    .line 34
    iget-object v4, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4, p1}, Lcom/linkedin/urls/detection/e;->b(I)C

    .line 38
    move-result v4

    .line 39
    .line 40
    const/16 v5, 0x28

    .line 41
    .line 42
    if-ne v4, v5, :cond_0

    .line 43
    .line 44
    add-int/lit8 v3, v3, 0x1

    .line 45
    goto :goto_2

    .line 46
    .line 47
    :cond_0
    if-ne v4, v0, :cond_2

    .line 48
    .line 49
    add-int/lit8 v3, v3, -0x1

    .line 50
    .line 51
    if-gez v3, :cond_1

    .line 52
    goto :goto_3

    .line 53
    .line 54
    :cond_1
    if-nez v3, :cond_3

    .line 55
    :goto_1
    move v2, p1

    .line 56
    goto :goto_2

    .line 57
    .line 58
    :cond_2
    if-nez v3, :cond_3

    .line 59
    goto :goto_1

    .line 60
    .line 61
    :cond_3
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 65
    add-int/2addr v2, v1

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/linkedin/urls/detection/e;->h()I

    .line 69
    move-result v0

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v2, v0}, Lcom/linkedin/urls/detection/e;->c(II)Ljava/lang/StringBuilder;

    .line 73
    goto :goto_5

    .line 74
    .line 75
    :cond_5
    iget-object p1, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/linkedin/urls/detection/e;->h()I

    .line 79
    move-result p1

    .line 80
    sub-int/2addr p1, v1

    .line 81
    .line 82
    :goto_4
    if-ltz p1, :cond_6

    .line 83
    .line 84
    iget-object v3, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, p1}, Lcom/linkedin/urls/detection/e;->b(I)C

    .line 88
    move-result v3

    .line 89
    .line 90
    .line 91
    invoke-static {v3}, Lcom/linkedin/urls/detection/a;->l(C)Z

    .line 92
    move-result v4

    .line 93
    .line 94
    if-nez v4, :cond_6

    .line 95
    .line 96
    if-eq v3, v0, :cond_6

    .line 97
    .line 98
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, p1}, Lcom/linkedin/urls/detection/e;->d(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Lcom/linkedin/urls/detection/d;->g()V

    .line 107
    .line 108
    add-int/lit8 p1, p1, -0x1

    .line 109
    move v2, v1

    .line 110
    goto :goto_4

    .line 111
    :cond_6
    move v1, v2

    .line 112
    :goto_5
    return v1
.end method

.method private f()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/e;->h()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    :goto_0
    if-ltz v0, :cond_0

    .line 12
    .line 13
    iget-object v3, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3, v0}, Lcom/linkedin/urls/detection/e;->b(I)C

    .line 17
    move-result v3

    .line 18
    .line 19
    .line 20
    invoke-static {v3}, Lcom/linkedin/urls/detection/a;->n(C)Z

    .line 21
    move-result v3

    .line 22
    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v0}, Lcom/linkedin/urls/detection/e;->d(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/linkedin/urls/detection/d;->g()V

    .line 34
    .line 35
    add-int/lit8 v0, v0, -0x1

    .line 36
    move v2, v1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return v2
.end method

.method private g(I)I
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/linkedin/urls/detection/f;->_schemeType:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    if-ne v0, v2, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/linkedin/urls/detection/f;->r(I)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_4

    .line 13
    .line 14
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/e;->h()I

    .line 18
    move-result v0

    .line 19
    .line 20
    if-lez v0, :cond_4

    .line 21
    .line 22
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/d;->g()V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/e;->h()I

    .line 31
    move-result v3

    .line 32
    sub-int/2addr v3, v2

    .line 33
    .line 34
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/linkedin/urls/detection/e;->h()I

    .line 38
    move-result v2

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v3, v2}, Lcom/linkedin/urls/detection/e;->c(II)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/d;->d()I

    .line 47
    move-result v0

    .line 48
    .line 49
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/linkedin/urls/detection/e;->h()I

    .line 53
    move-result v2

    .line 54
    sub-int/2addr v0, v2

    .line 55
    add-int/2addr v0, p1

    .line 56
    .line 57
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, p1}, Lcom/linkedin/urls/detection/e;->j(I)Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, p1}, Lcom/linkedin/urls/detection/f;->i(Ljava/lang/String;)Z

    .line 65
    move-result p1

    .line 66
    .line 67
    if-nez p1, :cond_0

    .line 68
    .line 69
    iget-object p1, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lcom/linkedin/urls/detection/d;->k(I)V

    .line 73
    .line 74
    sget-object p1, Lcom/linkedin/urls/detection/f$d;->InvalidUrl:Lcom/linkedin/urls/detection/f$d;

    .line 75
    .line 76
    .line 77
    invoke-direct {p0, p1}, Lcom/linkedin/urls/detection/f;->j(Lcom/linkedin/urls/detection/f$d;)Z

    .line 78
    :cond_0
    :goto_0
    move p1, v1

    .line 79
    goto :goto_1

    .line 80
    .line 81
    .line 82
    :cond_1
    invoke-direct {p0}, Lcom/linkedin/urls/detection/f;->q()I

    .line 83
    move-result v0

    .line 84
    .line 85
    if-lez v0, :cond_2

    .line 86
    .line 87
    iget-object v3, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Lcom/linkedin/urls/detection/e;->h()I

    .line 91
    move-result v3

    .line 92
    .line 93
    if-lez v3, :cond_2

    .line 94
    .line 95
    iput v0, p0, Lcom/linkedin/urls/detection/f;->_schemeType:I

    .line 96
    .line 97
    iget-object p1, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/linkedin/urls/detection/e;->h()I

    .line 101
    move-result p1

    .line 102
    goto :goto_1

    .line 103
    .line 104
    :cond_2
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/e;->h()I

    .line 108
    move-result v0

    .line 109
    .line 110
    if-lez v0, :cond_3

    .line 111
    .line 112
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_options:Lcom/linkedin/urls/detection/g;

    .line 113
    .line 114
    sget-object v3, Lcom/linkedin/urls/detection/g;->ALLOW_SINGLE_LEVEL_DOMAIN:Lcom/linkedin/urls/detection/g;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v3}, Lcom/linkedin/urls/detection/g;->b(Lcom/linkedin/urls/detection/g;)Z

    .line 118
    move-result v0

    .line 119
    .line 120
    if-eqz v0, :cond_3

    .line 121
    .line 122
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v2}, Lcom/linkedin/urls/detection/d;->a(I)Z

    .line 126
    move-result v0

    .line 127
    .line 128
    if-eqz v0, :cond_3

    .line 129
    .line 130
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/d;->g()V

    .line 134
    .line 135
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/e;->h()I

    .line 139
    move-result v1

    .line 140
    sub-int/2addr v1, v2

    .line 141
    .line 142
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2}, Lcom/linkedin/urls/detection/e;->h()I

    .line 146
    move-result v2

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v1, v2}, Lcom/linkedin/urls/detection/e;->c(II)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/e;->e()Ljava/lang/String;

    .line 155
    move-result-object v0

    .line 156
    .line 157
    .line 158
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/f;->i(Ljava/lang/String;)Z

    .line 159
    goto :goto_1

    .line 160
    .line 161
    :cond_3
    sget-object p1, Lcom/linkedin/urls/detection/f$d;->InvalidUrl:Lcom/linkedin/urls/detection/f$d;

    .line 162
    .line 163
    .line 164
    invoke-direct {p0, p1}, Lcom/linkedin/urls/detection/f;->j(Lcom/linkedin/urls/detection/f$d;)Z

    .line 165
    goto :goto_0

    .line 166
    :cond_4
    :goto_1
    return p1
.end method

.method private h()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :cond_0
    :goto_0
    move v1, v0

    .line 3
    .line 4
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/linkedin/urls/detection/d;->c()Z

    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x2

    .line 10
    .line 11
    if-nez v2, :cond_18

    .line 12
    .line 13
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/linkedin/urls/detection/d;->j()C

    .line 17
    move-result v2

    .line 18
    .line 19
    iget-object v4, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4}, Lcom/linkedin/urls/detection/e;->h()I

    .line 23
    move-result v4

    .line 24
    .line 25
    if-nez v4, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-static {v2}, Lcom/linkedin/urls/detection/a;->j(C)Z

    .line 29
    move-result v4

    .line 30
    .line 31
    if-nez v4, :cond_2

    .line 32
    .line 33
    sget-object v1, Lcom/linkedin/urls/detection/f$d;->InvalidUrl:Lcom/linkedin/urls/detection/f$d;

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/f;->j(Lcom/linkedin/urls/detection/f$d;)Z

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_2
    const/16 v4, 0x20

    .line 40
    .line 41
    if-eq v2, v4, :cond_14

    .line 42
    .line 43
    const/16 v4, 0x23

    .line 44
    const/4 v5, 0x1

    .line 45
    .line 46
    if-eq v2, v4, :cond_11

    .line 47
    .line 48
    const/16 v4, 0x25

    .line 49
    .line 50
    if-eq v2, v4, :cond_f

    .line 51
    .line 52
    const/16 v4, 0x3a

    .line 53
    .line 54
    if-eq v2, v4, :cond_e

    .line 55
    .line 56
    const/16 v4, 0x40

    .line 57
    .line 58
    if-eq v2, v4, :cond_d

    .line 59
    .line 60
    const/16 v4, 0x5b

    .line 61
    .line 62
    if-eq v2, v4, :cond_a

    .line 63
    .line 64
    .line 65
    const v4, 0xff03

    .line 66
    .line 67
    if-eq v2, v4, :cond_11

    .line 68
    .line 69
    const/16 v4, 0x2e

    .line 70
    .line 71
    if-eq v2, v4, :cond_9

    .line 72
    .line 73
    const/16 v4, 0x2f

    .line 74
    .line 75
    if-eq v2, v4, :cond_6

    .line 76
    .line 77
    .line 78
    invoke-direct {p0, v2}, Lcom/linkedin/urls/detection/f;->b(C)Lcom/linkedin/urls/detection/f$c;

    .line 79
    move-result-object v4

    .line 80
    .line 81
    sget-object v5, Lcom/linkedin/urls/detection/f$c;->CharacterNotMatched:Lcom/linkedin/urls/detection/f$c;

    .line 82
    .line 83
    if-ne v4, v5, :cond_4

    .line 84
    .line 85
    .line 86
    invoke-static {v2}, Lcom/linkedin/urls/detection/a;->i(C)Z

    .line 87
    move-result v4

    .line 88
    .line 89
    if-nez v4, :cond_3

    .line 90
    goto :goto_2

    .line 91
    .line 92
    :cond_3
    iget-object v3, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v2}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 96
    goto :goto_1

    .line 97
    .line 98
    :cond_4
    :goto_2
    iget v2, p0, Lcom/linkedin/urls/detection/f;->_schemeType:I

    .line 99
    .line 100
    if-ne v2, v3, :cond_5

    .line 101
    .line 102
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Lcom/linkedin/urls/detection/d;->g()V

    .line 106
    .line 107
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v1}, Lcom/linkedin/urls/detection/e;->j(I)Ljava/lang/String;

    .line 111
    move-result-object v1

    .line 112
    .line 113
    .line 114
    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/f;->i(Ljava/lang/String;)Z

    .line 115
    goto :goto_0

    .line 116
    .line 117
    :cond_5
    sget-object v1, Lcom/linkedin/urls/detection/f$d;->InvalidUrl:Lcom/linkedin/urls/detection/f$d;

    .line 118
    .line 119
    .line 120
    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/f;->j(Lcom/linkedin/urls/detection/f$d;)Z

    .line 121
    goto :goto_0

    .line 122
    .line 123
    :cond_6
    iget v3, p0, Lcom/linkedin/urls/detection/f;->_schemeType:I

    .line 124
    .line 125
    if-gtz v3, :cond_8

    .line 126
    .line 127
    iget-object v3, p0, Lcom/linkedin/urls/detection/f;->_options:Lcom/linkedin/urls/detection/g;

    .line 128
    .line 129
    sget-object v4, Lcom/linkedin/urls/detection/g;->ALLOW_SINGLE_LEVEL_DOMAIN:Lcom/linkedin/urls/detection/g;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, v4}, Lcom/linkedin/urls/detection/g;->b(Lcom/linkedin/urls/detection/g;)Z

    .line 133
    move-result v3

    .line 134
    .line 135
    if-eqz v3, :cond_7

    .line 136
    .line 137
    iget-object v3, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3}, Lcom/linkedin/urls/detection/e;->h()I

    .line 141
    move-result v3

    .line 142
    .line 143
    if-le v3, v5, :cond_7

    .line 144
    goto :goto_3

    .line 145
    .line 146
    :cond_7
    sget-object v1, Lcom/linkedin/urls/detection/f$d;->InvalidUrl:Lcom/linkedin/urls/detection/f$d;

    .line 147
    .line 148
    .line 149
    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/f;->j(Lcom/linkedin/urls/detection/f$d;)Z

    .line 150
    .line 151
    iget-object v1, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v2}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 155
    .line 156
    .line 157
    invoke-direct {p0}, Lcom/linkedin/urls/detection/f;->m()Z

    .line 158
    move-result v1

    .line 159
    .line 160
    iput v1, p0, Lcom/linkedin/urls/detection/f;->_schemeType:I

    .line 161
    .line 162
    iget-object v1, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Lcom/linkedin/urls/detection/e;->h()I

    .line 166
    move-result v1

    .line 167
    .line 168
    goto/16 :goto_1

    .line 169
    .line 170
    :cond_8
    :goto_3
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2}, Lcom/linkedin/urls/detection/d;->g()V

    .line 174
    .line 175
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v1}, Lcom/linkedin/urls/detection/e;->j(I)Ljava/lang/String;

    .line 179
    move-result-object v1

    .line 180
    .line 181
    .line 182
    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/f;->i(Ljava/lang/String;)Z

    .line 183
    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    :cond_9
    iget-object v3, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3, v2}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 190
    .line 191
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2, v1}, Lcom/linkedin/urls/detection/e;->j(I)Ljava/lang/String;

    .line 195
    move-result-object v1

    .line 196
    .line 197
    .line 198
    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/f;->i(Ljava/lang/String;)Z

    .line 199
    .line 200
    goto/16 :goto_0

    .line 201
    .line 202
    :cond_a
    iget-boolean v3, p0, Lcom/linkedin/urls/detection/f;->_dontMatchIpv6:Z

    .line 203
    .line 204
    if-eqz v3, :cond_b

    .line 205
    .line 206
    .line 207
    invoke-direct {p0, v2}, Lcom/linkedin/urls/detection/f;->b(C)Lcom/linkedin/urls/detection/f$c;

    .line 208
    move-result-object v3

    .line 209
    .line 210
    sget-object v4, Lcom/linkedin/urls/detection/f$c;->CharacterNotMatched:Lcom/linkedin/urls/detection/f$c;

    .line 211
    .line 212
    if-eq v3, v4, :cond_b

    .line 213
    .line 214
    sget-object v1, Lcom/linkedin/urls/detection/f$d;->InvalidUrl:Lcom/linkedin/urls/detection/f$d;

    .line 215
    .line 216
    .line 217
    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/f;->j(Lcom/linkedin/urls/detection/f$d;)Z

    .line 218
    move v1, v0

    .line 219
    .line 220
    :cond_b
    iget-object v3, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3}, Lcom/linkedin/urls/detection/d;->d()I

    .line 224
    move-result v3

    .line 225
    .line 226
    iget v4, p0, Lcom/linkedin/urls/detection/f;->_schemeType:I

    .line 227
    .line 228
    if-nez v4, :cond_c

    .line 229
    .line 230
    iget-object v4, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v4}, Lcom/linkedin/urls/detection/e;->h()I

    .line 234
    move-result v6

    .line 235
    .line 236
    .line 237
    invoke-virtual {v4, v0, v6}, Lcom/linkedin/urls/detection/e;->c(II)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    :cond_c
    iget-object v4, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v4, v2}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 243
    .line 244
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2, v1}, Lcom/linkedin/urls/detection/e;->j(I)Ljava/lang/String;

    .line 248
    move-result-object v1

    .line 249
    .line 250
    .line 251
    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/f;->i(Ljava/lang/String;)Z

    .line 252
    move-result v1

    .line 253
    .line 254
    if-nez v1, :cond_0

    .line 255
    .line 256
    iget-object v1, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1, v3}, Lcom/linkedin/urls/detection/d;->k(I)V

    .line 260
    .line 261
    iput-boolean v5, p0, Lcom/linkedin/urls/detection/f;->_dontMatchIpv6:Z

    .line 262
    .line 263
    goto/16 :goto_0

    .line 264
    .line 265
    :cond_d
    iget-object v3, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v3}, Lcom/linkedin/urls/detection/e;->h()I

    .line 269
    move-result v3

    .line 270
    .line 271
    if-lez v3, :cond_1

    .line 272
    .line 273
    iget-object v3, p0, Lcom/linkedin/urls/detection/f;->_currentUrlMarker:Lcom/linkedin/urls/b;

    .line 274
    .line 275
    sget-object v4, Lcom/linkedin/urls/c;->USERNAME_PASSWORD:Lcom/linkedin/urls/c;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v3, v4, v1}, Lcom/linkedin/urls/b;->b(Lcom/linkedin/urls/c;I)V

    .line 279
    .line 280
    iget-object v1, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1, v2}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 284
    const/4 v1, 0x0

    .line 285
    .line 286
    .line 287
    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/f;->i(Ljava/lang/String;)Z

    .line 288
    .line 289
    goto/16 :goto_0

    .line 290
    .line 291
    :cond_e
    iget-object v3, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v3, v2}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 295
    .line 296
    .line 297
    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/f;->g(I)I

    .line 298
    move-result v1

    .line 299
    .line 300
    goto/16 :goto_1

    .line 301
    .line 302
    :cond_f
    iget-object v4, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v4, v3}, Lcom/linkedin/urls/detection/d;->a(I)Z

    .line 306
    move-result v4

    .line 307
    .line 308
    if-eqz v4, :cond_1

    .line 309
    .line 310
    iget-object v4, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v4, v3}, Lcom/linkedin/urls/detection/d;->h(I)Ljava/lang/String;

    .line 314
    move-result-object v3

    .line 315
    .line 316
    const-string v4, "3a"

    .line 317
    .line 318
    .line 319
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 320
    move-result v3

    .line 321
    .line 322
    if-eqz v3, :cond_10

    .line 323
    .line 324
    iget-object v3, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v3, v2}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 328
    .line 329
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 330
    .line 331
    iget-object v3, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v3}, Lcom/linkedin/urls/detection/d;->j()C

    .line 335
    move-result v3

    .line 336
    .line 337
    .line 338
    invoke-virtual {v2, v3}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 339
    .line 340
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 341
    .line 342
    iget-object v3, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v3}, Lcom/linkedin/urls/detection/d;->j()C

    .line 346
    move-result v3

    .line 347
    .line 348
    .line 349
    invoke-virtual {v2, v3}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 350
    .line 351
    .line 352
    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/f;->g(I)I

    .line 353
    move-result v1

    .line 354
    .line 355
    goto/16 :goto_1

    .line 356
    .line 357
    :cond_10
    iget-object v3, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v3, v0}, Lcom/linkedin/urls/detection/d;->i(I)C

    .line 361
    move-result v3

    .line 362
    .line 363
    .line 364
    invoke-static {v3}, Lcom/linkedin/urls/detection/a;->f(C)Z

    .line 365
    move-result v3

    .line 366
    .line 367
    if-eqz v3, :cond_1

    .line 368
    .line 369
    iget-object v3, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v3, v5}, Lcom/linkedin/urls/detection/d;->i(I)C

    .line 373
    move-result v3

    .line 374
    .line 375
    .line 376
    invoke-static {v3}, Lcom/linkedin/urls/detection/a;->f(C)Z

    .line 377
    move-result v3

    .line 378
    .line 379
    if-eqz v3, :cond_1

    .line 380
    .line 381
    iget-object v3, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v3, v2}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 385
    .line 386
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 387
    .line 388
    iget-object v3, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v3}, Lcom/linkedin/urls/detection/d;->j()C

    .line 392
    move-result v3

    .line 393
    .line 394
    .line 395
    invoke-virtual {v2, v3}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 396
    .line 397
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 398
    .line 399
    iget-object v3, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v3}, Lcom/linkedin/urls/detection/d;->j()C

    .line 403
    move-result v3

    .line 404
    .line 405
    .line 406
    invoke-virtual {v2, v3}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 407
    .line 408
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v2, v1}, Lcom/linkedin/urls/detection/e;->j(I)Ljava/lang/String;

    .line 412
    move-result-object v1

    .line 413
    .line 414
    .line 415
    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/f;->i(Ljava/lang/String;)Z

    .line 416
    .line 417
    goto/16 :goto_0

    .line 418
    .line 419
    :cond_11
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v2}, Lcom/linkedin/urls/detection/d;->d()I

    .line 423
    move-result v2

    .line 424
    .line 425
    iget-object v3, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v3, v1}, Lcom/linkedin/urls/detection/e;->j(I)Ljava/lang/String;

    .line 429
    move-result-object v3

    .line 430
    .line 431
    .line 432
    invoke-direct {p0, v3}, Lcom/linkedin/urls/detection/f;->i(Ljava/lang/String;)Z

    .line 433
    move-result v3

    .line 434
    .line 435
    if-nez v3, :cond_1

    .line 436
    .line 437
    iget-object v1, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v1, v2}, Lcom/linkedin/urls/detection/d;->k(I)V

    .line 441
    .line 442
    sget-object v1, Lcom/linkedin/urls/detection/f$d;->InvalidUrl:Lcom/linkedin/urls/detection/f$d;

    .line 443
    .line 444
    .line 445
    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/f;->j(Lcom/linkedin/urls/detection/f$d;)Z

    .line 446
    .line 447
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v2}, Lcom/linkedin/urls/detection/d;->d()I

    .line 451
    move-result v2

    .line 452
    .line 453
    if-gt v2, v5, :cond_12

    .line 454
    .line 455
    .line 456
    invoke-direct {p0}, Lcom/linkedin/urls/detection/f;->l()V

    .line 457
    .line 458
    goto/16 :goto_0

    .line 459
    .line 460
    :cond_12
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 461
    const/4 v3, -0x2

    .line 462
    .line 463
    .line 464
    invoke-virtual {v2, v3}, Lcom/linkedin/urls/detection/d;->i(I)C

    .line 465
    move-result v2

    .line 466
    .line 467
    const/16 v3, 0x26

    .line 468
    .line 469
    if-eq v2, v3, :cond_13

    .line 470
    .line 471
    .line 472
    invoke-static {v2}, Lcom/linkedin/urls/detection/a;->d(C)Z

    .line 473
    move-result v3

    .line 474
    .line 475
    if-nez v3, :cond_13

    .line 476
    .line 477
    .line 478
    invoke-static {v2}, Lcom/linkedin/urls/detection/a;->e(C)Z

    .line 479
    move-result v2

    .line 480
    .line 481
    if-nez v2, :cond_13

    .line 482
    .line 483
    .line 484
    invoke-direct {p0}, Lcom/linkedin/urls/detection/f;->l()V

    .line 485
    .line 486
    goto/16 :goto_0

    .line 487
    .line 488
    .line 489
    :cond_13
    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/f;->j(Lcom/linkedin/urls/detection/f$d;)Z

    .line 490
    .line 491
    goto/16 :goto_0

    .line 492
    .line 493
    :cond_14
    iget-object v4, p0, Lcom/linkedin/urls/detection/f;->_options:Lcom/linkedin/urls/detection/g;

    .line 494
    .line 495
    sget-object v5, Lcom/linkedin/urls/detection/g;->ALLOW_SINGLE_LEVEL_DOMAIN:Lcom/linkedin/urls/detection/g;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v4, v5}, Lcom/linkedin/urls/detection/g;->b(Lcom/linkedin/urls/detection/g;)Z

    .line 499
    move-result v4

    .line 500
    .line 501
    if-eqz v4, :cond_15

    .line 502
    .line 503
    iget-object v4, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 504
    .line 505
    .line 506
    invoke-virtual {v4}, Lcom/linkedin/urls/detection/e;->h()I

    .line 507
    move-result v4

    .line 508
    .line 509
    if-lez v4, :cond_15

    .line 510
    .line 511
    iget v4, p0, Lcom/linkedin/urls/detection/f;->_schemeType:I

    .line 512
    .line 513
    if-gtz v4, :cond_16

    .line 514
    .line 515
    :cond_15
    iget v4, p0, Lcom/linkedin/urls/detection/f;->_schemeType:I

    .line 516
    .line 517
    if-ne v4, v3, :cond_17

    .line 518
    .line 519
    iget-object v3, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v3}, Lcom/linkedin/urls/detection/e;->h()I

    .line 523
    move-result v3

    .line 524
    .line 525
    if-lez v3, :cond_17

    .line 526
    .line 527
    :cond_16
    iget-object v3, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v3}, Lcom/linkedin/urls/detection/d;->g()V

    .line 531
    .line 532
    iget-object v3, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v3, v1}, Lcom/linkedin/urls/detection/e;->j(I)Ljava/lang/String;

    .line 536
    move-result-object v1

    .line 537
    .line 538
    .line 539
    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/f;->i(Ljava/lang/String;)Z

    .line 540
    .line 541
    :cond_17
    iget-object v1, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 542
    .line 543
    .line 544
    invoke-virtual {v1, v2}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 545
    .line 546
    sget-object v1, Lcom/linkedin/urls/detection/f$d;->InvalidUrl:Lcom/linkedin/urls/detection/f$d;

    .line 547
    .line 548
    .line 549
    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/f;->j(Lcom/linkedin/urls/detection/f$d;)Z

    .line 550
    .line 551
    goto/16 :goto_0

    .line 552
    .line 553
    :cond_18
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_options:Lcom/linkedin/urls/detection/g;

    .line 554
    .line 555
    sget-object v2, Lcom/linkedin/urls/detection/g;->ALLOW_SINGLE_LEVEL_DOMAIN:Lcom/linkedin/urls/detection/g;

    .line 556
    .line 557
    .line 558
    invoke-virtual {v0, v2}, Lcom/linkedin/urls/detection/g;->b(Lcom/linkedin/urls/detection/g;)Z

    .line 559
    move-result v0

    .line 560
    .line 561
    if-eqz v0, :cond_19

    .line 562
    .line 563
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 564
    .line 565
    .line 566
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/e;->h()I

    .line 567
    move-result v0

    .line 568
    .line 569
    if-lez v0, :cond_19

    .line 570
    .line 571
    iget v0, p0, Lcom/linkedin/urls/detection/f;->_schemeType:I

    .line 572
    .line 573
    if-gtz v0, :cond_1a

    .line 574
    .line 575
    :cond_19
    iget v0, p0, Lcom/linkedin/urls/detection/f;->_schemeType:I

    .line 576
    .line 577
    if-ne v0, v3, :cond_1b

    .line 578
    .line 579
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 580
    .line 581
    .line 582
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/e;->h()I

    .line 583
    move-result v0

    .line 584
    .line 585
    if-lez v0, :cond_1b

    .line 586
    .line 587
    :cond_1a
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 588
    .line 589
    .line 590
    invoke-virtual {v0, v1}, Lcom/linkedin/urls/detection/e;->j(I)Ljava/lang/String;

    .line 591
    move-result-object v0

    .line 592
    .line 593
    .line 594
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/f;->i(Ljava/lang/String;)Z

    .line 595
    :cond_1b
    return-void
.end method

.method private i(Ljava/lang/String;)Z
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/e;->h()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    .line 16
    :goto_0
    iget-object v1, p0, Lcom/linkedin/urls/detection/f;->_currentUrlMarker:Lcom/linkedin/urls/b;

    .line 17
    .line 18
    sget-object v2, Lcom/linkedin/urls/c;->HOST:Lcom/linkedin/urls/c;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2, v0}, Lcom/linkedin/urls/b;->b(Lcom/linkedin/urls/c;I)V

    .line 22
    .line 23
    new-instance v0, Lcom/linkedin/urls/detection/c;

    .line 24
    .line 25
    iget-object v4, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 26
    .line 27
    iget-object v5, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 28
    .line 29
    iget v7, p0, Lcom/linkedin/urls/detection/f;->_schemeType:I

    .line 30
    const/4 v1, 0x2

    .line 31
    .line 32
    if-ne v7, v1, :cond_1

    .line 33
    .line 34
    sget-object v2, Lcom/linkedin/urls/detection/g;->ALLOW_SINGLE_LEVEL_DOMAIN:Lcom/linkedin/urls/detection/g;

    .line 35
    :goto_1
    move-object v8, v2

    .line 36
    goto :goto_2

    .line 37
    .line 38
    :cond_1
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_options:Lcom/linkedin/urls/detection/g;

    .line 39
    goto :goto_1

    .line 40
    .line 41
    :goto_2
    new-instance v9, Lcom/linkedin/urls/detection/f$a;

    .line 42
    .line 43
    .line 44
    invoke-direct {v9, p0}, Lcom/linkedin/urls/detection/f$a;-><init>(Lcom/linkedin/urls/detection/f;)V

    .line 45
    move-object v3, v0

    .line 46
    move-object v6, p1

    .line 47
    .line 48
    .line 49
    invoke-direct/range {v3 .. v9}, Lcom/linkedin/urls/detection/c;-><init>(Lcom/linkedin/urls/detection/d;Lcom/linkedin/urls/detection/e;Ljava/lang/String;ILcom/linkedin/urls/detection/g;Lcom/linkedin/urls/detection/c$a;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/c;->c()Lcom/linkedin/urls/detection/c$b;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    sget-object v0, Lcom/linkedin/urls/detection/f$b;->$SwitchMap$com$linkedin$urls$detection$DomainNameReader$ReaderNextState:[I

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 59
    move-result p1

    .line 60
    .line 61
    aget p1, v0, p1

    .line 62
    const/4 v0, 0x1

    .line 63
    .line 64
    if-eq p1, v0, :cond_6

    .line 65
    .line 66
    if-eq p1, v1, :cond_5

    .line 67
    const/4 v0, 0x3

    .line 68
    .line 69
    if-eq p1, v0, :cond_4

    .line 70
    const/4 v0, 0x4

    .line 71
    .line 72
    if-eq p1, v0, :cond_3

    .line 73
    const/4 v0, 0x5

    .line 74
    .line 75
    if-eq p1, v0, :cond_2

    .line 76
    .line 77
    sget-object p1, Lcom/linkedin/urls/detection/f$d;->InvalidUrl:Lcom/linkedin/urls/detection/f$d;

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, p1}, Lcom/linkedin/urls/detection/f;->j(Lcom/linkedin/urls/detection/f$d;)Z

    .line 81
    move-result p1

    .line 82
    return p1

    .line 83
    .line 84
    .line 85
    :cond_2
    invoke-direct {p0}, Lcom/linkedin/urls/detection/f;->p()Z

    .line 86
    move-result p1

    .line 87
    return p1

    .line 88
    .line 89
    .line 90
    :cond_3
    invoke-direct {p0}, Lcom/linkedin/urls/detection/f;->o()Z

    .line 91
    move-result p1

    .line 92
    return p1

    .line 93
    .line 94
    .line 95
    :cond_4
    invoke-direct {p0}, Lcom/linkedin/urls/detection/f;->n()Z

    .line 96
    move-result p1

    .line 97
    return p1

    .line 98
    .line 99
    .line 100
    :cond_5
    invoke-direct {p0}, Lcom/linkedin/urls/detection/f;->k()Z

    .line 101
    move-result p1

    .line 102
    return p1

    .line 103
    .line 104
    :cond_6
    sget-object p1, Lcom/linkedin/urls/detection/f$d;->ValidUrl:Lcom/linkedin/urls/detection/f$d;

    .line 105
    .line 106
    .line 107
    invoke-direct {p0, p1}, Lcom/linkedin/urls/detection/f;->j(Lcom/linkedin/urls/detection/f$d;)Z

    .line 108
    move-result p1

    .line 109
    return p1
.end method

.method private j(Lcom/linkedin/urls/detection/f$d;)Z
    .locals 6

    .line 1
    .line 2
    sget-object v0, Lcom/linkedin/urls/detection/f$d;->ValidUrl:Lcom/linkedin/urls/detection/f$d;

    .line 3
    .line 4
    if-ne p1, v0, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/linkedin/urls/detection/e;->h()I

    .line 10
    move-result v1

    .line 11
    .line 12
    if-lez v1, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/linkedin/urls/detection/e;->h()I

    .line 18
    move-result v1

    .line 19
    .line 20
    iget-boolean v2, p0, Lcom/linkedin/urls/detection/f;->_quoteStart:Z

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 25
    .line 26
    add-int/lit8 v3, v1, -0x1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Lcom/linkedin/urls/detection/e;->b(I)C

    .line 30
    move-result v2

    .line 31
    .line 32
    const/16 v4, 0x22

    .line 33
    .line 34
    if-ne v2, v4, :cond_0

    .line 35
    .line 36
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v3, v1}, Lcom/linkedin/urls/detection/e;->c(II)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    :cond_0
    iget-object v1, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/linkedin/urls/detection/e;->h()I

    .line 45
    move-result v1

    .line 46
    .line 47
    if-lez v1, :cond_1

    .line 48
    .line 49
    iget-object v1, p0, Lcom/linkedin/urls/detection/f;->_currentUrlMarker:Lcom/linkedin/urls/b;

    .line 50
    .line 51
    sget-object v2, Lcom/linkedin/urls/c;->USERNAME_PASSWORD:Lcom/linkedin/urls/c;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Lcom/linkedin/urls/b;->a(Lcom/linkedin/urls/c;)I

    .line 55
    move-result v1

    .line 56
    .line 57
    if-gez v1, :cond_1

    .line 58
    .line 59
    iget-object v1, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/linkedin/urls/detection/e;->e()Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/linkedin/urls/detection/e;->f()I

    .line 69
    move-result v2

    .line 70
    .line 71
    new-instance v3, Lcom/linkedin/urls/a;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 75
    move-result v4

    .line 76
    add-int/2addr v4, v2

    .line 77
    .line 78
    sget-object v5, Lcom/linkedin/urls/a$a;->URL:Lcom/linkedin/urls/a$a;

    .line 79
    .line 80
    .line 81
    invoke-direct {v3, v2, v4, v1, v5}, Lcom/linkedin/urls/a;-><init>(IILjava/lang/String;Lcom/linkedin/urls/a$a;)V

    .line 82
    .line 83
    iget-object v1, p0, Lcom/linkedin/urls/detection/f;->_urlList:Ljava/util/ArrayList;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    :cond_1
    iget-object v1, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/linkedin/urls/detection/e;->h()I

    .line 92
    move-result v2

    .line 93
    const/4 v3, 0x0

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v3, v2}, Lcom/linkedin/urls/detection/e;->c(II)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    iput-boolean v3, p0, Lcom/linkedin/urls/detection/f;->_quoteStart:Z

    .line 99
    .line 100
    iput v3, p0, Lcom/linkedin/urls/detection/f;->_schemeType:I

    .line 101
    .line 102
    iput-boolean v3, p0, Lcom/linkedin/urls/detection/f;->_dontMatchIpv6:Z

    .line 103
    .line 104
    new-instance v1, Lcom/linkedin/urls/b;

    .line 105
    .line 106
    .line 107
    invoke-direct {v1}, Lcom/linkedin/urls/b;-><init>()V

    .line 108
    .line 109
    iput-object v1, p0, Lcom/linkedin/urls/detection/f;->_currentUrlMarker:Lcom/linkedin/urls/b;

    .line 110
    .line 111
    if-ne p1, v0, :cond_2

    .line 112
    const/4 v3, 0x1

    .line 113
    :cond_2
    return v3
.end method

.method private k()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_currentUrlMarker:Lcom/linkedin/urls/b;

    .line 3
    .line 4
    sget-object v1, Lcom/linkedin/urls/c;->FRAGMENT:Lcom/linkedin/urls/c;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/linkedin/urls/detection/e;->h()I

    .line 10
    move-result v2

    .line 11
    .line 12
    add-int/lit8 v2, v2, -0x1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/linkedin/urls/b;->b(Lcom/linkedin/urls/c;I)V

    .line 16
    .line 17
    :goto_0
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/d;->c()Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/d;->j()C

    .line 29
    move-result v0

    .line 30
    .line 31
    const/16 v1, 0x20

    .line 32
    .line 33
    if-eq v0, v1, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/f;->b(C)Lcom/linkedin/urls/detection/f$c;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    sget-object v2, Lcom/linkedin/urls/detection/f$c;->CharacterNotMatched:Lcom/linkedin/urls/detection/f$c;

    .line 40
    .line 41
    if-eq v1, v2, :cond_0

    .line 42
    goto :goto_1

    .line 43
    .line 44
    :cond_0
    iget-object v1, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 48
    goto :goto_0

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/linkedin/urls/detection/f;->f()Z

    .line 52
    .line 53
    sget-object v0, Lcom/linkedin/urls/detection/f$d;->ValidUrl:Lcom/linkedin/urls/detection/f$d;

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/f;->j(Lcom/linkedin/urls/detection/f$d;)Z

    .line 57
    move-result v0

    .line 58
    return v0

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-direct {p0}, Lcom/linkedin/urls/detection/f;->f()Z

    .line 62
    .line 63
    sget-object v0, Lcom/linkedin/urls/detection/f$d;->ValidUrl:Lcom/linkedin/urls/detection/f$d;

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/f;->j(Lcom/linkedin/urls/detection/f$d;)Z

    .line 67
    move-result v0

    .line 68
    return v0
.end method

.method private l()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    iget-object v1, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/linkedin/urls/detection/d;->c()Z

    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x1

    .line 9
    .line 10
    if-nez v1, :cond_4

    .line 11
    .line 12
    iget-object v1, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/linkedin/urls/detection/d;->j()C

    .line 16
    move-result v1

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/linkedin/urls/detection/a;->e(C)Z

    .line 20
    move-result v3

    .line 21
    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v1}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-static {v1}, Lcom/linkedin/urls/detection/a;->d(C)Z

    .line 32
    move-result v3

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 40
    move v0, v2

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_1
    iget-object v3, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/linkedin/urls/detection/e;->h()I

    .line 47
    move-result v3

    .line 48
    .line 49
    if-nez v3, :cond_2

    .line 50
    .line 51
    sget-object v0, Lcom/linkedin/urls/detection/f$d;->InvalidUrl:Lcom/linkedin/urls/detection/f$d;

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/f;->j(Lcom/linkedin/urls/detection/f$d;)Z

    .line 55
    goto :goto_1

    .line 56
    .line 57
    :cond_2
    if-eqz v0, :cond_3

    .line 58
    .line 59
    .line 60
    const v0, 0xff03

    .line 61
    .line 62
    if-eq v1, v0, :cond_3

    .line 63
    .line 64
    const/16 v0, 0x23

    .line 65
    .line 66
    if-eq v1, v0, :cond_3

    .line 67
    .line 68
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/e;->e()Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    iget-object v1, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/linkedin/urls/detection/d;->d()I

    .line 78
    move-result v1

    .line 79
    sub-int/2addr v1, v2

    .line 80
    .line 81
    new-instance v3, Lcom/linkedin/urls/a;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 85
    move-result v4

    .line 86
    .line 87
    sub-int v4, v1, v4

    .line 88
    sub-int/2addr v4, v2

    .line 89
    .line 90
    sget-object v2, Lcom/linkedin/urls/a$a;->HASHTAG:Lcom/linkedin/urls/a$a;

    .line 91
    .line 92
    .line 93
    invoke-direct {v3, v4, v1, v0, v2}, Lcom/linkedin/urls/a;-><init>(IILjava/lang/String;Lcom/linkedin/urls/a$a;)V

    .line 94
    .line 95
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_urlList:Ljava/util/ArrayList;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    :cond_3
    sget-object v0, Lcom/linkedin/urls/detection/f$d;->InvalidUrl:Lcom/linkedin/urls/detection/f$d;

    .line 101
    .line 102
    .line 103
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/f;->j(Lcom/linkedin/urls/detection/f$d;)Z

    .line 104
    :goto_1
    return-void

    .line 105
    .line 106
    :cond_4
    iget-object v1, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/linkedin/urls/detection/e;->h()I

    .line 110
    move-result v1

    .line 111
    .line 112
    if-lez v1, :cond_5

    .line 113
    .line 114
    if-eqz v0, :cond_5

    .line 115
    .line 116
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/e;->e()Ljava/lang/String;

    .line 120
    move-result-object v0

    .line 121
    .line 122
    iget-object v1, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Lcom/linkedin/urls/detection/d;->f()I

    .line 126
    move-result v1

    .line 127
    .line 128
    new-instance v3, Lcom/linkedin/urls/a;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 132
    move-result v4

    .line 133
    .line 134
    sub-int v4, v1, v4

    .line 135
    sub-int/2addr v4, v2

    .line 136
    .line 137
    sget-object v2, Lcom/linkedin/urls/a$a;->HASHTAG:Lcom/linkedin/urls/a$a;

    .line 138
    .line 139
    .line 140
    invoke-direct {v3, v4, v1, v0, v2}, Lcom/linkedin/urls/a;-><init>(IILjava/lang/String;Lcom/linkedin/urls/a$a;)V

    .line 141
    .line 142
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_urlList:Ljava/util/ArrayList;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    :cond_5
    sget-object v0, Lcom/linkedin/urls/detection/f$d;->InvalidUrl:Lcom/linkedin/urls/detection/f$d;

    .line 148
    .line 149
    .line 150
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/f;->j(Lcom/linkedin/urls/detection/f$d;)Z

    .line 151
    return-void
.end method

.method private m()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/d;->c()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    return v1

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/d;->j()C

    .line 16
    move-result v0

    .line 17
    .line 18
    const/16 v2, 0x2f

    .line 19
    .line 20
    if-ne v0, v2, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 26
    const/4 v0, 0x1

    .line 27
    return v0

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/d;->g()V

    .line 33
    .line 34
    sget-object v0, Lcom/linkedin/urls/detection/f$d;->InvalidUrl:Lcom/linkedin/urls/detection/f$d;

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/f;->j(Lcom/linkedin/urls/detection/f$d;)Z

    .line 38
    return v1
.end method

.method private n()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_currentUrlMarker:Lcom/linkedin/urls/b;

    .line 3
    .line 4
    sget-object v1, Lcom/linkedin/urls/c;->PATH:Lcom/linkedin/urls/c;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/linkedin/urls/detection/e;->h()I

    .line 10
    move-result v2

    .line 11
    .line 12
    add-int/lit8 v2, v2, -0x1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/linkedin/urls/b;->b(Lcom/linkedin/urls/c;I)V

    .line 16
    const/4 v0, 0x0

    .line 17
    .line 18
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/linkedin/urls/detection/d;->c()Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-nez v1, :cond_c

    .line 25
    .line 26
    iget-object v1, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/linkedin/urls/detection/d;->j()C

    .line 30
    move-result v1

    .line 31
    .line 32
    const/16 v2, 0x20

    .line 33
    .line 34
    if-eq v1, v2, :cond_b

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/f;->b(C)Lcom/linkedin/urls/detection/f$c;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    sget-object v3, Lcom/linkedin/urls/detection/f$c;->CharacterNotMatched:Lcom/linkedin/urls/detection/f$c;

    .line 41
    .line 42
    if-eq v2, v3, :cond_1

    .line 43
    .line 44
    goto/16 :goto_1

    .line 45
    .line 46
    :cond_1
    const/16 v2, 0x3f

    .line 47
    .line 48
    if-ne v1, v2, :cond_3

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/f;->e(I)Z

    .line 52
    move-result v0

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    sget-object v0, Lcom/linkedin/urls/detection/f$d;->ValidUrl:Lcom/linkedin/urls/detection/f$d;

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/f;->j(Lcom/linkedin/urls/detection/f$d;)Z

    .line 60
    move-result v0

    .line 61
    return v0

    .line 62
    .line 63
    :cond_2
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 67
    .line 68
    .line 69
    invoke-direct {p0}, Lcom/linkedin/urls/detection/f;->p()Z

    .line 70
    move-result v0

    .line 71
    return v0

    .line 72
    .line 73
    :cond_3
    const/16 v2, 0x23

    .line 74
    .line 75
    if-ne v1, v2, :cond_5

    .line 76
    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/f;->e(I)Z

    .line 81
    .line 82
    sget-object v0, Lcom/linkedin/urls/detection/f$d;->ValidUrl:Lcom/linkedin/urls/detection/f$d;

    .line 83
    .line 84
    .line 85
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/f;->j(Lcom/linkedin/urls/detection/f$d;)Z

    .line 86
    move-result v0

    .line 87
    return v0

    .line 88
    .line 89
    :cond_4
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 93
    .line 94
    .line 95
    invoke-direct {p0}, Lcom/linkedin/urls/detection/f;->k()Z

    .line 96
    move-result v0

    .line 97
    return v0

    .line 98
    .line 99
    :cond_5
    const/16 v2, 0x28

    .line 100
    .line 101
    if-ne v1, v2, :cond_6

    .line 102
    .line 103
    add-int/lit8 v0, v0, 0x1

    .line 104
    .line 105
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, v1}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 109
    goto :goto_0

    .line 110
    .line 111
    :cond_6
    const/16 v2, 0x29

    .line 112
    .line 113
    if-ne v1, v2, :cond_7

    .line 114
    .line 115
    add-int/lit8 v0, v0, -0x1

    .line 116
    .line 117
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v1}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 121
    .line 122
    if-gez v0, :cond_0

    .line 123
    .line 124
    .line 125
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/f;->e(I)Z

    .line 126
    .line 127
    sget-object v0, Lcom/linkedin/urls/detection/f$d;->ValidUrl:Lcom/linkedin/urls/detection/f$d;

    .line 128
    .line 129
    .line 130
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/f;->j(Lcom/linkedin/urls/detection/f$d;)Z

    .line 131
    move-result v0

    .line 132
    return v0

    .line 133
    .line 134
    :cond_7
    const/16 v2, 0x2f

    .line 135
    .line 136
    if-ne v1, v2, :cond_9

    .line 137
    .line 138
    if-eqz v0, :cond_8

    .line 139
    .line 140
    .line 141
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/f;->e(I)Z

    .line 142
    .line 143
    sget-object v0, Lcom/linkedin/urls/detection/f$d;->ValidUrl:Lcom/linkedin/urls/detection/f$d;

    .line 144
    .line 145
    .line 146
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/f;->j(Lcom/linkedin/urls/detection/f$d;)Z

    .line 147
    move-result v0

    .line 148
    return v0

    .line 149
    .line 150
    :cond_8
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, v1}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    .line 158
    :cond_9
    invoke-static {v1}, Lcom/linkedin/urls/detection/a;->k(C)Z

    .line 159
    move-result v2

    .line 160
    .line 161
    if-eqz v2, :cond_a

    .line 162
    .line 163
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v1}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 167
    .line 168
    goto/16 :goto_0

    .line 169
    .line 170
    .line 171
    :cond_a
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/f;->e(I)Z

    .line 172
    .line 173
    sget-object v0, Lcom/linkedin/urls/detection/f$d;->ValidUrl:Lcom/linkedin/urls/detection/f$d;

    .line 174
    .line 175
    .line 176
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/f;->j(Lcom/linkedin/urls/detection/f$d;)Z

    .line 177
    move-result v0

    .line 178
    return v0

    .line 179
    .line 180
    .line 181
    :cond_b
    :goto_1
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/f;->e(I)Z

    .line 182
    .line 183
    sget-object v0, Lcom/linkedin/urls/detection/f$d;->ValidUrl:Lcom/linkedin/urls/detection/f$d;

    .line 184
    .line 185
    .line 186
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/f;->j(Lcom/linkedin/urls/detection/f$d;)Z

    .line 187
    move-result v0

    .line 188
    return v0

    .line 189
    .line 190
    .line 191
    :cond_c
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/f;->e(I)Z

    .line 192
    .line 193
    sget-object v0, Lcom/linkedin/urls/detection/f$d;->ValidUrl:Lcom/linkedin/urls/detection/f$d;

    .line 194
    .line 195
    .line 196
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/f;->j(Lcom/linkedin/urls/detection/f$d;)Z

    .line 197
    move-result v0

    .line 198
    return v0
.end method

.method private o()Z
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_currentUrlMarker:Lcom/linkedin/urls/b;

    .line 3
    .line 4
    sget-object v1, Lcom/linkedin/urls/c;->PORT:Lcom/linkedin/urls/c;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/linkedin/urls/detection/e;->h()I

    .line 10
    move-result v2

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/linkedin/urls/b;->b(Lcom/linkedin/urls/c;I)V

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    :goto_0
    iget-object v1, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/linkedin/urls/detection/d;->c()Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-nez v1, :cond_6

    .line 23
    .line 24
    iget-object v1, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/linkedin/urls/detection/d;->j()C

    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x1

    .line 30
    add-int/2addr v0, v2

    .line 31
    .line 32
    const/16 v3, 0x2f

    .line 33
    .line 34
    if-ne v1, v3, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/linkedin/urls/detection/f;->n()Z

    .line 43
    move-result v0

    .line 44
    return v0

    .line 45
    .line 46
    :cond_0
    const/16 v3, 0x3f

    .line 47
    .line 48
    if-ne v1, v3, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 54
    .line 55
    .line 56
    invoke-direct {p0}, Lcom/linkedin/urls/detection/f;->p()Z

    .line 57
    move-result v0

    .line 58
    return v0

    .line 59
    .line 60
    :cond_1
    const/16 v3, 0x23

    .line 61
    .line 62
    if-ne v1, v3, :cond_2

    .line 63
    .line 64
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 68
    .line 69
    .line 70
    invoke-direct {p0}, Lcom/linkedin/urls/detection/f;->k()Z

    .line 71
    move-result v0

    .line 72
    return v0

    .line 73
    .line 74
    .line 75
    :cond_2
    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/f;->b(C)Lcom/linkedin/urls/detection/f$c;

    .line 76
    move-result-object v3

    .line 77
    .line 78
    sget-object v4, Lcom/linkedin/urls/detection/f$c;->CharacterMatchStop:Lcom/linkedin/urls/detection/f$c;

    .line 79
    .line 80
    if-eq v3, v4, :cond_4

    .line 81
    .line 82
    .line 83
    invoke-static {v1}, Lcom/linkedin/urls/detection/a;->h(C)Z

    .line 84
    move-result v3

    .line 85
    .line 86
    if-nez v3, :cond_3

    .line 87
    goto :goto_1

    .line 88
    .line 89
    :cond_3
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v1}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 93
    goto :goto_0

    .line 94
    .line 95
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/linkedin/urls/detection/d;->g()V

    .line 99
    .line 100
    if-ne v0, v2, :cond_5

    .line 101
    .line 102
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/e;->h()I

    .line 106
    move-result v1

    .line 107
    sub-int/2addr v1, v2

    .line 108
    .line 109
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Lcom/linkedin/urls/detection/e;->h()I

    .line 113
    move-result v2

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1, v2}, Lcom/linkedin/urls/detection/e;->c(II)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    :cond_5
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_currentUrlMarker:Lcom/linkedin/urls/b;

    .line 119
    .line 120
    sget-object v1, Lcom/linkedin/urls/c;->PORT:Lcom/linkedin/urls/c;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1}, Lcom/linkedin/urls/b;->c(Lcom/linkedin/urls/c;)V

    .line 124
    .line 125
    sget-object v0, Lcom/linkedin/urls/detection/f$d;->ValidUrl:Lcom/linkedin/urls/detection/f$d;

    .line 126
    .line 127
    .line 128
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/f;->j(Lcom/linkedin/urls/detection/f$d;)Z

    .line 129
    move-result v0

    .line 130
    return v0

    .line 131
    .line 132
    :cond_6
    sget-object v0, Lcom/linkedin/urls/detection/f$d;->ValidUrl:Lcom/linkedin/urls/detection/f$d;

    .line 133
    .line 134
    .line 135
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/f;->j(Lcom/linkedin/urls/detection/f$d;)Z

    .line 136
    move-result v0

    .line 137
    return v0
.end method

.method private p()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_currentUrlMarker:Lcom/linkedin/urls/b;

    .line 3
    .line 4
    sget-object v1, Lcom/linkedin/urls/c;->QUERY:Lcom/linkedin/urls/c;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/linkedin/urls/detection/e;->h()I

    .line 10
    move-result v2

    .line 11
    .line 12
    add-int/lit8 v2, v2, -0x1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/linkedin/urls/b;->b(Lcom/linkedin/urls/c;I)V

    .line 16
    .line 17
    :goto_0
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/d;->c()Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-nez v0, :cond_4

    .line 24
    .line 25
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/d;->j()C

    .line 29
    move-result v0

    .line 30
    .line 31
    const/16 v1, 0x23

    .line 32
    .line 33
    if-ne v0, v1, :cond_0

    .line 34
    .line 35
    iget-object v1, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Lcom/linkedin/urls/detection/f;->k()Z

    .line 42
    move-result v0

    .line 43
    return v0

    .line 44
    .line 45
    :cond_0
    const/16 v1, 0x20

    .line 46
    .line 47
    if-eq v0, v1, :cond_3

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/f;->b(C)Lcom/linkedin/urls/detection/f$c;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    sget-object v2, Lcom/linkedin/urls/detection/f$c;->CharacterNotMatched:Lcom/linkedin/urls/detection/f$c;

    .line 54
    .line 55
    if-eq v1, v2, :cond_1

    .line 56
    goto :goto_1

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-static {v0}, Lcom/linkedin/urls/detection/a;->m(C)Z

    .line 60
    move-result v1

    .line 61
    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    iget-object v1, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v0}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 68
    goto :goto_0

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-direct {p0}, Lcom/linkedin/urls/detection/f;->f()Z

    .line 72
    .line 73
    sget-object v0, Lcom/linkedin/urls/detection/f$d;->ValidUrl:Lcom/linkedin/urls/detection/f$d;

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/f;->j(Lcom/linkedin/urls/detection/f$d;)Z

    .line 77
    move-result v0

    .line 78
    return v0

    .line 79
    .line 80
    .line 81
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/linkedin/urls/detection/f;->f()Z

    .line 82
    .line 83
    sget-object v0, Lcom/linkedin/urls/detection/f$d;->ValidUrl:Lcom/linkedin/urls/detection/f$d;

    .line 84
    .line 85
    .line 86
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/f;->j(Lcom/linkedin/urls/detection/f$d;)Z

    .line 87
    move-result v0

    .line 88
    return v0

    .line 89
    .line 90
    .line 91
    :cond_4
    invoke-direct {p0}, Lcom/linkedin/urls/detection/f;->f()Z

    .line 92
    .line 93
    sget-object v0, Lcom/linkedin/urls/detection/f$d;->ValidUrl:Lcom/linkedin/urls/detection/f$d;

    .line 94
    .line 95
    .line 96
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/f;->j(Lcom/linkedin/urls/detection/f$d;)Z

    .line 97
    move-result v0

    .line 98
    return v0
.end method

.method private q()I
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/e;->h()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    .line 10
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3}, Lcom/linkedin/urls/detection/d;->c()Z

    .line 14
    move-result v3

    .line 15
    .line 16
    if-nez v3, :cond_8

    .line 17
    .line 18
    iget-object v3, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/linkedin/urls/detection/d;->j()C

    .line 22
    move-result v3

    .line 23
    .line 24
    const/16 v4, 0x2f

    .line 25
    .line 26
    if-ne v3, v4, :cond_3

    .line 27
    .line 28
    iget-object v4, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, v3}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 32
    const/4 v3, 0x1

    .line 33
    .line 34
    if-ne v2, v3, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/e;->e()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/f;->t(Ljava/lang/String;)I

    .line 48
    move-result v0

    .line 49
    .line 50
    if-lez v0, :cond_1

    .line 51
    .line 52
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_currentUrlMarker:Lcom/linkedin/urls/b;

    .line 53
    .line 54
    sget-object v3, Lcom/linkedin/urls/c;->SCHEME:Lcom/linkedin/urls/c;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v3, v1}, Lcom/linkedin/urls/b;->b(Lcom/linkedin/urls/c;I)V

    .line 58
    return v0

    .line 59
    :cond_1
    return v1

    .line 60
    .line 61
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_3
    const/16 v4, 0x20

    .line 65
    .line 66
    if-eq v3, v4, :cond_7

    .line 67
    .line 68
    .line 69
    invoke-direct {p0, v3}, Lcom/linkedin/urls/detection/f;->b(C)Lcom/linkedin/urls/detection/f$c;

    .line 70
    move-result-object v4

    .line 71
    .line 72
    sget-object v5, Lcom/linkedin/urls/detection/f$c;->CharacterNotMatched:Lcom/linkedin/urls/detection/f$c;

    .line 73
    .line 74
    if-eq v4, v5, :cond_4

    .line 75
    goto :goto_1

    .line 76
    .line 77
    :cond_4
    const/16 v4, 0x5b

    .line 78
    .line 79
    if-ne v3, v4, :cond_5

    .line 80
    .line 81
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/d;->g()V

    .line 85
    return v1

    .line 86
    .line 87
    :cond_5
    if-gtz v0, :cond_6

    .line 88
    .line 89
    if-gtz v2, :cond_6

    .line 90
    .line 91
    .line 92
    invoke-static {v3}, Lcom/linkedin/urls/detection/a;->a(C)Z

    .line 93
    move-result v3

    .line 94
    .line 95
    if-nez v3, :cond_0

    .line 96
    .line 97
    :cond_6
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/d;->g()V

    .line 101
    .line 102
    .line 103
    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/f;->r(I)Z

    .line 104
    move-result v0

    .line 105
    return v0

    .line 106
    .line 107
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v3}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 111
    :cond_8
    return v1
.end method

.method private r(I)Z
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/e;->h()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    move v3, v2

    .line 10
    .line 11
    :goto_1
    if-nez v2, :cond_5

    .line 12
    .line 13
    iget-object v4, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4}, Lcom/linkedin/urls/detection/d;->c()Z

    .line 17
    move-result v4

    .line 18
    .line 19
    if-nez v4, :cond_5

    .line 20
    .line 21
    iget-object v4, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4}, Lcom/linkedin/urls/detection/d;->j()C

    .line 25
    move-result v4

    .line 26
    .line 27
    const/16 v5, 0x40

    .line 28
    .line 29
    if-ne v4, v5, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v4}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 35
    .line 36
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_currentUrlMarker:Lcom/linkedin/urls/b;

    .line 37
    .line 38
    sget-object v1, Lcom/linkedin/urls/c;->USERNAME_PASSWORD:Lcom/linkedin/urls/c;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1, p1}, Lcom/linkedin/urls/b;->b(Lcom/linkedin/urls/c;I)V

    .line 42
    .line 43
    const-string p1, ""

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, p1}, Lcom/linkedin/urls/detection/f;->i(Ljava/lang/String;)Z

    .line 47
    move-result p1

    .line 48
    return p1

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-static {v4}, Lcom/linkedin/urls/detection/a;->c(C)Z

    .line 52
    move-result v5

    .line 53
    const/4 v6, 0x1

    .line 54
    .line 55
    if-nez v5, :cond_4

    .line 56
    .line 57
    const/16 v5, 0x5b

    .line 58
    .line 59
    if-ne v4, v5, :cond_1

    .line 60
    goto :goto_3

    .line 61
    .line 62
    :cond_1
    const/16 v5, 0x23

    .line 63
    .line 64
    if-eq v4, v5, :cond_3

    .line 65
    .line 66
    const/16 v5, 0x20

    .line 67
    .line 68
    if-eq v4, v5, :cond_3

    .line 69
    .line 70
    const/16 v5, 0x2f

    .line 71
    .line 72
    if-eq v4, v5, :cond_3

    .line 73
    .line 74
    .line 75
    invoke-direct {p0, v4}, Lcom/linkedin/urls/detection/f;->b(C)Lcom/linkedin/urls/detection/f$c;

    .line 76
    move-result-object v5

    .line 77
    .line 78
    sget-object v7, Lcom/linkedin/urls/detection/f$c;->CharacterNotMatched:Lcom/linkedin/urls/detection/f$c;

    .line 79
    .line 80
    if-eq v5, v7, :cond_2

    .line 81
    goto :goto_2

    .line 82
    .line 83
    :cond_2
    iget-object v5, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5, v4}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 87
    goto :goto_1

    .line 88
    :cond_3
    :goto_2
    move v2, v6

    .line 89
    goto :goto_0

    .line 90
    .line 91
    :cond_4
    :goto_3
    iget-object v3, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v4}, Lcom/linkedin/urls/detection/e;->a(C)V

    .line 95
    move v3, v6

    .line 96
    goto :goto_1

    .line 97
    .line 98
    :cond_5
    if-eqz v3, :cond_6

    .line 99
    .line 100
    iget-object p1, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/linkedin/urls/detection/e;->h()I

    .line 104
    move-result p1

    .line 105
    sub-int/2addr p1, v0

    .line 106
    .line 107
    iget-object v3, p0, Lcom/linkedin/urls/detection/f;->_buffer:Lcom/linkedin/urls/detection/e;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Lcom/linkedin/urls/detection/e;->h()I

    .line 111
    move-result v4

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v0, v4}, Lcom/linkedin/urls/detection/e;->c(II)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/d;->d()I

    .line 120
    move-result v0

    .line 121
    sub-int/2addr v0, p1

    .line 122
    sub-int/2addr v0, v2

    .line 123
    .line 124
    .line 125
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 126
    move-result p1

    .line 127
    .line 128
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, p1}, Lcom/linkedin/urls/detection/d;->k(I)V

    .line 132
    return v1

    .line 133
    .line 134
    :cond_6
    sget-object p1, Lcom/linkedin/urls/detection/f$d;->InvalidUrl:Lcom/linkedin/urls/detection/f$d;

    .line 135
    .line 136
    .line 137
    invoke-direct {p0, p1}, Lcom/linkedin/urls/detection/f;->j(Lcom/linkedin/urls/detection/f$d;)Z

    .line 138
    move-result p1

    .line 139
    return p1
.end method

.method private s(Ljava/lang/String;II)Z
    .locals 1

    .line 1
    .line 2
    :goto_0
    if-ge p2, p3, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/linkedin/urls/detection/a;->h(C)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    const/4 p1, 0x0

    .line 14
    return p1

    .line 15
    .line 16
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 p1, 0x1

    .line 19
    return p1
.end method

.method private t(Ljava/lang/String;)I
    .locals 3

    .line 1
    .line 2
    const-string v0, "http://"

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_4

    .line 9
    .line 10
    const-string v0, "https://"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    const-string v0, "ndc://"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x2

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    return v1

    .line 28
    .line 29
    :cond_1
    const-string v0, "://"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    const-string v0, "aminoapp"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 41
    move-result v0

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 47
    move-result v0

    .line 48
    .line 49
    add-int/lit8 v0, v0, -0x3

    .line 50
    .line 51
    const/16 v2, 0x8

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, p1, v2, v0}, Lcom/linkedin/urls/detection/f;->s(Ljava/lang/String;II)Z

    .line 55
    move-result v0

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    return v1

    .line 59
    .line 60
    :cond_2
    const-string v0, "pabkitapp"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 64
    move-result v0

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 70
    move-result v0

    .line 71
    .line 72
    add-int/lit8 v0, v0, -0x3

    .line 73
    .line 74
    const/16 v2, 0x9

    .line 75
    .line 76
    .line 77
    invoke-direct {p0, p1, v2, v0}, Lcom/linkedin/urls/detection/f;->s(Ljava/lang/String;II)Z

    .line 78
    move-result p1

    .line 79
    .line 80
    if-eqz p1, :cond_3

    .line 81
    return v1

    .line 82
    :cond_3
    const/4 p1, 0x0

    .line 83
    return p1

    .line 84
    :cond_4
    :goto_0
    const/4 p1, 0x1

    .line 85
    return p1
.end method


# virtual methods
.method public c()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/linkedin/urls/a;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-direct {p0}, Lcom/linkedin/urls/detection/f;->h()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    goto :goto_0

    .line 5
    .line 6
    :catch_0
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/d;->d()I

    .line 10
    move-result v0

    .line 11
    .line 12
    add-int/lit8 v1, v0, -0x32

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 17
    move-result v1

    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x32

    .line 20
    .line 21
    iget-object v2, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/linkedin/urls/detection/d;->f()I

    .line 25
    move-result v2

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 29
    move-result v0

    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    const-string v3, "malformed link detected, content = "

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    iget-object v3, p0, Lcom/linkedin/urls/detection/f;->_reader:Lcom/linkedin/urls/detection/d;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v1, v0}, Lcom/linkedin/urls/detection/d;->e(II)Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    const-string v1, "UrlDetector"

    .line 55
    .line 56
    .line 57
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    :goto_0
    iget-object v0, p0, Lcom/linkedin/urls/detection/f;->_urlList:Ljava/util/ArrayList;

    .line 60
    return-object v0
.end method
