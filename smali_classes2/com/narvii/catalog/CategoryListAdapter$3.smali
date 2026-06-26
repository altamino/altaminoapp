.class Lcom/narvii/catalog/CategoryListAdapter$3;
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
        "Lcom/narvii/model/api/CategoryPreviewResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/catalog/CategoryListAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/catalog/CategoryListAdapter;Ljava/lang/Class;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/narvii/catalog/CategoryListAdapter$3;->this$0:Lcom/narvii/catalog/CategoryListAdapter;

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

    .line 314
    check-cast p2, Lcom/narvii/model/api/CategoryPreviewResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/catalog/CategoryListAdapter$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/CategoryPreviewResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/CategoryPreviewResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 317
    iget-object p1, p0, Lcom/narvii/catalog/CategoryListAdapter$3;->this$0:Lcom/narvii/catalog/CategoryListAdapter;

    iget-object p1, p1, Lcom/narvii/catalog/CategoryListAdapter;->previewMap:Ljava/util/HashMap;

    iget-object p2, p2, Lcom/narvii/model/api/CategoryPreviewResponse;->itemPreviews:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 318
    iget-object p1, p0, Lcom/narvii/catalog/CategoryListAdapter$3;->this$0:Lcom/narvii/catalog/CategoryListAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
