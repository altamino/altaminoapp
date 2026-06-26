.class public Lcom/narvii/wallet/WalletActivity;
.super Lcom/narvii/app/FragmentWrapperActivity;
.source "WalletActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/narvii/app/FragmentWrapperActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected initServiceManager(Lcom/narvii/services/ServiceManager;)V
    .locals 2

    .line 16
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->initServiceManager(Lcom/narvii/services/ServiceManager;)V

    const-string v0, "navigator"

    .line 17
    invoke-virtual {p1, v0}, Lcom/narvii/services/ServiceManager;->removeService(Ljava/lang/String;)V

    .line 18
    new-instance v1, Lcom/narvii/wallet/WalletActivity$1;

    invoke-direct {v1, p0}, Lcom/narvii/wallet/WalletActivity$1;-><init>(Lcom/narvii/wallet/WalletActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/narvii/services/ServiceManager;->addService(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
