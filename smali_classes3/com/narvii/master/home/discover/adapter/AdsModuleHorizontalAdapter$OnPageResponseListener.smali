.class public interface abstract Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$OnPageResponseListener;
.super Ljava/lang/Object;
.source "AdsModuleHorizontalAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPageResponseListener"
.end annotation


# virtual methods
.method public abstract onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V
.end method

.method public abstract onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/ad/AdsModuleListResponse;I)V
.end method
