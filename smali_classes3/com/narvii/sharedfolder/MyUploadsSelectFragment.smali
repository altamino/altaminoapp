.class public Lcom/narvii/sharedfolder/MyUploadsSelectFragment;
.super Lcom/narvii/sharedfolder/MyUploadsBaseFragment;
.source "MyUploadsSelectFragment.java"

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

    .line 37
    invoke-direct {p0}, Lcom/narvii/sharedfolder/MyUploadsBaseFragment;-><init>()V

    return-void
.end method

.method private allowShowUpload()Z
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment;->selectMode:Ljava/lang/String;

    const-string v1, "pickUpload"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected addPhotos(Ljava/lang/String;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment;->selectMode:Ljava/lang/String;

    const-string v1, "pickUpload"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedBaseFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    new-instance v1, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$2;-><init>(Lcom/narvii/sharedfolder/MyUploadsSelectFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/narvii/sharedfolder/SharedFolderHelper;->checkUploadPhotoEligible(Lcom/narvii/util/Callback;)V

    return-void

    .line 106
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/sharedfolder/SharedBaseFragment;->addPhotos(Ljava/lang/String;)V

    return-void
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 4

    .line 58
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 60
    new-instance p1, Lcom/narvii/list/StaticViewAdapter;

    invoke-direct {p1}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    .line 61
    new-instance v2, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/list/overlay/OverlayListPlaceholder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 62
    iget-object v1, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    invoke-virtual {v1, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedBaseFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    invoke-virtual {p1}, Lcom/narvii/sharedfolder/SharedFolderHelper;->canUploadPhoto()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/narvii/sharedfolder/MyUploadsSelectFragment;->allowShowUpload()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 65
    new-instance p1, Lcom/narvii/sharedfolder/MyUploadsBaseFragment$UploadAdapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/sharedfolder/MyUploadsBaseFragment$UploadAdapter;-><init>(Lcom/narvii/sharedfolder/MyUploadsBaseFragment;Lcom/narvii/app/NVContext;)V

    .line 66
    iget-object v1, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    invoke-virtual {v1, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    invoke-virtual {p0, v0}, Lcom/narvii/sharedfolder/MyUploadsBaseFragment;->getPhotoAdapter(Z)Lcom/narvii/list/NVAdapter;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 71
    iget-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsBaseFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    new-instance v0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$1;-><init>(Lcom/narvii/sharedfolder/MyUploadsSelectFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->setOnSelectedCountChangeListener(Lcom/narvii/sharedfolder/SharedPhotosAdapter$OnSelectedCountChangeListener;)V

    .line 80
    iget-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    return-object p1
.end method

.method public getRightActionStringId()I
    .locals 4

    .line 202
    iget-object v0, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment;->selectMode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7014e27e

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const v2, 0x2f6e0a

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "edit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "pickUpload"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const v1, 0x7f0f0c24

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    return v1

    :cond_3
    const v0, 0x7f0f03aa

    return v0

    :cond_4
    return v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    .line 119
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 121
    instance-of v0, p1, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_5

    .line 122
    iget-object v0, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment;->selectMode:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x7014e27e

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_1

    const v3, 0x2f6e0a

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "edit"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v2, "pickUpload"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_3

    goto :goto_1

    .line 179
    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {p0}, Lcom/narvii/sharedfolder/MyUploadsSelectFragment;->getRightActionStringId()I

    move-result v1

    new-instance v2, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$4;

    invoke-direct {v2, p0}, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$4;-><init>(Lcom/narvii/sharedfolder/MyUploadsSelectFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 124
    :cond_4
    move-object v0, p1

    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {p0}, Lcom/narvii/sharedfolder/MyUploadsSelectFragment;->getRightActionStringId()I

    move-result v1

    new-instance v2, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3;

    invoke-direct {v2, p0}, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3;-><init>(Lcom/narvii/sharedfolder/MyUploadsSelectFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/view/View$OnClickListener;)V

    .line 195
    :goto_1
    check-cast p1, Lcom/narvii/app/NVActivity;

    const v0, 0x7f0f0193

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVActivity;->setActionBarLeftTextView(I)Landroid/widget/TextView;

    .line 196
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getRightTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment;->rightTextView:Landroid/widget/TextView;

    .line 197
    invoke-virtual {p1, v4}, Lcom/narvii/app/NVActivity;->setRightViewEnabled(Z)V

    :cond_5
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 114
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/sharedfolder/MyUploadsBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 52
    invoke-super {p0, p1}, Lcom/narvii/sharedfolder/SharedBaseFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "selectMode"

    .line 53
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment;->selectMode:Ljava/lang/String;

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 213
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/sharedfolder/PhotoUpload;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/sharedfolder/MyUploadsBaseFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment;->selectMode:Ljava/lang/String;

    const-string v1, "pickUpload"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/narvii/sharedfolder/MyUploadsBaseFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/narvii/sharedfolder/PhotoUpload;

    iget-object p1, p1, Lcom/narvii/sharedfolder/PhotoUpload;->fileIdList:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->setSelectedIds(Ljava/util/List;)V

    :cond_0
    return-void
.end method
