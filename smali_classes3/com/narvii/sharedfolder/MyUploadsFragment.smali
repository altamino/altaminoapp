.class public Lcom/narvii/sharedfolder/MyUploadsFragment;
.super Lcom/narvii/sharedfolder/MyUploadsBaseFragment;
.source "MyUploadsFragment.java"


# instance fields
.field public mergeAdapter:Lcom/narvii/list/MergeAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/narvii/sharedfolder/MyUploadsBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 4

    .line 37
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 39
    new-instance p1, Lcom/narvii/list/StaticViewAdapter;

    invoke-direct {p1}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    .line 40
    new-instance v2, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/list/overlay/OverlayListPlaceholder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 41
    iget-object v1, p0, Lcom/narvii/sharedfolder/MyUploadsFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    invoke-virtual {v1, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 43
    new-instance p1, Lcom/narvii/sharedfolder/MyUploadsBaseFragment$UploadAdapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/sharedfolder/MyUploadsBaseFragment$UploadAdapter;-><init>(Lcom/narvii/sharedfolder/MyUploadsBaseFragment;Lcom/narvii/app/NVContext;)V

    .line 44
    iget-object v1, p0, Lcom/narvii/sharedfolder/MyUploadsFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    invoke-virtual {v1, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 46
    iget-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    invoke-virtual {p0, v3}, Lcom/narvii/sharedfolder/MyUploadsBaseFragment;->getPhotoAdapter(Z)Lcom/narvii/list/NVAdapter;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 47
    iget-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsBaseFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    new-instance v0, Lcom/narvii/sharedfolder/MyUploadsFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/sharedfolder/MyUploadsFragment$1;-><init>(Lcom/narvii/sharedfolder/MyUploadsFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->setOnPhotosCountChangeListener(Lcom/narvii/sharedfolder/SharedPhotosAdapter$OnPhotosCountChangeListener;)V

    .line 69
    iget-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 27
    invoke-super {p0, p1}, Lcom/narvii/sharedfolder/SharedBaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
