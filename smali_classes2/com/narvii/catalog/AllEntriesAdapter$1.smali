.class Lcom/narvii/catalog/AllEntriesAdapter$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "AllEntriesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/catalog/AllEntriesAdapter;
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
.field final synthetic this$0:Lcom/narvii/catalog/AllEntriesAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/catalog/AllEntriesAdapter;Ljava/lang/Class;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/narvii/catalog/AllEntriesAdapter$1;->this$0:Lcom/narvii/catalog/AllEntriesAdapter;

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

    .line 120
    check-cast p2, Lcom/narvii/model/api/CategoryPreviewResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/catalog/AllEntriesAdapter$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/CategoryPreviewResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/CategoryPreviewResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 123
    iget-object p1, p0, Lcom/narvii/catalog/AllEntriesAdapter$1;->this$0:Lcom/narvii/catalog/AllEntriesAdapter;

    iget-object v0, p1, Lcom/narvii/catalog/AllEntriesAdapter;->allEntryCategoryId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 124
    iget-object p2, p2, Lcom/narvii/model/api/CategoryPreviewResponse;->itemPreviews:Ljava/util/HashMap;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    :goto_0
    iput-object p2, p1, Lcom/narvii/catalog/AllEntriesAdapter;->previewList:Ljava/util/List;

    .line 125
    iget-object p1, p0, Lcom/narvii/catalog/AllEntriesAdapter$1;->this$0:Lcom/narvii/catalog/AllEntriesAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method
