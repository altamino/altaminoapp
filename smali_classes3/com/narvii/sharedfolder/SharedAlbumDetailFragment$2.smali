.class Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$2;
.super Lcom/narvii/list/NVAdapter;
.source "SharedAlbumDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    invoke-virtual {v0}, Lcom/narvii/sharedfolder/SharedFolderHelper;->canUploadPhoto()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->errorMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p1, 0x7f0b0412

    .line 114
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 115
    new-instance p2, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$2$1;

    invoke-direct {p2, p0}, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$2$1;-><init>(Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$2;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
