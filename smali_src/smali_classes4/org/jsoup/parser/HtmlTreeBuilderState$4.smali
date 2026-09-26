.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$4;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/HtmlTreeBuilderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    .line 5
    return-void
.end method

.method private anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "head"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 9
    move-result p1

    .line 10
    return p1
.end method


# virtual methods
.method process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$100(Lorg/jsoup/parser/Token;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asCharacter()Lorg/jsoup/parser/Token$Character;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Character;)V

    .line 15
    return v1

    .line 16
    .line 17
    :cond_0
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$24;->$SwitchMap$org$jsoup$parser$Token$TokenType:[I

    .line 18
    .line 19
    iget-object v2, p1, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 23
    move-result v2

    .line 24
    .line 25
    aget v0, v0, v2

    .line 26
    .line 27
    if-eq v0, v1, :cond_e

    .line 28
    const/4 v2, 0x2

    .line 29
    const/4 v3, 0x0

    .line 30
    .line 31
    if-eq v0, v2, :cond_d

    .line 32
    const/4 v2, 0x3

    .line 33
    .line 34
    const-string v4, "html"

    .line 35
    .line 36
    const-string v5, "head"

    .line 37
    .line 38
    if-eq v0, v2, :cond_4

    .line 39
    const/4 v2, 0x4

    .line 40
    .line 41
    if-eq v0, v2, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$4;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z

    .line 45
    move-result p1

    .line 46
    return p1

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->normalName()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result v2

    .line 59
    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    .line 64
    .line 65
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilderState;->AfterHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 69
    .line 70
    goto/16 :goto_0

    .line 71
    .line 72
    :cond_2
    const-string v1, "body"

    .line 73
    .line 74
    const-string v2, "br"

    .line 75
    .line 76
    .line 77
    filled-new-array {v1, v4, v2}, [Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    .line 81
    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 82
    move-result v0

    .line 83
    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    .line 87
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$4;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z

    .line 88
    move-result p1

    .line 89
    return p1

    .line 90
    .line 91
    .line 92
    :cond_3
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 93
    return v3

    .line 94
    .line 95
    .line 96
    :cond_4
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->normalName()Ljava/lang/String;

    .line 101
    move-result-object v2

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    move-result v4

    .line 106
    .line 107
    if-eqz v4, :cond_5

    .line 108
    .line 109
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 113
    move-result p1

    .line 114
    return p1

    .line 115
    .line 116
    :cond_5
    const-string v4, "command"

    .line 117
    .line 118
    const-string v6, "link"

    .line 119
    .line 120
    const-string v7, "base"

    .line 121
    .line 122
    const-string v8, "basefont"

    .line 123
    .line 124
    const-string v9, "bgsound"

    .line 125
    .line 126
    .line 127
    filled-new-array {v7, v8, v9, v4, v6}, [Ljava/lang/String;

    .line 128
    move-result-object v4

    .line 129
    .line 130
    .line 131
    invoke-static {v2, v4}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 132
    move-result v4

    .line 133
    .line 134
    if-eqz v4, :cond_6

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 138
    move-result-object p1

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    move-result v0

    .line 143
    .line 144
    if-eqz v0, :cond_f

    .line 145
    .line 146
    const-string v0, "href"

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Node;->hasAttr(Ljava/lang/String;)Z

    .line 150
    move-result v0

    .line 151
    .line 152
    if-eqz v0, :cond_f

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->maybeSetBaseUri(Lorg/jsoup/nodes/Element;)V

    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :cond_6
    const-string v4, "meta"

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    move-result v4

    .line 164
    .line 165
    if-eqz v4, :cond_7

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 169
    goto :goto_0

    .line 170
    .line 171
    :cond_7
    const-string v4, "title"

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    move-result v4

    .line 176
    .line 177
    if-eqz v4, :cond_8

    .line 178
    .line 179
    .line 180
    invoke-static {v0, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$200(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    .line 181
    goto :goto_0

    .line 182
    .line 183
    :cond_8
    const-string v4, "noframes"

    .line 184
    .line 185
    const-string v6, "style"

    .line 186
    .line 187
    .line 188
    filled-new-array {v4, v6}, [Ljava/lang/String;

    .line 189
    move-result-object v4

    .line 190
    .line 191
    .line 192
    invoke-static {v2, v4}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 193
    move-result v4

    .line 194
    .line 195
    if-eqz v4, :cond_9

    .line 196
    .line 197
    .line 198
    invoke-static {v0, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$300(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    .line 199
    goto :goto_0

    .line 200
    .line 201
    :cond_9
    const-string v4, "noscript"

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    move-result v4

    .line 206
    .line 207
    if-eqz v4, :cond_a

    .line 208
    .line 209
    .line 210
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 211
    .line 212
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilderState;->InHeadNoscript:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 216
    goto :goto_0

    .line 217
    .line 218
    :cond_a
    const-string v4, "script"

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    move-result v4

    .line 223
    .line 224
    if-eqz v4, :cond_b

    .line 225
    .line 226
    iget-object p1, p2, Lorg/jsoup/parser/TreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    .line 227
    .line 228
    sget-object v2, Lorg/jsoup/parser/TokeniserState;->ScriptData:Lorg/jsoup/parser/TokeniserState;

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, v2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->markInsertionMode()V

    .line 235
    .line 236
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilderState;->Text:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 237
    .line 238
    .line 239
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 243
    goto :goto_0

    .line 244
    .line 245
    .line 246
    :cond_b
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 247
    move-result v0

    .line 248
    .line 249
    if-eqz v0, :cond_c

    .line 250
    .line 251
    .line 252
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 253
    return v3

    .line 254
    .line 255
    .line 256
    :cond_c
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$4;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z

    .line 257
    move-result p1

    .line 258
    return p1

    .line 259
    .line 260
    .line 261
    :cond_d
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 262
    return v3

    .line 263
    .line 264
    .line 265
    :cond_e
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asComment()Lorg/jsoup/parser/Token$Comment;

    .line 266
    move-result-object p1

    .line 267
    .line 268
    .line 269
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Comment;)V

    .line 270
    :cond_f
    :goto_0
    return v1
.end method
