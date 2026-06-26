.class Lcom/narvii/blog/detail/BlogDetailFragment$CommentAdapter;
.super Lcom/narvii/comment/list/CommentListAdapter;
.source "BlogDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/blog/detail/BlogDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommentAdapter"
.end annotation


# instance fields
.field flHeight:I

.field final synthetic this$0:Lcom/narvii/blog/detail/BlogDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/blog/detail/BlogDetailFragment;)V
    .locals 1

    .line 2201
    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$CommentAdapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 2202
    invoke-direct {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v0, "Page Detailed View"

    .line 2203
    iput-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->source:Ljava/lang/String;

    .line 2204
    sget-object v0, Lcom/narvii/util/logging/LoggingSource;->PostDetailView:Lcom/narvii/util/logging/LoggingSource;

    iput-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    const-string v0, "loggingOrigin"

    .line 2205
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2207
    invoke-static {p1}, Lcom/narvii/util/logging/LoggingOrigin;->valueOf(Ljava/lang/String;)Lcom/narvii/util/logging/LoggingOrigin;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    :cond_0
    return-void
.end method


# virtual methods
.method public autoLoadNextPage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected bottomPadding()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected firstLoadingHeight()I
    .locals 1

    .line 2224
    iget v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$CommentAdapter;->flHeight:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 2229
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$CommentAdapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$6100(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getParent()Lcom/narvii/model/NVObject;
    .locals 1

    .line 2213
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$CommentAdapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    return-object v0
.end method

.method protected isAnnouncement()Z
    .locals 1

    .line 2239
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$CommentAdapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iget-boolean v0, v0, Lcom/narvii/blog/detail/BlogDetailFragment;->isAnnouncement:Z

    return v0
.end method

.method protected onViewStickerClicked(Landroid/content/Intent;)V
    .locals 2

    .line 2234
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$CommentAdapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    const/16 v1, 0x6f

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public showListEnd(I)Z
    .locals 2

    .line 2244
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$CommentAdapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$CommentAdapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Blog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/narvii/model/Feed;->getCommentsCount(Z)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method
