.class public Lcom/narvii/scene/template/response/TemplateResponse;
.super Lcom/narvii/model/api/ApiResponse;
.source "SourceFile"


# instance fields
.field public storyTemplateList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/scene/model/TemplateConfig;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/scene/model/TemplateConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/api/ApiResponse;-><init>()V

    .line 4
    return-void
.end method
