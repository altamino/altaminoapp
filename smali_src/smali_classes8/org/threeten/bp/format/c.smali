.class public final Lorg/threeten/bp/format/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/format/c$p;,
        Lorg/threeten/bp/format/c$k;,
        Lorg/threeten/bp/format/c$i;,
        Lorg/threeten/bp/format/c$o;,
        Lorg/threeten/bp/format/c$h;,
        Lorg/threeten/bp/format/c$j;,
        Lorg/threeten/bp/format/c$n;,
        Lorg/threeten/bp/format/c$e;,
        Lorg/threeten/bp/format/c$m;,
        Lorg/threeten/bp/format/c$l;,
        Lorg/threeten/bp/format/c$f;,
        Lorg/threeten/bp/format/c$g;
    }
.end annotation


# static fields
.field private static final FIELD_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Lorg/threeten/bp/temporal/h;",
            ">;"
        }
    .end annotation
.end field

.field static final LENGTH_SORT:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final QUERY_REGION_ONLY:Lorg/threeten/bp/temporal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/j<",
            "Lorg/threeten/bp/r;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private active:Lorg/threeten/bp/format/c;

.field private final optional:Z

.field private padNextChar:C

.field private padNextWidth:I

.field private final parent:Lorg/threeten/bp/format/c;

.field private final printerParsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/threeten/bp/format/c$g;",
            ">;"
        }
    .end annotation
.end field

