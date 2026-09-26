.class public Lcom/narvii/item/property/ItemPropertyView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field static final DATE_SERVER:Ljava/text/DateFormat;

.field static final DATE_VIEW:Ljava/text/DateFormat;


# instance fields
.field layoutId:I

.field prop:Lcom/fasterxml/jackson/databind/JsonNode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 3
    .line 4
    const-string/jumbo v1, "yyyy-MM-dd"

    .line 5
    .line 6
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 10
    .line 11
    sput-object v0, Lcom/narvii/item/property/ItemPropertyView;->DATE_SERVER:Ljava/text/DateFormat;

    .line 12
    const/4 v0, 0x1

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    sput-object v0, Lcom/narvii/item/property/ItemPropertyView;->DATE_VIEW:Ljava/text/DateFormat;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    return-void
.end method

.method private setLayoutId(I)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iput p1, p0, Lcom/narvii/item/property/ItemPropertyView;->layoutId:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    iget v0, p0, Lcom/narvii/item/property/ItemPropertyView;->layoutId:I

    .line 11
    .line 12
    if-eq p1, v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 28
    .line 29
    iput p1, p0, Lcom/narvii/item/property/ItemPropertyView;->layoutId:I

    .line 30
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public set(Lcom/fasterxml/jackson/databind/JsonNode;)V
    .locals 7

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/item/property/ItemPropertyView;->prop:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 3
    .line 4
    const-string/jumbo v0, "type"

    .line 5
    .line 6
    .line 7
    filled-new-array {v0}, [Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    const-string/jumbo v2, "title"

    .line 15
    .line 16
    .line 17
    filled-new-array {v2}, [Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v2}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    const-string/jumbo v3, "value"

    .line 25
    .line 26
    .line 27
    filled-new-array {v3}, [Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v3}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v3

    .line 33
    .line 34
    .line 35
    filled-new-array {v0}, [Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    const-string v0, "date"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result p1

    .line 47
    .line 48
    .line 49
    const v0, 0x7f0d0454

    .line 50
    .line 51
    .line 52
    const v4, 0x7f0a0774

    .line 53
    .line 54
    if-eqz p1, :cond_0

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, v0}, Lcom/narvii/item/property/ItemPropertyView;->setLayoutId(I)V

    .line 58
    .line 59
    :try_start_0
    sget-object p1, Lcom/narvii/item/property/ItemPropertyView;->DATE_VIEW:Ljava/text/DateFormat;

    .line 60
    .line 61
    sget-object v0, Lcom/narvii/item/property/ItemPropertyView;->DATE_SERVER:Ljava/text/DateFormat;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 69
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    :catch_0
    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    check-cast p1, Landroid/widget/TextView;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    goto :goto_2

    .line 80
    .line 81
    :cond_0
    const-string p1, "levelHeart"

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    move-result v5

    .line 86
    .line 87
    const-string v6, "levelStar"

    .line 88
    .line 89
    if-nez v5, :cond_2

    .line 90
    .line 91
    .line 92
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    move-result v5

    .line 94
    .line 95
    if-nez v5, :cond_2

    .line 96
    .line 97
    const-string v5, "levelCost"

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    move-result v5

    .line 102
    .line 103
    if-eqz v5, :cond_1

    .line 104
    goto :goto_0

    .line 105
    .line 106
    .line 107
    :cond_1
    invoke-direct {p0, v0}, Lcom/narvii/item/property/ItemPropertyView;->setLayoutId(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 111
    move-result-object p1

    .line 112
    .line 113
    check-cast p1, Landroid/widget/TextView;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    goto :goto_2

    .line 118
    .line 119
    .line 120
    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    move-result p1

    .line 122
    .line 123
    if-eqz p1, :cond_3

    .line 124
    .line 125
    .line 126
    const p1, 0x7f0d0452

    .line 127
    .line 128
    .line 129
    invoke-direct {p0, p1}, Lcom/narvii/item/property/ItemPropertyView;->setLayoutId(I)V

    .line 130
    goto :goto_1

    .line 131
    .line 132
    .line 133
    :cond_3
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    move-result p1

    .line 135
    .line 136
    if-eqz p1, :cond_4

    .line 137
    .line 138
    .line 139
    const p1, 0x7f0d0453

    .line 140
    .line 141
    .line 142
    invoke-direct {p0, p1}, Lcom/narvii/item/property/ItemPropertyView;->setLayoutId(I)V

    .line 143
    goto :goto_1

    .line 144
    .line 145
    .line 146
    :cond_4
    const p1, 0x7f0d0451

    .line 147
    .line 148
    .line 149
    invoke-direct {p0, p1}, Lcom/narvii/item/property/ItemPropertyView;->setLayoutId(I)V

    .line 150
    .line 151
    .line 152
    :goto_1
    :try_start_1
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 153
    move-result p1

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 157
    move-result-object v1

    .line 158
    .line 159
    check-cast v1, Lcom/narvii/widget/FontAwesomeRatingBar;

    .line 160
    .line 161
    .line 162
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 163
    move-result p1

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, p1}, Lcom/narvii/widget/FontAwesomeRatingBar;->setRating(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 167
    goto :goto_2

    .line 168
    .line 169
    .line 170
    :catch_1
    invoke-direct {p0, v0}, Lcom/narvii/item/property/ItemPropertyView;->setLayoutId(I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 174
    move-result-object p1

    .line 175
    .line 176
    check-cast p1, Landroid/widget/TextView;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    .line 181
    .line 182
    :goto_2
    const p1, 0x7f0a0773

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 186
    move-result-object p1

    .line 187
    .line 188
    check-cast p1, Landroid/widget/TextView;

    .line 189
    .line 190
    if-eqz p1, :cond_5

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    :cond_5
    return-void
.end method
