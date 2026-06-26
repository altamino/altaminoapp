.class Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;
.super Lcom/narvii/chat/hangout/HangoutListAdapter;
.source "HangoutListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/hangout/HangoutListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OpenChatAdapter"
.end annotation


# instance fields
.field private fromStart:Z

.field final synthetic this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

.field private toMergePlayListMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/narvii/model/PlayList;",
            ">;"
        }
    .end annotation
.end field

.field private toMergeThreadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/livelayer/detailview/OnlineChatThread;",
            ">;"
        }
    .end annotation
.end field

.field private toMergeUserInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/narvii/chat/thread/OnlineUserInfoInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/chat/hangout/HangoutListFragment;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    .line 406
    invoke-direct {p0, p1}, Lcom/narvii/chat/hangout/HangoutListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 p1, 0x1

    .line 407
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 430
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/chat/thread?type=public-all"

    .line 431
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    .line 432
    invoke-static {v1}, Lcom/narvii/chat/hangout/HangoutListFragment;->access$100(Lcom/narvii/chat/hangout/HangoutListFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "filterType"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 434
    iput-boolean p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;->fromStart:Z

    .line 435
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method public onAttach()V
    .locals 2

    .line 412
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onAttach()V

    .line 413
    new-instance v0, Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;

    const-class v1, Lcom/narvii/model/ChatThread;

    invoke-direct {v0, v1}, Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    return-void
.end method

.method protected onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V
    .locals 0

    .line 468
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/list/NVPagedAdapter;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V

    .line 469
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    invoke-static {p1}, Lcom/narvii/chat/hangout/HangoutListFragment;->access$200(Lcom/narvii/chat/hangout/HangoutListFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    invoke-static {p1}, Lcom/narvii/chat/hangout/HangoutListFragment;->access$200(Lcom/narvii/chat/hangout/HangoutListFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 470
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    invoke-static {p1}, Lcom/narvii/chat/hangout/HangoutListFragment;->access$200(Lcom/narvii/chat/hangout/HangoutListFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/thread/ThreadListResponse;I)V
    .locals 0

    .line 447
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/chat/hangout/HangoutListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/thread/ThreadListResponse;I)V

    .line 448
    iget-boolean p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;->fromStart:Z

    if-eqz p1, :cond_2

    .line 453
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    iget-object p1, p1, Lcom/narvii/chat/hangout/HangoutListFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    if-eqz p1, :cond_0

    .line 454
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->clearFocus()V

    .line 456
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    invoke-static {p1}, Lcom/narvii/chat/hangout/HangoutListFragment;->access$200(Lcom/narvii/chat/hangout/HangoutListFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    invoke-static {p1}, Lcom/narvii/chat/hangout/HangoutListFragment;->access$200(Lcom/narvii/chat/hangout/HangoutListFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 457
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    invoke-static {p1}, Lcom/narvii/chat/hangout/HangoutListFragment;->access$200(Lcom/narvii/chat/hangout/HangoutListFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 459
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->smoothScrollToTop()V

    .line 462
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object p1

    .line 463
    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    invoke-static {p2}, Lcom/narvii/chat/hangout/HangoutListFragment;->access$300(Lcom/narvii/chat/hangout/HangoutListFragment;)Landroid/view/View;

    move-result-object p2

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-static {p2, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 399
    check-cast p2, Lcom/narvii/chat/thread/ThreadListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/thread/ThreadListResponse;I)V

    return-void
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 420
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    return-void
.end method
