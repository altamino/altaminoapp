.class Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6$1;
.super Ljava/lang/Object;
.source "SharedAlbumDetailFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6;->call(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6$1;->this$1:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 4

    .line 180
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6$1;->this$1:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    const-string v0, "shared_photo_pick"

    iput-object v0, p1, Lcom/narvii/media/MediaPickerFragment;->pickCallback:Ljava/lang/String;

    .line 181
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 182
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6$1;->this$1:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6;

    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6;->val$sharedAlbum:Lcom/narvii/model/SharedAlbum;

    invoke-virtual {v0}, Lcom/narvii/model/SharedAlbum;->id()Ljava/lang/String;

    move-result-object v0

    const-string v1, "folderId"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Source"

    const-string v1, "Album"

    .line 183
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6$1;->this$1:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6;

    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    iget-object v1, v0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    iput-object p1, v1, Lcom/narvii/media/MediaPickerFragment;->pickCallbackParams:Ljava/util/HashMap;

    .line 185
    iget-object p1, v0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->dir:Ljava/io/File;

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x19

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    return-void
.end method