.field private valueParserIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/format/c$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lorg/threeten/bp/format/c$a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lorg/threeten/bp/format/c;->QUERY_REGION_ONLY:Lorg/threeten/bp/temporal/j;

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lorg/threeten/bp/format/c;->FIELD_MAP:Ljava/util/Map;

    .line 15
    .line 16
    const/16 v1, 0x47

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    sget-object v2, Lorg/threeten/bp/temporal/a;->ERA:Lorg/threeten/bp/temporal/a;

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    const/16 v1, 0x79

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    sget-object v2, Lorg/threeten/bp/temporal/a;->YEAR_OF_ERA:Lorg/threeten/bp/temporal/a;

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    const/16 v1, 0x75

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    sget-object v2, Lorg/threeten/bp/temporal/a;->YEAR:Lorg/threeten/bp/temporal/a;

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    const/16 v1, 0x51

    .line 50
    .line 51
    .line 52
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    sget-object v2, Lorg/threeten/bp/temporal/c;->QUARTER_OF_YEAR:Lorg/threeten/bp/temporal/h;

    .line 56
    .line 57
    .line 58
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    const/16 v1, 0x71

    .line 61
    .line 62
    .line 63
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    .line 67
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    const/16 v1, 0x4d

    .line 70
    .line 71
    .line 72
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    sget-object v2, Lorg/threeten/bp/temporal/a;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/a;

    .line 76
    .line 77
    .line 78
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    const/16 v1, 0x4c

    .line 81
    .line 82
    .line 83
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    .line 87
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    const/16 v1, 0x44

    .line 90
    .line 91
    .line 92
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 93
    move-result-object v1

    .line 94
    .line 95
    sget-object v2, Lorg/threeten/bp/temporal/a;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/a;

    .line 96
    .line 97
    .line 98
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    const/16 v1, 0x64

    .line 101
    .line 102
    .line 103
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 104
    move-result-object v1

    .line 105
    .line 106
    sget-object v2, Lorg/threeten/bp/temporal/a;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/a;

    .line 107
    .line 108
    .line 109
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    const/16 v1, 0x46

    .line 112
    .line 113
    .line 114
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 115
    move-result-object v1

    .line 116
    .line 117
    sget-object v2, Lorg/threeten/bp/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lorg/threeten/bp/temporal/a;

    .line 118
    .line 119
    .line 120
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    const/16 v1, 0x45

    .line 123
    .line 124
    .line 125
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 126
    move-result-object v1

    .line 127
    .line 128
    sget-object v2, Lorg/threeten/bp/temporal/a;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/a;

    .line 129
    .line 130
    .line 131
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    const/16 v1, 0x63

    .line 134
    .line 135
    .line 136
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 137
    move-result-object v1

    .line 138
    .line 139
    .line 140
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    const/16 v1, 0x65

    .line 143
    .line 144
    .line 145
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 146
    move-result-object v1

    .line 147
    .line 148
    .line 149
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    const/16 v1, 0x61

    .line 152
    .line 153
    .line 154
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 155
    move-result-object v1

    .line 156
    .line 157
    sget-object v2, Lorg/threeten/bp/temporal/a;->AMPM_OF_DAY:Lorg/threeten/bp/temporal/a;

    .line 158
    .line 159
    .line 160
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    const/16 v1, 0x48

    .line 163
    .line 164
    .line 165
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 166
    move-result-object v1

    .line 167
    .line 168
    sget-object v2, Lorg/threeten/bp/temporal/a;->HOUR_OF_DAY:Lorg/threeten/bp/temporal/a;

    .line 169
    .line 170
    .line 171
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    const/16 v1, 0x6b

    .line 174
    .line 175
    .line 176
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 177
    move-result-object v1

    .line 178
    .line 179
    sget-object v2, Lorg/threeten/bp/temporal/a;->CLOCK_HOUR_OF_DAY:Lorg/threeten/bp/temporal/a;

    .line 180
    .line 181
    .line 182
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    const/16 v1, 0x4b

    .line 185
    .line 186
    .line 187
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 188
    move-result-object v1

    .line 189
    .line 190
    sget-object v2, Lorg/threeten/bp/temporal/a;->HOUR_OF_AMPM:Lorg/threeten/bp/temporal/a;

    .line 191
    .line 192
    .line 193
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    const/16 v1, 0x68

    .line 196
    .line 197
    .line 198
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 199
    move-result-object v1

    .line 200
    .line 201
    sget-object v2, Lorg/threeten/bp/temporal/a;->CLOCK_HOUR_OF_AMPM:Lorg/threeten/bp/temporal/a;

    .line 202
    .line 203
    .line 204
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    const/16 v1, 0x6d

    .line 207
    .line 208
    .line 209
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 210
    move-result-object v1

    .line 211
    .line 212
    sget-object v2, Lorg/threeten/bp/temporal/a;->MINUTE_OF_HOUR:Lorg/threeten/bp/temporal/a;

    .line 213
    .line 214
    .line 215
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    const/16 v1, 0x73

    .line 218
    .line 219
    .line 220
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 221
    move-result-object v1

    .line 222
    .line 223
    sget-object v2, Lorg/threeten/bp/temporal/a;->SECOND_OF_MINUTE:Lorg/threeten/bp/temporal/a;

    .line 224
    .line 225
    .line 226
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    const/16 v1, 0x53

    .line 229
    .line 230
    .line 231
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 232
    move-result-object v1

    .line 233
    .line 234
    sget-object v2, Lorg/threeten/bp/temporal/a;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/a;

    .line 235
    .line 236
    .line 237
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    const/16 v1, 0x41

    .line 240
    .line 241
    .line 242
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 243
    move-result-object v1

    .line 244
    .line 245
    sget-object v3, Lorg/threeten/bp/temporal/a;->MILLI_OF_DAY:Lorg/threeten/bp/temporal/a;

    .line 246
    .line 247
    .line 248
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    const/16 v1, 0x6e

    .line 251
    .line 252
    .line 253
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 254
    move-result-object v1

    .line 255
    .line 256
    .line 257
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    const/16 v1, 0x4e

    .line 260
    .line 261
    .line 262
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 263
    move-result-object v1

    .line 264
    .line 265
    sget-object v2, Lorg/threeten/bp/temporal/a;->NANO_OF_DAY:Lorg/threeten/bp/temporal/a;

    .line 266
    .line 267
    .line 268
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    new-instance v0, Lorg/threeten/bp/format/c$c;

    .line 271
    .line 272
    .line 273
    invoke-direct {v0}, Lorg/threeten/bp/format/c$c;-><init>()V

    .line 274
    .line 275
    sput-object v0, Lorg/threeten/bp/format/c;->LENGTH_SORT:Ljava/util/Comparator;

    .line 276
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lorg/threeten/bp/format/c;->active:Lorg/threeten/bp/format/c;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/format/c;->printerParsers:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lorg/threeten/bp/format/c;->valueParserIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/threeten/bp/format/c;->parent:Lorg/threeten/bp/format/c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/threeten/bp/format/c;->optional:Z

    return-void
