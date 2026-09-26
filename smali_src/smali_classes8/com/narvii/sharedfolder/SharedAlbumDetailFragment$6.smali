.class Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6;->val$sourceExtra:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6;->val$sharedAlbum:Lcom/narvii/model/SharedAlbum;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6;->val$sourceExtra:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v1, v0, Lcom/narvii/sharedfolder/SharedFolderHelper;->sourceExtra:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    new-instance v2, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6$1;

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, p0}, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6$1;-><init>(Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1, v1, v2}, Lcom/narvii/sharedfolder/SharedFolderHelper;->showUploadChooseSourceDialog(Landroid/content/Context;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    .line 27
    return-void
.end method
