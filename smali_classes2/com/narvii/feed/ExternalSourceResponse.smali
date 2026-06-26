.class public Lcom/narvii/feed/ExternalSourceResponse;
.super Lcom/narvii/model/api/ApiResponse;
.source "ExternalSourceResponse.java"


# instance fields
.field externalSource:Lcom/narvii/model/ExternalSource;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/ExternalSource;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/narvii/model/api/ApiResponse;-><init>()V

    return-void
.end method
