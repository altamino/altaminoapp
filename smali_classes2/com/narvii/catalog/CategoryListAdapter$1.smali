.class Lcom/narvii/catalog/CategoryListAdapter$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "CategoryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/catalog/CategoryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/CategoryListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/catalog/CategoryListAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/catalog/CategoryListAdapter;Ljava/lang/Class;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/narvii/catalog/CategoryListAdapter$1;->this$0:Lcom/narvii/catalog/CategoryListAdapter;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 138
    iget-object p1, p0, Lcom/narvii/catalog/CategoryListAdapter$1;->this$0:Lcom/narvii/catalog/CategoryListAdapter;

    iput-object p4, p1, Lcom/narvii/catalog/CategoryListAdapter;->errorMsg:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 130
    check-cast p2, Lcom/narvii/model/api/CategoryListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/catalog/CategoryListAdapter$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/CategoryListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/CategoryListResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 133
    iget-object p1, p0, Lcom/narvii/catalog/CategoryListAdapter$1;->this$0:Lcom/narvii/catalog/CategoryListAdapter;

    invoke-virtual {p1, p2}, Lcom/narvii/catalog/CategoryListAdapter;->setResponse(Lcom/narvii/model/api/CategoryListResponse;)V

    return-void
.end method
