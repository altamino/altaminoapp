.class public Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;
.super Lcom/narvii/sharedfolder/SharedBaseFragment;
.source "SharedPhotoSelectFragment.java"


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

    .line 39
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;)Z
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->isSinglePick()Z

    move-result p0

    return p0
.end method

.method private isSinglePick()Z
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->selectMode:Ljava/lang/String;

    const-string v1, "singlePick"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 9

    .line 205
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 207
    new-instance v0, Lcom/narvii/list/StaticViewAdapter;

    invoke-direct {v0}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/View;

    .line 208
    new-instance v3, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/narvii/list/overlay/OverlayListPlaceholder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 209
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 211
    new-instance v0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$3;

    iget-object v2, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->id:Ljava/lang/String;

    invoke-direct {v0, p0, p0, v2}, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$3;-><init>(Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    .line 238
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    new-instance v2, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$4;

    invoke-direct {v2, p0}, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$4;-><init>(Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->setSelectable(ZLcom/narvii/util/Callback;)V

    .line 245
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070282

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 246
    new-instance v0, Lcom/narvii/list/DivideColumnAdapter;

    move-object v3, v0

    move-object v4, p0

    move v5, v8

    move v6, v8

    move v7, v8

    invoke-direct/range {v3 .. v8}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 247
    iget-object v2, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 248
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    return-object p1
.end method

.method public getRightActionStringId()I
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->selectMode:Ljava/lang/String;

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

    .line 83
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 85
    instance-of v0, p1, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_5

    .line 86
    check-cast p1, Lcom/narvii/app/NVActivity;

    const v0, 0x7f0f0193

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVActivity;->setActionBarLeftTextView(I)Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->selectMode:Ljava/lang/String;

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

    .line 145
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->getRightActionStringId()I

    move-result v0

    new-instance v1, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$2;

    invoke-direct {v1, p0}, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$2;-><init>(Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 89
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->getRightActionStringId()I

    move-result v0

    new-instance v1, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;

    invoke-direct {v1, p0}, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;-><init>(Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/view/View$OnClickListener;)V

    .line 161
    :goto_1
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getRightTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->rightTextView:Landroid/widget/TextView;

    .line 162
    invoke-virtual {p1, v4}, Lcom/narvii/app/NVActivity;->setRightViewEnabled(Z)V

    :cond_5
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_1

    if-eqz p3, :cond_1

    .line 181
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->isSinglePick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "mediaItem"

    .line 183
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "photo"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 185
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    goto :goto_0

    :cond_0
    const-string v1, "selected"

    .line 187
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 188
    iget-object v2, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    if-eqz v2, :cond_1

    .line 189
    invoke-virtual {v2, v1}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->setSelectedIds(Ljava/util/List;)V

    :cond_1
    :goto_0
    if-ne p2, v0, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 194
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 196
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Lcom/narvii/sharedfolder/SharedBaseFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "id"

    .line 57
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->id:Ljava/lang/String;

    const-string p1, "selectMode"

    .line 58
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->selectMode:Ljava/lang/String;

    .line 59
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->selectMode:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, "please specify select mode"

    .line 60
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->id:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 65
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const-string p1, "album"

    .line 68
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/SharedAlbum;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/SharedAlbum;

    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->sharedAlbum:Lcom/narvii/model/SharedAlbum;

    .line 69
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->sharedAlbum:Lcom/narvii/model/SharedAlbum;

    if-eqz p1, :cond_2

    .line 70
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/model/SharedAlbum;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 76
    invoke-super {p0, p1, p2}, Lcom/narvii/sharedfolder/SharedBaseFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 77
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 78
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setClipChildren(Z)V

    return-void
.end method
