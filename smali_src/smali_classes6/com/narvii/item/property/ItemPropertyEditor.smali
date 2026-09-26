.class public Lcom/narvii/item/property/ItemPropertyEditor;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field afterLongClick:Z

.field date:Landroid/widget/TextView;

.field dateValue:Ljava/util/Date;

.field final dividerHeight:I

.field edit:Landroid/widget/EditText;

.field gd:Landroid/view/GestureDetector;

.field legacyProtocolKey:Ljava/lang/String;

.field longClickListener:Landroid/view/View$OnLongClickListener;

.field final paint:Landroid/graphics/Paint;

.field prevEvent:Landroid/view/MotionEvent;

.field rating:Landroid/view/View;

.field ratingCost:Lcom/narvii/widget/FontAwesomeRatingBar;

.field ratingHeart:Lcom/narvii/widget/FontAwesomeRatingBar;

.field ratingStar:Lcom/narvii/widget/FontAwesomeRatingBar;

.field ratingValue:I

.field title:Landroid/widget/EditText;

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p2, Landroid/view/GestureDetector;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    new-instance v1, Lcom/narvii/item/property/ItemPropertyEditor$1;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/narvii/item/property/ItemPropertyEditor$1;-><init>(Lcom/narvii/item/property/ItemPropertyEditor;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p2, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 18
    .line 19
    iput-object p2, p0, Lcom/narvii/item/property/ItemPropertyEditor;->gd:Landroid/view/GestureDetector;

    .line 20
    const/4 p2, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    .line 30
    const v0, 0x7f070234

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 34
    move-result p2

    .line 35
    .line 36
    iput p2, p0, Lcom/narvii/item/property/ItemPropertyEditor;->dividerHeight:I

    .line 37
    .line 38
    new-instance p2, Landroid/graphics/Paint;

    .line 39
    .line 40
    .line 41
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 42
    .line 43
    iput-object p2, p0, Lcom/narvii/item/property/ItemPropertyEditor;->paint:Landroid/graphics/Paint;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    const v0, 0x7f060170

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 54
    move-result p1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    .line 59
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    return-void
.end method

.method static synthetic access$001(Lcom/narvii/item/property/ItemPropertyEditor;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->prevEvent:Landroid/view/MotionEvent;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->prevEvent:Landroid/view/MotionEvent;

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iput-boolean v2, p0, Lcom/narvii/item/property/ItemPropertyEditor;->afterLongClick:Z

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    iput-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->prevEvent:Landroid/view/MotionEvent;

    .line 27
    goto :goto_1

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 31
    move-result v0

    .line 32
    .line 33
    if-eq v0, v1, :cond_3

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 37
    move-result v0

    .line 38
    const/4 v3, 0x3

    .line 39
    .line 40
    if-ne v0, v3, :cond_2

    .line 41
    goto :goto_0

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    iput-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->prevEvent:Landroid/view/MotionEvent;

    .line 48
    goto :goto_1

    .line 49
    .line 50
    :cond_3
    :goto_0
    iput-boolean v2, p0, Lcom/narvii/item/property/ItemPropertyEditor;->afterLongClick:Z

    .line 51
    .line 52
    :goto_1
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->gd:Landroid/view/GestureDetector;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 56
    .line 57
    iget-boolean v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->afterLongClick:Z

    .line 58
    .line 59
    if-nez v0, :cond_4

    .line 60
    .line 61
    .line 62
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 63
    move-result p1

    .line 64
    return p1

    .line 65
    :cond_4
    return v1
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->dateValue:Ljava/util/Date;

    return-object v0
.end method

.method public getItemProperty()Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "title"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/item/property/ItemPropertyEditor;->getTitle()Ljava/lang/String;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->legacyProtocolKey:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    const-string v1, "legacyProtocolKey"

    .line 24
    .line 25
    iget-object v2, p0, Lcom/narvii/item/property/ItemPropertyEditor;->legacyProtocolKey:Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/item/property/ItemPropertyEditor;->getType()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    const-string v2, "date"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v1

    .line 39
    .line 40
    const-string v3, ""

    .line 41
    .line 42
    const-string v4, "type"

    .line 43
    .line 44
    const-string v5, "value"

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/narvii/item/property/ItemPropertyEditor;->getDate()Ljava/util/Date;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    if-nez v1, :cond_1

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_1
    sget-object v3, Lcom/narvii/item/property/ItemPropertyView;->DATE_SERVER:Ljava/text/DateFormat;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 59
    move-result-object v3

    .line 60
    .line 61
    .line 62
    :goto_0
    invoke-virtual {v0, v5, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v4, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 66
    goto :goto_4

    .line 67
    .line 68
    :cond_2
    iget-object v1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->type:Ljava/lang/String;

    .line 69
    .line 70
    const-string v2, "levelStar"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v1

    .line 75
    .line 76
    if-eqz v1, :cond_4

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/narvii/item/property/ItemPropertyEditor;->getRating()I

    .line 80
    move-result v1

    .line 81
    .line 82
    if-nez v1, :cond_3

    .line 83
    goto :goto_1

    .line 84
    .line 85
    .line 86
    :cond_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 87
    move-result-object v3

    .line 88
    .line 89
    .line 90
    :goto_1
    invoke-virtual {v0, v5, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v4, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 94
    goto :goto_4

    .line 95
    .line 96
    :cond_4
    iget-object v1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->type:Ljava/lang/String;

    .line 97
    .line 98
    const-string v2, "levelHeart"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    move-result v1

    .line 103
    .line 104
    if-eqz v1, :cond_6

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/narvii/item/property/ItemPropertyEditor;->getRating()I

    .line 108
    move-result v1

    .line 109
    .line 110
    if-nez v1, :cond_5

    .line 111
    goto :goto_2

    .line 112
    .line 113
    .line 114
    :cond_5
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 115
    move-result-object v3

    .line 116
    .line 117
    .line 118
    :goto_2
    invoke-virtual {v0, v5, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v4, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 122
    goto :goto_4

    .line 123
    .line 124
    :cond_6
    iget-object v1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->type:Ljava/lang/String;

    .line 125
    .line 126
    const-string v2, "levelCost"

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    move-result v1

    .line 131
    .line 132
    if-eqz v1, :cond_8

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/narvii/item/property/ItemPropertyEditor;->getRating()I

    .line 136
    move-result v1

    .line 137
    .line 138
    if-nez v1, :cond_7

    .line 139
    goto :goto_3

    .line 140
    .line 141
    .line 142
    :cond_7
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 143
    move-result-object v3

    .line 144
    .line 145
    .line 146
    :goto_3
    invoke-virtual {v0, v5, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v4, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 150
    goto :goto_4

    .line 151
    .line 152
    .line 153
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/item/property/ItemPropertyEditor;->getText()Ljava/lang/String;

    .line 154
    move-result-object v1

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v5, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 158
    .line 159
    const-string v1, "text"

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v4, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 163
    :goto_4
    return-object v0
.end method

.method public getRating()I
    .locals 1

    iget v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->ratingValue:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->edit:Landroid/widget/EditText;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->title:Landroid/widget/EditText;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->type:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 8
    move-result v0

    .line 9
    .line 10
    iget v2, p0, Lcom/narvii/item/property/ItemPropertyEditor;->dividerHeight:I

    .line 11
    sub-int/2addr v0, v2

    .line 12
    int-to-float v2, v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 16
    move-result v0

    .line 17
    int-to-float v3, v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 21
    move-result v0

    .line 22
    int-to-float v4, v0

    .line 23
    .line 24
    iget-object v5, p0, Lcom/narvii/item/property/ItemPropertyEditor;->paint:Landroid/graphics/Paint;

    .line 25
    move-object v0, p1

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 29
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0773

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroid/widget/EditText;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->title:Landroid/widget/EditText;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0772

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Landroid/widget/EditText;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->edit:Landroid/widget/EditText;

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a076d

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Landroid/widget/TextView;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->date:Landroid/widget/TextView;

    .line 37
    .line 38
    .line 39
    const v0, 0x7f0a076e

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    iput-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->rating:Landroid/view/View;

    .line 46
    .line 47
    .line 48
    const v1, 0x7f0a0771

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    check-cast v0, Lcom/narvii/widget/FontAwesomeRatingBar;

    .line 55
    .line 56
    iput-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->ratingStar:Lcom/narvii/widget/FontAwesomeRatingBar;

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->rating:Landroid/view/View;

    .line 59
    .line 60
    .line 61
    const v1, 0x7f0a0770

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    check-cast v0, Lcom/narvii/widget/FontAwesomeRatingBar;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->ratingHeart:Lcom/narvii/widget/FontAwesomeRatingBar;

    .line 70
    .line 71
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->rating:Landroid/view/View;

    .line 72
    .line 73
    .line 74
    const v1, 0x7f0a076f

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    check-cast v0, Lcom/narvii/widget/FontAwesomeRatingBar;

    .line 81
    .line 82
    iput-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->ratingCost:Lcom/narvii/widget/FontAwesomeRatingBar;

    .line 83
    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->dateValue:Ljava/util/Date;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->date:Landroid/widget/TextView;

    .line 7
    .line 8
    sget-object v1, Lcom/narvii/item/property/ItemPropertyView;->DATE_VIEW:Ljava/text/DateFormat;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->date:Landroid/widget/TextView;

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    :goto_0
    return-void
.end method

.method public setItemProperty(Lcom/fasterxml/jackson/databind/JsonNode;)V
    .locals 6

    .line 1
    .line 2
    const-string v0, "legacyProtocolKey"

    .line 3
    .line 4
    .line 5
    filled-new-array {v0}, [Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->legacyProtocolKey:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->title:Landroid/widget/EditText;

    .line 15
    .line 16
    const-string v1, "title"

    .line 17
    .line 18
    .line 19
    filled-new-array {v1}, [Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    const/4 v0, 0x0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/narvii/item/property/ItemPropertyEditor;->setText(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/narvii/item/property/ItemPropertyEditor;->setDate(Ljava/util/Date;)V

    .line 35
    const/4 v1, 0x0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lcom/narvii/item/property/ItemPropertyEditor;->setRating(I)V

    .line 39
    .line 40
    const-string v2, "type"

    .line 41
    .line 42
    .line 43
    filled-new-array {v2}, [Ljava/lang/String;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    .line 47
    invoke-static {p1, v2}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v2}, Lcom/narvii/item/property/ItemPropertyEditor;->setType(Ljava/lang/String;)V

    .line 52
    .line 53
    const-string v3, "levelStar"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v3

    .line 58
    const/4 v4, 0x1

    .line 59
    .line 60
    const-string v5, "value"

    .line 61
    .line 62
    if-nez v3, :cond_2

    .line 63
    .line 64
    const-string v3, "levelHeart"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v3

    .line 69
    .line 70
    if-nez v3, :cond_2

    .line 71
    .line 72
    const-string v3, "levelCost"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    move-result v3

    .line 77
    .line 78
    if-eqz v3, :cond_0

    .line 79
    goto :goto_0

    .line 80
    .line 81
    :cond_0
    const-string v3, "date"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    move-result v2

    .line 86
    .line 87
    if-eqz v2, :cond_1

    .line 88
    .line 89
    :try_start_0
    sget-object v2, Lcom/narvii/item/property/ItemPropertyView;->DATE_SERVER:Ljava/text/DateFormat;

    .line 90
    .line 91
    new-array v3, v4, [Ljava/lang/String;

    .line 92
    .line 93
    aput-object v5, v3, v1

    .line 94
    .line 95
    .line 96
    invoke-static {p1, v3}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 101
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    .line 104
    :catch_0
    invoke-virtual {p0, v0}, Lcom/narvii/item/property/ItemPropertyEditor;->setDate(Ljava/util/Date;)V

    .line 105
    goto :goto_1

    .line 106
    .line 107
    .line 108
    :cond_1
    filled-new-array {v5}, [Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 110
    .line 111
    .line 112
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 113
    move-result-object p1

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, p1}, Lcom/narvii/item/property/ItemPropertyEditor;->setText(Ljava/lang/String;)V

    .line 117
    goto :goto_1

    .line 118
    .line 119
    :cond_2
    :goto_0
    :try_start_1
    new-array v0, v4, [Ljava/lang/String;

    .line 120
    .line 121
    aput-object v5, v0, v1

    .line 122
    .line 123
    .line 124
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 125
    move-result-object p1

    .line 126
    .line 127
    .line 128
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 129
    move-result p1

    .line 130
    .line 131
    .line 132
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 133
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 134
    .line 135
    .line 136
    :catch_1
    invoke-virtual {p0, v1}, Lcom/narvii/item/property/ItemPropertyEditor;->setRating(I)V

    .line 137
    :goto_1
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->longClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setRating(I)V
    .locals 1

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->ratingValue:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->ratingStar:Lcom/narvii/widget/FontAwesomeRatingBar;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/widget/FontAwesomeRatingBar;->setRating(I)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->ratingHeart:Lcom/narvii/widget/FontAwesomeRatingBar;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/narvii/widget/FontAwesomeRatingBar;->setRating(I)V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->ratingCost:Lcom/narvii/widget/FontAwesomeRatingBar;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/narvii/widget/FontAwesomeRatingBar;->setRating(I)V

    .line 18
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->edit:Landroid/widget/EditText;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 5

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->type:Ljava/lang/String;

    .line 3
    .line 4
    const-string v0, "levelStar"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v1

    .line 9
    .line 10
    const-string v2, "levelHeart"

    .line 11
    const/4 v3, 0x0

    .line 12
    .line 13
    const/16 v4, 0x8

    .line 14
    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    const-string v1, "levelCost"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_0
    const-string v0, "date"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result p1

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->edit:Landroid/widget/EditText;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->date:Landroid/widget/TextView;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->rating:Landroid/view/View;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 54
    goto :goto_1

    .line 55
    .line 56
    :cond_1
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->edit:Landroid/widget/EditText;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->date:Landroid/widget/TextView;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->rating:Landroid/view/View;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 70
    goto :goto_1

    .line 71
    .line 72
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->edit:Landroid/widget/EditText;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    iget-object v1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->date:Landroid/widget/TextView;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    iget-object v1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->rating:Landroid/view/View;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result v0

    .line 90
    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->ratingStar:Lcom/narvii/widget/FontAwesomeRatingBar;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->ratingHeart:Lcom/narvii/widget/FontAwesomeRatingBar;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 102
    .line 103
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->ratingCost:Lcom/narvii/widget/FontAwesomeRatingBar;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 107
    goto :goto_1

    .line 108
    .line 109
    .line 110
    :cond_3
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    move-result p1

    .line 112
    .line 113
    if-eqz p1, :cond_4

    .line 114
    .line 115
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->ratingStar:Lcom/narvii/widget/FontAwesomeRatingBar;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 119
    .line 120
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->ratingHeart:Lcom/narvii/widget/FontAwesomeRatingBar;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 124
    .line 125
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->ratingCost:Lcom/narvii/widget/FontAwesomeRatingBar;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 129
    goto :goto_1

    .line 130
    .line 131
    :cond_4
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->ratingStar:Lcom/narvii/widget/FontAwesomeRatingBar;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 135
    .line 136
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->ratingHeart:Lcom/narvii/widget/FontAwesomeRatingBar;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 140
    .line 141
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->ratingCost:Lcom/narvii/widget/FontAwesomeRatingBar;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 145
    :goto_1
    return-void
.end method

.method public validate()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->title:Landroid/widget/EditText;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/item/property/ItemPropertyEditor;->getItemProperty()Lcom/fasterxml/jackson/databind/JsonNode;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    const-string v1, "value"

    .line 27
    .line 28
    .line 29
    filled-new-array {v1}, [Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    move-result v0

    .line 39
    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->title:Landroid/widget/EditText;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    const v2, 0x7f120ed7

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->title:Landroid/widget/EditText;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 62
    const/4 v0, 0x0

    .line 63
    return v0

    .line 64
    :cond_0
    const/4 v0, 0x1

    .line 65
    return v0
.end method
