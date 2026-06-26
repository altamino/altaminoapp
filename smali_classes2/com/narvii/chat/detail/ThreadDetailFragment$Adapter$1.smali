.class Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "ThreadDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/chat/detail/MemberListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;


# direct methods
.method constructor <init>(Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;Ljava/lang/Class;)V
    .locals 0

    .line 625
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$1;->this$1:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

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

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/detail/MemberListResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 632
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$1;->this$1:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    const-string v0, "account"

    invoke-virtual {p1, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 633
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 634
    invoke-virtual {p1}, Lcom/narvii/model/User;->isCurator()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 637
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$1;->this$1:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    invoke-virtual {v1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/ChatThread;

    if-eqz v1, :cond_1

    .line 638
    iget v2, v1, Lcom/narvii/model/ChatThread;->type:I

    if-eqz v2, :cond_1

    .line 639
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->owner()Lcom/narvii/model/User;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 640
    invoke-virtual {v1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 647
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$1;->this$1:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    new-instance v0, Lcom/narvii/util/FilterHelper;

    iget-object v1, p1, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-direct {v0, v1}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0}, Lcom/narvii/util/FilterHelper;->filterDeleted()Lcom/narvii/util/FilterHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/FilterHelper;->keepBlockedUser()Lcom/narvii/util/FilterHelper;

    move-result-object v0

    iget-object p2, p2, Lcom/narvii/chat/detail/MemberListResponse;->memberList:Ljava/util/List;

    invoke-virtual {v0, p2}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->memberList:Ljava/util/List;

    goto :goto_1

    .line 649
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$1;->this$1:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    new-instance v0, Lcom/narvii/util/FilterHelper;

    iget-object v1, p1, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-direct {v0, v1}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object p2, p2, Lcom/narvii/chat/detail/MemberListResponse;->memberList:Ljava/util/List;

    invoke-virtual {v0, p2}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->memberList:Ljava/util/List;

    .line 651
    :goto_1
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$1;->this$1:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 625
    check-cast p2, Lcom/narvii/chat/detail/MemberListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/detail/MemberListResponse;)V

    return-void
.end method
