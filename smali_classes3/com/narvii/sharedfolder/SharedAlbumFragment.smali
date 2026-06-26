.class public Lcom/narvii/sharedfolder/SharedAlbumFragment;
.super Lcom/narvii/sharedfolder/SharedBaseFragment;
.source "SharedAlbumFragment.java"

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

    .line 40
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->albumCount:I

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 8

    .line 150
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 151
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 152
    new-instance v0, Lcom/narvii/list/DivideColumnAdapter;

    iget-boolean v1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->fromHomeTab:Z

    if-eqz v1, :cond_0

    neg-int v1, v7

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, v7

    :goto_0
    move-object v2, v0

    move-object v3, p0

    move v4, v7

    move v5, v7

    invoke-direct/range {v2 .. v7}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    const/4 v1, 0x1

    .line 153
    invoke-virtual {v0, v1}, Lcom/narvii/list/DivideColumnAdapter;->setSupportLongClick(Z)V

    .line 154
    new-instance v2, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;

    invoke-direct {v2, p0, p0}, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;-><init>(Lcom/narvii/sharedfolder/SharedAlbumFragment;Lcom/narvii/app/NVContext;)V

    iput-object v2, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->sharedAlbumAdapter:Lcom/narvii/sharedfolder/SharedAlbumAdapter;

    .line 304
    iget-object v2, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->sharedAlbumAdapter:Lcom/narvii/sharedfolder/SharedAlbumAdapter;

    const-string v3, "All Albums"

    iput-object v3, v2, Lcom/narvii/sharedfolder/SharedAlbumAdapter;->source:Ljava/lang/String;

    const/4 v3, 0x2

    .line 305
    invoke-virtual {v0, v2, v3}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    const-string v2, "fromTab"

    .line 308
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 309
    new-instance v2, Lcom/narvii/list/StaticViewAdapter;

    invoke-direct {v2}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    new-array v3, v1, [Landroid/view/View;

    const/4 v4, 0x0

    .line 310
    new-instance v5, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/narvii/list/overlay/OverlayListPlaceholder;-><init>(Landroid/content/Context;)V

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 311
    invoke-virtual {p1, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 314
    :cond_1
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    return-object p1
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 105
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 106
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->selectMode:Ljava/lang/String;

    if-eqz p1, :cond_0

    const p1, 0x7f0f0f6c

    .line 107
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 108
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->setCrossBackIcon()V

    goto :goto_0

    :cond_0
    const p1, 0x7f0f00c2

    .line 110
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->sharedAlbumAdapter:Lcom/narvii/sharedfolder/SharedAlbumAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/narvii/sharedfolder/SharedAlbumAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 143
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 56
    invoke-super {p0, p1}, Lcom/narvii/sharedfolder/SharedBaseFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "selectMode"

    .line 57
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->selectMode:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedBaseFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    const-string v1, "All Albums"

    iput-object v1, v0, Lcom/narvii/sharedfolder/SharedFolderHelper;->source:Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "fromTab"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->fromHomeTab:Z

    if-eqz p1, :cond_1

    const-string v0, "albumCount"

    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->albumCount:I

    :cond_1
    const-string v0, "filterAlbumId"

    .line 66
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->filterAlbumId:Ljava/lang/String;

    .line 67
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->selectMode:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 116
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p2, 0x7f0f0bf7

    const/4 v0, 0x0

    .line 117
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const p2, 0x7f0803e1

    .line 118
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    .line 119
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 4

    .line 329
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/SharedAlbum;

    if-eqz v0, :cond_5

    .line 330
    iget-object p1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x4f997a55

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const v2, 0x1a9a0

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "new"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "delete"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    const p1, 0x7f0f00c2

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    goto :goto_1

    .line 338
    :cond_3
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->sharedAlbumAdapter:Lcom/narvii/sharedfolder/SharedAlbumAdapter;

    if-eqz v0, :cond_5

    .line 339
    iget v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->albumCount:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->albumCount:I

    .line 340
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->albumCount:I

    invoke-static {p1, v0}, Lcom/narvii/util/text/TextUtils;->getCountTitle(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/SharedAlbumFragment;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 332
    :cond_4
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->sharedAlbumAdapter:Lcom/narvii/sharedfolder/SharedAlbumAdapter;

    if-eqz v0, :cond_5

    .line 333
    iget v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->albumCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->albumCount:I

    .line 334
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->albumCount:I

    invoke-static {p1, v0}, Lcom/narvii/util/text/TextUtils;->getCountTitle(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/SharedAlbumFragment;->setTitle(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 124
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f0bf7

    if-eq v0, v1, :cond_0

    .line 130
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 126
    :cond_0
    const-class p1, Lcom/narvii/sharedfolder/MyUploadsFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 127
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 77
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 78
    iget v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->albumCount:I

    const-string v1, "albumCount"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 83
    invoke-super {p0, p1, p2}, Lcom/narvii/sharedfolder/SharedBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 84
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->emptyView:Landroid/view/View;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const p2, 0x7f0903ea

    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 87
    new-instance p2, Lcom/narvii/sharedfolder/SharedAlbumFragment$1;

    invoke-direct {p2, p0}, Lcom/narvii/sharedfolder/SharedAlbumFragment$1;-><init>(Lcom/narvii/sharedfolder/SharedAlbumFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->selectMode:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 321
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0f0f6c

    .line 323
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    :goto_0
    return-void
.end method
