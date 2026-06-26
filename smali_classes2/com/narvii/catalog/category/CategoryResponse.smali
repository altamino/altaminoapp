.class public Lcom/narvii/catalog/category/CategoryResponse;
.super Lcom/narvii/model/api/ObjectResponse;
.source "CategoryResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ObjectResponse<",
        "Lcom/narvii/model/ItemCategory;",
        ">;"
    }
.end annotation


# instance fields
.field public itemCategory:Lcom/narvii/model/ItemCategory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/narvii/model/api/ObjectResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public object()Lcom/narvii/model/ItemCategory;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryResponse;->itemCategory:Lcom/narvii/model/ItemCategory;

    return-object v0
.end method

.method public bridge synthetic object()Lcom/narvii/model/NVObject;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/narvii/catalog/category/CategoryResponse;->object()Lcom/narvii/model/ItemCategory;

    move-result-object v0

    return-object v0
.end method
