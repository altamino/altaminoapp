.class Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;->sendRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$1:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter$1;->this$1:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
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

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter$1;->this$1:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;

    .line 6
    .line 7
    .line 8
    invoke-static {p1, p4}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;->g(Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;Ljava/lang/String;)V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter$1;->this$1:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 14
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/narvii/model/api/UserListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 3
    iget-object p1, p2, Lcom/narvii/model/api/UserListResponse;->userList:Ljava/util/List;

    iget-object p2, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter$1;->this$1:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;

    .line 4
    iget-object p2, p2, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2, v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->E(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;Ljava/util/List;)V

    iget-object p2, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter$1;->this$1:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;

    .line 5
    iget-object p2, p2, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2, v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->G(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;Ljava/util/List;)V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/User;

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter$1;->this$1:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;

    .line 7
    iget-object v0, v0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    iget-object v1, v0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->userWrapperList:Landroid/util/SparseArray;

    invoke-static {v0, p2}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->H(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;Lcom/narvii/model/User;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    if-eqz v0, :cond_0

    .line 8
    iget-object v1, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    iget v1, v1, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v0, :cond_1

    .line 9
    iget-object v0, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    iget v0, v0, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter$1;->this$1:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;

    .line 10
    iget-object v0, v0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->y(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter$1;->this$1:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;

    .line 11
    iget-object v0, v0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->D(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter$1;->this$1:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;

    const/4 p2, 0x0

    .line 12
    invoke-static {p1, p2}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;->g(Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter$1;->this$1:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;

    .line 13
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
