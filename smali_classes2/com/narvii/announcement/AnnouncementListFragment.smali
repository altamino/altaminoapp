.class public Lcom/narvii/announcement/AnnouncementListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "AnnouncementListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/announcement/AnnouncementListFragment$AnnouncementAdapter;
    }
.end annotation


# instance fields
.field announcementAdapter:Lcom/narvii/announcement/AnnouncementListFragment$AnnouncementAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 47
    new-instance p1, Lcom/narvii/announcement/AnnouncementListFragment$AnnouncementAdapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/announcement/AnnouncementListFragment$AnnouncementAdapter;-><init>(Lcom/narvii/announcement/AnnouncementListFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/announcement/AnnouncementListFragment;->announcementAdapter:Lcom/narvii/announcement/AnnouncementListFragment$AnnouncementAdapter;

    .line 48
    iget-object p1, p0, Lcom/narvii/announcement/AnnouncementListFragment;->announcementAdapter:Lcom/narvii/announcement/AnnouncementListFragment$AnnouncementAdapter;

    const/4 v0, 0x1

    const v1, 0x7f06007d

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(ZI)V

    .line 49
    iget-object p1, p0, Lcom/narvii/announcement/AnnouncementListFragment;->announcementAdapter:Lcom/narvii/announcement/AnnouncementListFragment$AnnouncementAdapter;

    return-object p1
.end method

.method protected getFrameDarkBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    const-string v0, "fromAggregation"

    .line 88
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0

    .line 91
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->getFrameDarkBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "TeamAmino"

    return-object v0
.end method

.method public initNVTheme()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected initVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 2

    .line 171
    new-instance v0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;-><init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V

    return-object v0
.end method

.method public isGlobal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 65
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0f0113

    .line 66
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const-string v0, "feed"

    .line 67
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 68
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/narvii/model/Feed$FeedDeserializer;

    invoke-direct {v0}, Lcom/narvii/model/Feed$FeedDeserializer;-><init>()V

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readUsing(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Feed;

    if-eqz p1, :cond_0

    .line 70
    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/model/Feed;)Landroid/content/Intent;

    move-result-object p1

    .line 71
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 p1, 0x1

    .line 74
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setDarkTheme(Z)V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 96
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const-string p1, "fromAggregation"

    .line 98
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06007d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 99
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVListView;

    invoke-virtual {p2, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 100
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVListView;

    invoke-virtual {p2, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 101
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVListView;

    invoke-virtual {p2, p1}, Lcom/narvii/widget/NVListView;->setListContentBackgroundColor(I)V

    return-void
.end method

.method public onPause()V
    .locals 4

    .line 161
    iget-object v0, p0, Lcom/narvii/announcement/AnnouncementListFragment;->announcementAdapter:Lcom/narvii/announcement/AnnouncementListFragment$AnnouncementAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 162
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Feed;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 163
    :goto_1
    new-instance v1, Lcom/narvii/util/PreferencesHelper;

    invoke-direct {v1, p0}, Lcom/narvii/util/PreferencesHelper;-><init>(Lcom/narvii/app/NVContext;)V

    if-nez v0, :cond_2

    const-wide/16 v2, 0x1

    goto :goto_2

    .line 164
    :cond_2
    iget-object v0, v0, Lcom/narvii/model/Feed;->createdTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    :goto_2
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/PreferencesHelper;->saveAnnouncementLastReadTime(J)V

    .line 165
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onPause()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 79
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p1, 0x7f0b0311

    .line 80
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0903e3

    .line 81
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f0f0114

    .line 82
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
