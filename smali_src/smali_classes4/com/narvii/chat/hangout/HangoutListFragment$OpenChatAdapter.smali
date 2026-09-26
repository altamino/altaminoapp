.class Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;
.super Lcom/narvii/chat/hangout/HangoutListAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/chat/hangout/HangoutListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    const/4 p1, 0x1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 10
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "/chat/thread?type=public-all"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/narvii/chat/hangout/HangoutListFragment;->y(Lcom/narvii/chat/hangout/HangoutListFragment;)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    const-string v2, "filterType"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    iput-boolean p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;->fromStart:Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method public onAttach()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onAttach()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;

    .line 6
    .line 7
    const-class v1, Lcom/narvii/model/ChatThread;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;-><init>(Ljava/lang/Class;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 14
    return-void
.end method

.method protected onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/list/NVPagedAdapter;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/chat/hangout/HangoutListFragment;->w(Lcom/narvii/chat/hangout/HangoutListFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/narvii/chat/hangout/HangoutListFragment;->w(Lcom/narvii/chat/hangout/HangoutListFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 21
    move-result p1

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lcom/narvii/chat/hangout/HangoutListFragment;->w(Lcom/narvii/chat/hangout/HangoutListFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 33
    :cond_0
    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/thread/ThreadListResponse;I)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/chat/hangout/HangoutListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/thread/ThreadListResponse;I)V

    iget-boolean p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;->fromStart:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    .line 3
    iget-object p1, p1, Lcom/narvii/chat/hangout/HangoutListFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    .line 5
    invoke-static {p1}, Lcom/narvii/chat/hangout/HangoutListFragment;->w(Lcom/narvii/chat/hangout/HangoutListFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    invoke-static {p1}, Lcom/narvii/chat/hangout/HangoutListFragment;->w(Lcom/narvii/chat/hangout/HangoutListFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    .line 6
    invoke-static {p1}, Lcom/narvii/chat/hangout/HangoutListFragment;->w(Lcom/narvii/chat/hangout/HangoutListFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    .line 7
    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->smoothScrollToTop()V

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    .line 9
    invoke-static {p2}, Lcom/narvii/chat/hangout/HangoutListFragment;->x(Lcom/narvii/chat/hangout/HangoutListFragment;)Landroid/view/View;

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

    .line 1
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 4
    return-void
.end method
