.class public final synthetic Lcom/narvii/wallet/optinads/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/wallet/optinads/OptinAdsManageFragment;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/wallet/optinads/OptinAdsManageFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/wallet/optinads/c;->a:Lcom/narvii/wallet/optinads/OptinAdsManageFragment;

    iput-object p2, p0, Lcom/narvii/wallet/optinads/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/wallet/optinads/c;->a:Lcom/narvii/wallet/optinads/OptinAdsManageFragment;

    iget-object v1, p0, Lcom/narvii/wallet/optinads/c;->b:Ljava/lang/String;

    check-cast p1, Lcom/narvii/model/api/AccountResponse;

    invoke-static {v0, v1, p1}, Lcom/narvii/wallet/optinads/OptinAdsManageFragment;->q(Lcom/narvii/wallet/optinads/OptinAdsManageFragment;Ljava/lang/String;Lcom/narvii/model/api/AccountResponse;)V

    return-void
.end method
