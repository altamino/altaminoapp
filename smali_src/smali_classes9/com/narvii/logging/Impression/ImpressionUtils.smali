.class public Lcom/narvii/logging/Impression/ImpressionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static loc:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/narvii/logging/Impression/ImpressionUtils;->loc:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static clearImpression(Lcom/narvii/logging/Impression/ImpressionCollector;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/logging/Impression/ImpressionCollector;->clearImpressionList()V

    .line 7
    return-void
.end method

.method public static isViewUserVisible(Landroid/view/View;Landroid/view/View;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_4

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_4

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 16
    move-result v1

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_1
    sget-object v1, Lcom/narvii/logging/Impression/ImpressionUtils;->loc:[I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 25
    .line 26
    sget-object v1, Lcom/narvii/logging/Impression/ImpressionUtils;->loc:[I

    .line 27
    const/4 v2, 0x1

    .line 28
    .line 29
    aget v1, v1, v2

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 33
    move-result v3

    .line 34
    add-int/2addr v3, v1

    .line 35
    .line 36
    sget-object v4, Lcom/narvii/logging/Impression/ImpressionUtils;->loc:[I

    .line 37
    .line 38
    aget v4, v4, v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 42
    move-result p0

    .line 43
    add-int/2addr p0, v4

    .line 44
    .line 45
    sget-object v5, Lcom/narvii/logging/Impression/ImpressionUtils;->loc:[I

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 49
    .line 50
    sget-object v5, Lcom/narvii/logging/Impression/ImpressionUtils;->loc:[I

    .line 51
    .line 52
    aget v5, v5, v2

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 56
    move-result v6

    .line 57
    add-int/2addr v6, v5

    .line 58
    .line 59
    sget-object v7, Lcom/narvii/logging/Impression/ImpressionUtils;->loc:[I

    .line 60
    .line 61
    aget v7, v7, v0

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 65
    move-result p1

    .line 66
    add-int/2addr p1, v7

    .line 67
    .line 68
    if-lt v6, v1, :cond_4

    .line 69
    .line 70
    if-le v5, v3, :cond_2

    .line 71
    goto :goto_0

    .line 72
    .line 73
    :cond_2
    if-lt p1, v4, :cond_4

    .line 74
    .line 75
    if-le v7, p0, :cond_3

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    return v2

    .line 78
    :cond_4
    :goto_0
    return v0
.end method

.method public static logImpression(Lcom/narvii/logging/Impression/ImpressionCollector;Lcom/narvii/app/NVContext;)V
    .locals 5

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/logging/Impression/ImpressionCollector;->getNewImpressionList()Ljava/util/List;

    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    move-result v2

    .line 13
    .line 14
    if-ge v1, v2, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    check-cast v2, Lcom/narvii/logging/ObjectInfo;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/logging/Impression/ImpressionCollector;->getAdapter()Lcom/narvii/logging/Area;

    .line 24
    move-result-object v3

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/narvii/logging/LogEvent;->builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    .line 28
    move-result-object v4

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4}, Lcom/narvii/logging/LogEvent$Builder;->impression()Lcom/narvii/logging/LogEvent$Builder;

    .line 32
    move-result-object v4

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v3}, Lcom/narvii/logging/LogEvent$Builder;->area(Lcom/narvii/logging/Area;)Lcom/narvii/logging/LogEvent$Builder;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v2}, Lcom/narvii/logging/LogEvent$Builder;->objectInfo(Lcom/narvii/logging/ObjectInfo;)Lcom/narvii/logging/LogEvent$Builder;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v3, v2}, Lcom/narvii/logging/Impression/ImpressionCollector;->completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 47
    .line 48
    add-int/lit8 v1, v1, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    return-void
.end method

.method public static logImpressionQuit(Lcom/narvii/logging/Impression/ImpressionCollector;Lcom/narvii/app/NVContext;)V
    .locals 0

    return-void
.end method

.method public static logRecyclerImpression(Lcom/narvii/logging/Area;I)V
    .locals 0

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    if-nez p1, :cond_1

    .line 6
    .line 7
    instance-of p1, p0, Lcom/narvii/app/NVContext;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    check-cast p0, Lcom/narvii/app/NVContext;

    .line 12
    .line 13
    .line 14
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getParentContext()Lcom/narvii/app/NVContext;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    instance-of p1, p1, Lcom/narvii/logging/Impression/ImpressionHost;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getParentContext()Lcom/narvii/app/NVContext;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Lcom/narvii/logging/Impression/ImpressionHost;

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Lcom/narvii/logging/Impression/ImpressionHost;->logImpressionQuit()V

    .line 29
    .line 30
    .line 31
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getParentContext()Lcom/narvii/app/NVContext;

    .line 32
    move-result-object p0

    .line 33
    .line 34
    check-cast p0, Lcom/narvii/logging/Impression/ImpressionHost;

    .line 35
    .line 36
    .line 37
    invoke-interface {p0}, Lcom/narvii/logging/Impression/ImpressionHost;->logImpression()V

    .line 38
    :cond_1
    return-void
.end method

.method public static logStandaloneRecyclerImpression(Landroidx/recyclerview/widget/RecyclerView;Lcom/narvii/logging/Impression/ImpressionCollector;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-static {p1, p2}, Lcom/narvii/logging/Impression/ImpressionUtils;->logImpressionQuit(Lcom/narvii/logging/Impression/ImpressionCollector;Lcom/narvii/app/NVContext;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2}, Lcom/narvii/logging/Impression/ImpressionUtils;->logImpression(Lcom/narvii/logging/Impression/ImpressionCollector;Lcom/narvii/app/NVContext;)V

    .line 10
    return-void
.end method
