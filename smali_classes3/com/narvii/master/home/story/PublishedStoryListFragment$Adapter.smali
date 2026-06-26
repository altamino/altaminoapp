.class public final Lcom/narvii/master/home/story/PublishedStoryListFragment$Adapter;
.super Lcom/narvii/story/base/StoryListAdapter;
.source "PublishedStoryListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/story/PublishedStoryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPublishedStoryListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PublishedStoryListFragment.kt\ncom/narvii/master/home/story/PublishedStoryListFragment$Adapter\n*L\n1#1,253:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/story/PublishedStoryListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/story/PublishedStoryListFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iput-object p1, p0, Lcom/narvii/master/home/story/PublishedStoryListFragment$Adapter;->this$0:Lcom/narvii/master/home/story/PublishedStoryListFragment;

    invoke-direct {p0, p2}, Lcom/narvii/story/base/StoryListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public createHeaderView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0499

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026new_story, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public createPageDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/PageDataSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")",
            "Lcom/narvii/paging/source/PageDataSource<",
            "Lcom/narvii/model/Blog;",
            "Lcom/narvii/model/api/BlogListResponse;",
            ">;"
        }
    .end annotation

    .line 177
    new-instance v0, Lcom/narvii/master/home/story/PublishedStoryListFragment$MyDataSource;

    iget-object v1, p0, Lcom/narvii/master/home/story/PublishedStoryListFragment$Adapter;->this$0:Lcom/narvii/master/home/story/PublishedStoryListFragment;

    invoke-direct {v0, v1, p1}, Lcom/narvii/master/home/story/PublishedStoryListFragment$MyDataSource;-><init>(Lcom/narvii/master/home/story/PublishedStoryListFragment;Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "Stories"

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/narvii/master/home/story/PublishedStoryListFragment$Adapter;->this$0:Lcom/narvii/master/home/story/PublishedStoryListFragment;

    invoke-static {v0}, Lcom/narvii/master/home/story/PublishedStoryListFragment;->access$isUserBlock$p(Lcom/narvii/master/home/story/PublishedStoryListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/narvii/story/base/StoryListAdapter;->getItemCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public onAttach()V
    .locals 2

    .line 158
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->onAttach()V

    .line 159
    new-instance v0, Lcom/narvii/logging/Impression/LinearImpressionCollector;

    const-class v1, Lcom/narvii/model/Blog;

    invoke-direct {v0, v1}, Lcom/narvii/logging/Impression/LinearImpressionCollector;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    return-void
.end method

.method public onHeaderViewClicked(Landroid/view/View;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/narvii/master/home/story/PublishedStoryListFragment$Adapter;->this$0:Lcom/narvii/master/home/story/PublishedStoryListFragment;

    invoke-virtual {v0, p1}, Lcom/narvii/master/home/story/PublishedStoryListFragment;->onHeaderViewClicked(Landroid/view/View;)V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 8

    .line 114
    iget-object v0, p0, Lcom/narvii/master/home/story/PublishedStoryListFragment$Adapter;->this$0:Lcom/narvii/master/home/story/PublishedStoryListFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_17

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 119
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    instance-of v1, v1, Lcom/narvii/model/Blog;

    const-string v2, "null cannot be cast to non-null type com.narvii.model.Blog"

    if-eqz v1, :cond_4

    .line 120
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_3

    check-cast v1, Lcom/narvii/model/Blog;

    .line 121
    iget-object v3, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {v3}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/narvii/paging/storage/PageStorage;->getDataList()Ljava/util/List;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_4

    .line 123
    invoke-static {v3, v1, p1}, Lcom/narvii/story/base/StoryListAdapterKt;->filterStoryNofication(Ljava/util/List;Lcom/narvii/model/Blog;Lcom/narvii/notification/Notification;)Lcom/narvii/notification/Notification;

    move-result-object p1

    goto :goto_2

    .line 120
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    if-eqz p1, :cond_16

    if-eqz p1, :cond_5

    .line 127
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    goto :goto_3

    :cond_5
    move-object v1, v0

    :goto_3
    instance-of v1, v1, Lcom/narvii/model/Blog;

    const/16 v3, 0x9

    const-string v4, "update"

    const-string v5, "new"

    const-string v6, "delete"

    if-eqz v1, :cond_e

    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_d

    move-object v7, v1

    check-cast v7, Lcom/narvii/model/Blog;

    iget v7, v7, Lcom/narvii/model/Feed;->ndcId:I

    if-nez v7, :cond_e

    if-eqz v1, :cond_c

    .line 128
    check-cast v1, Lcom/narvii/model/Blog;

    .line 129
    invoke-virtual {p0}, Lcom/narvii/story/base/StoryListAdapter;->getAccountService()Lcom/narvii/account/AccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/narvii/model/Blog;->uid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 130
    iget v0, v1, Lcom/narvii/model/Blog;->type:I

    if-eq v0, v3, :cond_6

    goto :goto_4

    .line 133
    :cond_6
    iget-object p1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v2, -0x4f997a55

    if-eq v0, v2, :cond_a

    const v2, 0x1a9a0

    if-eq v0, v2, :cond_9

    const v2, 0x2f6e0a

    if-eq v0, v2, :cond_8

    goto :goto_4

    :cond_8
    const-string v0, "edit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 136
    invoke-virtual {p0, v4, v1}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->editDataSource(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    goto :goto_4

    .line 133
    :cond_9
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 134
    invoke-virtual {p0, v5, v1}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->editDataSource(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    goto :goto_4

    .line 133
    :cond_a
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 135
    invoke-virtual {p0, v6, v1}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->editDataSource(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    :cond_b
    :goto_4
    return-void

    .line 128
    :cond_c
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 127
    :cond_d
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    if-eqz p1, :cond_f

    .line 139
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    :cond_f
    instance-of v0, v0, Lcom/narvii/story/StoryNotificationStub;

    if-eqz v0, :cond_16

    .line 140
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    const-string v1, "null cannot be cast to non-null type com.narvii.story.StoryNotificationStub"

    if-eqz v0, :cond_15

    check-cast v0, Lcom/narvii/story/StoryNotificationStub;

    iget-object v0, v0, Lcom/narvii/story/StoryNotificationStub;->story:Lcom/narvii/model/Blog;

    .line 141
    invoke-virtual {p0}, Lcom/narvii/story/base/StoryListAdapter;->getAccountService()Lcom/narvii/account/AccountService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/narvii/model/Blog;->uid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 142
    iget v2, v0, Lcom/narvii/model/Blog;->type:I

    if-eq v2, v3, :cond_10

    goto :goto_6

    .line 145
    :cond_10
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_13

    check-cast p1, Lcom/narvii/story/StoryNotificationStub;

    iget-object p1, p1, Lcom/narvii/story/StoryNotificationStub;->action:Ljava/lang/String;

    if-nez p1, :cond_11

    goto :goto_5

    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_5

    :sswitch_0
    const-string v1, "vote"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 148
    invoke-virtual {p0, v4, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->editDataSource(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    goto :goto_5

    .line 145
    :sswitch_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 146
    invoke-virtual {p0, v5, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->editDataSource(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    goto :goto_5

    :sswitch_2
    const-string v1, "unvote"

    .line 145
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 149
    invoke-virtual {p0, v4, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->editDataSource(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    goto :goto_5

    .line 145
    :sswitch_3
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 147
    invoke-virtual {p0, v6, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->editDataSource(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    :cond_12
    :goto_5
    return-void

    .line 145
    :cond_13
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    :goto_6
    return-void

    .line 140
    :cond_15
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 154
    :cond_16
    invoke-super {p0, p1}, Lcom/narvii/story/base/StoryListAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    :cond_17
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f997a55 -> :sswitch_3
        -0x321392fd -> :sswitch_2
        0x1a9a0 -> :sswitch_1
        0x3752ea -> :sswitch_0
    .end sparse-switch
.end method

.method public openStoryDetailPage(Landroid/view/View;Lcom/narvii/model/Blog;Lcom/narvii/model/Community;Lcom/narvii/model/User;)V
    .locals 10

    .line 181
    new-instance v0, Lcom/narvii/story/StoryHelper;

    invoke-direct {v0, p0}, Lcom/narvii/story/StoryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const v2, 0x7f090586

    .line 182
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v6, p1

    goto :goto_0

    :cond_0
    move-object v6, v1

    .line 183
    :goto_0
    iget-object p1, p0, Lcom/narvii/master/home/story/PublishedStoryListFragment$Adapter;->this$0:Lcom/narvii/master/home/story/PublishedStoryListFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    move-object v1, p1

    :cond_1
    iget-object v2, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    const v7, 0x1020002

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v9}, Lcom/narvii/story/StoryHelper;->openStoryDetailInCurActivity(Landroid/support/v4/app/FragmentManager;Lcom/narvii/paging/source/DataSource;Lcom/narvii/model/Blog;Lcom/narvii/model/Community;Lcom/narvii/model/User;Landroid/view/View;IZLcom/narvii/story/StoryListVisibleChangeListener;)Lcom/narvii/story/StoryListFragment;

    return-void
.end method

.method public showHeaderView()Z
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/narvii/master/home/story/PublishedStoryListFragment$Adapter;->this$0:Lcom/narvii/master/home/story/PublishedStoryListFragment;

    invoke-static {v0}, Lcom/narvii/master/home/story/PublishedStoryListFragment;->access$getShowHeaderView$p(Lcom/narvii/master/home/story/PublishedStoryListFragment;)Z

    move-result v0

    return v0
.end method