.end method

.method private constructor <init>(Lorg/threeten/bp/format/c;Z)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lorg/threeten/bp/format/c;->active:Lorg/threeten/bp/format/c;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/format/c;->printerParsers:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lorg/threeten/bp/format/c;->valueParserIndex:I

    iput-object p1, p0, Lorg/threeten/bp/format/c;->parent:Lorg/threeten/bp/format/c;

    iput-boolean p2, p0, Lorg/threeten/bp/format/c;->optional:Z

    return-void
.end method

.method private d(Lorg/threeten/bp/format/c$g;)I
    .locals 3

    .line 1
    .line 2
    const-string v0, "pp"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Lorg/threeten/bp/format/c;->active:Lorg/threeten/bp/format/c;

    .line 8
    .line 9
    iget v1, v0, Lorg/threeten/bp/format/c;->padNextWidth:I

    .line 10
    .line 11
    if-lez v1, :cond_1

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    new-instance v2, Lorg/threeten/bp/format/c$l;

    .line 16
    .line 17
    iget-char v0, v0, Lorg/threeten/bp/format/c;->padNextChar:C

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, p1, v1, v0}, Lorg/threeten/bp/format/c$l;-><init>(Lorg/threeten/bp/format/c$g;IC)V

    .line 21
    move-object p1, v2

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/format/c;->active:Lorg/threeten/bp/format/c;

    .line 24
    const/4 v1, 0x0

    .line 25
    .line 26
    iput v1, v0, Lorg/threeten/bp/format/c;->padNextWidth:I

    .line 27
    .line 28
    iput-char v1, v0, Lorg/threeten/bp/format/c;->padNextChar:C

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lorg/threeten/bp/format/c;->active:Lorg/threeten/bp/format/c;

    .line 31
    .line 32
    iget-object v0, v0, Lorg/threeten/bp/format/c;->printerParsers:Ljava/util/List;

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    iget-object p1, p0, Lorg/threeten/bp/format/c;->active:Lorg/threeten/bp/format/c;

    .line 38
    const/4 v0, -0x1

    .line 39
    .line 40
    iput v0, p1, Lorg/threeten/bp/format/c;->valueParserIndex:I

    .line 41
    .line 42
    iget-object p1, p1, Lorg/threeten/bp/format/c;->printerParsers:Ljava/util/List;

    .line 43
    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 46
    move-result p1

    .line 47
    .line 48
    add-int/lit8 p1, p1, -0x1

    .line 49
    return p1
.end method

