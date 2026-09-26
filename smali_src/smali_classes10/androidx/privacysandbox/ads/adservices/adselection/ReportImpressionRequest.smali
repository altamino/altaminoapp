.class public final Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final adSelectionConfig:Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final adSelectionId:J


# direct methods
.method public constructor <init>(JLandroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;)V
    .locals 1
    .param p3    # Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "adSelectionConfig"

    .line 3
    .line 4
    .line 5
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-wide p1, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;->adSelectionId:J

    .line 11
    .line 12
    iput-object p3, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;->adSelectionConfig:Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;

    .line 13
    return-void
.end method


# virtual methods
.method public final a()Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;->adSelectionConfig:Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;

    return-object v0
.end method

.method public final b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;->adSelectionId:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    instance-of v1, p1, Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    return v2

    .line 11
    .line 12
    :cond_1
    iget-wide v3, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;->adSelectionId:J

    .line 13
    .line 14
    check-cast p1, Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;

    .line 15
    .line 16
    iget-wide v5, p1, Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;->adSelectionId:J

    .line 17
    .line 18
    cmp-long v1, v3, v5

    .line 19
    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;->adSelectionConfig:Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;

    .line 23
    .line 24
    iget-object p1, p1, Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;->adSelectionConfig:Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;

    .line 25
    .line 26
    .line 27
    invoke-static {v1, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    move-result p1

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    move v0, v2

    .line 33
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;->adSelectionId:J

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v1}, Li/a;->a(J)I

    .line 6
    move-result v0

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;->adSelectionConfig:Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;->hashCode()I

    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "ReportImpressionRequest: adSelectionId="

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-wide v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;->adSelectionId:J

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, ", adSelectionConfig="

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;->adSelectionConfig:Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method
