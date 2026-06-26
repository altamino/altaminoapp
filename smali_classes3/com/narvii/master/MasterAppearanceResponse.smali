.class public Lcom/narvii/master/MasterAppearanceResponse;
.super Lcom/narvii/model/api/ApiResponse;
.source "MasterAppearanceResponse.java"


# instance fields
.field public appearanceSettings:Lcom/narvii/master/MasterAppearance;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/master/MasterAppearance;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/narvii/model/api/ApiResponse;-><init>()V

    return-void
.end method
