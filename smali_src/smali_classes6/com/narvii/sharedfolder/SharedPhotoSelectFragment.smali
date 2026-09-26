.class public Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;
.super Lcom/narvii/sharedfolder/SharedBaseFragment;
.source "SourceFile"


# static fields
.field public static final MODE_EDIT:Ljava/lang/String; = "edit"

.field public static final MODE_PICK_UPLOAD:Ljava/lang/String; = "pickUpload"

.field public static final MODE_SINGLE_PICK:Ljava/lang/String; = "singlePick"

.field public static final REQUEST_ADD_TO_ALBUM:I = 0x1


# instance fields
.field id:Ljava/lang/String;

.field rightTextView:Landroid/widget/TextView;

.field selectMode:Ljava/lang/String;

.field sharedAlbum:Lcom/narvii/model/SharedAlbum;

.field public sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedBaseFragment;-><init>()V

    .line 4
    return-void
.end method

.method private isSinglePick()Z
    .locals 2

    .line 1
    .line 2
    const-string v0, "singlePick"

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->selectMode:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method static bridge synthetic t(Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->isSinglePick()Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 9

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/list/StaticViewAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    new-array v2, v1, [Landroid/view/View;

    .line 14
    .line 15
    new-instance v3, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v4

    .line 20
    .line 21
    .line 22
    invoke-direct {v3, v4}, Lcom/narvii/list/overlay/OverlayListPlaceholder;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v4, 0x0

    .line 24
    .line 25
    aput-object v3, v2, v4

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 32
    .line 33
    new-instance v0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$3;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->id:Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, p0, p0, v2}, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$3;-><init>(Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 39
    .line 40
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    .line 41
    .line 42
    new-instance v2, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$4;

    .line 43
    .line 44
    .line 45
    invoke-direct {v2, p0}, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$4;-><init>(Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->setSelectable(ZLcom/narvii/util/Callback;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    const v2, 0x7f0704a0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 59
    move-result v8

    .line 60
    .line 61
    new-instance v0, Lcom/narvii/list/DivideColumnAdapter;

    .line 62
    move-object v3, v0

    .line 63
    move-object v4, p0

    .line 64
    move v5, v8

    .line 65
    move v6, v8

    .line 66
    move v7, v8

    .line 67
    .line 68
    .line 69
    invoke-direct/range {v3 .. v8}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 70
    .line 71
    iget-object v2, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    .line 72
    const/4 v3, 0x3

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v2, v3}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 79
    return-object p1
.end method

.method public getRightActionStringId()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->selectMode:Ljava/lang/String;

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
    .locals 2
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
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 14
    .line 15
    .line 16
    const v0, 0x7f1201e2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVActivity;->setActionBarLeftTextView(I)Landroid/widget/TextView;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->selectMode:Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 25
    .line 26
    const-string v1, "pickUpload"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v1

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    const-string v1, "edit"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v0

    .line 39
    .line 40
    if-nez v0, :cond_0

    .line 41
    goto :goto_0

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->getRightActionStringId()I

    .line 45
    move-result v0

    .line 46
    .line 47
    new-instance v1, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;

    .line 48
    .line 49
    .line 50
    invoke-direct {v1, p0}, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;-><init>(Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0, v1}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/view/View$OnClickListener;)V

    .line 54
    goto :goto_0

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->getRightActionStringId()I

    .line 58
    move-result v0

    .line 59
    .line 60
    new-instance v1, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$2;

    .line 61
    .line 62
    .line 63
    invoke-direct {v1, p0}, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$2;-><init>(Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0, v1}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/view/View$OnClickListener;)V

    .line 67
    .line 68
    .line 69
    :goto_0
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getRightTextView()Landroid/widget/TextView;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->rightTextView:Landroid/widget/TextView;

    .line 73
    const/4 v0, 0x0

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVActivity;->setRightViewEnabled(Z)V

    .line 77
    :cond_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-ne p2, v0, :cond_1

    .line 4
    .line 5
    const/16 v1, 0x64

    .line 6
    .line 7
    if-ne p1, v1, :cond_1

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->isSinglePick()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    new-instance v1, Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 21
    .line 22
    const-string v2, "mediaItem"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    const-string v3, "photo"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_0
    const-string v1, "selected"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    const-class v2, Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    iget-object v2, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    .line 55
    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v1}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->setSelectedIds(Ljava/util/List;)V

    .line 60
    .line 61
    :cond_1
    :goto_0
    if-ne p2, v0, :cond_2

    .line 62
    const/4 v0, 0x1

    .line 63
    .line 64
    if-ne p1, v0, :cond_2

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 68
    .line 69
    .line 70
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 71
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/sharedfolder/SharedBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "id"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->id:Ljava/lang/String;

    .line 12
    .line 13
    const-string p1, "selectMode"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->selectMode:Ljava/lang/String;

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    const-string p1, "please specify select mode"

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 34
    return-void

    .line 35
    .line 36
    :cond_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->id:Ljava/lang/String;

    .line 37
    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 46
    return-void

    .line 47
    .line 48
    :cond_1
    const-string p1, "album"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    const-class v0, Lcom/narvii/model/SharedAlbum;

    .line 55
    .line 56
    .line 57
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    check-cast p1, Lcom/narvii/model/SharedAlbum;

    .line 61
    .line 62
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->sharedAlbum:Lcom/narvii/model/SharedAlbum;

    .line 63
    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Lcom/narvii/model/SharedAlbum;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    :cond_2
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/sharedfolder/SharedBaseFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 11
    return-void
.end method
