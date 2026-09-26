.class public Lcom/narvii/wallet/WalletActivity;
.super Lcom/narvii/app/FragmentWrapperActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/FragmentWrapperActivity;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected initServiceManager(Lcom/narvii/services/ServiceManager;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->initServiceManager(Lcom/narvii/services/ServiceManager;)V

    .line 4
    .line 5
    const-string v0, "navigator"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/narvii/services/ServiceManager;->removeService(Ljava/lang/String;)V

    .line 9
    .line 10
    new-instance v1, Lcom/narvii/wallet/WalletActivity$1;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/narvii/wallet/WalletActivity$1;-><init>(Lcom/narvii/wallet/WalletActivity;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Lcom/narvii/services/ServiceManager;->addService(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    return-void
.end method
