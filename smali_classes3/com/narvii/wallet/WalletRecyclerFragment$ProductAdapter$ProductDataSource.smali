.class Lcom/narvii/wallet/WalletRecyclerFragment$ProductAdapter$ProductDataSource;
.super Lcom/narvii/paging/source/PageDataSource;
.source "WalletRecyclerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/wallet/WalletRecyclerFragment$ProductAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProductDataSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/paging/source/PageDataSource<",
        "Lcom/narvii/wallet/Product;",
        "Lcom/narvii/wallet/ProductListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/wallet/WalletRecyclerFragment$ProductAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/wallet/WalletRecyclerFragment$ProductAdapter;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1108
    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$ProductAdapter$ProductDataSource;->this$1:Lcom/narvii/wallet/WalletRecyclerFragment$ProductAdapter;

    .line 1109
    invoke-direct {p0, p2}, Lcom/narvii/paging/source/PageDataSource;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public loadNextPage(Lcom/narvii/paging/source/PageRequestCallback;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/wallet/ProductListResponse;",
            ">;"
        }
    .end annotation

    .line 1120
    const-class v0, Lcom/narvii/wallet/ProductListResponse;

    return-object v0
.end method