.method private j(Lorg/threeten/bp/format/c$j;)Lorg/threeten/bp/format/c;
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/format/c;->active:Lorg/threeten/bp/format/c;

    .line 3
    .line 4
    iget v1, v0, Lorg/threeten/bp/format/c;->valueParserIndex:I

    .line 5
    .line 6
    if-ltz v1, :cond_1

    .line 7
    .line 8
    iget-object v0, v0, Lorg/threeten/bp/format/c;->printerParsers:Ljava/util/List;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    instance-of v0, v0, Lorg/threeten/bp/format/c$j;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lorg/threeten/bp/format/c;->active:Lorg/threeten/bp/format/c;

    .line 19
    .line 20
    iget v1, v0, Lorg/threeten/bp/format/c;->valueParserIndex:I

    .line 21
    .line 22
    iget-object v0, v0, Lorg/threeten/bp/format/c;->printerParsers:Ljava/util/List;

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Lorg/threeten/bp/format/c$j;

    .line 29
    .line 30
    iget v2, p1, Lorg/threeten/bp/format/c$j;->minWidth:I

    .line 31
    .line 32
    iget v3, p1, Lorg/threeten/bp/format/c$j;->maxWidth:I

    .line 33
    .line 34
    if-ne v2, v3, :cond_0

    .line 35
    .line 36
    iget-object v2, p1, Lorg/threeten/bp/format/c$j;->signStyle:Lorg/threeten/bp/format/h;

    .line 37
    .line 38
    sget-object v4, Lorg/threeten/bp/format/h;->NOT_NEGATIVE:Lorg/threeten/bp/format/h;

    .line 39
    .line 40
    if-ne v2, v4, :cond_0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v3}, Lorg/threeten/bp/format/c$j;->d(I)Lorg/threeten/bp/format/c$j;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lorg/threeten/bp/format/c$j;->c()Lorg/threeten/bp/format/c$j;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, p1}, Lorg/threeten/bp/format/c;->d(Lorg/threeten/bp/format/c$g;)I

    .line 52
    .line 53
    iget-object p1, p0, Lorg/threeten/bp/format/c;->active:Lorg/threeten/bp/format/c;

    .line 54
    .line 55
    iput v1, p1, Lorg/threeten/bp/format/c;->valueParserIndex:I

    .line 56
    goto :goto_0

    .line 57
    .line 58
    .line 59
    :cond_0
    invoke-virtual {v0}, Lorg/threeten/bp/format/c$j;->c()Lorg/threeten/bp/format/c$j;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    iget-object v2, p0, Lorg/threeten/bp/format/c;->active:Lorg/threeten/bp/format/c;

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, p1}, Lorg/threeten/bp/format/c;->d(Lorg/threeten/bp/format/c$g;)I

    .line 66
    move-result p1

    .line 67
    .line 68
    iput p1, v2, Lorg/threeten/bp/format/c;->valueParserIndex:I

    .line 69
    .line 70
    :goto_0
    iget-object p1, p0, Lorg/threeten/bp/format/c;->active:Lorg/threeten/bp/format/c;

    .line 71
    .line 72
    iget-object p1, p1, Lorg/threeten/bp/format/c;->printerParsers:Ljava/util/List;

    .line 73
    .line 74
    .line 75
    invoke-interface {p1, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 76
    goto :goto_1

    .line 77
    .line 78
    :cond_1
    iget-object v0, p0, Lorg/threeten/bp/format/c;->active:Lorg/threeten/bp/format/c;

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, p1}, Lorg/threeten/bp/format/c;->d(Lorg/threeten/bp/format/c$g;)I

    .line 82
    move-result p1

    .line 83
    .line 84
    iput p1, v0, Lorg/threeten/bp/format/c;->valueParserIndex:I

    .line 85
    :goto_1
    return-object p0
.end method


# virtual methods
.method public a(Lorg/threeten/bp/format/b;)Lorg/threeten/bp/format/c;
    .locals 1

    .line 1
    .line 2
    const-string v0, "formatter"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lorg/threeten/bp/format/b;->g(Z)Lorg/threeten/bp/format/c$f;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Lorg/threeten/bp/format/c;->d(Lorg/threeten/bp/format/c$g;)I

    .line 14
    return-object p0
.end method

.method public b(Lorg/threeten/bp/temporal/h;IIZ)Lorg/threeten/bp/format/c;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/format/c$h;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2, p3, p4}, Lorg/threeten/bp/format/c$h;-><init>(Lorg/threeten/bp/temporal/h;IIZ)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/c;->d(Lorg/threeten/bp/format/c$g;)I

    .line 9
    return-object p0
.end method

.method public c()Lorg/threeten/bp/format/c;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/format/c$i;

    .line 3
    const/4 v1, -0x2

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lorg/threeten/bp/format/c$i;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/c;->d(Lorg/threeten/bp/format/c$g;)I

    .line 10
    return-object p0
.end method

