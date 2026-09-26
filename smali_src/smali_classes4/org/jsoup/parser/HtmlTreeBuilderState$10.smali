.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$10;
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
    .locals 10

    .line 1
    .line 2
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$24;->$SwitchMap$org$jsoup$parser$Token$TokenType:[I

    .line 3
    .line 4
    iget-object v1, p1, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v1

    .line 9
    .line 10
    aget v0, v0, v1

    .line 11
    const/4 v1, 0x5

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    .line 15
    if-eq v0, v1, :cond_4

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getPendingTableCharacters()Ljava/util/List;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 23
    move-result v0

    .line 24
    .line 25
    if-lez v0, :cond_3

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getPendingTableCharacters()Ljava/util/List;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v1

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    check-cast v1, Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$500(Ljava/lang/String;)Z

    .line 49
    move-result v4

    .line 50
    .line 51
    if-nez v4, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    .line 58
    move-result-object v4

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    .line 62
    move-result-object v4

    .line 63
    .line 64
    const-string v5, "thead"

    .line 65
    .line 66
    const-string v6, "tr"

    .line 67
    .line 68
    const-string v7, "table"

    .line 69
    .line 70
    const-string v8, "tbody"

    .line 71
    .line 72
    const-string v9, "tfoot"

    .line 73
    .line 74
    .line 75
    filled-new-array {v7, v8, v9, v5, v6}, [Ljava/lang/String;

    .line 76
    move-result-object v5

    .line 77
    .line 78
    .line 79
    invoke-static {v4, v5}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 80
    move-result v4

    .line 81
    .line 82
    if-eqz v4, :cond_0

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->setFosterInserts(Z)V

    .line 86
    .line 87
    new-instance v4, Lorg/jsoup/parser/Token$Character;

    .line 88
    .line 89
    .line 90
    invoke-direct {v4}, Lorg/jsoup/parser/Token$Character;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, v1}, Lorg/jsoup/parser/Token$Character;->data(Ljava/lang/String;)Lorg/jsoup/parser/Token$Character;

    .line 94
    move-result-object v1

    .line 95
    .line 96
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, v1, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->setFosterInserts(Z)V

    .line 103
    goto :goto_0

    .line 104
    .line 105
    :cond_0
    new-instance v4, Lorg/jsoup/parser/Token$Character;

    .line 106
    .line 107
    .line 108
    invoke-direct {v4}, Lorg/jsoup/parser/Token$Character;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, v1}, Lorg/jsoup/parser/Token$Character;->data(Ljava/lang/String;)Lorg/jsoup/parser/Token$Character;

    .line 112
    move-result-object v1

    .line 113
    .line 114
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2, v1, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    .line 118
    goto :goto_0

    .line 119
    .line 120
    :cond_1
    new-instance v4, Lorg/jsoup/parser/Token$Character;

    .line 121
    .line 122
    .line 123
    invoke-direct {v4}, Lorg/jsoup/parser/Token$Character;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4, v1}, Lorg/jsoup/parser/Token$Character;->data(Ljava/lang/String;)Lorg/jsoup/parser/Token$Character;

    .line 127
    move-result-object v1

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Character;)V

    .line 131
    goto :goto_0

    .line 132
    .line 133
    .line 134
    :cond_2
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->newPendingTableCharacters()V

    .line 135
    .line 136
    .line 137
    :cond_3
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->originalState()Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 138
    move-result-object v0

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 145
    move-result p1

    .line 146
    return p1

    .line 147
    .line 148
    .line 149
    :cond_4
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asCharacter()Lorg/jsoup/parser/Token$Character;

    .line 150
    move-result-object p1

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Character;->getData()Ljava/lang/String;

    .line 154
    move-result-object v0

    .line 155
    .line 156
    .line 157
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$400()Ljava/lang/String;

    .line 158
    move-result-object v1

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    move-result v0

    .line 163
    .line 164
    if-eqz v0, :cond_5

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 168
    return v3

    .line 169
    .line 170
    .line 171
    :cond_5
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getPendingTableCharacters()Ljava/util/List;

    .line 172
    move-result-object p2

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Character;->getData()Ljava/lang/String;

    .line 176
    move-result-object p1

    .line 177
    .line 178
    .line 179
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    return v2
.end method
