.class Lcom/narvii/story/comment/StoryCommentListFragment$StoryCommentAdapter;
.super Lcom/narvii/comment/list/CommentListAdapter;
.source "StoryCommentListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/comment/StoryCommentListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoryCommentAdapter"
.end annotation


# instance fields
.field private blog:Lcom/narvii/model/Blog;

.field final synthetic this$0:Lcom/narvii/story/comment/StoryCommentListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/story/comment/StoryCommentListFragment;Lcom/narvii/app/NVContext;Lcom/narvii/model/Blog;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/narvii/story/comment/StoryCommentListFragment$StoryCommentAdapter;->this$0:Lcom/narvii/story/comment/StoryCommentListFragment;

    .line 151
    invoke-direct {p0, p2}, Lcom/narvii/comment/list/CommentListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 152
    iput-object p3, p0, Lcom/narvii/story/comment/StoryCommentListFragment$StoryCommentAdapter;->blog:Lcom/narvii/model/Blog;

    const/4 p1, 0x1

    .line 153
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    return-void
.end method


# virtual methods
.method protected getFeedNdcId()I
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/narvii/story/comment/StoryCommentListFragment$StoryCommentAdapter;->blog:Lcom/narvii/model/Blog;

    iget v0, v0, Lcom/narvii/model/Feed;->ndcId:I

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 184
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/comment/list/CommentListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090764

    .line 185
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NicknameView;

    if-eqz p2, :cond_0

    const/4 p3, 0x0

    .line 187
    invoke-virtual {p2, p3}, Lcom/narvii/widget/NicknameView;->setShowAuthorViewBorder(Z)V

    :cond_0
    return-object p1
.end method

.method protected getParent()Lcom/narvii/model/NVObject;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/narvii/story/comment/StoryCommentListFragment$StoryCommentAdapter;->blog:Lcom/narvii/model/Blog;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/narvii/story/comment/StoryCommentListFragment$StoryCommentAdapter;->blog:Lcom/narvii/model/Blog;

    invoke-virtual {v0}, Lcom/narvii/model/Blog;->getTotalCommentsCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 6

    .line 193
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/narvii/model/Comment;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/narvii/model/Comment;

    iget-object v0, v0, Lcom/narvii/model/Comment;->parentId:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/story/comment/StoryCommentListFragment$StoryCommentAdapter;->blog:Lcom/narvii/model/Blog;

    iget-object v1, v1, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    .line 194
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/story/comment/StoryCommentListFragment$StoryCommentAdapter;->blog:Lcom/narvii/model/Blog;

    iget v1, v0, Lcom/narvii/model/Blog;->type:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    iget-object v0, v0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    if-eqz v0, :cond_2

    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/narvii/model/Comment;

    iget-object v1, v1, Lcom/narvii/model/Comment;->parentId:Ljava/lang/String;

    .line 195
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/comment/StoryCommentListFragment$StoryCommentAdapter;->blog:Lcom/narvii/model/Blog;

    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/narvii/model/Comment;

    iget-object v2, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/narvii/comment/CommentHelper;->updateFeedWithComment(Lcom/narvii/model/Feed;Lcom/narvii/model/Comment;Ljava/lang/String;)Lcom/narvii/model/Feed;

    .line 197
    iget-object v0, p0, Lcom/narvii/story/comment/StoryCommentListFragment$StoryCommentAdapter;->this$0:Lcom/narvii/story/comment/StoryCommentListFragment;

    invoke-static {v0}, Lcom/narvii/story/comment/StoryCommentListFragment;->access$100(Lcom/narvii/story/comment/StoryCommentListFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/story/comment/StoryCommentListFragment$StoryCommentAdapter;->blog:Lcom/narvii/model/Blog;

    invoke-virtual {v1}, Lcom/narvii/model/Blog;->getTotalCommentsCount()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/narvii/story/comment/StoryCommentListFragment$StoryCommentAdapter;->this$0:Lcom/narvii/story/comment/StoryCommentListFragment;

    const v2, 0x7f0f1043

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/narvii/story/comment/StoryCommentListFragment$StoryCommentAdapter;->blog:Lcom/narvii/model/Blog;

    invoke-virtual {v5}, Lcom/narvii/model/Blog;->getTotalCommentsCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/narvii/story/comment/StoryCommentListFragment$StoryCommentAdapter;->this$0:Lcom/narvii/story/comment/StoryCommentListFragment;

    const v2, 0x7f0f1053

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->notifyDataSetChanged()V

    .line 200
    :cond_2
    invoke-super {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/CommentListResponse;I)V
    .locals 0

    .line 168
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 169
    iget-object p1, p0, Lcom/narvii/story/comment/StoryCommentListFragment$StoryCommentAdapter;->this$0:Lcom/narvii/story/comment/StoryCommentListFragment;

    invoke-static {p1}, Lcom/narvii/story/comment/StoryCommentListFragment;->access$000(Lcom/narvii/story/comment/StoryCommentListFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 146
    check-cast p2, Lcom/narvii/model/api/CommentListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/story/comment/StoryCommentListFragment$StoryCommentAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/CommentListResponse;I)V

    return-void
.end method

.method public showListEnd(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
