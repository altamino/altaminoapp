.class Lcom/narvii/wallet/WalletRecyclerFragment$4;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$4;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

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
    check-cast p2, Lcom/narvii/wallet/CouponListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/WalletRecyclerFragment$4;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/CouponListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/CouponListResponse;)V
    .locals 0

    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$4;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 2
    iput-object p2, p1, Lcom/narvii/wallet/WalletRecyclerFragment;->couponListResponse:Lcom/narvii/wallet/CouponListResponse;

    .line 3
    invoke-static {p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->G(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/WalletRecyclerFragment$SpeedDialAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
