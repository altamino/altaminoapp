.class public final Lcom/narvii/master/home/discover/DiscoverFragment$sendModuleConfigRequest$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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
            "Lcom/narvii/master/home/discover/DiscoverFragment;",
            "Lcom/narvii/paging/source/PageRequestCallback;",
            "Z",
            "Ljava/lang/Class<",
            "Lcom/narvii/topic/model/discover/ContentModuleListResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$sendModuleConfigRequest$1;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/master/home/discover/DiscoverFragment$sendModuleConfigRequest$1;->$callback:Lcom/narvii/paging/source/PageRequestCallback;

    .line 5
    .line 6
    iput-boolean p3, p0, Lcom/narvii/master/home/discover/DiscoverFragment$sendModuleConfigRequest$1;->$isRefresh:Z

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p4}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 10
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$sendModuleConfigRequest$1;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    .line 6
    const/4 p2, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/narvii/master/home/discover/DiscoverFragment;->setModuleConfigRequest(Lcom/narvii/util/http/ApiRequest;)V

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$sendModuleConfigRequest$1;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    .line 12
    const/4 p2, 0x1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/narvii/master/home/discover/DiscoverFragment;->setModuleConfigRequestFinished(Z)V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$sendModuleConfigRequest$1;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p4}, Lcom/narvii/master/home/discover/DiscoverFragment;->setErrorMsg(Ljava/lang/String;)V

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$sendModuleConfigRequest$1;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/master/home/discover/DiscoverFragment;->getMergerAdapter()Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 32
    .line 33
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$sendModuleConfigRequest$1;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/narvii/master/home/discover/DiscoverFragment;->updateViews()V

    .line 37
    .line 38
    iget-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$sendModuleConfigRequest$1;->$callback:Lcom/narvii/paging/source/PageRequestCallback;

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, p2}, Lcom/narvii/paging/source/PageRequestCallback;->onPageRequestFinished(I)V

    .line 44
    .line 45
    :cond_1
    iget-boolean p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$sendModuleConfigRequest$1;->$isRefresh:Z

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    iget-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$sendModuleConfigRequest$1;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 61
    :cond_2
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/topic/model/discover/ContentModuleListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/home/discover/DiscoverFragment$sendModuleConfigRequest$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/topic/model/discover/ContentModuleListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/topic/model/discover/ContentModuleListResponse;)V
    .locals 3
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/topic/model/discover/ContentModuleListResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p2, Lcom/narvii/topic/model/discover/ContentModuleListResponse;->contentModuleList:Ljava/util/List;

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p2, Lcom/narvii/topic/model/discover/ContentModuleListResponse;->contentModuleList:Ljava/util/List;

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 5
    iget-boolean v1, p2, Lcom/narvii/topic/model/discover/ContentModuleListResponse;->showStoreBadge:Z

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$sendModuleConfigRequest$1;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    .line 6
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    instance-of v2, v1, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->setStoreBadged()V

    :cond_2
    iget-object v1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$sendModuleConfigRequest$1;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    .line 7
    invoke-virtual {v1, p2}, Lcom/narvii/master/home/discover/DiscoverFragment;->setContentModuleListResponse(Lcom/narvii/topic/model/discover/ContentModuleListResponse;)V

    const-string v1, "SerialRequest"

    .line 8
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/narvii/master/home/discover/DiscoverFragment$sendModuleConfigRequest$1;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    .line 9
    invoke-virtual {p2, p1}, Lcom/narvii/master/home/discover/DiscoverFragment;->setModuleConfigRequest(Lcom/narvii/util/http/ApiRequest;)V

    iget-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$sendModuleConfigRequest$1;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    .line 10
    invoke-virtual {p1, v0}, Lcom/narvii/master/home/discover/DiscoverFragment;->setModuleConfigRequestFinished(Z)V

    iget-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$sendModuleConfigRequest$1;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    .line 11
    invoke-virtual {p1}, Lcom/narvii/master/home/discover/DiscoverFragment;->handleModuleConfig()V

    iget-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$sendModuleConfigRequest$1;->$callback:Lcom/narvii/paging/source/PageRequestCallback;

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    .line 12
    invoke-interface {p1, p2}, Lcom/narvii/paging/source/PageRequestCallback;->onPageRequestFinished(I)V

    :cond_3
    return-void
.end method
