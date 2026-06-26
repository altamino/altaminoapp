.class Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "ParticipantsListFragment.java"


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

    .line 403
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter$1;->this$1:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;

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

    .line 430
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 431
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter$1;->this$1:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;

    invoke-static {p1, p4}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;->access$502(Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 432
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter$1;->this$1:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 403
    check-cast p2, Lcom/narvii/model/api/UserListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 406
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 407
    iget-object p1, p2, Lcom/narvii/model/api/UserListResponse;->userList:Ljava/util/List;

    .line 408
    iget-object p2, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter$1;->this$1:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;

    iget-object p2, p2, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2, v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$202(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;Ljava/util/List;)Ljava/util/List;

    .line 409
    iget-object p2, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter$1;->this$1:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;

    iget-object p2, p2, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2, v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$302(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;Ljava/util/List;)Ljava/util/List;

    .line 410
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/User;

    .line 411
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter$1;->this$1:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;

    iget-object v0, v0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    iget-object v1, v0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->userWrapperList:Landroid/util/SparseArray;

    invoke-static {v0, p2}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$400(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;Lcom/narvii/model/User;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 412
    iget-object v3, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    iget v3, v3, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    if-ne v3, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v0, :cond_1

    .line 414
    iget-object v0, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    iget v0, v0, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 419
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter$1;->this$1:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;

    iget-object v0, v0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$200(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 421
    :cond_3
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter$1;->this$1:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;

    iget-object v0, v0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$300(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 424
    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter$1;->this$1:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;->access$502(Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 425
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter$1;->this$1:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
