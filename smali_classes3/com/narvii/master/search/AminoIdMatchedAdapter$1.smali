.class Lcom/narvii/master/search/AminoIdMatchedAdapter$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "AminoIdMatchedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/search/AminoIdMatchedAdapter;->sendRequest(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/master/search/AminoIdMatchListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/AminoIdMatchedAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/master/search/AminoIdMatchedAdapter;Ljava/lang/Class;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter$1;->this$0:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0

    .line 270
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 271
    iget-object p1, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter$1;->this$0:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->access$202(Lcom/narvii/master/search/AminoIdMatchedAdapter;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;

    .line 272
    iget-object p1, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter$1;->this$0:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/narvii/master/search/AminoIdMatchedAdapter;->isRequestFinished:Z

    .line 273
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/search/AminoIdMatchListResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 248
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 249
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 250
    iget-object p2, p2, Lcom/narvii/master/search/AminoIdMatchListResponse;->resultList:Ljava/util/List;

    if-eqz p2, :cond_2

    .line 251
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/master/search/AminoIdInfo;

    .line 252
    iget-object v1, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter$1;->this$0:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    invoke-static {v1}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->access$000(Lcom/narvii/master/search/AminoIdMatchedAdapter;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 253
    iget-object v1, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter$1;->this$0:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    invoke-static {v1}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->access$000(Lcom/narvii/master/search/AminoIdMatchedAdapter;)I

    move-result v1

    iget v2, v0, Lcom/narvii/master/search/AminoIdInfo;->objectType:I

    if-ne v1, v2, :cond_0

    .line 254
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 257
    :cond_1
    invoke-static {}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->access$100()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, v0, Lcom/narvii/master/search/AminoIdInfo;->objectType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 263
    :cond_2
    iget-object p2, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter$1;->this$0:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->access$202(Lcom/narvii/master/search/AminoIdMatchedAdapter;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;

    .line 264
    iget-object p2, p0, Lcom/narvii/master/search/AminoIdMatchedAdapter$1;->this$0:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/narvii/master/search/AminoIdMatchedAdapter;->isRequestFinished:Z

    .line 265
    invoke-virtual {p2, p1}, Lcom/narvii/list/NVArrayAdapter;->setList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 244
    check-cast p2, Lcom/narvii/master/search/AminoIdMatchListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/search/AminoIdMatchedAdapter$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/search/AminoIdMatchListResponse;)V

    return-void
.end method
