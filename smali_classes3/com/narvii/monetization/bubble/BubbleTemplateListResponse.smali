.class public Lcom/narvii/monetization/bubble/BubbleTemplateListResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "BubbleTemplateListResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/monetization/bubble/model/BubbleTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field public templateList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/monetization/bubble/model/BubbleTemplate;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/monetization/bubble/model/BubbleTemplate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
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
            "Lcom/narvii/monetization/bubble/model/BubbleTemplate;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleTemplateListResponse;->templateList:Ljava/util/List;

    return-object v0
.end method
