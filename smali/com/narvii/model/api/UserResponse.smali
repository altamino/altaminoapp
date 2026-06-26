.class public Lcom/narvii/model/api/UserResponse;
.super Lcom/narvii/model/api/ObjectResponse;
.source "UserResponse.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ObjectResponse<",
        "Lcom/narvii/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field public user:Lcom/narvii/model/User;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "userProfile"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/narvii/model/api/ObjectResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic object()Lcom/narvii/model/NVObject;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/narvii/model/api/UserResponse;->object()Lcom/narvii/model/User;

    move-result-object v0

    return-object v0
.end method

.method public object()Lcom/narvii/model/User;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    return-object v0
.end method
