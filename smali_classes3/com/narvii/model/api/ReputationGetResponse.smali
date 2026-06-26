.class public Lcom/narvii/model/api/ReputationGetResponse;
.super Lcom/narvii/model/api/ApiResponse;
.source "ReputationGetResponse.java"


# instance fields
.field public availableReputation:F

.field public maxReputation:F

.field public userReputation:F
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "reputation"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/narvii/model/api/ApiResponse;-><init>()V

    return-void
.end method
