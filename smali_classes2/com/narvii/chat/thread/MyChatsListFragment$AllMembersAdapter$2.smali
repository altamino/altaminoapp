.class Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "MyChatsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->sendRequest()V
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
.field final synthetic this$1:Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;Ljava/lang/Class;)V
    .locals 0

    .line 968
    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter$2;->this$1:Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;

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

    .line 979
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 968
    check-cast p2, Lcom/narvii/model/api/UserListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 971
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 972
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter$2;->this$1:Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/narvii/util/FilterHelper;

    iget-object v1, p1, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-direct {v0, v1}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v1, p2, Lcom/narvii/model/api/UserListResponse;->userList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p1, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->users:Ljava/util/List;

    .line 973
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter$2;->this$1:Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    iget p2, p2, Lcom/narvii/model/api/UserListResponse;->userProfileCount:I

    :goto_1
    invoke-static {p1, p2}, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->access$1102(Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;I)I

    .line 974
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter$2;->this$1:Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
