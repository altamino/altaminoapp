.class Lcom/narvii/user/title/EditUserTitleFragment$14;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/title/EditUserTitleFragment;->sendRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/user/title/CommunityUseTitleListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/title/EditUserTitleFragment;


# direct methods
.method constructor <init>(Lcom/narvii/user/title/EditUserTitleFragment;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$14;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

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

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$14;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/user/title/EditUserTitleFragment;->t(Lcom/narvii/user/title/EditUserTitleFragment;)Lcom/narvii/widget/NVStatusLayout;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p4}, Lcom/narvii/widget/NVStatusLayout;->showError(Ljava/lang/String;)V

    .line 13
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
    check-cast p2, Lcom/narvii/user/title/CommunityUseTitleListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/user/title/EditUserTitleFragment$14;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/user/title/CommunityUseTitleListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/user/title/CommunityUseTitleListResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$14;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 3
    invoke-static {p1}, Lcom/narvii/user/title/EditUserTitleFragment;->t(Lcom/narvii/user/title/EditUserTitleFragment;)Lcom/narvii/widget/NVStatusLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/widget/NVStatusLayout;->showContent()V

    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$14;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1, v0}, Lcom/narvii/user/title/EditUserTitleFragment;->v(Lcom/narvii/user/title/EditUserTitleFragment;Ljava/util/HashSet;)V

    .line 5
    iget-object p1, p2, Lcom/narvii/user/title/CommunityUseTitleListResponse;->titles:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$14;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 6
    invoke-static {p1}, Lcom/narvii/user/title/EditUserTitleFragment;->n(Lcom/narvii/user/title/EditUserTitleFragment;)Ljava/util/HashSet;

    move-result-object p1

    iget-object p2, p2, Lcom/narvii/user/title/CommunityUseTitleListResponse;->titles:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$14;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 7
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$14;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    invoke-static {v0}, Lcom/narvii/user/title/EditUserTitleFragment;->n(Lcom/narvii/user/title/EditUserTitleFragment;)Ljava/util/HashSet;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p1, Lcom/narvii/user/title/EditUserTitleFragment;->allTitleList:Ljava/util/List;

    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$14;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 8
    iget-object p1, p1, Lcom/narvii/user/title/EditUserTitleFragment;->allTitleList:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$14;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 9
    iget-object p1, p1, Lcom/narvii/user/title/EditUserTitleFragment;->submittedTitleList:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/api/UserTitle;

    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$14;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 11
    iget-object v0, v0, Lcom/narvii/user/title/EditUserTitleFragment;->allTitleList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$14;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 12
    iget-object p2, p1, Lcom/narvii/user/title/EditUserTitleFragment;->allTitleList:Ljava/util/List;

    if-nez p2, :cond_2

    .line 13
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lcom/narvii/user/title/EditUserTitleFragment;->allTitleList:Ljava/util/List;

    :cond_2
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$14;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 14
    new-instance p2, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    iget v0, p1, Lcom/narvii/user/title/EditUserTitleFragment;->cid:I

    iget-object v1, p1, Lcom/narvii/user/title/EditUserTitleFragment;->allTitleList:Ljava/util/List;

    invoke-direct {p2, p1, v0, v1}, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;-><init>(Lcom/narvii/user/title/EditUserTitleFragment;ILjava/util/List;)V

    invoke-static {p1, p2}, Lcom/narvii/user/title/EditUserTitleFragment;->y(Lcom/narvii/user/title/EditUserTitleFragment;Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;)V

    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$14;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 15
    invoke-static {p1}, Lcom/narvii/user/title/EditUserTitleFragment;->q(Lcom/narvii/user/title/EditUserTitleFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment$14;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    invoke-static {p2}, Lcom/narvii/user/title/EditUserTitleFragment;->u(Lcom/narvii/user/title/EditUserTitleFragment;)Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$14;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 16
    invoke-static {p1}, Lcom/narvii/user/title/EditUserTitleFragment;->s(Lcom/narvii/user/title/EditUserTitleFragment;)Lcom/narvii/user/title/AddUserTitleFlowLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 17
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    :cond_3
    return-void
.end method
