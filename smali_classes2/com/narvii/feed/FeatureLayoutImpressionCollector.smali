.class public Lcom/narvii/feed/FeatureLayoutImpressionCollector;
.super Lcom/narvii/logging/Impression/ImpressionCollector;
.source "FeatureLayoutImpressionCollector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/logging/Impression/ImpressionCollector<",
        "Lcom/narvii/model/Feed;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/narvii/logging/Impression/ImpressionCollector;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected findImpressionObject(Landroid/view/View;Ljava/util/List;)V
    .locals 3

    const v0, 0x7f090016

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/narvii/logging/Impression/ImpressionCollector;->addImpressionCell(Landroid/view/View;Ljava/util/List;)Z

    goto :goto_0

    :cond_0
    const v0, 0x7f090014

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_2

    const v0, 0x7f090438

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 23
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 24
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/narvii/logging/Impression/ImpressionCollector;->addImpressionCell(Landroid/view/View;Ljava/util/List;)Z

    :cond_1
    const v0, 0x7f090439

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 27
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 28
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/narvii/logging/Impression/ImpressionCollector;->addImpressionCell(Landroid/view/View;Ljava/util/List;)Z

    :cond_2
    :goto_0
    return-void
.end method
