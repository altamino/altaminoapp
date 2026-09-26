.class Lcom/narvii/wallet/optinads/OptinAdsManageFragment$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/optinads/OptinAdsManageFragment;->sendOptinAdsRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/wallet/optinads/OptinAdsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/wallet/optinads/OptinAdsManageFragment;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/optinads/OptinAdsManageFragment;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/wallet/optinads/OptinAdsManageFragment$1;->this$0:Lcom/narvii/wallet/optinads/OptinAdsManageFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/narvii/wallet/optinads/OptinAdsResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/optinads/OptinAdsManageFragment$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/optinads/OptinAdsResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/optinads/OptinAdsResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Lcom/narvii/wallet/optinads/OptinAdsManageFragment$1;->this$0:Lcom/narvii/wallet/optinads/OptinAdsManageFragment;

    .line 2
    iput-object p2, p1, Lcom/narvii/wallet/optinads/OptinAdsManageFragment;->optinAdsResponse:Lcom/narvii/wallet/optinads/OptinAdsResponse;

    .line 3
    invoke-virtual {p1}, Lcom/narvii/wallet/optinads/OptinAdsManageFragment;->update()V

    return-void
.end method
