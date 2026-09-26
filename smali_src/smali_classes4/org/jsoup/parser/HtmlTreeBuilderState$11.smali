.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$11;
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


# virtual methods
.method process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 12

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isEndTag()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    const-string v2, "caption"

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->normalName()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Tag;->normalName()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inTableScope(Ljava/lang/String;)Z

    .line 35
    move-result p1

    .line 36
    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 41
    return v1

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result p1

    .line 57
    .line 58
    if-nez p1, :cond_1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearFormattingElementsToLastMarker()V

    .line 68
    .line 69
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 73
    goto :goto_0

    .line 74
    .line 75
    .line 76
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isStartTag()Z

    .line 77
    move-result v0

    .line 78
    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->normalName()Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    const-string v3, "caption"

    .line 90
    .line 91
    const-string v4, "col"

    .line 92
    .line 93
    const-string v5, "colgroup"

    .line 94
    .line 95
    const-string v6, "tbody"

    .line 96
    .line 97
    const-string v7, "td"

    .line 98
    .line 99
    const-string v8, "tfoot"

    .line 100
    .line 101
    const-string v9, "th"

    .line 102
    .line 103
    const-string v10, "thead"

    .line 104
    .line 105
    const-string v11, "tr"

    .line 106
    .line 107
    .line 108
    filled-new-array/range {v3 .. v11}, [Ljava/lang/String;

    .line 109
    move-result-object v3

    .line 110
    .line 111
    .line 112
    invoke-static {v0, v3}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 113
    move-result v0

    .line 114
    .line 115
    if-nez v0, :cond_4

    .line 116
    .line 117
    .line 118
    :cond_3
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isEndTag()Z

    .line 119
    move-result v0

    .line 120
    .line 121
    if-eqz v0, :cond_6

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    .line 125
    move-result-object v0

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->normalName()Ljava/lang/String;

    .line 129
    move-result-object v0

    .line 130
    .line 131
    const-string v3, "table"

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    move-result v0

    .line 136
    .line 137
    if-eqz v0, :cond_6

    .line 138
    .line 139
    .line 140
    :cond_4
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 144
    move-result v0

    .line 145
    .line 146
    if-eqz v0, :cond_5

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 150
    move-result p1

    .line 151
    return p1

    .line 152
    :cond_5
    :goto_0
    const/4 p1, 0x1

    .line 153
    return p1

    .line 154
    .line 155
    .line 156
    :cond_6
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isEndTag()Z

    .line 157
    move-result v0

    .line 158
    .line 159
    if-eqz v0, :cond_7

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    .line 163
    move-result-object v0

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->normalName()Ljava/lang/String;

    .line 167
    move-result-object v0

    .line 168
    .line 169
    const-string v2, "body"

    .line 170
    .line 171
    const-string v3, "col"

    .line 172
    .line 173
    const-string v4, "colgroup"

    .line 174
    .line 175
    const-string v5, "html"

    .line 176
    .line 177
    const-string v6, "tbody"

    .line 178
    .line 179
    const-string v7, "td"

    .line 180
    .line 181
    const-string v8, "tfoot"

    .line 182
    .line 183
    const-string v9, "th"

    .line 184
    .line 185
    const-string v10, "thead"

    .line 186
    .line 187
    const-string v11, "tr"

    .line 188
    .line 189
    .line 190
    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    .line 191
    move-result-object v2

    .line 192
    .line 193
    .line 194
    invoke-static {v0, v2}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 195
    move-result v0

    .line 196
    .line 197
    if-eqz v0, :cond_7

    .line 198
    .line 199
    .line 200
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 201
    return v1

    .line 202
    .line 203
    :cond_7
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    .line 207
    move-result p1

    .line 208
    return p1
.end method
