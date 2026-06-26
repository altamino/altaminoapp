.class Lcom/narvii/story/vote/StoryVoteListFragment$StoryVoteAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "StoryVoteListFragment.java"

# interfaces
.implements Lcom/narvii/story/vote/FollowView$OnFollowClickListener;
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/vote/StoryVoteListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StoryVoteAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/model/User;",
        "Lcom/narvii/story/vote/VotedUserListResponse;",
        ">;",
        "Lcom/narvii/story/vote/FollowView$OnFollowClickListener;",
        "Lcom/narvii/notification/NotificationListener;"
    }
.end annotation


# instance fields
.field blog:Lcom/narvii/model/Blog;

.field dateTimeFormatter:Lcom/narvii/util/DateTimeFormatter;

.field final synthetic this$0:Lcom/narvii/story/vote/StoryVoteListFragment;

.field users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/story/vote/StoryVoteListFragment;Lcom/narvii/app/NVContext;Lcom/narvii/model/Blog;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/narvii/story/vote/StoryVoteListFragment$StoryVoteAdapter;->this$0:Lcom/narvii/story/vote/StoryVoteListFragment;

    .line 141
    invoke-direct {p0, p2}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 142
    iput-object p3, p0, Lcom/narvii/story/vote/StoryVoteListFragment$StoryVoteAdapter;->blog:Lcom/narvii/model/Blog;

    const/4 p1, 0x1

    .line 143
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 144
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/vote/StoryVoteListFragment$StoryVoteAdapter;->dateTimeFormatter:Lcom/narvii/util/DateTimeFormatter;

    return-void
.end method

