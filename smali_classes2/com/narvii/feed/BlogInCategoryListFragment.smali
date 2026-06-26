.class public Lcom/narvii/feed/BlogInCategoryListFragment;
.super Lcom/narvii/feed/FeedListFragment;
.source "BlogInCategoryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/feed/BlogInCategoryListFragment$Adapter;
    }
.end annotation


# instance fields
.field communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/narvii/feed/FeedListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createFeedAdapter(Landroid/os/Bundle;)Lcom/narvii/feed/FeedListAdapter;
    .locals 0

    .line 143
    new-instance p1, Lcom/narvii/feed/BlogInCategoryListFragment$Adapter;

    invoke-direct {p1, p0}, Lcom/narvii/feed/BlogInCategoryListFragment$Adapter;-><init>(Lcom/narvii/feed/BlogInCategoryListFragment;)V

    return-object p1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "isFeaturedCategory"

    .line 80
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AllFeatured"

    return-object v0

    .line 83
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->getPageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPostEntryLift()I
    .locals 1

    const/16 v0, 0x10

    .line 69
    invoke-static {p0, v0}, Lcom/narvii/util/ViewUtils;->getBannerLift(Lcom/narvii/app/NVContext;I)I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 43
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "blogCategory"

    .line 44
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/BlogCategory;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/BlogCategory;

    if-eqz v0, :cond_0

    .line 46
    iget-object v1, v0, Lcom/narvii/model/BlogCategory;->label:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v1, "title"

    .line 48
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    :goto_0
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {p1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/feed/BlogInCategoryListFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    const/4 p1, 0x1

    .line 58
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 88
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p2, 0x7f0f0068

    const/4 v0, 0x0

    .line 89
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const p2, 0x7f080143

    .line 90
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    .line 91
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 74
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const p1, 0x7f0b0084

    .line 75
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 120
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f0068

    if-ne v0, v1, :cond_1

    const-string p1, "account"

    .line 121
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "postEntry"

    .line 123
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/post/entry/PostEntryDialog;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "blogCategory"

    .line 125
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/narvii/model/BlogCategory;

    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/BlogCategory;

    .line 126
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    .line 127
    sget-object v2, Lcom/narvii/util/logging/LoggingSource;->FeedList:Lcom/narvii/util/logging/LoggingSource;

    const-string v3, "Topic Category"

    invoke-virtual {p1, v1, v3, v2}, Lcom/narvii/post/entry/PostEntryDialog;->show(ILjava/lang/String;Lcom/narvii/util/logging/LoggingSource;)V

    .line 128
    invoke-virtual {p1, v0}, Lcom/narvii/post/entry/PostEntryDialog;->setBlogCategory(Ljava/util/List;)V

    goto :goto_0

    .line 130
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/narvii/account/LoginActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    sget-object v0, Lcom/narvii/account/LoginActivity$PromptType;->Required:Lcom/narvii/account/LoginActivity$PromptType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "promptType"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 137
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7

    .line 96
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const-string v0, "account"

    .line 97
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    const-string v1, "blogCategory"

    .line 98
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/narvii/model/BlogCategory;

    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/BlogCategory;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 101
    iget v3, v1, Lcom/narvii/model/BlogCategory;->status:I

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-eq v3, v5, :cond_0

    const/16 v6, 0x9

    if-ne v3, v6, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 108
    :cond_2
    :goto_0
    iget v0, v1, Lcom/narvii/model/BlogCategory;->type:I

    if-ne v0, v5, :cond_4

    :cond_3
    const/4 v4, 0x0

    .line 112
    :cond_4
    iget-object v0, p0, Lcom/narvii/feed/BlogInCategoryListFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isPostEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    move v2, v4

    :goto_1
    const v0, 0x7f0f0068

    .line 115
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 63
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
