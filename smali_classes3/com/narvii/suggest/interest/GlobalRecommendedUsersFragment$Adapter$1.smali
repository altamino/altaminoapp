.class Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "GlobalRecommendedUsersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->sendRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/suggest/interest/RcmdUserListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;


# direct methods
.method constructor <init>(Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;Ljava/lang/Class;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter$1;->this$1:Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;

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

    .line 230
    iget-object p1, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter$1;->this$1:Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;

    iput-object p4, p1, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->error:Ljava/lang/String;

    .line 231
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

    .line 219
    check-cast p2, Lcom/narvii/suggest/interest/RcmdUserListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/suggest/interest/RcmdUserListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/suggest/interest/RcmdUserListResponse;)V
    .locals 0

    .line 222
    iget-object p1, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter$1;->this$1:Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;

    invoke-static {p1, p2}, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->access$000(Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;Lcom/narvii/suggest/interest/RcmdUserListResponse;)V

    .line 223
    iget-object p1, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter$1;->this$1:Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->error:Ljava/lang/String;

    .line 224
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 225
    iget-object p1, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter$1;->this$1:Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->this$0:Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;

    invoke-static {p1}, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;->access$100(Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;)V

    return-void
.end method
