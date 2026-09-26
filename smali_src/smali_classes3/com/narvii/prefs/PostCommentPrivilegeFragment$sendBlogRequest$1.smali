.class public final Lcom/narvii/prefs/PostCommentPrivilegeFragment$sendBlogRequest$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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
            "Lcom/narvii/prefs/PostCommentPrivilegeFragment;",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/api/BlogResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$sendBlogRequest$1;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

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
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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
    iget-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$sendBlogRequest$1;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {p1, p4}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->access$setError$p(Lcom/narvii/prefs/PostCommentPrivilegeFragment;Ljava/lang/String;)V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$sendBlogRequest$1;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    .line 11
    const/4 p2, 0x1

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->access$setRequestFinished$p(Lcom/narvii/prefs/PostCommentPrivilegeFragment;Z)V

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$sendBlogRequest$1;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->getMergeAdapter()Lcom/narvii/list/MergeAdapter;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 26
    :cond_0
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/model/api/FeedResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/prefs/PostCommentPrivilegeFragment$sendBlogRequest$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/FeedResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/FeedResponse;)V
    .locals 1
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/api/FeedResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "Lcom/narvii/model/api/FeedResponse<",
            "Lcom/narvii/model/Blog;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$sendBlogRequest$1;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    const/4 v0, 0x1

    .line 3
    invoke-static {p1, v0}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->access$setRequestFinished$p(Lcom/narvii/prefs/PostCommentPrivilegeFragment;Z)V

    iget-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$sendBlogRequest$1;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    .line 4
    invoke-virtual {p1}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->getMergeAdapter()Lcom/narvii/list/MergeAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p2}, Lcom/narvii/model/api/FeedResponse;->object()Lcom/narvii/model/Feed;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Blog;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$sendBlogRequest$1;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    .line 6
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getPrivilegeOfCommentOnPost()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->setPrivilege(I)V

    iget-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$sendBlogRequest$1;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    .line 7
    invoke-virtual {p1}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->getRadioGroupAdapter()Lcom/narvii/adapter/RadioGroupAdapter;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$sendBlogRequest$1;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    invoke-virtual {p2}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->getPrivilege()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/adapter/RadioGroupAdapter;->setSelectedItemId(I)V

    :cond_3
    :goto_1
    return-void
.end method
