.class public Lcom/narvii/wallet/WalletResponse;
.super Lcom/narvii/model/api/ObjectResponse;
.source "WalletResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ObjectResponse<",
        "Lcom/narvii/wallet/Wallet;",
        ">;"
    }
.end annotation


# instance fields
.field public wallet:Lcom/narvii/wallet/Wallet;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/narvii/model/api/ObjectResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic object()Lcom/narvii/model/NVObject;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/narvii/wallet/WalletResponse;->object()Lcom/narvii/wallet/Wallet;

    move-result-object v0

    return-object v0
.end method

.method public object()Lcom/narvii/wallet/Wallet;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/narvii/wallet/WalletResponse;->wallet:Lcom/narvii/wallet/Wallet;

    return-object v0
.end method