.method public e(C)Lorg/threeten/bp/format/c;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/format/c$e;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Lorg/threeten/bp/format/c$e;-><init>(C)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/c;->d(Lorg/threeten/bp/format/c$g;)I

    .line 9
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lorg/threeten/bp/format/c;
    .locals 2

    .line 1
    .line 2
    const-string v0, "literal"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 9
    move-result v0

    .line 10
    .line 11
    if-lez v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    new-instance v0, Lorg/threeten/bp/format/c$e;

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 25
    move-result p1

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, p1}, Lorg/threeten/bp/format/c$e;-><init>(C)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/c;->d(Lorg/threeten/bp/format/c$g;)I

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    new-instance v0, Lorg/threeten/bp/format/c$n;

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, p1}, Lorg/threeten/bp/format/c$n;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/c;->d(Lorg/threeten/bp/format/c$g;)I

    .line 41
    :cond_1
    :goto_0
    return-object p0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)Lorg/threeten/bp/format/c;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/format/c$k;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p2, p1}, Lorg/threeten/bp/format/c$k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/c;->d(Lorg/threeten/bp/format/c$g;)I

    .line 9
    return-object p0
.end method

.method public h()Lorg/threeten/bp/format/c;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/format/c$k;->INSTANCE_ID:Lorg/threeten/bp/format/c$k;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/c;->d(Lorg/threeten/bp/format/c$g;)I

    .line 6
    return-object p0
.end method

.method public i(Lorg/threeten/bp/temporal/h;Ljava/util/Map;)Lorg/threeten/bp/format/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/h;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/threeten/bp/format/c;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "field"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    const-string v0, "textLookup"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 16
    .line 17
    sget-object p2, Lorg/threeten/bp/format/j;->FULL:Lorg/threeten/bp/format/j;

    .line 18
    .line 19
    .line 20
    invoke-static {p2, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    new-instance v1, Lorg/threeten/bp/format/i$b;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v0}, Lorg/threeten/bp/format/i$b;-><init>(Ljava/util/Map;)V

    .line 27
    .line 28
    new-instance v0, Lorg/threeten/bp/format/c$b;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, p0, v1}, Lorg/threeten/bp/format/c$b;-><init>(Lorg/threeten/bp/format/c;Lorg/threeten/bp/format/i$b;)V

    .line 32
    .line 33
    new-instance v1, Lorg/threeten/bp/format/c$o;

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, p1, p2, v0}, Lorg/threeten/bp/format/c$o;-><init>(Lorg/threeten/bp/temporal/h;Lorg/threeten/bp/format/j;Lorg/threeten/bp/format/e;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v1}, Lorg/threeten/bp/format/c;->d(Lorg/threeten/bp/format/c$g;)I

    .line 40
    return-object p0
.end method

