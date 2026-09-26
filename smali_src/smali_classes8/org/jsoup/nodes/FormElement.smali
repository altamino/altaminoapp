.class public Lorg/jsoup/nodes/FormElement;
.super Lorg/jsoup/nodes/Element;
.source "SourceFile"


# instance fields
.field private final elements:Lorg/jsoup/select/Elements;


# direct methods
.method public constructor <init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    .line 4
    .line 5
    new-instance p1, Lorg/jsoup/select/Elements;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1}, Lorg/jsoup/select/Elements;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lorg/jsoup/nodes/FormElement;->elements:Lorg/jsoup/select/Elements;

    .line 11
    return-void
.end method


# virtual methods
.method public addElement(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/FormElement;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/jsoup/nodes/FormElement;->elements:Lorg/jsoup/select/Elements;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 6
    return-object p0
.end method

.method public elements()Lorg/jsoup/select/Elements;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/FormElement;->elements:Lorg/jsoup/select/Elements;

    return-object v0
.end method

.method public formData()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jsoup/Connection$KeyVal;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lorg/jsoup/nodes/FormElement;->elements:Lorg/jsoup/select/Elements;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    .line 17
    if-eqz v2, :cond_9

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    check-cast v2, Lorg/jsoup/nodes/Element;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Lorg/jsoup/parser/Tag;->isFormSubmittable()Z

    .line 31
    move-result v3

    .line 32
    .line 33
    if-nez v3, :cond_1

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_1
    const-string v3, "disabled"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v3}, Lorg/jsoup/nodes/Node;->hasAttr(Ljava/lang/String;)Z

    .line 40
    move-result v3

    .line 41
    .line 42
    if-eqz v3, :cond_2

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_2
    const-string v3, "name"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v3}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 53
    move-result v4

    .line 54
    .line 55
    if-nez v4, :cond_3

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_3
    const-string v4, "type"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v4}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object v4

    .line 63
    .line 64
    const-string v5, "select"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    .line 68
    move-result-object v6

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    move-result v5

    .line 73
    .line 74
    if-eqz v5, :cond_5

    .line 75
    .line 76
    const-string v4, "option[selected]"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v4}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 80
    move-result-object v4

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 84
    move-result-object v4

    .line 85
    const/4 v5, 0x0

    .line 86
    .line 87
    .line 88
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    move-result v6

    .line 90
    .line 91
    if-eqz v6, :cond_4

    .line 92
    .line 93
    .line 94
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    move-result-object v5

    .line 96
    .line 97
    check-cast v5, Lorg/jsoup/nodes/Element;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->val()Ljava/lang/String;

    .line 101
    move-result-object v5

    .line 102
    .line 103
    .line 104
    invoke-static {v3, v5}, Lorg/jsoup/helper/HttpConnection$KeyVal;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/helper/HttpConnection$KeyVal;

    .line 105
    move-result-object v5

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    const/4 v5, 0x1

    .line 110
    goto :goto_1

    .line 111
    .line 112
    :cond_4
    if-nez v5, :cond_0

    .line 113
    .line 114
    const-string v4, "option"

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v4}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 118
    move-result-object v2

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    .line 122
    move-result-object v2

    .line 123
    .line 124
    if-eqz v2, :cond_0

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->val()Ljava/lang/String;

    .line 128
    move-result-object v2

    .line 129
    .line 130
    .line 131
    invoke-static {v3, v2}, Lorg/jsoup/helper/HttpConnection$KeyVal;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/helper/HttpConnection$KeyVal;

    .line 132
    move-result-object v2

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    goto :goto_0

    .line 137
    .line 138
    :cond_5
    const-string v5, "checkbox"

    .line 139
    .line 140
    .line 141
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 142
    move-result v5

    .line 143
    .line 144
    if-nez v5, :cond_7

    .line 145
    .line 146
    const-string v5, "radio"

    .line 147
    .line 148
    .line 149
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 150
    move-result v4

    .line 151
    .line 152
    if-eqz v4, :cond_6

    .line 153
    goto :goto_2

    .line 154
    .line 155
    .line 156
    :cond_6
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->val()Ljava/lang/String;

    .line 157
    move-result-object v2

    .line 158
    .line 159
    .line 160
    invoke-static {v3, v2}, Lorg/jsoup/helper/HttpConnection$KeyVal;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/helper/HttpConnection$KeyVal;

    .line 161
    move-result-object v2

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    :cond_7
    :goto_2
    const-string v4, "checked"

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2, v4}, Lorg/jsoup/nodes/Node;->hasAttr(Ljava/lang/String;)Z

    .line 172
    move-result v4

    .line 173
    .line 174
    if-eqz v4, :cond_0

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->val()Ljava/lang/String;

    .line 178
    move-result-object v4

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 182
    move-result v4

    .line 183
    .line 184
    if-lez v4, :cond_8

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->val()Ljava/lang/String;

    .line 188
    move-result-object v2

    .line 189
    goto :goto_3

    .line 190
    .line 191
    :cond_8
    const-string v2, "on"

    .line 192
    .line 193
    .line 194
    :goto_3
    invoke-static {v3, v2}, Lorg/jsoup/helper/HttpConnection$KeyVal;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/helper/HttpConnection$KeyVal;

    .line 195
    move-result-object v2

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    goto/16 :goto_0

    .line 201
    :cond_9
    return-object v0
.end method

.method protected removeChild(Lorg/jsoup/nodes/Node;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->removeChild(Lorg/jsoup/nodes/Node;)V

    .line 4
    .line 5
    iget-object v0, p0, Lorg/jsoup/nodes/FormElement;->elements:Lorg/jsoup/select/Elements;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 9
    return-void
.end method

.method public submit()Lorg/jsoup/Connection;
    .locals 3

    .line 1
    .line 2
    const-string v0, "action"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Node;->hasAttr(Ljava/lang/String;)Z

    .line 6
    move-result v1

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Node;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    :goto_0
    const-string v1, "Could not determine a form action URL for submit. Ensure you set a base URI when parsing."

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    const-string v1, "method"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    const-string v2, "POST"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v1

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    sget-object v1, Lorg/jsoup/Connection$Method;->POST:Lorg/jsoup/Connection$Method;

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_1
    sget-object v1, Lorg/jsoup/Connection$Method;->GET:Lorg/jsoup/Connection$Method;

    .line 46
    .line 47
    .line 48
    :goto_1
    invoke-static {v0}, Lorg/jsoup/Jsoup;->connect(Ljava/lang/String;)Lorg/jsoup/Connection;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lorg/jsoup/nodes/FormElement;->formData()Ljava/util/List;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, v2}, Lorg/jsoup/Connection;->data(Ljava/util/Collection;)Lorg/jsoup/Connection;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    .line 60
    invoke-interface {v0, v1}, Lorg/jsoup/Connection;->method(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection;

    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method
