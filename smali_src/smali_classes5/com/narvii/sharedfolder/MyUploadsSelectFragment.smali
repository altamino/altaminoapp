.class public Lcom/narvii/sharedfolder/MyUploadsSelectFragment;
.super Lcom/narvii/sharedfolder/MyUploadsBaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# static fields
.field public static final MODE_EDIT:Ljava/lang/String; = "edit"

.field public static final MODE_PICK_UPLOAD:Ljava/lang/String; = "pickUpload"

.field public static final REQUEST_SELECT_ALBUM:I = 0x1


# instance fields
.field public mergeAdapter:Lcom/narvii/list/MergeAdapter;

.field rightTextView:Landroid/widget/TextView;

.field private selectMode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/sharedfolder/MyUploadsBaseFragment;-><init>()V

    .line 4
    return-void
.end method

.method private allowShowUpload()Z
    .locals 2

    .line 1
    .line 2
    const-string v0, "pickUpload"

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment;->selectMode:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method


# virtual methods
.method protected addPhotos(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "pickUpload"

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment;->selectMode:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedBaseFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 13
    .line 14
    new-instance v1, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$2;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, p0, p1}, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$2;-><init>(Lcom/narvii/sharedfolder/MyUploadsSelectFragment;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/narvii/sharedfolder/SharedFolderHelper;->checkUploadPhotoEligible(Lcom/narvii/util/Callback;)V

    .line 21
    return-void

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/sharedfolder/SharedBaseFragment;->addPhotos(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 4

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 8
    .line 9
    new-instance p1, Lcom/narvii/list/StaticViewAdapter;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    .line 13
    const/4 v0, 0x1

    .line 14
    .line 15
    new-array v1, v0, [Landroid/view/View;

    .line 16
    .line 17
    new-instance v2, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    .line 24
    invoke-direct {v2, v3}, Lcom/narvii/list/overlay/OverlayListPlaceholder;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v3, 0x0

    .line 26
    .line 27
    aput-object v2, v1, v3

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedBaseFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/narvii/sharedfolder/SharedFolderHelper;->canUploadPhoto()Z

    .line 41
    move-result p1

    .line 42
    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/narvii/sharedfolder/MyUploadsSelectFragment;->allowShowUpload()Z

    .line 47
    move-result p1

    .line 48
    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    new-instance p1, Lcom/narvii/sharedfolder/MyUploadsBaseFragment$UploadAdapter;

    .line 52
    .line 53
    .line 54
    invoke-direct {p1, p0, p0}, Lcom/narvii/sharedfolder/MyUploadsBaseFragment$UploadAdapter;-><init>(Lcom/narvii/sharedfolder/MyUploadsBaseFragment;Lcom/narvii/app/NVContext;)V

    .line 55
    .line 56
    iget-object v1, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    .line 61
    :cond_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Lcom/narvii/sharedfolder/MyUploadsBaseFragment;->getPhotoAdapter(Z)Lcom/narvii/list/NVAdapter;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 69
    .line 70
    iget-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsBaseFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    .line 71
    .line 72
    new-instance v0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$1;

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, p0}, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$1;-><init>(Lcom/narvii/sharedfolder/MyUploadsSelectFragment;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->setOnSelectedCountChangeListener(Lcom/narvii/sharedfolder/SharedPhotosAdapter$OnSelectedCountChangeListener;)V

    .line 79
    .line 80
    iget-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 81
    return-object p1
.end method

.method public getRightActionStringId()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment;->selectMode:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    const-string v1, "pickUpload"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    .line 16
    const v0, 0x7f120d51

    .line 17
    return v0

    .line 18
    .line 19
    .line 20
    :cond_0
    const v0, 0x7f120402

    .line 21
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
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
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    instance-of v0, p1, Lcom/narvii/app/NVActivity;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment;->selectMode:Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 17
    .line 18
    const-string v1, "pickUpload"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    const-string v1, "edit"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object v0, p1

    .line 35
    .line 36
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/sharedfolder/MyUploadsSelectFragment;->getRightActionStringId()I

    .line 40
    move-result v1

    .line 41
    .line 42
    new-instance v2, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3;

    .line 43
    .line 44
    .line 45
    invoke-direct {v2, p0}, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3;-><init>(Lcom/narvii/sharedfolder/MyUploadsSelectFragment;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/view/View$OnClickListener;)V

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move-object v0, p1

    .line 51
    .line 52
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/narvii/sharedfolder/MyUploadsSelectFragment;->getRightActionStringId()I

    .line 56
    move-result v1

    .line 57
    .line 58
    new-instance v2, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$4;

    .line 59
    .line 60
    .line 61
    invoke-direct {v2, p0}, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$4;-><init>(Lcom/narvii/sharedfolder/MyUploadsSelectFragment;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1, v2}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/view/View$OnClickListener;)V

    .line 65
    .line 66
    :goto_0
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 67
    .line 68
    .line 69
    const v0, 0x7f1201e2

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVActivity;->setActionBarLeftTextView(I)Landroid/widget/TextView;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getRightTextView()Landroid/widget/TextView;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    iput-object v0, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment;->rightTextView:Landroid/widget/TextView;

    .line 79
    const/4 v0, 0x0

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVActivity;->setRightViewEnabled(Z)V

    .line 83
    :cond_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    if-ne p2, v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/sharedfolder/MyUploadsBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 13
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/sharedfolder/SharedBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "selectMode"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iput-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment;->selectMode:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v0, v0, Lcom/narvii/sharedfolder/PhotoUpload;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/sharedfolder/MyUploadsBaseFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v0, "pickUpload"

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment;->selectMode:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/sharedfolder/MyUploadsBaseFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Lcom/narvii/sharedfolder/PhotoUpload;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/narvii/sharedfolder/PhotoUpload;->fileIdList:Ljava/util/List;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->setSelectedIds(Ljava/util/List;)V

    .line 32
    :cond_0
    return-void
.end method