.method public k(Lorg/threeten/bp/temporal/h;I)Lorg/threeten/bp/format/c;
    .locals 2

    .line 1
    .line 2
    const-string v0, "field"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    const/4 v0, 0x1

    .line 7
    .line 8
    if-lt p2, v0, :cond_0

    .line 9
    .line 10
    const/16 v0, 0x13

    .line 11
    .line 12
    if-gt p2, v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lorg/threeten/bp/format/c$j;

    .line 15
    .line 16
    sget-object v1, Lorg/threeten/bp/format/h;->NOT_NEGATIVE:Lorg/threeten/bp/format/h;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p1, p2, p2, v1}, Lorg/threeten/bp/format/c$j;-><init>(Lorg/threeten/bp/temporal/h;IILorg/threeten/bp/format/h;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/c;->j(Lorg/threeten/bp/format/c$j;)Lorg/threeten/bp/format/c;

    .line 23
    return-object p0

    .line 24
    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    const-string v1, "The width must be from 1 to 19 inclusive but was "

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p1
.end method

.method public l(Lorg/threeten/bp/temporal/h;IILorg/threeten/bp/format/h;)Lorg/threeten/bp/format/c;
    .locals 2

    .line 1
    .line 2
    if-ne p2, p3, :cond_0

    .line 3
    .line 4
    sget-object v0, Lorg/threeten/bp/format/h;->NOT_NEGATIVE:Lorg/threeten/bp/format/h;

    .line 5
    .line 6
    if-ne p4, v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p3}, Lorg/threeten/bp/format/c;->k(Lorg/threeten/bp/temporal/h;I)Lorg/threeten/bp/format/c;

    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    .line 13
    :cond_0
    const-string v0, "field"

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    const-string v0, "signStyle"

    .line 19
    .line 20
    .line 21
    invoke-static {p4, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    const/4 v0, 0x1

    .line 23
    .line 24
    if-lt p2, v0, :cond_3

    .line 25
    .line 26
    const/16 v1, 0x13

    .line 27
    .line 28
    if-gt p2, v1, :cond_3

    .line 29
    .line 30
    if-lt p3, v0, :cond_2

    .line 31
    .line 32
    if-gt p3, v1, :cond_2

    .line 33
    .line 34
    if-lt p3, p2, :cond_1

    .line 35
    .line 36
    new-instance v0, Lorg/threeten/bp/format/c$j;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, p1, p2, p3, p4}, Lorg/threeten/bp/format/c$j;-><init>(Lorg/threeten/bp/temporal/h;IILorg/threeten/bp/format/h;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/c;->j(Lorg/threeten/bp/format/c$j;)Lorg/threeten/bp/format/c;

    .line 43
    return-object p0

    .line 44
    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 46
    .line 47
    new-instance p4, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    const-string v0, "The maximum width must exceed or equal the minimum width but "

    .line 53
    .line 54
    .line 55
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string p3, " < "

    .line 61
    .line 62
    .line 63
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p2

    .line 71
    .line 72
    .line 73
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 74
    throw p1

    .line 75
    .line 76
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 77
    .line 78
    new-instance p2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    const-string p4, "The maximum width must be from 1 to 19 inclusive but was "

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object p2

    .line 94
    .line 95
    .line 96
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 97
    throw p1

    .line 98
    .line 99
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 100
    .line 101
    new-instance p3, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    const-string p4, "The minimum width must be from 1 to 19 inclusive but was "

    .line 107
    .line 108
    .line 109
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object p2

    .line 117
    .line 118
    .line 119
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 120
    throw p1
.end method

.method public m()Lorg/threeten/bp/format/c;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/format/c$p;

    .line 3
    .line 4
    sget-object v1, Lorg/threeten/bp/format/c;->QUERY_REGION_ONLY:Lorg/threeten/bp/temporal/j;

    .line 5
    .line 6
    const-string v2, "ZoneRegionId()"

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/format/c$p;-><init>(Lorg/threeten/bp/temporal/j;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/c;->d(Lorg/threeten/bp/format/c$g;)I

    .line 13
    return-object p0
.end method

.method public n()Lorg/threeten/bp/format/c;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/format/c;->active:Lorg/threeten/bp/format/c;

    .line 3
    .line 4
    iget-object v1, v0, Lorg/threeten/bp/format/c;->parent:Lorg/threeten/bp/format/c;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    iget-object v0, v0, Lorg/threeten/bp/format/c;->printerParsers:Ljava/util/List;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    move-result v0

    .line 13
    .line 14
    if-lez v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Lorg/threeten/bp/format/c$f;

    .line 17
    .line 18
    iget-object v1, p0, Lorg/threeten/bp/format/c;->active:Lorg/threeten/bp/format/c;

    .line 19
    .line 20
    iget-object v2, v1, Lorg/threeten/bp/format/c;->printerParsers:Ljava/util/List;

    .line 21
    .line 22
    iget-boolean v1, v1, Lorg/threeten/bp/format/c;->optional:Z

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v2, v1}, Lorg/threeten/bp/format/c$f;-><init>(Ljava/util/List;Z)V

    .line 26
    .line 27
    iget-object v1, p0, Lorg/threeten/bp/format/c;->active:Lorg/threeten/bp/format/c;

    .line 28
    .line 29
    iget-object v1, v1, Lorg/threeten/bp/format/c;->parent:Lorg/threeten/bp/format/c;

    .line 30
    .line 31
    iput-object v1, p0, Lorg/threeten/bp/format/c;->active:Lorg/threeten/bp/format/c;

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/c;->d(Lorg/threeten/bp/format/c$g;)I

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/format/c;->active:Lorg/threeten/bp/format/c;

    .line 38
    .line 39
    iget-object v0, v0, Lorg/threeten/bp/format/c;->parent:Lorg/threeten/bp/format/c;

    .line 40
    .line 41
    iput-object v0, p0, Lorg/threeten/bp/format/c;->active:Lorg/threeten/bp/format/c;

    .line 42
    :goto_0
    return-object p0

    .line 43
    .line 44
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string v1, "Cannot call optionalEnd() as there was no previous call to optionalStart()"

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    throw v0
.end method

.method public o()Lorg/threeten/bp/format/c;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/format/c;->active:Lorg/threeten/bp/format/c;

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    iput v1, v0, Lorg/threeten/bp/format/c;->valueParserIndex:I

    .line 6
    .line 7
    new-instance v1, Lorg/threeten/bp/format/c;

    .line 8
    const/4 v2, 0x1

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v0, v2}, Lorg/threeten/bp/format/c;-><init>(Lorg/threeten/bp/format/c;Z)V

    .line 12
    .line 13
    iput-object v1, p0, Lorg/threeten/bp/format/c;->active:Lorg/threeten/bp/format/c;

    .line 14
    return-object p0
