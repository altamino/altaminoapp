.class public Lcom/narvii/item/property/ItemPropertyEditList;
.super Lcom/narvii/widget/DragSortLinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/DragSortLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    return-void
.end method


# virtual methods
.method public addNewProperty()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    move v3, v2

    .line 8
    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    move-result-object v4

    .line 14
    .line 15
    instance-of v4, v4, Lcom/narvii/item/property/ItemPropertyEditor;

    .line 16
    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    add-int/lit8 v3, v3, 0x1

    .line 20
    .line 21
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_1
    const/16 v0, 0x14

    .line 25
    .line 26
    if-lt v3, v0, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    const v3, 0x7f120ee6

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 49
    return-void

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    .line 60
    const v2, 0x7f0d0450

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    check-cast v0, Lcom/narvii/item/property/ItemPropertyEditor;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p0}, Lcom/narvii/item/property/ItemPropertyEditor;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    .line 74
    new-instance v1, Lcom/narvii/item/property/ItemPropertyEditList$1;

    .line 75
    .line 76
    .line 77
    invoke-direct {v1, p0, v0}, Lcom/narvii/item/property/ItemPropertyEditList$1;-><init>(Lcom/narvii/item/property/ItemPropertyEditList;Lcom/narvii/item/property/ItemPropertyEditor;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method

.method public get()Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    :goto_0
    if-ge v2, v1, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    move-result-object v3

    .line 16
    .line 17
    instance-of v4, v3, Lcom/narvii/item/property/ItemPropertyEditor;

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    check-cast v3, Lcom/narvii/item/property/ItemPropertyEditor;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Lcom/narvii/item/property/ItemPropertyEditor;->getItemProperty()Lcom/fasterxml/jackson/databind/JsonNode;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 29
    .line 30
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->size()I

    .line 35
    move-result v1

    .line 36
    .line 37
    if-nez v1, :cond_2

    .line 38
    const/4 v0, 0x0

    .line 39
    :cond_2
    return-object v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    .line 1
    .line 2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    new-array v2, v1, [Ljava/lang/CharSequence;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v3

    .line 17
    .line 18
    .line 19
    const v4, 0x7f120fd5

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 24
    const/4 v4, 0x0

    .line 25
    .line 26
    aput-object v3, v2, v4

    .line 27
    .line 28
    new-instance v3, Lcom/narvii/item/property/ItemPropertyEditList$2;

    .line 29
    .line 30
    .line 31
    invoke-direct {v3, p0, p1}, Lcom/narvii/item/property/ItemPropertyEditList$2;-><init>(Lcom/narvii/item/property/ItemPropertyEditList;Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 38
    return v1
.end method

.method public set(Lcom/fasterxml/jackson/databind/JsonNode;)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->size()I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    const v3, 0x7f120332

    .line 29
    .line 30
    new-array v4, v0, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v3, v4}, Lcom/narvii/util/StringUtils;->getStringForCommunityLocal(Lcom/narvii/app/NVContext;I[Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    const-string v4, "title"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v4, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 40
    .line 41
    const-string v3, "value"

    .line 42
    .line 43
    const-string v5, ""

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v3, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 47
    .line 48
    const-string v6, "levelStar"

    .line 49
    .line 50
    const-string v7, "type"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v7, v6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    .line 63
    const v6, 0x7f120333

    .line 64
    .line 65
    new-array v8, v0, [Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    invoke-static {p1, v6, v8}, Lcom/narvii/util/StringUtils;->getStringForCommunityLocal(Lcom/narvii/app/NVContext;I[Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object v6

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v4, v6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v3, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 76
    .line 77
    const-string v6, "text"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v7, v6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 84
    .line 85
    .line 86
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 87
    move-result-object v2

    .line 88
    .line 89
    .line 90
    const v8, 0x7f120331

    .line 91
    .line 92
    new-array v9, v0, [Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    invoke-static {p1, v8, v9}, Lcom/narvii/util/StringUtils;->getStringForCommunityLocal(Lcom/narvii/app/NVContext;I[Ljava/lang/String;)Ljava/lang/String;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v4, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v3, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, v7, v6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 109
    move-object p1, v1

    .line 110
    .line 111
    .line 112
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 113
    move-result-object v1

    .line 114
    .line 115
    .line 116
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 117
    move-result-object v1

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 121
    move-result v2

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->size()I

    .line 125
    move-result v3

    .line 126
    move v4, v0

    .line 127
    move v5, v4

    .line 128
    .line 129
    :goto_0
    if-ge v4, v3, :cond_5

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 133
    move-result-object v6

    .line 134
    .line 135
    :goto_1
    if-ge v5, v2, :cond_3

    .line 136
    .line 137
    add-int/lit8 v7, v5, 0x1

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 141
    move-result-object v5

    .line 142
    .line 143
    instance-of v8, v5, Lcom/narvii/item/property/ItemPropertyEditor;

    .line 144
    .line 145
    if-eqz v8, :cond_2

    .line 146
    .line 147
    check-cast v5, Lcom/narvii/item/property/ItemPropertyEditor;

    .line 148
    goto :goto_2

    .line 149
    :cond_2
    move v5, v7

    .line 150
    goto :goto_1

    .line 151
    :cond_3
    const/4 v7, 0x0

    .line 152
    move-object v10, v7

    .line 153
    move v7, v5

    .line 154
    move-object v5, v10

    .line 155
    .line 156
    :goto_2
    if-nez v5, :cond_4

    .line 157
    .line 158
    .line 159
    const v5, 0x7f0d0450

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, v5, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 163
    move-result-object v5

    .line 164
    .line 165
    check-cast v5, Lcom/narvii/item/property/ItemPropertyEditor;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v5, p0}, Lcom/narvii/item/property/ItemPropertyEditor;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 172
    .line 173
    .line 174
    :cond_4
    invoke-virtual {v5, v6}, Lcom/narvii/item/property/ItemPropertyEditor;->setItemProperty(Lcom/fasterxml/jackson/databind/JsonNode;)V

    .line 175
    .line 176
    add-int/lit8 v4, v4, 0x1

    .line 177
    move v5, v7

    .line 178
    goto :goto_0

    .line 179
    .line 180
    :cond_5
    :goto_3
    if-ge v5, v2, :cond_6

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 184
    .line 185
    add-int/lit8 v2, v2, -0x1

    .line 186
    goto :goto_3

    .line 187
    :cond_6
    return-void
.end method

.method public validate()Z
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    .line 8
    :goto_0
    if-ge v2, v0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object v3

    .line 13
    .line 14
    instance-of v4, v3, Lcom/narvii/item/property/ItemPropertyEditor;

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    check-cast v3, Lcom/narvii/item/property/ItemPropertyEditor;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/narvii/item/property/ItemPropertyEditor;->validate()Z

    .line 22
    move-result v3

    .line 23
    .line 24
    if-nez v3, :cond_0

    .line 25
    return v1

    .line 26
    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x1

    .line 30
    return v0
.end method
