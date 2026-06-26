.class public final Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter$sendRequest$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "ChatGuestListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->sendRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/UserListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 216
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter$sendRequest$1;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;

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

    .line 233
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 234
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter$sendRequest$1;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 216
    check-cast p2, Lcom/narvii/model/api/UserListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter$sendRequest$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "req"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 220
    iget-object p1, p2, Lcom/narvii/model/api/UserListResponse;->userList:Ljava/util/List;

    .line 221
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/User;

    .line 222
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter$sendRequest$1;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getUserWrapperList()Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter$sendRequest$1;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;

    iget-object v1, v1, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    const-string/jumbo v2, "u"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p2}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->access$getChannelId(Lcom/narvii/chat/video/overlay/ChatGuestListFragment;Lcom/narvii/model/User;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    iget v0, v0, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_1

    goto :goto_0

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter$sendRequest$1;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getUserList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 229
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter$sendRequest$1;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
