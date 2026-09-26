.class public Lcom/narvii/master/MasterAppearanceResponse;
.super Lcom/narvii/model/api/ApiResponse;
.source "SourceFile"


# instance fields
.field public appearanceSettings:Lcom/narvii/master/MasterAppearance;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/master/MasterAppearance;
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
