.class Lcom/narvii/sharedfolder/SharedAlbumFragment$2;
.super Lcom/narvii/sharedfolder/SharedAlbumAdapter;
.source "SharedAlbumFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedAlbumFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedAlbumFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    invoke-direct {p0, p2}, Lcom/narvii/sharedfolder/SharedAlbumAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public createListEndItem(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 0

    const p3, 0x7f0b037a

    .line 235
    invoke-virtual {p0, p3, p1, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 236
    new-instance p2, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2;

    invoke-direct {p2, p0}, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2;-><init>(Lcom/narvii/sharedfolder/SharedAlbumFragment$2;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 169
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/sharedfolder/SharedAlbumAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 170
    iget-object p3, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    iget-object p3, p3, Lcom/narvii/sharedfolder/SharedAlbumFragment;->filterAlbumId:Ljava/lang/String;

    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    instance-of v0, p1, Lcom/narvii/model/SharedAlbum;

    if-eqz v0, :cond_1

    .line 171
    check-cast p1, Lcom/narvii/model/SharedAlbum;

    .line 172
    invoke-virtual {p1}, Lcom/narvii/model/SharedAlbum;->id()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x3dcccccd    # 0.1f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-object p2
.end method

.method public isEmpty()Z
    .locals 1

    .line 187
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 5

    .line 273
    instance-of v0, p3, Lcom/narvii/model/SharedAlbum;

    if-eqz v0, :cond_3

    .line 274
    move-object v0, p3

    check-cast v0, Lcom/narvii/model/SharedAlbum;

    .line 275
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    iget-object v1, v1, Lcom/narvii/sharedfolder/SharedAlbumFragment;->selectMode:Ljava/lang/String;

    const-string v2, "singlePickUploadPhoto"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    iget-object v4, v1, Lcom/narvii/sharedfolder/SharedBaseFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    invoke-virtual {v4, v1, v0}, Lcom/narvii/sharedfolder/SharedFolderHelper;->ifShowAlbumLockedDialog(Lcom/narvii/app/NVContext;Lcom/narvii/model/SharedAlbum;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v3

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    iget-object v1, v1, Lcom/narvii/sharedfolder/SharedAlbumFragment;->filterAlbumId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/narvii/model/SharedAlbum;->id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v3

    .line 281
    :cond_1
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    iget-object v1, v1, Lcom/narvii/sharedfolder/SharedAlbumFragment;->selectMode:Ljava/lang/String;

    const-string v4, "singlePickChoosePhoto"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 282
    const-class p1, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 283
    invoke-virtual {v0}, Lcom/narvii/model/SharedAlbum;->id()Ljava/lang/String;

    move-result-object p2

    const-string p3, "id"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "album"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    const-string p3, "toAlbumId"

    invoke-virtual {p2, p3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "selectMode"

    const-string p3, "pickUpload"

    .line 286
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    .line 288
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return v3

    .line 290
    :cond_2
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    iget-object v1, v1, Lcom/narvii/sharedfolder/SharedAlbumFragment;->selectMode:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 291
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedBaseFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    invoke-virtual {v0}, Lcom/narvii/model/SharedAlbum;->id()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    const-string p4, "fileIdList"

    invoke-virtual {p3, p4}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-class p4, Ljava/lang/String;

    invoke-static {p3, p4}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p3

    new-instance p4, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$3;

    invoke-direct {p4, p0}, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$3;-><init>(Lcom/narvii/sharedfolder/SharedAlbumFragment$2;)V

    invoke-virtual {p1, p2, p3, p4}, Lcom/narvii/sharedfolder/SharedFolderHelper;->addPhotosToAlbum(Ljava/lang/String;Ljava/util/Collection;Lcom/narvii/util/Callback;)V

    return v3

    .line 301
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/narvii/sharedfolder/SharedAlbumAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    iget-object v1, v0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->selectMode:Ljava/lang/String;

    if-nez v1, :cond_1

    instance-of v1, p3, Lcom/narvii/model/SharedAlbum;

    if-eqz v1, :cond_1

    .line 198
    iget-object p1, v0, Lcom/narvii/sharedfolder/SharedBaseFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    invoke-virtual {p1}, Lcom/narvii/sharedfolder/SharedFolderHelper;->canManageAlbum()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 199
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p3, 0x2

    new-array p3, p3, [I

    .line 202
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 203
    iget-object p5, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    const v0, 0x7f0f030b

    invoke-virtual {p5, v0}, Landroid/support/v4/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p5, 0x0

    aput v0, p3, p5

    .line 206
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    const v1, 0x7f0f0ed6

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aput v1, p3, p2

    new-array p5, p5, [Ljava/lang/CharSequence;

    .line 209
    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Ljava/lang/CharSequence;

    new-instance p5, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$1;

    invoke-direct {p5, p0, p3}, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$1;-><init>(Lcom/narvii/sharedfolder/SharedAlbumFragment$2;[I)V

    invoke-virtual {p1, p4, p5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 226
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    return p2

    .line 230
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 154
    check-cast p2, Lcom/narvii/sharedfolder/SharedAlbumListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/sharedfolder/SharedAlbumListResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/sharedfolder/SharedAlbumListResponse;I)V
    .locals 0

    .line 157
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 158
    iget p1, p2, Lcom/narvii/sharedfolder/SharedAlbumListResponse;->totalCount:I

    if-ltz p1, :cond_0

    .line 159
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    iput p1, p2, Lcom/narvii/sharedfolder/SharedAlbumFragment;->albumCount:I

    const p1, 0x7f0f00c2

    .line 160
    invoke-virtual {p2, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    iget p3, p3, Lcom/narvii/sharedfolder/SharedAlbumFragment;->albumCount:I

    invoke-static {p1, p3}, Lcom/narvii/util/text/TextUtils;->getCountTitle(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/narvii/sharedfolder/SharedAlbumFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 161
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/sharedfolder/SharedFolderFragment;

    if-eqz p1, :cond_0

    .line 162
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/narvii/sharedfolder/SharedFolderFragment;

    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    iget p2, p2, Lcom/narvii/sharedfolder/SharedAlbumFragment;->albumCount:I

    invoke-virtual {p1, p2}, Lcom/narvii/sharedfolder/SharedFolderFragment;->setFolderCount(I)V

    :cond_0
    return-void
.end method

.method protected showAllPhotos()Z
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedAlbumFragment;->selectMode:Ljava/lang/String;

    const-string v1, "singlePickUploadPhoto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 182
    :cond_0
    invoke-super {p0}, Lcom/narvii/sharedfolder/SharedAlbumAdapter;->showAllPhotos()Z

    move-result v0

    return v0
.end method

.method public showListEnd(I)Z
    .locals 1

    .line 192
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedBaseFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    invoke-virtual {p1}, Lcom/narvii/sharedfolder/SharedFolderHelper;->canManageAlbum()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumFragment;->selectMode:Ljava/lang/String;

    const-string v0, "singlePickChoosePhoto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
