.class public Lcom/narvii/sharedfolder/SharedAlbumFragment;
.super Lcom/narvii/sharedfolder/SharedBaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# static fields
.field public static final MODE_SINGLE_PICK_CHOOSE_PHOTO:Ljava/lang/String; = "singlePickChoosePhoto"

.field public static final MODE_SINGLE_PICK_UPLOAD_PHOTO:Ljava/lang/String; = "singlePickUploadPhoto"

.field static final SORT_ITEM_REQUEST:I = 0x1


# instance fields
.field albumCount:I

.field filterAlbumId:Ljava/lang/String;

.field public fromHomeTab:Z

.field selectMode:Ljava/lang/String;

.field public sharedAlbumAdapter:Lcom/narvii/sharedfolder/SharedAlbumAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedBaseFragment;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->albumCount:I

    .line 7
    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 8

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    const v1, 0x7f070081

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 20
    move-result v7

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/list/DivideColumnAdapter;

    .line 23
    .line 24
    iget-boolean v1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->fromHomeTab:Z

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    neg-int v1, v7

    .line 28
    move v6, v1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v6, v7

    .line 31
    :goto_0
    move-object v2, v0

    .line 32
    move-object v3, p0

    .line 33
    move v4, v7

    .line 34
    move v5, v7

    .line 35
    .line 36
    .line 37
    invoke-direct/range {v2 .. v7}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 38
    const/4 v1, 0x1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/narvii/list/DivideColumnAdapter;->setSupportLongClick(Z)V

    .line 42
    .line 43
    new-instance v2, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;

    .line 44
    .line 45
    .line 46
    invoke-direct {v2, p0, p0}, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;-><init>(Lcom/narvii/sharedfolder/SharedAlbumFragment;Lcom/narvii/app/NVContext;)V

    .line 47
    .line 48
    iput-object v2, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->sharedAlbumAdapter:Lcom/narvii/sharedfolder/SharedAlbumAdapter;

    .line 49
    .line 50
    const-string v3, "All Albums"

    .line 51
    .line 52
    iput-object v3, v2, Lcom/narvii/sharedfolder/SharedAlbumAdapter;->source:Ljava/lang/String;

    .line 53
    const/4 v3, 0x2

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2, v3}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 57
    .line 58
    const-string v2, "fromTab"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 62
    move-result v2

    .line 63
    .line 64
    if-nez v2, :cond_1

    .line 65
    .line 66
    new-instance v2, Lcom/narvii/list/StaticViewAdapter;

    .line 67
    .line 68
    .line 69
    invoke-direct {v2}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    .line 70
    .line 71
    new-array v3, v1, [Landroid/view/View;

    .line 72
    .line 73
    new-instance v4, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 77
    move-result-object v5

    .line 78
    .line 79
    .line 80
    invoke-direct {v4, v5}, Lcom/narvii/list/overlay/OverlayListPlaceholder;-><init>(Landroid/content/Context;)V

    .line 81
    const/4 v5, 0x0

    .line 82
    .line 83
    aput-object v4, v3, v5

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v3}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    .line 91
    .line 92
    :cond_1
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 93
    return-object p1
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->selectMode:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    .line 10
    const p1, 0x7f121078

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->setCrossBackIcon()V

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_0
    const p1, 0x7f120101

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 24
    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, -0x1

    .line 6
    .line 7
    if-ne p2, v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->sharedAlbumAdapter:Lcom/narvii/sharedfolder/SharedAlbumAdapter;

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/narvii/sharedfolder/SharedAlbumAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 18
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/sharedfolder/SharedBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "selectMode"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->selectMode:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedBaseFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 14
    .line 15
    const-string v1, "All Albums"

    .line 16
    .line 17
    iput-object v1, v0, Lcom/narvii/sharedfolder/SharedFolderHelper;->source:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x1

    .line 24
    .line 25
    const-string v3, "fromTab"

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    move v0, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v0, v1

    .line 37
    .line 38
    :goto_0
    iput-boolean v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->fromHomeTab:Z

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    const-string v0, "albumCount"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 46
    move-result v0

    .line 47
    .line 48
    iput v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->albumCount:I

    .line 49
    .line 50
    :cond_1
    const-string v0, "filterAlbumId"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->filterAlbumId:Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 60
    move-result v0

    .line 61
    .line 62
    if-nez v0, :cond_2

    .line 63
    .line 64
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->selectMode:Ljava/lang/String;

    .line 65
    .line 66
    if-nez v0, :cond_2

    .line 67
    move v1, v2

    .line 68
    .line 69
    .line 70
    :cond_2
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 71
    .line 72
    if-nez p1, :cond_3

    .line 73
    .line 74
    const-string p1, "statistics"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 81
    .line 82
    const-string v0, "All Albums Opened"

    .line 83
    .line 84
    .line 85
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    const-string v0, "Source"

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    const-string v0, "All Albums Opened Total"

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 102
    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    const v0, 0x7f120d22

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, p2, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    const p2, 0x7f080504

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 18
    move-result-object p1

    .line 19
    const/4 p2, 0x2

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 23
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v0, v0, Lcom/narvii/model/SharedAlbum;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object p1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    const-string v0, "delete"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    .line 20
    const v1, 0x7f120101

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const-string v0, "new"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result p1

    .line 29
    .line 30
    if-nez p1, :cond_0

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->sharedAlbumAdapter:Lcom/narvii/sharedfolder/SharedAlbumAdapter;

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    iget p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->albumCount:I

    .line 38
    .line 39
    add-int/lit8 p1, p1, 0x1

    .line 40
    .line 41
    iput p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->albumCount:I

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    iget v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->albumCount:I

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v0}, Lcom/narvii/util/text/TextUtils;->getCountTitle(Ljava/lang/String;I)Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/SharedAlbumFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_1
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->sharedAlbumAdapter:Lcom/narvii/sharedfolder/SharedAlbumAdapter;

    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    iget p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->albumCount:I

    .line 62
    .line 63
    add-int/lit8 p1, p1, -0x1

    .line 64
    .line 65
    iput p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->albumCount:I

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    iget v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->albumCount:I

    .line 72
    .line 73
    .line 74
    invoke-static {p1, v0}, Lcom/narvii/util/text/TextUtils;->getCountTitle(Ljava/lang/String;I)Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/SharedAlbumFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    :cond_2
    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f120d22

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    .line 16
    :cond_0
    const-class p1, Lcom/narvii/sharedfolder/MyUploadsFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-static {p0, p1}, Lcom/narvii/sharedfolder/SharedAlbumFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 24
    const/4 p1, 0x1

    .line 25
    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "albumCount"

    .line 6
    .line 7
    iget v1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->albumCount:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 11
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/sharedfolder/SharedBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->emptyView:Landroid/view/View;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    const/4 p1, 0x0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    const p2, 0x7f0a04e9

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    :goto_0
    if-eqz p1, :cond_1

    .line 19
    .line 20
    new-instance p2, Lcom/narvii/sharedfolder/SharedAlbumFragment$1;

    .line 21
    .line 22
    .line 23
    invoke-direct {p2, p0}, Lcom/narvii/sharedfolder/SharedAlbumFragment$1;-><init>(Lcom/narvii/sharedfolder/SharedAlbumFragment;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->selectMode:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    const p1, 0x7f121078

    .line 12
    .line 13
    .line 14
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 15
    :goto_0
    return-void
.end method
