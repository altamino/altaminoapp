.class public Lcom/narvii/item/property/ItemPropertyList;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field isWhiteTextColor:Z

.field props:Lcom/fasterxml/jackson/databind/JsonNode;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/item/property/ItemPropertyList;->isWhiteTextColor:Z

    .line 7
    return-void
.end method

.method private updateView()V
    .locals 13

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyList;->props:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 3
    .line 4
    if-eqz v0, :cond_9

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_9

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->size()I

    .line 14
    move-result v1

    .line 15
    .line 16
    if-lez v1, :cond_9

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 28
    move-result v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->size()I

    .line 32
    move-result v3

    .line 33
    const/4 v4, 0x0

    .line 34
    move v5, v4

    .line 35
    move v6, v5

    .line 36
    .line 37
    :goto_0
    if-ge v5, v3, :cond_8

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/databind/JsonNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 41
    move-result-object v7

    .line 42
    .line 43
    const-string v8, "value"

    .line 44
    .line 45
    .line 46
    filled-new-array {v8}, [Ljava/lang/String;

    .line 47
    move-result-object v8

    .line 48
    .line 49
    .line 50
    invoke-static {v7, v8}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object v8

    .line 52
    .line 53
    .line 54
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    move-result v8

    .line 56
    .line 57
    if-eqz v8, :cond_0

    .line 58
    goto :goto_4

    .line 59
    .line 60
    :cond_0
    :goto_1
    if-ge v6, v2, :cond_2

    .line 61
    .line 62
    add-int/lit8 v8, v6, 0x1

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 66
    move-result-object v6

    .line 67
    .line 68
    instance-of v9, v6, Lcom/narvii/item/property/ItemPropertyView;

    .line 69
    .line 70
    if-eqz v9, :cond_1

    .line 71
    .line 72
    check-cast v6, Lcom/narvii/item/property/ItemPropertyView;

    .line 73
    goto :goto_2

    .line 74
    :cond_1
    move v6, v8

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    const/4 v8, 0x0

    .line 77
    move-object v12, v8

    .line 78
    move v8, v6

    .line 79
    move-object v6, v12

    .line 80
    .line 81
    :goto_2
    if-nez v6, :cond_3

    .line 82
    .line 83
    .line 84
    const v6, 0x7f0d0455

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v6, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 88
    move-result-object v6

    .line 89
    .line 90
    check-cast v6, Lcom/narvii/item/property/ItemPropertyView;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    invoke-virtual {v6, v7}, Lcom/narvii/item/property/ItemPropertyView;->set(Lcom/fasterxml/jackson/databind/JsonNode;)V

    .line 97
    .line 98
    .line 99
    const v7, 0x7f0a0773

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    move-result-object v9

    .line 104
    .line 105
    instance-of v9, v9, Landroid/widget/TextView;

    .line 106
    .line 107
    .line 108
    const v10, -0x99999a

    .line 109
    const/4 v11, -0x1

    .line 110
    .line 111
    if-eqz v9, :cond_5

    .line 112
    .line 113
    .line 114
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 115
    move-result-object v7

    .line 116
    .line 117
    check-cast v7, Landroid/widget/TextView;

    .line 118
    .line 119
    iget-boolean v9, p0, Lcom/narvii/item/property/ItemPropertyList;->isWhiteTextColor:Z

    .line 120
    .line 121
    if-eqz v9, :cond_4

    .line 122
    move v9, v11

    .line 123
    goto :goto_3

    .line 124
    :cond_4
    move v9, v10

    .line 125
    .line 126
    .line 127
    :goto_3
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    .line 129
    .line 130
    :cond_5
    const v7, 0x7f0a0774

    .line 131
    .line 132
    .line 133
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 134
    move-result-object v9

    .line 135
    .line 136
    instance-of v9, v9, Landroid/widget/TextView;

    .line 137
    .line 138
    if-eqz v9, :cond_7

    .line 139
    .line 140
    .line 141
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 142
    move-result-object v6

    .line 143
    .line 144
    check-cast v6, Landroid/widget/TextView;

    .line 145
    .line 146
    iget-boolean v7, p0, Lcom/narvii/item/property/ItemPropertyList;->isWhiteTextColor:Z

    .line 147
    .line 148
    if-eqz v7, :cond_6

    .line 149
    move v10, v11

    .line 150
    .line 151
    .line 152
    :cond_6
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    :cond_7
    move v6, v8

    .line 154
    .line 155
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 156
    goto :goto_0

    .line 157
    .line 158
    :cond_8
    :goto_5
    if-ge v6, v2, :cond_a

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 162
    .line 163
    add-int/lit8 v2, v2, -0x1

    .line 164
    goto :goto_5

    .line 165
    .line 166
    .line 167
    :cond_9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 168
    :cond_a
    return-void
.end method


# virtual methods
.method public setItemProperties(Lcom/fasterxml/jackson/databind/JsonNode;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/item/property/ItemPropertyList;->props:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 1
    invoke-direct {p0}, Lcom/narvii/item/property/ItemPropertyList;->updateView()V

    return-void
.end method

.method public setItemProperties(Lcom/fasterxml/jackson/databind/JsonNode;Z)V
    .locals 0

    iput-boolean p2, p0, Lcom/narvii/item/property/ItemPropertyList;->isWhiteTextColor:Z

    .line 2
    invoke-virtual {p0, p1}, Lcom/narvii/item/property/ItemPropertyList;->setItemProperties(Lcom/fasterxml/jackson/databind/JsonNode;)V

    return-void
.end method
