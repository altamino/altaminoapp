.class public Lcom/narvii/widget/histogram/HistogramItemConfig;
.super Ljava/lang/Object;
.source "SourceFile"


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
    .param p1    # Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/widget/histogram/HistogramItemConfig;->sectionPercentageList:Ljava/util/ArrayList;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/widget/histogram/HistogramItemConfig;->sectionRects:Ljava/util/ArrayList;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramItemConfig;->builder:Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;

    .line 20
    .line 21
    iget v0, p1, Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;->sectionCount:I

    .line 22
    .line 23
    iput v0, p0, Lcom/narvii/widget/histogram/HistogramItemConfig;->sectionCount:I

    .line 24
    .line 25
    iget v0, p1, Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;->totalValue:F

    .line 26
    float-to-double v0, v0

    .line 27
    .line 28
    iput-wide v0, p0, Lcom/narvii/widget/histogram/HistogramItemConfig;->totalValue:D

    .line 29
    .line 30
    iget-object v0, p1, Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;->sectionValues:Ljava/util/ArrayList;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/narvii/widget/histogram/HistogramItemConfig;->sectionValueList:Ljava/util/ArrayList;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;->sectionColors:Ljava/util/ArrayList;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramItemConfig;->sectionColorList:Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v0

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    check-cast v0, Ljava/lang/Double;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 56
    move-result-wide v0

    .line 57
    .line 58
    iget-object v2, p0, Lcom/narvii/widget/histogram/HistogramItemConfig;->sectionPercentageList:Ljava/util/ArrayList;

    .line 59
    .line 60
    iget-wide v3, p0, Lcom/narvii/widget/histogram/HistogramItemConfig;->totalValue:D

    .line 61
    div-double/2addr v0, v3

    .line 62
    .line 63
    .line 64
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    goto :goto_0

    .line 70
    .line 71
    :cond_0
    new-instance p1, Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;

    .line 72
    .line 73
    iget v0, p0, Lcom/narvii/widget/histogram/HistogramItemConfig;->sectionCount:I

    .line 74
    .line 75
    .line 76
    invoke-direct {p1, v0}, Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;-><init>(I)V

    .line 77
    .line 78
    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramItemConfig;->rectConfig:Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;

    .line 79
    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/histogram/HistogramItemConfig;->builder:Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;->date:Ljava/util/Date;

    .line 5
    return-object v0
.end method

.method public getDateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 3
    .line 4
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/widget/histogram/HistogramItemConfig;->builder:Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;->date:Ljava/util/Date;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public getRectToDraw(F)Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/widget/histogram/HistogramItemConfig;->getRectToDraw(FZ)Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;

    move-result-object p1

    return-object p1
.end method

.method public getRectToDraw(FZ)Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;
    .locals 17

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/narvii/widget/histogram/HistogramItemConfig;->totalValue:D

    move/from16 v3, p1

    float-to-double v3, v3

    mul-double/2addr v1, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v5

    move v8, v6

    :goto_0
    iget v9, v0, Lcom/narvii/widget/histogram/HistogramItemConfig;->sectionCount:I

    if-ge v7, v9, :cond_1

    float-to-double v8, v8

    iget-object v10, v0, Lcom/narvii/widget/histogram/HistogramItemConfig;->sectionValueList:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    add-double/2addr v8, v10

    double-to-float v8, v8

    float-to-double v9, v8

    cmpg-double v9, v1, v9

    if-gtz v9, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    move v7, v5

    :goto_1
    move v1, v5

    move v2, v1

    :goto_2
    const/4 v8, 0x0

    if-gt v1, v7, :cond_6

    iget-object v9, v0, Lcom/narvii/widget/histogram/HistogramItemConfig;->sectionRects:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    if-lez v2, :cond_2

    .line 4
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    :cond_2
    iget-object v2, v0, Lcom/narvii/widget/histogram/HistogramItemConfig;->displayRect:Landroid/graphics/Rect;

    .line 5
    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-double v11, v2

    if-ne v1, v7, :cond_3

    move-wide v13, v3

    goto :goto_3

    :cond_3
    float-to-double v13, v6

    iget-object v2, v0, Lcom/narvii/widget/histogram/HistogramItemConfig;->sectionPercentageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    add-double/2addr v13, v15

    :goto_3
    mul-double/2addr v11, v13

    double-to-int v2, v11

    sub-int v2, v10, v2

    iput v2, v9, Landroid/graphics/Rect;->top:I

    float-to-double v10, v6

    iget-object v6, v0, Lcom/narvii/widget/histogram/HistogramItemConfig;->sectionPercentageList:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    add-double/2addr v10, v12

    double-to-float v6, v10

    .line 7
    iget v10, v9, Landroid/graphics/Rect;->top:I

    iget v11, v9, Landroid/graphics/Rect;->bottom:I

    if-ge v10, v11, :cond_5

    iget-object v8, v0, Lcom/narvii/widget/histogram/HistogramItemConfig;->rectConfig:Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;

    .line 8
    iget-object v8, v8, Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;->rectToDraw:[Landroid/graphics/Rect;

    aput-object v9, v8, v1

    iget-object v8, v0, Lcom/narvii/widget/histogram/HistogramItemConfig;->sectionColorList:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, v0, Lcom/narvii/widget/histogram/HistogramItemConfig;->rectConfig:Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;

    .line 10
    iget-object v9, v9, Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;->paintColors:[I

    if-eqz p2, :cond_4

    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v10

    .line 11
    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v11

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    const/16 v12, 0xff

    .line 12
    invoke-static {v12, v10, v11, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    .line 13
    :cond_4
    aput v8, v9, v1

    goto :goto_4

    :cond_5
    iget-object v9, v0, Lcom/narvii/widget/histogram/HistogramItemConfig;->rectConfig:Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;

    .line 14
    iget-object v10, v9, Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;->rectToDraw:[Landroid/graphics/Rect;

    aput-object v8, v10, v1

    .line 15
    iget-object v8, v9, Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;->paintColors:[I

    aput v5, v8, v1

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    :goto_5
    add-int/lit8 v7, v7, 0x1

    iget v1, v0, Lcom/narvii/widget/histogram/HistogramItemConfig;->sectionCount:I

    if-ge v7, v1, :cond_7

    iget-object v1, v0, Lcom/narvii/widget/histogram/HistogramItemConfig;->rectConfig:Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;

    .line 16
    iget-object v2, v1, Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;->rectToDraw:[Landroid/graphics/Rect;

    aput-object v8, v2, v7

    .line 17
    iget-object v1, v1, Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;->paintColors:[I

    aput v5, v1, v7

    goto :goto_5

    :cond_7
    iget-object v1, v0, Lcom/narvii/widget/histogram/HistogramItemConfig;->rectConfig:Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;

    return-object v1
.end method

.method public setDisplayRect(Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramItemConfig;->displayRect:Landroid/graphics/Rect;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    :goto_0
    iget v1, p0, Lcom/narvii/widget/histogram/HistogramItemConfig;->sectionCount:I

    .line 6
    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/widget/histogram/HistogramItemConfig;->sectionRects:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v2, Landroid/graphics/Rect;

    .line 12
    .line 13
    .line 14
    invoke-direct {v2, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method