.end method

.method public p()Lorg/threeten/bp/format/c;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/format/c$m;->INSENSITIVE:Lorg/threeten/bp/format/c$m;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/c;->d(Lorg/threeten/bp/format/c$g;)I

    .line 6
    return-object p0
.end method

.method public q()Lorg/threeten/bp/format/c;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/format/c$m;->SENSITIVE:Lorg/threeten/bp/format/c$m;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/c;->d(Lorg/threeten/bp/format/c$g;)I

    .line 6
    return-object p0
.end method

.method public r()Lorg/threeten/bp/format/c;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/format/c$m;->LENIENT:Lorg/threeten/bp/format/c$m;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/c;->d(Lorg/threeten/bp/format/c$g;)I

    .line 6
    return-object p0
.end method

.method public s()Lorg/threeten/bp/format/b;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lorg/threeten/bp/format/c;->t(Ljava/util/Locale;)Lorg/threeten/bp/format/b;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public t(Ljava/util/Locale;)Lorg/threeten/bp/format/b;
    .locals 9

    .line 1
    .line 2
    const-string v0, "locale"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    :goto_0
    iget-object v0, p0, Lorg/threeten/bp/format/c;->active:Lorg/threeten/bp/format/c;

    .line 8
    .line 9
    iget-object v0, v0, Lorg/threeten/bp/format/c;->parent:Lorg/threeten/bp/format/c;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/threeten/bp/format/c;->n()Lorg/threeten/bp/format/c;

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    new-instance v2, Lorg/threeten/bp/format/c$f;

    .line 18
    .line 19
    iget-object v0, p0, Lorg/threeten/bp/format/c;->printerParsers:Ljava/util/List;

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, v0, v1}, Lorg/threeten/bp/format/c$f;-><init>(Ljava/util/List;Z)V

    .line 24
    .line 25
    new-instance v0, Lorg/threeten/bp/format/b;

    .line 26
    .line 27
    sget-object v4, Lorg/threeten/bp/format/f;->STANDARD:Lorg/threeten/bp/format/f;

    .line 28
    .line 29
    sget-object v5, Lorg/threeten/bp/format/g;->SMART:Lorg/threeten/bp/format/g;

    .line 30
    const/4 v6, 0x0

    .line 31
    const/4 v7, 0x0

    .line 32
    const/4 v8, 0x0

    .line 33
    move-object v1, v0

    .line 34
    move-object v3, p1

    .line 35
    .line 36
    .line 37
    invoke-direct/range {v1 .. v8}, Lorg/threeten/bp/format/b;-><init>(Lorg/threeten/bp/format/c$f;Ljava/util/Locale;Lorg/threeten/bp/format/f;Lorg/threeten/bp/format/g;Ljava/util/Set;Lorg/threeten/bp/chrono/h;Lorg/threeten/bp/r;)V

    .line 38
    return-object v0
.end method

.method u(Lorg/threeten/bp/format/g;)Lorg/threeten/bp/format/b;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/format/c;->s()Lorg/threeten/bp/format/b;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lorg/threeten/bp/format/b;->i(Lorg/threeten/bp/format/g;)Lorg/threeten/bp/format/b;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
