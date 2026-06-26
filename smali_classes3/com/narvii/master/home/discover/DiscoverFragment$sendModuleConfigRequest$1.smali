.class public final Lcom/narvii/master/home/discover/DiscoverFragment$sendModuleConfigRequest$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "DiscoverFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/discover/DiscoverFragment;->sendModuleConfigRequest(Lcom/narvii/paging/source/PageRequestCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/topic/model/discover/ContentModuleListResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDiscoverFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverFragment.kt\ncom/narvii/master/home/discover/DiscoverFragment$sendModuleConfigRequest$1\n*L\n1#1,616:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $callback:Lcom/narvii/paging/source/PageRequestCallback;

.field final synthetic $isRefresh:Z

.field final synthetic this$0:Lcom/narvii/master/home/discover/DiscoverFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/discover/DiscoverFragment;Lcom/narvii/paging/source/PageRequestCallback;ZLjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/paging/source/PageRequestCallback;",
            "Z",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 376
    iput-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$sendModuleConfigRequest$1;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    iput-object p2, p0, Lcom/narvii/master/home/discover/DiscoverFragment$sendModuleConfigRequest$1;->$callback:Lcom/narvii/paging/source/PageRequestCallback;

    iput-boolean p3, p0, Lcom/narvii/master/home/discover/DiscoverFragment$sendModuleConfigRequest$1;->$isRefresh:Z

    invoke-direct {p0, p4}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

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

    .line 391
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 392
    iget-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$sendModuleConfigRequest$1;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/master/home/discover/DiscoverFragment;->setModuleConfigRequest(Lcom/narvii/util/http/ApiRequest;)V

    .line 393
    iget-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$sendModuleConfigRequest$1;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/narvii/master/home/discover/DiscoverFragment;->setModuleConfigRequestFinished(Z)V

    .line 394
    iget-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$sendModuleConfigRequest$1;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    invoke-virtual {p1, p4}, Lcom/narvii/master/home/discover/DiscoverFragment;->setErrorMsg(Ljava/lang/String;)V

    .line 395
    iget-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$sendModuleConfigRequest$1;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/discover/DiscoverFragment;->getMergerAdapter()Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 396
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$sendModuleConfigRequest$1;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/discover/DiscoverFragment;->updateViews()V

    .line 397
    iget-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$sendModuleConfigRequest$1;->$callback:Lcom/narvii/paging/source/PageRequestCallback;

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Lcom/narvii/paging/source/PageRequestCallback;->onPageRequestFinished(I)V

    .line 398
    :cond_1
    iget-boolean p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$sendModuleConfigRequest$1;->$isRefresh:Z

    if-eqz p1, :cond_2

    .line 399
    iget-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$sendModuleConfigRequest$1;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :cond_2
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 376
    check-cast p2, Lcom/narvii/topic/model/discover/ContentModuleListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/home/discover/DiscoverFragment$sendModuleConfigRequest$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/topic/model/discover/ContentModuleListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/topic/model/discover/ContentModuleListResponse;)V
    .locals 0

    .line 378
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    if-eqz p2, :cond_0

    .line 379
    iget-object p1, p2, Lcom/narvii/topic/model/discover/ContentModuleListResponse;->contentModuleList:Ljava/util/List;

    if-nez p1, :cond_0

    .line 380
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p2, Lcom/narvii/topic/model/discover/ContentModuleListResponse;->contentModuleList:Ljava/util/List;

    .line 382
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$sendModuleConfigRequest$1;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    invoke-virtual {p1, p2}, Lcom/narvii/master/home/discover/DiscoverFragment;->setContentModuleListResponse(Lcom/narvii/topic/model/discover/ContentModuleListResponse;)V

    .line 383
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SerialRequest"

    invoke-static {p2, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$sendModuleConfigRequest$1;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/master/home/discover/DiscoverFragment;->setModuleConfigRequest(Lcom/narvii/util/http/ApiRequest;)V

    .line 385
    iget-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$sendModuleConfigRequest$1;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/narvii/master/home/discover/DiscoverFragment;->setModuleConfigRequestFinished(Z)V

    .line 386
    iget-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$sendModuleConfigRequest$1;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/discover/DiscoverFragment;->handleModuleConfig()V

    .line 387
    iget-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$sendModuleConfigRequest$1;->$callback:Lcom/narvii/paging/source/PageRequestCallback;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/narvii/paging/source/PageRequestCallback;->onPageRequestFinished(I)V

    :cond_1
    return-void
.end method
