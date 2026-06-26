.class public Lcom/narvii/logging/Impression/ImpressionUtils;
.super Ljava/lang/Object;
.source "ImpressionUtils.java"


# static fields
.field private static loc:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 20
    sput-object v0, Lcom/narvii/logging/Impression/ImpressionUtils;->loc:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearImpression(Lcom/narvii/logging/Impression/ImpressionCollector;Lcom/narvii/app/NVContext;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/logging/Impression/ImpressionCollector;->clearImpressionList()V

    return-void
.end method

.method public static isViewUserVisible(Landroid/view/View;Landroid/view/View;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 30
    :cond_1
    sget-object v1, Lcom/narvii/logging/Impression/ImpressionUtils;->loc:[I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 31
    sget-object v1, Lcom/narvii/logging/Impression/ImpressionUtils;->loc:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    .line 33
    sget-object v4, Lcom/narvii/logging/Impression/ImpressionUtils;->loc:[I

    aget v4, v4, v0

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    add-int/2addr p0, v4

    .line 35
    sget-object v5, Lcom/narvii/logging/Impression/ImpressionUtils;->loc:[I

    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 36
    sget-object v5, Lcom/narvii/logging/Impression/ImpressionUtils;->loc:[I

    aget v5, v5, v2

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v5

    .line 38
    sget-object v7, Lcom/narvii/logging/Impression/ImpressionUtils;->loc:[I

    aget v7, v7, v0

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, v7

    if-lt v6, v1, :cond_4

    if-le v5, v3, :cond_2

    goto :goto_0

    :cond_2
    if-lt p1, v4, :cond_4

    if-le v7, p0, :cond_3

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    :goto_0
    return v0
.end method

.method public static logImpression(Lcom/narvii/logging/Impression/ImpressionCollector;Lcom/narvii/app/NVContext;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/logging/Impression/ImpressionCollector;->getNewImpressionList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 77
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 78
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/logging/ObjectInfo;

    .line 79
    invoke-virtual {p0}, Lcom/narvii/logging/Impression/ImpressionCollector;->getAdapter()Lcom/narvii/logging/Area;

    move-result-object v3

    .line 80
    invoke-static {p1}, Lcom/narvii/logging/LogEvent;->builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v4

    .line 81
    invoke-virtual {v4}, Lcom/narvii/logging/LogEvent$Builder;->impression()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v4

    .line 82
    invoke-virtual {v4, v3}, Lcom/narvii/logging/LogEvent$Builder;->area(Lcom/narvii/logging/Area;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v3

    .line 83
    invoke-virtual {v3, v2}, Lcom/narvii/logging/LogEvent$Builder;->objectInfo(Lcom/narvii/logging/ObjectInfo;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v3

    .line 85
    invoke-virtual {p0, v3, v2}, Lcom/narvii/logging/Impression/ImpressionCollector;->completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V

    .line 86
    invoke-virtual {v3}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static logImpressionQuit(Lcom/narvii/logging/Impression/ImpressionCollector;Lcom/narvii/app/NVContext;)V
    .locals 0

    return-void
.end method

.method public static logRecyclerImpression(Lcom/narvii/logging/Area;I)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 53
    instance-of p1, p0, Lcom/narvii/app/NVContext;

    if-eqz p1, :cond_1

    .line 54
    check-cast p0, Lcom/narvii/app/NVContext;

    .line 55
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/logging/Impression/ImpressionHost;

    if-eqz p1, :cond_1

    .line 56
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object p1

    check-cast p1, Lcom/narvii/logging/Impression/ImpressionHost;

    invoke-interface {p1}, Lcom/narvii/logging/Impression/ImpressionHost;->logImpressionQuit()V

    .line 57
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object p0

    check-cast p0, Lcom/narvii/logging/Impression/ImpressionHost;

    invoke-interface {p0}, Lcom/narvii/logging/Impression/ImpressionHost;->logImpression()V

    :cond_1
    return-void
.end method

.method public static logStandaloneRecyclerImpression(Landroid/support/v7/widget/RecyclerView;Lcom/narvii/logging/Impression/ImpressionCollector;Lcom/narvii/app/NVContext;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 67
    :cond_0
    invoke-static {p1, p2}, Lcom/narvii/logging/Impression/ImpressionUtils;->logImpressionQuit(Lcom/narvii/logging/Impression/ImpressionCollector;Lcom/narvii/app/NVContext;)V

    .line 68
    invoke-static {p1, p2}, Lcom/narvii/logging/Impression/ImpressionUtils;->logImpression(Lcom/narvii/logging/Impression/ImpressionCollector;Lcom/narvii/app/NVContext;)V

    return-void
.end method
