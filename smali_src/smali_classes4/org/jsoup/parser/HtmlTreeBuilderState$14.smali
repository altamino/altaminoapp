.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$14;
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

.method private anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method private handleMissingTr(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "tr"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1
.end method


# virtual methods
.method process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isStartTag()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->normalName()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    const-string v2, "template"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v2

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    const-string v2, "th"

    .line 29
    .line 30
    const-string v3, "td"

    .line 31
    .line 32
    .line 33
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v2}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 38
    move-result v2

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearStackToTableRowContext()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 47
    .line 48
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilderState;->InCell:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertMarkerToFormattingElements()V

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_1
    const-string v2, "caption"

    .line 58
    .line 59
    const-string v3, "col"

    .line 60
    .line 61
    const-string v4, "colgroup"

    .line 62
    .line 63
    const-string v5, "tbody"

    .line 64
    .line 65
    const-string v6, "tfoot"

    .line 66
    .line 67
    const-string v7, "thead"

    .line 68
    .line 69
    const-string v8, "tr"

    .line 70
    .line 71
    .line 72
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    .line 76
    invoke-static {v1, v0}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 77
    move-result v0

    .line 78
    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    .line 82
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$14;->handleMissingTr(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z

    .line 83
    move-result p1

    .line 84
    return p1

    .line 85
    .line 86
    .line 87
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$14;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 88
    move-result p1

    .line 89
    return p1

    .line 90
    .line 91
    .line 92
    :cond_3
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isEndTag()Z

    .line 93
    move-result v0

    .line 94
    .line 95
    if-eqz v0, :cond_a

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    .line 99
    move-result-object v0

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->normalName()Ljava/lang/String;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    const-string v1, "tr"

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    move-result v2

    .line 110
    const/4 v3, 0x0

    .line 111
    .line 112
    if-eqz v2, :cond_5

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->inTableScope(Ljava/lang/String;)Z

    .line 116
    move-result p1

    .line 117
    .line 118
    if-nez p1, :cond_4

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 122
    return v3

    .line 123
    .line 124
    .line 125
    :cond_4
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearStackToTableRowContext()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    .line 129
    .line 130
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTableBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 134
    :goto_0
    const/4 p1, 0x1

    .line 135
    return p1

    .line 136
    .line 137
    :cond_5
    const-string v2, "table"

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    move-result v2

    .line 142
    .line 143
    if-eqz v2, :cond_6

    .line 144
    .line 145
    .line 146
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$14;->handleMissingTr(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z

    .line 147
    move-result p1

    .line 148
    return p1

    .line 149
    .line 150
    :cond_6
    const-string v2, "tfoot"

    .line 151
    .line 152
    const-string v4, "thead"

    .line 153
    .line 154
    const-string v5, "tbody"

    .line 155
    .line 156
    .line 157
    filled-new-array {v5, v2, v4}, [Ljava/lang/String;

    .line 158
    move-result-object v2

    .line 159
    .line 160
    .line 161
    invoke-static {v0, v2}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 162
    move-result v2

    .line 163
    .line 164
    if-eqz v2, :cond_8

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->inTableScope(Ljava/lang/String;)Z

    .line 168
    move-result v0

    .line 169
    .line 170
    if-nez v0, :cond_7

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 174
    return v3

    .line 175
    .line 176
    .line 177
    :cond_7
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 178
    .line 179
    .line 180
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 181
    move-result p1

    .line 182
    return p1

    .line 183
    .line 184
    :cond_8
    const-string v4, "body"

    .line 185
    .line 186
    const-string v5, "caption"

    .line 187
    .line 188
    const-string v6, "col"

    .line 189
    .line 190
    const-string v7, "colgroup"

    .line 191
    .line 192
    const-string v8, "html"

    .line 193
    .line 194
    const-string v9, "td"

    .line 195
    .line 196
    const-string v10, "th"

    .line 197
    .line 198
    .line 199
    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    .line 200
    move-result-object v1

    .line 201
    .line 202
    .line 203
    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 204
    move-result v0

    .line 205
    .line 206
    if-eqz v0, :cond_9

    .line 207
    .line 208
    .line 209
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 210
    return v3

    .line 211
    .line 212
    .line 213
    :cond_9
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$14;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 214
    move-result p1

    .line 215
    return p1

    .line 216
    .line 217
    .line 218
    :cond_a
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$14;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 219
    move-result p1

    .line 220
    return p1
.end method
