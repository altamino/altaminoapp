.class public Lcom/narvii/widget/histogram/HistogramItemConfig;
.super Ljava/lang/Object;
.source "HistogramItemConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;,
        Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;
    }
.end annotation


# instance fields
.field private builder:Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;

.field public displayRect:Landroid/graphics/Rect;

.field private rectConfig:Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;

.field private sectionColorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sectionCount:I

.field private sectionPercentageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private sectionRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private sectionValueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public totalValue:D


# direct methods
.method public constructor <init>(Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;)V
    .locals 5

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/histogram/HistogramItemConfig;->sectionPercentageList:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/histogram/HistogramItemConfig;->sectionRects:Ljava/util/ArrayList;

    .line 30
    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramItemConfig;->builder:Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;

    .line 31
    iget v0, p1, Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;->sectionCount:I

    iput v0, p0, Lcom/narvii/widget/histogram/HistogramItemConfig;->sectionCount:I

    .line 32
    iget v0, p1, Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;->totalValue:F

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/narvii/widget/histogram/HistogramItemConfig;->totalValue:D

    .line 33
    iget-object v0, p1, Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;->sectionValues:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/narvii/widget/histogram/HistogramItemConfig;->sectionValueList:Ljava/util/ArrayList;

    .line 34
    iget-object p1, p1, Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;->sectionColors:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramItemConfig;->sectionColorList:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 36
    iget-object v2, p0, Lcom/narvii/widget/histogram/HistogramItemConfig;->sectionPercentageList:Ljava/util/ArrayList;

    iget-wide v3, p0, Lcom/narvii/widget/histogram/HistogramItemConfig;->totalValue:D

    div-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 38
    :cond_0
    new-instance p1, Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;

    iget v0, p0, Lcom/narvii/widget/histogram/HistogramItemConfig;->sectionCount:I

    invoke-direct {p1, v0}, Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;-><init>(I)V

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramItemConfig;->rectConfig:Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;

    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/narvii/widget/histogram/HistogramItemConfig;->builder:Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;

    iget-object v0, v0, Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getDateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 47
    iget-object p1, p0, Lcom/narvii/widget/histogram/HistogramItemConfig;->builder:Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;

    iget-object p1, p1, Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;->date:Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRectToDraw(F)Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, p1, v0}, Lcom/narvii/widget/histogram/HistogramItemConfig;->getRectToDraw(FZ)Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;

    move-result-object p1

    return-object p1
.end method

.method public getRectToDraw(FZ)Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;
    .locals 17

    move-object/from16 v0, p0

    .line 62
    iget-wide v1, v0, Lcom/narvii/widget/histogram/HistogramItemConfig;->totalValue:D

    move/from16 v3, p1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 65
    :goto_0
    iget v9, v0, Lcom/narvii/widget/histogram/HistogramItemConfig;->sectionCount:I

    if-ge v7, v9, :cond_1

    float-to-double v8, v8

    .line 66
    iget-object v10, v0, Lcom/narvii/widget/histogram/HistogramItemConfig;->sectionValueList:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v8, v10

    double-to-float v8, v8

    float-to-double v9, v8

    cmpg-double v11, v1, v9

    if-gtz v11, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    const/4 v8, 0x0

    if-gt v1, v7, :cond_6

    .line 76
    iget-object v9, v0, Lcom/narvii/widget/histogram/HistogramItemConfig;->sectionRects:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    if-lez v2, :cond_2

    .line 78
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    .line 80
    :cond_2
    iget-object v2, v0, Lcom/narvii/widget/histogram/HistogramItemConfig;->displayRect:Landroid/graphics/Rect;

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-double v11, v2

    if-ne v1, v7, :cond_3

    move-wide v13, v3

    goto :goto_3

    :cond_3
    float-to-double v13, v5

    iget-object v2, v0, Lcom/narvii/widget/histogram/HistogramItemConfig;->sectionPercentageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v13, v15

    :goto_3
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v13

    double-to-int v2, v11

    sub-int/2addr v10, v2

    iput v10, v9, Landroid/graphics/Rect;->top:I

    .line 81
    iget v2, v9, Landroid/graphics/Rect;->top:I

    float-to-double v10, v5

    .line 82
    iget-object v5, v0, Lcom/narvii/widget/histogram/HistogramItemConfig;->sectionPercentageList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v10, v12

    double-to-float v5, v10

    .line 84
    iget v10, v9, Landroid/graphics/Rect;->top:I

    iget v11, v9, Landroid/graphics/Rect;->bottom:I

    if-ge v10, v11, :cond_5

    .line 85
    iget-object v8, v0, Lcom/narvii/widget/histogram/HistogramItemConfig;->rectConfig:Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;

    iget-object v8, v8, Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;->rectToDraw:[Landroid/graphics/Rect;

    aput-object v9, v8, v1

    .line 86
    iget-object v8, v0, Lcom/narvii/widget/histogram/HistogramItemConfig;->sectionColorList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 87
    iget-object v9, v0, Lcom/narvii/widget/histogram/HistogramItemConfig;->rectConfig:Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;

    iget-object v9, v9, Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;->paintColors:[I

    if-eqz p2, :cond_4

    const/16 v10, 0xff

    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v11

    .line 88
    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v12

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    .line 87
    invoke-static {v10, v11, v12, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    :cond_4
    aput v8, v9, v1

    goto :goto_4

    .line 90
    :cond_5
    iget-object v9, v0, Lcom/narvii/widget/histogram/HistogramItemConfig;->rectConfig:Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;

    iget-object v10, v9, Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;->rectToDraw:[Landroid/graphics/Rect;

    aput-object v8, v10, v1

    .line 91
    iget-object v8, v9, Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;->paintColors:[I

    aput v6, v8, v1

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_6
    :goto_5
    add-int/lit8 v7, v7, 0x1

    .line 95
    iget v1, v0, Lcom/narvii/widget/histogram/HistogramItemConfig;->sectionCount:I

    if-ge v7, v1, :cond_7

    .line 96
    iget-object v1, v0, Lcom/narvii/widget/histogram/HistogramItemConfig;->rectConfig:Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;

    iget-object v2, v1, Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;->rectToDraw:[Landroid/graphics/Rect;

    aput-object v8, v2, v7

    .line 97
    iget-object v1, v1, Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;->paintColors:[I

    aput v6, v1, v7

    goto :goto_5

    .line 100
    :cond_7
    iget-object v1, v0, Lcom/narvii/widget/histogram/HistogramItemConfig;->rectConfig:Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;

    return-object v1
.end method

.method public setDisplayRect(Landroid/graphics/Rect;)V
    .locals 3

    .line 51
    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramItemConfig;->displayRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 52
    :goto_0
    iget v1, p0, Lcom/narvii/widget/histogram/HistogramItemConfig;->sectionCount:I

    if-ge v0, v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/narvii/widget/histogram/HistogramItemConfig;->sectionRects:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
