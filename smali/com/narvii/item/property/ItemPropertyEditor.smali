.class public Lcom/narvii/item/property/ItemPropertyEditor;
.super Landroid/widget/LinearLayout;
.source "ItemPropertyEditor.java"


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

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    new-instance p2, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/narvii/item/property/ItemPropertyEditor$1;

    invoke-direct {v1, p0}, Lcom/narvii/item/property/ItemPropertyEditor$1;-><init>(Lcom/narvii/item/property/ItemPropertyEditor;)V

    invoke-direct {p2, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/narvii/item/property/ItemPropertyEditor;->gd:Landroid/view/GestureDetector;

    const/4 p2, 0x0

    .line 49
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0701b5

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/narvii/item/property/ItemPropertyEditor;->dividerHeight:I

    .line 51
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/narvii/item/property/ItemPropertyEditor;->paint:Landroid/graphics/Paint;

    .line 52
    iget-object p2, p0, Lcom/narvii/item/property/ItemPropertyEditor;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06011c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->paint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method static synthetic access$001(Lcom/narvii/item/property/ItemPropertyEditor;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 26
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->prevEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->prevEvent:Landroid/view/MotionEvent;

    .line 95
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 96
    iput-boolean v1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->afterLongClick:Z

    .line 97
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->prevEvent:Landroid/view/MotionEvent;

    goto :goto_1

    .line 98
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    goto :goto_0

    .line 101
    :cond_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->prevEvent:Landroid/view/MotionEvent;

    goto :goto_1

    .line 99
    :cond_3
    :goto_0
    iput-boolean v1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->afterLongClick:Z

    .line 103
    :goto_1
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->gd:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 105
    iget-boolean v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->afterLongClick:Z

    if-nez v0, :cond_4

    .line 106
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_4
    return v2
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->dateValue:Ljava/util/Date;

    return-object v0
.end method

.method public getItemProperty()Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 6

    .line 152
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 153
    invoke-virtual {p0}, Lcom/narvii/item/property/ItemPropertyEditor;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 154
    iget-object v1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->legacyProtocolKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->legacyProtocolKey:Ljava/lang/String;

    const-string v2, "legacyProtocolKey"

    invoke-virtual {v0, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/item/property/ItemPropertyEditor;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, ""

    const-string/jumbo v4, "type"

    const-string/jumbo v5, "value"

    if-eqz v1, :cond_2

    .line 158
    invoke-virtual {p0}, Lcom/narvii/item/property/ItemPropertyEditor;->getDate()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 159
    :cond_1
    sget-object v3, Lcom/narvii/item/property/ItemPropertyView;->DATE_SERVER:Ljava/text/DateFormat;

    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v5, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 160
    invoke-virtual {v0, v4, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_4

    .line 161
    :cond_2
    iget-object v1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->type:Ljava/lang/String;

    const-string v2, "levelStar"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 162
    invoke-virtual {p0}, Lcom/narvii/item/property/ItemPropertyEditor;->getRating()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 163
    :cond_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v5, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 164
    invoke-virtual {v0, v4, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_4

    .line 165
    :cond_4
    iget-object v1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->type:Ljava/lang/String;

    const-string v2, "levelHeart"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 166
    invoke-virtual {p0}, Lcom/narvii/item/property/ItemPropertyEditor;->getRating()I

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    .line 167
    :cond_5
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v0, v5, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 168
    invoke-virtual {v0, v4, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_4

    .line 169
    :cond_6
    iget-object v1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->type:Ljava/lang/String;

    const-string v2, "levelCost"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 170
    invoke-virtual {p0}, Lcom/narvii/item/property/ItemPropertyEditor;->getRating()I

    move-result v1

    if-nez v1, :cond_7

    goto :goto_3

    .line 171
    :cond_7
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v0, v5, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 172
    invoke-virtual {v0, v4, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_4

    .line 174
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/item/property/ItemPropertyEditor;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string/jumbo v1, "text"

    .line 175
    invoke-virtual {v0, v4, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :goto_4
    return-object v0
.end method

.method public getRating()I
    .locals 1

    .line 243
    iget v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->ratingValue:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->title:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->type:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 114
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 115
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->dividerHeight:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/narvii/item/property/ItemPropertyEditor;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 58
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0905f3

    .line 59
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->title:Landroid/widget/EditText;

    const v0, 0x7f0905f2

    .line 60
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->edit:Landroid/widget/EditText;

    const v0, 0x7f0905ed

    .line 61
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->date:Landroid/widget/TextView;

    const v0, 0x7f0905ee

    .line 62
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->rating:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->rating:Landroid/view/View;

    const v1, 0x7f0905f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/FontAwesomeRatingBar;

    iput-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->ratingStar:Lcom/narvii/widget/FontAwesomeRatingBar;

    .line 64
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->rating:Landroid/view/View;

    const v1, 0x7f0905f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/FontAwesomeRatingBar;

    iput-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->ratingHeart:Lcom/narvii/widget/FontAwesomeRatingBar;

    .line 65
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->rating:Landroid/view/View;

    const v1, 0x7f0905ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/FontAwesomeRatingBar;

    iput-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->ratingCost:Lcom/narvii/widget/FontAwesomeRatingBar;

    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 2

    .line 223
    iput-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->dateValue:Ljava/util/Date;

    if-eqz p1, :cond_0

    .line 225
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->date:Landroid/widget/TextView;

    sget-object v1, Lcom/narvii/item/property/ItemPropertyView;->DATE_VIEW:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 227
    :cond_0
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->date:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setItemProperty(Lcom/fasterxml/jackson/databind/JsonNode;)V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "legacyProtocolKey"

    aput-object v3, v1, v2

    .line 119
    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->legacyProtocolKey:Ljava/lang/String;

    .line 120
    iget-object v1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->title:Landroid/widget/EditText;

    new-array v3, v0, [Ljava/lang/String;

    const-string/jumbo v4, "title"

    aput-object v4, v3, v2

    invoke-static {p1, v3}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 121
    invoke-virtual {p0, v1}, Lcom/narvii/item/property/ItemPropertyEditor;->setText(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0, v1}, Lcom/narvii/item/property/ItemPropertyEditor;->setDate(Ljava/util/Date;)V

    .line 123
    invoke-virtual {p0, v2}, Lcom/narvii/item/property/ItemPropertyEditor;->setRating(I)V

    new-array v3, v0, [Ljava/lang/String;

    const-string/jumbo v4, "type"

    aput-object v4, v3, v2

    .line 125
    invoke-static {p1, v3}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 126
    invoke-virtual {p0, v3}, Lcom/narvii/item/property/ItemPropertyEditor;->setType(Ljava/lang/String;)V

    const-string v4, "levelStar"

    .line 127
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string/jumbo v5, "value"

    if-nez v4, :cond_2

    const-string v4, "levelHeart"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "levelCost"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "date"

    .line 135
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 138
    :try_start_0
    sget-object v3, Lcom/narvii/item/property/ItemPropertyView;->DATE_SERVER:Ljava/text/DateFormat;

    new-array v0, v0, [Ljava/lang/String;

    aput-object v5, v0, v2

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :catch_0
    invoke-virtual {p0, v1}, Lcom/narvii/item/property/ItemPropertyEditor;->setDate(Ljava/util/Date;)V

    goto :goto_1

    :cond_1
    new-array v0, v0, [Ljava/lang/String;

    aput-object v5, v0, v2

    .line 143
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/item/property/ItemPropertyEditor;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    :try_start_1
    new-array v0, v0, [Ljava/lang/String;

    aput-object v5, v0, v2

    .line 130
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 131
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 134
    :catch_1
    invoke-virtual {p0, v2}, Lcom/narvii/item/property/ItemPropertyEditor;->setRating(I)V

    :goto_1
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->longClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setRating(I)V
    .locals 1

    .line 236
    iput p1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->ratingValue:I

    .line 237
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->ratingStar:Lcom/narvii/widget/FontAwesomeRatingBar;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/FontAwesomeRatingBar;->setRating(I)V

    .line 238
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->ratingHeart:Lcom/narvii/widget/FontAwesomeRatingBar;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/FontAwesomeRatingBar;->setRating(I)V

    .line 239
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->ratingCost:Lcom/narvii/widget/FontAwesomeRatingBar;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/FontAwesomeRatingBar;->setRating(I)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->edit:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 5

    .line 181
    iput-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->type:Ljava/lang/String;

    const-string v0, "levelStar"

    .line 182
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "levelHeart"

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-nez v1, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "levelCost"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "date"

    .line 199
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 200
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->edit:Landroid/widget/EditText;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 201
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->date:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->rating:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 204
    :cond_1
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->edit:Landroid/widget/EditText;

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 205
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->date:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->rating:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 183
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->edit:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 184
    iget-object v1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->date:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    iget-object v1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->rating:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 186
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 187
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->ratingStar:Lcom/narvii/widget/FontAwesomeRatingBar;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 188
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->ratingHeart:Lcom/narvii/widget/FontAwesomeRatingBar;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 189
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->ratingCost:Lcom/narvii/widget/FontAwesomeRatingBar;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 190
    :cond_3
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 191
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->ratingStar:Lcom/narvii/widget/FontAwesomeRatingBar;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 192
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->ratingHeart:Lcom/narvii/widget/FontAwesomeRatingBar;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 193
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->ratingCost:Lcom/narvii/widget/FontAwesomeRatingBar;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 195
    :cond_4
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->ratingStar:Lcom/narvii/widget/FontAwesomeRatingBar;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 196
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->ratingHeart:Lcom/narvii/widget/FontAwesomeRatingBar;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 197
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditor;->ratingCost:Lcom/narvii/widget/FontAwesomeRatingBar;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public validate()Z
    .locals 5

    .line 247
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->title:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/item/property/ItemPropertyEditor;->getItemProperty()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "value"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->title:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0dac

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditor;->title:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return v3

    :cond_0
    return v1
.end method
