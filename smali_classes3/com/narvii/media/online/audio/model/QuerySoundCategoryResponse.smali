.class public Lcom/narvii/media/online/audio/model/QuerySoundCategoryResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "QuerySoundCategoryResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/media/online/audio/model/AssetCategory;",
        ">;"
    }
.end annotation


# instance fields
.field public categoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/media/online/audio/model/AssetCategory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/narvii/model/api/ListResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/media/online/audio/model/AssetCategory;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/narvii/media/online/audio/model/QuerySoundCategoryResponse;->categoryList:Ljava/util/List;

    return-object v0
.end method
