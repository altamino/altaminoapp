.class public Lcom/narvii/item/property/ItemPropertyList;
.super Landroid/widget/LinearLayout;
.source "ItemPropertyList.java"


# instance fields
.field isWhiteTextColor:Z

.field props:Lcom/fasterxml/jackson/databind/JsonNode;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/narvii/item/property/ItemPropertyList;->isWhiteTextColor:Z

    return-void
.end method

.method private updateView()V
    .locals 12

    .line 39
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyList;->props:Lcom/fasterxml/jackson/databind/JsonNode;

    if-eqz v0, :cond_9

    .line 40
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 41
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 42
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 43
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v3, :cond_8

    .line 44
    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/databind/JsonNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const-string/jumbo v10, "value"

    aput-object v10, v9, v4

    .line 46
    invoke-static {v7, v9}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_4

    :cond_0
    :goto_1
    if-ge v6, v2, :cond_2

    add-int/lit8 v9, v6, 0x1

    .line 50
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 51
    instance-of v10, v6, Lcom/narvii/item/property/ItemPropertyView;

    if-eqz v10, :cond_1

    .line 52
    move-object v8, v6

    check-cast v8, Lcom/narvii/item/property/ItemPropertyView;

    move v6, v9

    goto :goto_2

    :cond_1
    move v6, v9

    goto :goto_1

    :cond_2
    :goto_2
    if-nez v8, :cond_3

    const v8, 0x7f0b041f

    .line 57
    invoke-virtual {v1, v8, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/narvii/item/property/ItemPropertyView;

    .line 58
    invoke-virtual {p0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 60
    :cond_3
    invoke-virtual {v8, v7}, Lcom/narvii/item/property/ItemPropertyView;->set(Lcom/fasterxml/jackson/databind/JsonNode;)V

    const v7, 0x7f0905f3

    .line 61
    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    instance-of v9, v9, Landroid/widget/TextView;

    const v10, -0x99999a

    const/4 v11, -0x1

    if-eqz v9, :cond_5

    .line 62
    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-boolean v9, p0, Lcom/narvii/item/property/ItemPropertyList;->isWhiteTextColor:Z

    if-eqz v9, :cond_4

    const/4 v9, -0x1

    goto :goto_3

    :cond_4
    const v9, -0x99999a

    :goto_3
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    const v7, 0x7f0905f4

    .line 64
    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    instance-of v9, v9, Landroid/widget/TextView;

    if-eqz v9, :cond_7

    .line 65
    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-boolean v8, p0, Lcom/narvii/item/property/ItemPropertyList;->isWhiteTextColor:Z

    if-eqz v8, :cond_6

    const/4 v10, -0x1

    :cond_6
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_8
    :goto_5
    if-ge v6, v2, :cond_a

    .line 69
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 73
    :cond_9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_a
    return-void
.end method


# virtual methods
.method public setItemProperties(Lcom/fasterxml/jackson/databind/JsonNode;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/narvii/item/property/ItemPropertyList;->props:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 30
    invoke-direct {p0}, Lcom/narvii/item/property/ItemPropertyList;->updateView()V

    return-void
.end method

.method public setItemProperties(Lcom/fasterxml/jackson/databind/JsonNode;Z)V
    .locals 0

    .line 34
    iput-boolean p2, p0, Lcom/narvii/item/property/ItemPropertyList;->isWhiteTextColor:Z

    .line 35
    invoke-virtual {p0, p1}, Lcom/narvii/item/property/ItemPropertyList;->setItemProperties(Lcom/fasterxml/jackson/databind/JsonNode;)V

    return-void
.end method
