.class public Lcom/narvii/model/api/AccountResponse;
.super Lcom/narvii/model/api/ObjectResponse;
.source "AccountResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ObjectResponse<",
        "Lcom/narvii/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field public account:Lcom/narvii/model/User;

.field public auid:Ljava/lang/String;

.field public newAccount:Z

.field public secret:Ljava/lang/String;

.field public sid:Ljava/lang/String;

.field public userProfile:Lcom/narvii/model/User;


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

    .line 8
    invoke-virtual {p0}, Lcom/narvii/model/api/AccountResponse;->object()Lcom/narvii/model/User;

    move-result-object v0

    return-object v0
.end method

.method public object()Lcom/narvii/model/User;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/narvii/model/api/AccountResponse;->account:Lcom/narvii/model/User;

    return-object v0
.end method
