.class public Lcom/narvii/topic/model/discover/ContentModuleListResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "ContentModuleListResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/topic/model/discover/ContentModule;",
        ">;"
    }
.end annotation


# instance fields
.field public contentModuleList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/topic/model/discover/ContentModule;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/topic/model/discover/ContentModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
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
            "Lcom/narvii/topic/model/discover/ContentModule;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/narvii/topic/model/discover/ContentModuleListResponse;->contentModuleList:Ljava/util/List;

    return-object v0
.end method
