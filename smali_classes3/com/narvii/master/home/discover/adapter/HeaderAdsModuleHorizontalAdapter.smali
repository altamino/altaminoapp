.class public final Lcom/narvii/master/home/discover/adapter/HeaderAdsModuleHorizontalAdapter;
.super Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;
.source "HeaderAdsModuleHorizontalAdapter.kt"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentModule"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V

    return-void
.end method


# virtual methods
.method public getItemLayout()I
    .locals 1

    const v0, 0x7f0b032e

    return v0
.end method
