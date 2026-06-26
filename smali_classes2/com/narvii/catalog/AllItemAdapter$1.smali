.class Lcom/narvii/catalog/AllItemAdapter$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "AllItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/catalog/AllItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/ItemListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/catalog/AllItemAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/catalog/AllItemAdapter;Ljava/lang/Class;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/narvii/catalog/AllItemAdapter$1;->this$0:Lcom/narvii/catalog/AllItemAdapter;

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

    .line 68
    check-cast p2, Lcom/narvii/model/api/ItemListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/catalog/AllItemAdapter$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ItemListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ItemListResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    iget-object p1, p0, Lcom/narvii/catalog/AllItemAdapter$1;->this$0:Lcom/narvii/catalog/AllItemAdapter;

    iget-object p2, p2, Lcom/narvii/model/api/ItemListResponse;->itemList:Ljava/util/List;

    iput-object p2, p1, Lcom/narvii/catalog/AllItemAdapter;->list:Ljava/util/List;

    .line 72
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
