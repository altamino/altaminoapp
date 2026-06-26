.class Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;
.super Lcom/narvii/feed/FeedListAdapter;
.source "UserProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/profile/UserProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/profile/UserProfileFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/user/profile/UserProfileFragment;)V
    .locals 0

    .line 1852
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 1853
    invoke-direct {p0, p1}, Lcom/narvii/feed/FeedListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p1, "User Profile"

    .line 1854
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    .line 1855
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->shareSource:Ljava/lang/String;

    .line 1856
    sget-object p1, Lcom/narvii/util/logging/LoggingSource;->UserProfileView:Lcom/narvii/util/logging/LoggingSource;

    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    return-void
.end method


# virtual methods
.method public createListEndItem(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 1

    .line 1904
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {v0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    move-result v0

    if-eqz v0, :cond_1

    const p3, 0x7f0b06c2

    const-string v0, "blogEmpty"

    .line 1905
    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    .line 1906
    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    const p3, 0x7f0903ed

    const v0, -0x555556

    invoke-static {p2, p1, p3, v0}, Lcom/narvii/user/profile/UserProfileFragment;->access$1400(Lcom/narvii/user/profile/UserProfileFragment;Landroid/view/View;II)V

    return-object p1

    .line 1909
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->createListEndItem(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    .line 1910
    new-instance p2, Lcom/narvii/user/profile/UserProfileFragment$PostAdapter$1;

    invoke-direct {p2, p0}, Lcom/narvii/user/profile/UserProfileFragment$PostAdapter$1;-><init>(Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-lez p3, :cond_2

    const/16 p2, 0x8

    .line 1918
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-object p1
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 1876
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/blog"

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "type"

    const-string v1, "user"

    .line 1877
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1878
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v0

    const-string v1, "q"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1879
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Feed;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/model/Feed;",
            ">;"
        }
    .end annotation

    .line 1884
    new-instance p2, Lcom/narvii/util/FilterHelper;

    invoke-direct {p2, p0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p2}, Lcom/narvii/util/FilterHelper;->keepForLeaderAndCurator()Lcom/narvii/util/FilterHelper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "Posts"

    return-object v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1938
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/feed/BaseFeedListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090764

    .line 1939
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 p3, 0x8

    if-eqz p2, :cond_0

    .line 1941
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const p2, 0x7f0900e4

    .line 1943
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1945
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const p2, 0x7f090c10

    .line 1947
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1949
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const p2, 0x7f090c12

    .line 1951
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1953
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    instance-of p3, p3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p3, :cond_3

    .line 1954
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p3, -0x1

    .line 1955
    iput p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/4 p3, -0x2

    .line 1956
    iput p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1957
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {p3, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p3

    float-to-int p3, p3

    iput p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1958
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {p3, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p3

    float-to-int p3, p3

    iput p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :cond_3
    return-object p1
.end method

.method public getStoryDetailPageIntent(Lcom/narvii/model/Blog;)Landroid/content/Intent;
    .locals 1

    .line 1967
    new-instance v0, Lcom/narvii/story/StoryListFragment$IntentBuilder;

    invoke-direct {v0, p1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;-><init>(Lcom/narvii/model/Feed;)V

    const-string p1, "user-player"

    .line 1968
    invoke-virtual {v0, p1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->source(Ljava/lang/String;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    .line 1969
    invoke-virtual {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->showCommentBarInStoryDetail()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->showCommentBar(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    const/4 v0, 0x1

    .line 1970
    invoke-virtual {p1, v0}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->forceVideoAutoPlay(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 1971
    invoke-virtual {v0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->uid(Ljava/lang/String;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    .line 1972
    invoke-virtual {p1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 2

    .line 1889
    invoke-virtual {p0, p1}, Lcom/narvii/feed/BaseFeedListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 1890
    sget-object v1, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 1893
    :cond_1
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->isEnabled(I)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 1926
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {v0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_0

    const-string v0, "account"

    .line 1927
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 1928
    iget-object v1, p1, Lcom/narvii/notification/Notification;->uid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1929
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    return-void

    .line 1933
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/feed/BaseFeedListAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method protected pageSize()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/api/BlogListResponse;",
            ">;"
        }
    .end annotation

    .line 1866
    const-class v0, Lcom/narvii/model/api/BlogListResponse;

    return-object v0
.end method

.method public showListEnd(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
