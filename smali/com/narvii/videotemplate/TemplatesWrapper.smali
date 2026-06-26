.class public Lcom/narvii/videotemplate/TemplatesWrapper;
.super Ljava/lang/Object;
.source "TemplatesWrapper.java"


# instance fields
.field public templateConfigList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/scene/model/TemplateConfig;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
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

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
