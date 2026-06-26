.class public final Lcom/narvii/prefs/PostCommentPrivilegeFragment$sendBlogRequest$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "PostCommentPrivilegeFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prefs/PostCommentPrivilegeFragment;->sendBlogRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/FeedResponse<",
        "Lcom/narvii/model/Blog;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;


# direct methods
.method constructor <init>(Lcom/narvii/prefs/PostCommentPrivilegeFragment;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$sendBlogRequest$1;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

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

    .line 142
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 143
    iget-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$sendBlogRequest$1;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    invoke-static {p1, p4}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->access$setError$p(Lcom/narvii/prefs/PostCommentPrivilegeFragment;Ljava/lang/String;)V

    .line 144
    iget-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$sendBlogRequest$1;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->access$setRequestFinished$p(Lcom/narvii/prefs/PostCommentPrivilegeFragment;Z)V

    .line 145
    iget-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$sendBlogRequest$1;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    invoke-virtual {p1}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->getMergeAdapter()Lcom/narvii/list/MergeAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 127
    check-cast p2, Lcom/narvii/model/api/FeedResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/prefs/PostCommentPrivilegeFragment$sendBlogRequest$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/FeedResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/FeedResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "Lcom/narvii/model/api/FeedResponse<",
            "Lcom/narvii/model/Blog;",
            ">;)V"
        }
    .end annotation

    .line 130
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 131
    iget-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$sendBlogRequest$1;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->access$setRequestFinished$p(Lcom/narvii/prefs/PostCommentPrivilegeFragment;Z)V

    .line 132
    iget-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$sendBlogRequest$1;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    invoke-virtual {p1}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->getMergeAdapter()Lcom/narvii/list/MergeAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    if-eqz p2, :cond_1

    .line 134
    invoke-virtual {p2}, Lcom/narvii/model/api/FeedResponse;->object()Lcom/narvii/model/Feed;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Blog;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 136
    iget-object p2, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$sendBlogRequest$1;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getPrivilegeOfCommentOnPost()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->setPrivilege(I)V

    .line 137
    iget-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$sendBlogRequest$1;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    invoke-virtual {p1}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->getRadioGroupAdapter()Lcom/narvii/adapter/RadioGroupAdapter;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$sendBlogRequest$1;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    invoke-virtual {p2}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->getPrivilege()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/adapter/RadioGroupAdapter;->setSelectedItemId(I)V

    :cond_2
    return-void
.end method
