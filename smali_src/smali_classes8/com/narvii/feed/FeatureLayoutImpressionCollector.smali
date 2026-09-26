.class public Lcom/narvii/feed/FeatureLayoutImpressionCollector;
.super Lcom/narvii/logging/Impression/ImpressionCollector;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/logging/Impression/ImpressionCollector;-><init>(Ljava/lang/Class;)V

    .line 4
    return-void
.end method


# virtual methods
.method protected findImpressionObject(Landroid/view/View;Ljava/util/List;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0022

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/narvii/logging/Impression/ImpressionCollector;->addImpressionCell(Landroid/view/View;Ljava/util/List;)Z

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    const v0, 0x7f0a0020

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    if-ne v0, v1, :cond_2

    .line 25
    .line 26
    .line 27
    const v0, 0x7f0a056f

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    check-cast v0, Landroid/view/ViewGroup;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 37
    move-result v1

    .line 38
    const/4 v2, 0x0

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0, p2}, Lcom/narvii/logging/Impression/ImpressionCollector;->addImpressionCell(Landroid/view/View;Ljava/util/List;)Z

    .line 48
    .line 49
    .line 50
    :cond_1
    const v0, 0x7f0a0570

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    check-cast p1, Landroid/view/ViewGroup;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 60
    move-result v0

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/narvii/logging/Impression/ImpressionCollector;->addImpressionCell(Landroid/view/View;Ljava/util/List;)Z

    .line 70
    :cond_2
    :goto_0
    return-void
.end method
