.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$5;
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
    .line 3
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 4
    .line 5
    new-instance v0, Lorg/jsoup/parser/Token$Character;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lorg/jsoup/parser/Token$Character;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lorg/jsoup/parser/Token$Character;->data(Ljava/lang/String;)Lorg/jsoup/parser/Token$Character;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Character;)V

    .line 20
    const/4 p1, 0x1

    .line 21
    return p1
.end method


# virtual methods
.method process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isDoctype()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isStartTag()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->normalName()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    const-string v1, "html"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    .line 38
    move-result p1

    .line 39
    return p1

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isEndTag()Z

    .line 43
    move-result v0

    .line 44
    .line 45
    const-string v1, "noscript"

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->normalName()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v0

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    .line 65
    .line 66
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilderState;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 70
    :goto_0
    const/4 p1, 0x1

    .line 71
    return p1

    .line 72
    .line 73
    .line 74
    :cond_2
    invoke-static {p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$100(Lorg/jsoup/parser/Token;)Z

    .line 75
    move-result v0

    .line 76
    .line 77
    if-nez v0, :cond_8

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isComment()Z

    .line 81
    move-result v0

    .line 82
    .line 83
    if-nez v0, :cond_8

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isStartTag()Z

    .line 87
    move-result v0

    .line 88
    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->normalName()Ljava/lang/String;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    const-string v2, "basefont"

    .line 100
    .line 101
    const-string v3, "bgsound"

    .line 102
    .line 103
    const-string v4, "link"

    .line 104
    .line 105
    const-string v5, "meta"

    .line 106
    .line 107
    const-string v6, "noframes"

    .line 108
    .line 109
    const-string v7, "style"

    .line 110
    .line 111
    .line 112
    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    .line 113
    move-result-object v2

    .line 114
    .line 115
    .line 116
    invoke-static {v0, v2}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 117
    move-result v0

    .line 118
    .line 119
    if-eqz v0, :cond_3

    .line 120
    goto :goto_1

    .line 121
    .line 122
    .line 123
    :cond_3
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isEndTag()Z

    .line 124
    move-result v0

    .line 125
    .line 126
    if-eqz v0, :cond_4

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    .line 130
    move-result-object v0

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->normalName()Ljava/lang/String;

    .line 134
    move-result-object v0

    .line 135
    .line 136
    const-string v2, "br"

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    move-result v0

    .line 141
    .line 142
    if-eqz v0, :cond_4

    .line 143
    .line 144
    .line 145
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$5;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 146
    move-result p1

    .line 147
    return p1

    .line 148
    .line 149
    .line 150
    :cond_4
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isStartTag()Z

    .line 151
    move-result v0

    .line 152
    .line 153
    if-eqz v0, :cond_5

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    .line 157
    move-result-object v0

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->normalName()Ljava/lang/String;

    .line 161
    move-result-object v0

    .line 162
    .line 163
    const-string v2, "head"

    .line 164
    .line 165
    .line 166
    filled-new-array {v2, v1}, [Ljava/lang/String;

    .line 167
    move-result-object v1

    .line 168
    .line 169
    .line 170
    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 171
    move-result v0

    .line 172
    .line 173
    if-nez v0, :cond_6

    .line 174
    .line 175
    .line 176
    :cond_5
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isEndTag()Z

    .line 177
    move-result v0

    .line 178
    .line 179
    if-eqz v0, :cond_7

    .line 180
    .line 181
    .line 182
    :cond_6
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 183
    const/4 p1, 0x0

    .line 184
    return p1

    .line 185
    .line 186
    .line 187
    :cond_7
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$5;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 188
    move-result p1

    .line 189
    return p1

    .line 190
    .line 191
    :cond_8
    :goto_1
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    .line 195
    move-result p1

    .line 196
    return p1
.end method
