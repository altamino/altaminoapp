.class Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6;
.super Ljava/lang/Object;
.source "SharedAlbumDetailFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->addPhotos(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

.field final synthetic val$sharedAlbum:Lcom/narvii/model/SharedAlbum;

.field final synthetic val$sourceExtra:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;Ljava/lang/String;Lcom/narvii/model/SharedAlbum;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6;->val$sourceExtra:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6;->val$sharedAlbum:Lcom/narvii/model/SharedAlbum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 3

    .line 176
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    iget-object v0, p1, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6;->val$sourceExtra:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/sharedfolder/SharedFolderHelper;->sourceExtra:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    invoke-virtual {v1}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6$1;

    invoke-direct {v2, p0}, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6$1;-><init>(Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/narvii/sharedfolder/SharedFolderHelper;->showUploadChooseSourceDialog(Landroid/content/Context;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method
