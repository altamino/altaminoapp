.class public Lcom/narvii/item/property/ItemPropertyView;
.super Landroid/widget/LinearLayout;
.source "ItemPropertyView.java"


# static fields
.field static final DATE_SERVER:Ljava/text/DateFormat;

.field static final DATE_VIEW:Ljava/text/DateFormat;


# instance fields
.field layoutId:I

.field prop:Lcom/fasterxml/jackson/databind/JsonNode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/narvii/item/property/ItemPropertyView;->DATE_SERVER:Ljava/text/DateFormat;

    const/4 v0, 0x1

    .line 23
    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/narvii/item/property/ItemPropertyView;->DATE_VIEW:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private setLayoutId(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 34
    iput p1, p0, Lcom/narvii/item/property/ItemPropertyView;->layoutId:I

    .line 35
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto :goto_0

    .line 36
    :cond_0
    iget v0, p0, Lcom/narvii/item/property/ItemPropertyView;->layoutId:I

    if-eq p1, v0, :cond_1

    .line 37
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 38
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 39
    iput p1, p0, Lcom/narvii/item/property/ItemPropertyView;->layoutId:I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public set(Lcom/fasterxml/jackson/databind/JsonNode;)V
    .locals 7

    .line 44
    iput-object p1, p0, Lcom/narvii/item/property/ItemPropertyView;->prop:Lcom/fasterxml/jackson/databind/JsonNode;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const-string/jumbo v2, "type"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 46
    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v5, "title"

    aput-object v5, v4, v3

    .line 47
    invoke-static {p1, v4}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/String;

    const-string/jumbo v6, "value"

    aput-object v6, v5, v3

    .line 48
    invoke-static {p1, v5}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v3

    .line 49
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "date"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const v0, 0x7f0b041e

    const v2, 0x7f0905f4

    if-eqz p1, :cond_0

    .line 50
    invoke-direct {p0, v0}, Lcom/narvii/item/property/ItemPropertyView;->setLayoutId(I)V

    .line 53
    :try_start_0
    sget-object p1, Lcom/narvii/item/property/ItemPropertyView;->DATE_VIEW:Ljava/text/DateFormat;

    sget-object v0, Lcom/narvii/item/property/ItemPropertyView;->DATE_SERVER:Ljava/text/DateFormat;

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :catch_0
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_0
    const-string p1, "levelHeart"

    .line 57
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v6, "levelStar"

    if-nez v3, :cond_2

    .line 58
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "levelCost"

    .line 59
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 77
    :cond_1
    invoke-direct {p0, v0}, Lcom/narvii/item/property/ItemPropertyView;->setLayoutId(I)V

    .line 78
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 61
    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f0b041c

    .line 62
    invoke-direct {p0, p1}, Lcom/narvii/item/property/ItemPropertyView;->setLayoutId(I)V

    goto :goto_1

    .line 63
    :cond_3
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x7f0b041d

    .line 64
    invoke-direct {p0, p1}, Lcom/narvii/item/property/ItemPropertyView;->setLayoutId(I)V

    goto :goto_1

    :cond_4
    const p1, 0x7f0b041b

    .line 66
    invoke-direct {p0, p1}, Lcom/narvii/item/property/ItemPropertyView;->setLayoutId(I)V

    .line 70
    :goto_1
    :try_start_1
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 71
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/FontAwesomeRatingBar;

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/narvii/widget/FontAwesomeRatingBar;->setRating(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 73
    :catch_1
    invoke-direct {p0, v0}, Lcom/narvii/item/property/ItemPropertyView;->setLayoutId(I)V

    .line 74
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const p1, 0x7f0905f3

    .line 81
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_5

    .line 83
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method
