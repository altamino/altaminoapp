.class public abstract Lcom/narvii/sharedfolder/MyUploadsBaseFragment;
.super Lcom/narvii/sharedfolder/SharedBaseFragment;
.source "MyUploadsBaseFragment.java"

# interfaces
.implements Lcom/narvii/list/HoverAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/sharedfolder/MyUploadsBaseFragment$UploadAdapter;
    }
.end annotation


# instance fields
.field protected sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getPhotoAdapter(Z)Lcom/narvii/list/NVAdapter;
    .locals 8

    .line 58
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070282

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 59
    new-instance v0, Lcom/narvii/list/DivideColumnAdapter;

    move-object v2, v0

    move-object v3, p0

    move v4, v7

    move v5, v7

    move v6, v7

    invoke-direct/range {v2 .. v7}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 60
    new-instance v1, Lcom/narvii/sharedfolder/MyUploadsBaseFragment$1;

    invoke-direct {v1, p0, p0}, Lcom/narvii/sharedfolder/MyUploadsBaseFragment$1;-><init>(Lcom/narvii/sharedfolder/MyUploadsBaseFragment;Lcom/narvii/app/NVContext;)V

    iput-object v1, p0, Lcom/narvii/sharedfolder/MyUploadsBaseFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    .line 81
    iget-object v1, p0, Lcom/narvii/sharedfolder/MyUploadsBaseFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    const-string v2, "My Uploads"

    iput-object v2, v1, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->source:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 83
    new-instance v2, Lcom/narvii/sharedfolder/MyUploadsBaseFragment$2;

    invoke-direct {v2, p0}, Lcom/narvii/sharedfolder/MyUploadsBaseFragment$2;-><init>(Lcom/narvii/sharedfolder/MyUploadsBaseFragment;)V

    invoke-virtual {v1, p1, v2}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->setSelectable(ZLcom/narvii/util/Callback;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v2, 0x0

    .line 90
    invoke-virtual {v1, p1, v2}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->setSelectable(ZLcom/narvii/util/Callback;)V

    .line 93
    :goto_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsBaseFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    return-object v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f0f0bf7

    .line 34
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected hoverChangeTitle()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isHover(I)Z
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 54
    :cond_0
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/date/DateSection;

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "selected"

    .line 100
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v1, p0, Lcom/narvii/sharedfolder/MyUploadsBaseFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {v1, v0}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->setSelectedIds(Ljava/util/List;)V

    .line 105
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 39
    invoke-super {p0, p1, p2}, Lcom/narvii/sharedfolder/SharedBaseFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0, p0}, Lcom/narvii/list/NVListFragment;->setHoverAdapter(Lcom/narvii/list/HoverAdapter;)V

    return-void
.end method
