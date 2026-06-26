.class Lcom/narvii/catalog/CategoryListAdapter$2;
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
        "Lcom/narvii/catalog/SubCategoryResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/catalog/CategoryListAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/catalog/CategoryListAdapter;Ljava/lang/Class;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/narvii/catalog/CategoryListAdapter$2;->this$0:Lcom/narvii/catalog/CategoryListAdapter;

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

    .line 160
    iget-object p1, p0, Lcom/narvii/catalog/CategoryListAdapter$2;->this$0:Lcom/narvii/catalog/CategoryListAdapter;

    iput-object p4, p1, Lcom/narvii/catalog/CategoryListAdapter;->errorMsg:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/catalog/SubCategoryResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 155
    iget-object p1, p0, Lcom/narvii/catalog/CategoryListAdapter$2;->this$0:Lcom/narvii/catalog/CategoryListAdapter;

    invoke-virtual {p1, p2}, Lcom/narvii/catalog/CategoryListAdapter;->setResponse(Lcom/narvii/catalog/SubCategoryResponse;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 152
    check-cast p2, Lcom/narvii/catalog/SubCategoryResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/catalog/CategoryListAdapter$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/catalog/SubCategoryResponse;)V

    return-void
.end method
