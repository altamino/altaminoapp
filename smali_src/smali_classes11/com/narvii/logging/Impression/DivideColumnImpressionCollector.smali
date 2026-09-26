.class public Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;
.super Lcom/narvii/logging/Impression/ImpressionCollector;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/narvii/list/NVPagedAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/logging/Impression/ImpressionCollector;-><init>(Lcom/narvii/list/NVPagedAdapter;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/narvii/logging/Impression/ImpressionCollector;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected findImpressionObject(Landroid/view/View;Ljava/util/List;)V
    .locals 4

    .line 1
    .line 2
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sget-object v1, Lcom/narvii/util/LibConstants;->GRID_ROW:Lcom/narvii/util/Tag;

    .line 11
    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    check-cast p1, Landroid/view/ViewGroup;

    .line 15
    const/4 v0, 0x0

    .line 16
    move v1, v0

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 20
    move-result v2

    .line 21
    .line 22
    if-ge v1, v2, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    instance-of v3, v2, Landroid/view/ViewGroup;

    .line 29
    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 34
    move-result v3

    .line 35
    .line 36
    if-nez v3, :cond_0

    .line 37
    .line 38
    check-cast v2, Landroid/view/ViewGroup;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v2, p2}, Lcom/narvii/logging/Impression/ImpressionCollector;->addImpressionCell(Landroid/view/View;Ljava/util/List;)Z

    .line 46
    .line 47
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    return-void
.end method