.method private generateVoteRequest(Lcom/narvii/model/Blog;)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 4

    .line 261
    iget v0, p1, Lcom/narvii/model/Feed;->ndcId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 263
    iget-object v0, p0, Lcom/narvii/story/vote/StoryVoteListFragment$StoryVoteAdapter;->this$0:Lcom/narvii/story/vote/StoryVoteListFragment;

    iget-object v0, v0, Lcom/narvii/story/vote/StoryVoteListFragment;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    .line 265
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 266
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v3

    invoke-static {p1, v3}, Lcom/narvii/story/detail/VoteHelper;->getVotePath(Lcom/narvii/model/NVObject;Z)Ljava/lang/String;

    move-result-object p1

    .line 267
    invoke-virtual {v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    if-eq v0, v1, :cond_1

    .line 269
    invoke-virtual {v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    :cond_1
    return-object v2
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 170
    iget-object p1, p0, Lcom/narvii/story/vote/StoryVoteListFragment$StoryVoteAdapter;->blog:Lcom/narvii/model/Blog;

    invoke-direct {p0, p1}, Lcom/narvii/story/vote/StoryVoteListFragment$StoryVoteAdapter;->generateVoteRequest(Lcom/narvii/model/Blog;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    .line 160
    const-class v0, Lcom/narvii/model/User;

    return-object v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "UserList"

    return-object v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 218
    instance-of v0, p1, Lcom/narvii/model/User;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 219
    check-cast p1, Lcom/narvii/model/User;

    const v0, 0x7f0b02fa

    .line 220
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f09053f

    .line 221
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/UserAvatarLayout;

    .line 222
    invoke-virtual {p3, p1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 223
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f090c2e

    .line 224
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NicknameView;

    .line 225
    invoke-virtual {p3, p1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 226
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/story/vote/StoryVoteListFragment$StoryVoteAdapter;->blog:Lcom/narvii/model/Blog;

    invoke-virtual {v2}, Lcom/narvii/model/Blog;->uid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/story/vote/StoryVoteListFragment$StoryVoteAdapter;->this$0:Lcom/narvii/story/vote/StoryVoteListFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f02a0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const v2, -0xcb6d25

    invoke-virtual {p3, v0, v2}, Lcom/narvii/widget/NicknameView;->setRole2(Ljava/lang/String;I)V

    .line 227
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object p3, p0, Lcom/narvii/story/vote/StoryVoteListFragment$StoryVoteAdapter;->this$0:Lcom/narvii/story/vote/StoryVoteListFragment;

    invoke-static {p3}, Lcom/narvii/story/vote/StoryVoteListFragment;->access$000(Lcom/narvii/story/vote/StoryVoteListFragment;)Ljava/util/Map;

    move-result-object p3

    iget-object v0, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/story/vote/VotedTimeBean;

    if-eqz p3, :cond_1

    const v0, 0x7f090ce2

    .line 230
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 231
    iget-object v2, p0, Lcom/narvii/story/vote/StoryVoteListFragment$StoryVoteAdapter;->dateTimeFormatter:Lcom/narvii/util/DateTimeFormatter;

    iget-object p3, p3, Lcom/narvii/story/vote/VotedTimeBean;->createdTime:Ljava/util/Date;

    invoke-virtual {v2, p3}, Lcom/narvii/util/DateTimeFormatter;->formatHeadlineFeedTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const p3, 0x7f090193

    .line 234
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const/4 v0, 0x4

    .line 235
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0904ae

    .line 237
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/story/vote/FollowView;

    .line 238
    invoke-virtual {p3}, Landroid/widget/TextView;->getVisibility()I

    move-result p3

    if-ne p3, v0, :cond_4

    const/4 p3, 0x0

    .line 239
    invoke-virtual {v1, p3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 240
    invoke-virtual {v1, p0}, Lcom/narvii/story/vote/FollowView;->setOnFollowClickListener(Lcom/narvii/story/vote/FollowView$OnFollowClickListener;)V

    .line 241
    iget v0, p1, Lcom/narvii/model/User;->membershipStatus:I

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    :cond_2
    const/4 p3, 0x1

    :cond_3
    invoke-virtual {v1, p1, p0, p3}, Lcom/narvii/story/vote/FollowView;->initViews(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;Z)V

    goto :goto_1

    .line 243
    :cond_4
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_1
    return-object p2

    :cond_5
    return-object v1
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/narvii/story/vote/StoryVoteListFragment$StoryVoteAdapter;->users:Ljava/util/List;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 4

    .line 191
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Lcom/narvii/story/vote/StoryVoteListFragment$StoryVoteAdapter;->users:Ljava/util/List;

    goto :goto_1

    .line 194
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/story/vote/StoryVoteListFragment$StoryVoteAdapter;->users:Ljava/util/List;

    goto :goto_1

    .line 197
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/narvii/story/vote/StoryVoteListFragment$StoryVoteAdapter;->users:Ljava/util/List;

    .line 198
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/User;

    .line 199
    invoke-virtual {v1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/story/vote/StoryVoteListFragment$StoryVoteAdapter;->this$0:Lcom/narvii/story/vote/StoryVoteListFragment;

    iget-object v3, v3, Lcom/narvii/story/vote/StoryVoteListFragment;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 202
    :cond_2
    iget-object v2, p0, Lcom/narvii/story/vote/StoryVoteListFragment$StoryVoteAdapter;->users:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 205
    :cond_3
    :goto_1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onAttach()V
    .locals 2

    .line 149
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onAttach()V

    .line 150
    new-instance v0, Lcom/narvii/logging/Impression/LinearImpressionCollector;

    const-class v1, Lcom/narvii/model/User;

    invoke-direct {v0, v1}, Lcom/narvii/logging/Impression/LinearImpressionCollector;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    return-void
.end method

.method public onFollowClicked(Lcom/narvii/model/User;)V
    .locals 1

    .line 281
    sget-object v0, Lcom/narvii/logging/ActSemantic;->follow:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    if-eqz p5, :cond_0

    .line 252
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09053f

    if-ne v0, v1, :cond_1

    :cond_0
    instance-of v0, p3, Lcom/narvii/model/User;

    if-eqz v0, :cond_1

    .line 253
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p3, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 254
    iget-object p1, p0, Lcom/narvii/story/vote/StoryVoteListFragment$StoryVoteAdapter;->this$0:Lcom/narvii/story/vote/StoryVoteListFragment;

    check-cast p3, Lcom/narvii/model/User;

    invoke-static {p1, p3}, Lcom/narvii/story/vote/StoryVoteListFragment;->access$100(Lcom/narvii/story/vote/StoryVoteListFragment;Lcom/narvii/model/User;)V

    const/4 p1, 0x1

    return p1

    .line 257
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    .line 286
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/User;

    if-eqz v0, :cond_3

    .line 287
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "new"

    if-eq v0, v2, :cond_0

    const-string v2, "delete"

    if-ne v0, v2, :cond_1

    iget-object v0, p1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 290
    invoke-virtual {p0, v0}, Lcom/narvii/story/vote/StoryVoteListFragment$StoryVoteAdapter;->createRequest(Z)Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 291
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest;->url()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    invoke-virtual {p0, p1, v1}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 295
    :cond_1
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v2, "update"

    if-eq v0, v2, :cond_2

    const-string v2, "edit"

    if-ne v0, v2, :cond_3

    .line 297
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    :cond_3
    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 133
    check-cast p2, Lcom/narvii/story/vote/VotedUserListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/story/vote/StoryVoteListFragment$StoryVoteAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/story/vote/VotedUserListResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/story/vote/VotedUserListResponse;I)V
    .locals 0

    .line 210
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    if-eqz p2, :cond_0

    .line 211
    iget-object p1, p2, Lcom/narvii/story/vote/VotedUserListResponse;->votedTimeMap:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    .line 212
    iget-object p1, p0, Lcom/narvii/story/vote/StoryVoteListFragment$StoryVoteAdapter;->this$0:Lcom/narvii/story/vote/StoryVoteListFragment;

    invoke-static {p1}, Lcom/narvii/story/vote/StoryVoteListFragment;->access$000(Lcom/narvii/story/vote/StoryVoteListFragment;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p2, Lcom/narvii/story/vote/VotedUserListResponse;->votedTimeMap:Ljava/util/HashMap;

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/story/vote/VotedUserListResponse;",
            ">;"
        }
    .end annotation

    .line 165
    const-class v0, Lcom/narvii/story/vote/VotedUserListResponse;

    return-object v0
.end method
