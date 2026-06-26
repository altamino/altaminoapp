.class Lcom/narvii/wallet/WalletRecyclerFragment$6;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "WalletRecyclerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/WalletRecyclerFragment;->sendCouponListRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/wallet/CouponListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/wallet/WalletRecyclerFragment;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/WalletRecyclerFragment;Ljava/lang/Class;)V
    .locals 0

    .line 947
    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$6;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

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

    .line 947
    check-cast p2, Lcom/narvii/wallet/CouponListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/WalletRecyclerFragment$6;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/CouponListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/CouponListResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 950
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$6;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    iput-object p2, p1, Lcom/narvii/wallet/WalletRecyclerFragment;->couponListResponse:Lcom/narvii/wallet/CouponListResponse;

    .line 951
    invoke-static {p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$2000(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/WalletRecyclerFragment$SpeedDialAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
