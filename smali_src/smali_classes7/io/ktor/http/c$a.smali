.class public final Lio/ktor/http/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static final Any:Lio/ktor/http/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Atom:Lio/ktor/http/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Cbor:Lio/ktor/http/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Docx:Lio/ktor/http/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FormUrlEncoded:Lio/ktor/http/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final GZip:Lio/ktor/http/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final HalJson:Lio/ktor/http/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lio/ktor/http/c$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final JavaScript:Lio/ktor/http/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Json:Lio/ktor/http/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final OctetStream:Lio/ktor/http/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Pdf:Lio/ktor/http/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Pptx:Lio/ktor/http/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ProblemJson:Lio/ktor/http/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ProblemXml:Lio/ktor/http/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ProtoBuf:Lio/ktor/http/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Rss:Lio/ktor/http/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Wasm:Lio/ktor/http/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Xlsx:Lio/ktor/http/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Xml:Lio/ktor/http/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Xml_Dtd:Lio/ktor/http/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Zip:Lio/ktor/http/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    .line 2
    new-instance v0, Lio/ktor/http/c$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lio/ktor/http/c$a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lio/ktor/http/c$a;->INSTANCE:Lio/ktor/http/c$a;

    .line 8
    .line 9
    new-instance v0, Lio/ktor/http/c;

    .line 10
    .line 11
    const-string v2, "application"

    .line 12
    .line 13
    const-string v3, "*"

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x4

    .line 16
    const/4 v6, 0x0

    .line 17
    move-object v1, v0

    .line 18
    .line 19
    .line 20
    invoke-direct/range {v1 .. v6}, Lio/ktor/http/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 21
    .line 22
    sput-object v0, Lio/ktor/http/c$a;->Any:Lio/ktor/http/c;

    .line 23
    .line 24
    new-instance v0, Lio/ktor/http/c;

    .line 25
    .line 26
    const-string v8, "application"

    .line 27
    .line 28
    const-string v9, "atom+xml"

    .line 29
    const/4 v10, 0x0

    .line 30
    const/4 v11, 0x4

    .line 31
    const/4 v12, 0x0

    .line 32
    move-object v7, v0

    .line 33
    .line 34
    .line 35
    invoke-direct/range {v7 .. v12}, Lio/ktor/http/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 36
    .line 37
    sput-object v0, Lio/ktor/http/c$a;->Atom:Lio/ktor/http/c;

    .line 38
    .line 39
    new-instance v0, Lio/ktor/http/c;

    .line 40
    .line 41
    const-string v2, "application"

    .line 42
    .line 43
    const-string v3, "cbor"

    .line 44
    move-object v1, v0

    .line 45
    .line 46
    .line 47
    invoke-direct/range {v1 .. v6}, Lio/ktor/http/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 48
    .line 49
    sput-object v0, Lio/ktor/http/c$a;->Cbor:Lio/ktor/http/c;

    .line 50
    .line 51
    new-instance v0, Lio/ktor/http/c;

    .line 52
    .line 53
    const-string v8, "application"

    .line 54
    .line 55
    const-string v9, "json"

    .line 56
    move-object v7, v0

    .line 57
    .line 58
    .line 59
    invoke-direct/range {v7 .. v12}, Lio/ktor/http/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 60
    .line 61
    sput-object v0, Lio/ktor/http/c$a;->Json:Lio/ktor/http/c;

    .line 62
    .line 63
    new-instance v0, Lio/ktor/http/c;

    .line 64
    .line 65
    const-string v2, "application"

    .line 66
    .line 67
    const-string v3, "hal+json"

    .line 68
    move-object v1, v0

    .line 69
    .line 70
    .line 71
    invoke-direct/range {v1 .. v6}, Lio/ktor/http/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 72
    .line 73
    sput-object v0, Lio/ktor/http/c$a;->HalJson:Lio/ktor/http/c;

    .line 74
    .line 75
    new-instance v0, Lio/ktor/http/c;

    .line 76
    .line 77
    const-string v8, "application"

    .line 78
    .line 79
    const-string v9, "javascript"

    .line 80
    move-object v7, v0

    .line 81
    .line 82
    .line 83
    invoke-direct/range {v7 .. v12}, Lio/ktor/http/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 84
    .line 85
    sput-object v0, Lio/ktor/http/c$a;->JavaScript:Lio/ktor/http/c;

    .line 86
    .line 87
    new-instance v0, Lio/ktor/http/c;

    .line 88
    .line 89
    const-string v2, "application"

    .line 90
    .line 91
    const-string v3, "octet-stream"

    .line 92
    move-object v1, v0

    .line 93
    .line 94
    .line 95
    invoke-direct/range {v1 .. v6}, Lio/ktor/http/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 96
    .line 97
    sput-object v0, Lio/ktor/http/c$a;->OctetStream:Lio/ktor/http/c;

    .line 98
    .line 99
    new-instance v0, Lio/ktor/http/c;

    .line 100
    .line 101
    const-string v8, "application"

    .line 102
    .line 103
    const-string v9, "rss+xml"

    .line 104
    move-object v7, v0

    .line 105
    .line 106
    .line 107
    invoke-direct/range {v7 .. v12}, Lio/ktor/http/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 108
    .line 109
    sput-object v0, Lio/ktor/http/c$a;->Rss:Lio/ktor/http/c;

    .line 110
    .line 111
    new-instance v0, Lio/ktor/http/c;

    .line 112
    .line 113
    const-string v2, "application"

    .line 114
    .line 115
    const-string v3, "xml"

    .line 116
    move-object v1, v0

    .line 117
    .line 118
    .line 119
    invoke-direct/range {v1 .. v6}, Lio/ktor/http/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 120
    .line 121
    sput-object v0, Lio/ktor/http/c$a;->Xml:Lio/ktor/http/c;

    .line 122
    .line 123
    new-instance v0, Lio/ktor/http/c;

    .line 124
    .line 125
    const-string v8, "application"

    .line 126
    .line 127
    const-string v9, "xml-dtd"

    .line 128
    move-object v7, v0

    .line 129
    .line 130
    .line 131
    invoke-direct/range {v7 .. v12}, Lio/ktor/http/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 132
    .line 133
    sput-object v0, Lio/ktor/http/c$a;->Xml_Dtd:Lio/ktor/http/c;

    .line 134
    .line 135
    new-instance v0, Lio/ktor/http/c;

    .line 136
    .line 137
    const-string v2, "application"

    .line 138
    .line 139
    const-string v3, "zip"

    .line 140
    move-object v1, v0

    .line 141
    .line 142
    .line 143
    invoke-direct/range {v1 .. v6}, Lio/ktor/http/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 144
    .line 145
    sput-object v0, Lio/ktor/http/c$a;->Zip:Lio/ktor/http/c;

    .line 146
    .line 147
    new-instance v0, Lio/ktor/http/c;

    .line 148
    .line 149
    const-string v8, "application"

    .line 150
    .line 151
    const-string v9, "gzip"

    .line 152
    move-object v7, v0

    .line 153
    .line 154
    .line 155
    invoke-direct/range {v7 .. v12}, Lio/ktor/http/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 156
    .line 157
    sput-object v0, Lio/ktor/http/c$a;->GZip:Lio/ktor/http/c;

    .line 158
    .line 159
    new-instance v0, Lio/ktor/http/c;

    .line 160
    .line 161
    const-string v2, "application"

    .line 162
    .line 163
    const-string v3, "x-www-form-urlencoded"

    .line 164
    move-object v1, v0

    .line 165
    .line 166
    .line 167
    invoke-direct/range {v1 .. v6}, Lio/ktor/http/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 168
    .line 169
    sput-object v0, Lio/ktor/http/c$a;->FormUrlEncoded:Lio/ktor/http/c;

    .line 170
    .line 171
    new-instance v0, Lio/ktor/http/c;

    .line 172
    .line 173
    const-string v8, "application"

    .line 174
    .line 175
    const-string v9, "pdf"

    .line 176
    move-object v7, v0

    .line 177
    .line 178
    .line 179
    invoke-direct/range {v7 .. v12}, Lio/ktor/http/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 180
    .line 181
    sput-object v0, Lio/ktor/http/c$a;->Pdf:Lio/ktor/http/c;

    .line 182
    .line 183
    new-instance v0, Lio/ktor/http/c;

    .line 184
    .line 185
    const-string v2, "application"

    .line 186
    .line 187
    const-string v3, "vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    .line 188
    move-object v1, v0

    .line 189
    .line 190
    .line 191
    invoke-direct/range {v1 .. v6}, Lio/ktor/http/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 192
    .line 193
    sput-object v0, Lio/ktor/http/c$a;->Xlsx:Lio/ktor/http/c;

    .line 194
    .line 195
    new-instance v0, Lio/ktor/http/c;

    .line 196
    .line 197
    const-string v8, "application"

    .line 198
    .line 199
    const-string v9, "vnd.openxmlformats-officedocument.wordprocessingml.document"

    .line 200
    move-object v7, v0

    .line 201
    .line 202
    .line 203
    invoke-direct/range {v7 .. v12}, Lio/ktor/http/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 204
    .line 205
    sput-object v0, Lio/ktor/http/c$a;->Docx:Lio/ktor/http/c;

    .line 206
    .line 207
    new-instance v0, Lio/ktor/http/c;

    .line 208
    .line 209
    const-string v2, "application"

    .line 210
    .line 211
    const-string v3, "vnd.openxmlformats-officedocument.presentationml.presentation"

    .line 212
    move-object v1, v0

    .line 213
    .line 214
    .line 215
    invoke-direct/range {v1 .. v6}, Lio/ktor/http/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 216
    .line 217
    sput-object v0, Lio/ktor/http/c$a;->Pptx:Lio/ktor/http/c;

    .line 218
    .line 219
    new-instance v0, Lio/ktor/http/c;

    .line 220
    .line 221
    const-string v8, "application"

    .line 222
    .line 223
    const-string v9, "protobuf"

    .line 224
    move-object v7, v0

    .line 225
    .line 226
    .line 227
    invoke-direct/range {v7 .. v12}, Lio/ktor/http/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 228
    .line 229
    sput-object v0, Lio/ktor/http/c$a;->ProtoBuf:Lio/ktor/http/c;

    .line 230
    .line 231
    new-instance v0, Lio/ktor/http/c;

    .line 232
    .line 233
    const-string v2, "application"

    .line 234
    .line 235
    const-string v3, "wasm"

    .line 236
    move-object v1, v0

    .line 237
    .line 238
    .line 239
    invoke-direct/range {v1 .. v6}, Lio/ktor/http/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 240
    .line 241
    sput-object v0, Lio/ktor/http/c$a;->Wasm:Lio/ktor/http/c;

    .line 242
    .line 243
    new-instance v0, Lio/ktor/http/c;

    .line 244
    .line 245
    const-string v8, "application"

    .line 246
    .line 247
    const-string v9, "problem+json"

    .line 248
    move-object v7, v0

    .line 249
    .line 250
    .line 251
    invoke-direct/range {v7 .. v12}, Lio/ktor/http/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 252
    .line 253
    sput-object v0, Lio/ktor/http/c$a;->ProblemJson:Lio/ktor/http/c;

    .line 254
    .line 255
    new-instance v0, Lio/ktor/http/c;

    .line 256
    .line 257
    const-string v2, "application"

    .line 258
    .line 259
    const-string v3, "problem+xml"

    .line 260
    move-object v1, v0

    .line 261
    .line 262
    .line 263
    invoke-direct/range {v1 .. v6}, Lio/ktor/http/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 264
    .line 265
    sput-object v0, Lio/ktor/http/c$a;->ProblemXml:Lio/ktor/http/c;

    .line 266
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a()Lio/ktor/http/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lio/ktor/http/c$a;->OctetStream:Lio/ktor/http/c;

    return-object v0
.end method

.method public final b()Lio/ktor/http/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lio/ktor/http/c$a;->ProtoBuf:Lio/ktor/http/c;

    return-object v0
.end method
