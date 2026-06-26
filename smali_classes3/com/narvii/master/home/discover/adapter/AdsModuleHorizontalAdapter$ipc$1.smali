.class public final Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$ipc$1;
.super Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;
.source "AdsModuleHorizontalAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector<",
        "Lcom/narvii/ad/AdsModuleItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $contentModule:Lcom/narvii/topic/model/discover/ContentModule;


# direct methods
.method constructor <init>(Lcom/narvii/topic/model/discover/ContentModule;Ljava/lang/Class;I)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$ipc$1;->$contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    invoke-direct {p0, p2, p3}, Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;-><init>(Ljava/lang/Class;I)V

    return-void
.end method


# virtual methods
.method public completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/logging/LogEvent$Builder;",
            "Lcom/narvii/logging/ObjectInfo<",
            "Lcom/narvii/ad/AdsModuleItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-super {p0, p1, p2}, Lcom/narvii/logging/Impression/ImpressionCollector;->completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V

    .line 69
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$ipc$1;->$contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    invoke-static {p1, v0}, Lcom/narvii/master/home/discover/adapter/ModuleLogUtils;->completeModuleExtraInfo(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/topic/model/discover/ContentModule;)V

    if-eqz p2, :cond_0

    .line 70
    iget-object v0, p2, Lcom/narvii/logging/ObjectInfo;->object:Lcom/narvii/model/NVObject;

    check-cast v0, Lcom/narvii/ad/AdsModuleItem;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/ad/AdsModuleItem;->deepLink:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "deepLink"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 71
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$ipc$1;->$contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    iget-object v0, v0, Lcom/narvii/topic/model/discover/ContentModule;->style:Ljava/lang/String;

    const-string v1, "moduleStyle"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    const/4 v0, -0x1

    if-eqz p2, :cond_1

    .line 72
    iget-object p2, p2, Lcom/narvii/logging/ObjectInfo;->object:Lcom/narvii/model/NVObject;

    check-cast p2, Lcom/narvii/ad/AdsModuleItem;

    if-eqz p2, :cond_1

    iget p2, p2, Lcom/narvii/ad/AdsModuleItem;->adCampaignId:I

    goto :goto_1

    :cond_1
    const/4 p2, -0x1

    :goto_1
    if-eq p2, v0, :cond_2

    .line 74
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "adsId"

    invoke-virtual {p1, v0, p2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    :cond_2
    return-void
.end method

.method protected getObjectKey(Lcom/narvii/logging/ObjectInfo;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/logging/ObjectInfo<",
            "Lcom/narvii/ad/AdsModuleItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 79
    iget-object p1, p1, Lcom/narvii/logging/ObjectInfo;->object:Lcom/narvii/model/NVObject;

    check-cast p1, Lcom/narvii/ad/AdsModuleItem;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/ad/AdsModuleItem;->getUniqueKey()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method
