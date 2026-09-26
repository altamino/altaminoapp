.class Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$5;
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


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;Lcom/narvii/model/SharedAlbum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$5;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$5;->val$sharedAlbum:Lcom/narvii/model/SharedAlbum;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 4

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$5;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 5
    .line 6
    const-string v0, "shared_photo_pick"

    .line 7
    .line 8
    iput-object v0, p1, Lcom/narvii/media/MediaPickerFragment;->pickCallback:Ljava/lang/String;

    .line 9
    .line 10
    new-instance p1, Ljava/util/HashMap;

    .line 11
    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$5;->val$sharedAlbum:Lcom/narvii/model/SharedAlbum;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/model/SharedAlbum;->id()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    const-string v1, "folderId"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    const-string v0, "Source"

    .line 27
    .line 28
    const-string v1, "Album"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$5;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    .line 34
    .line 35
    iget-object v1, v0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 36
    .line 37
    iput-object p1, v1, Lcom/narvii/media/MediaPickerFragment;->pickCallbackParams:Ljava/util/HashMap;

    .line 38
    .line 39
    iget-object p1, v0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->dir:Ljava/io/File;

    .line 40
    const/4 v0, 0x0

    .line 41
    .line 42
    const/16 v2, 0x19

    .line 43
    const/4 v3, 0x0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1, v3, v0, v2}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    .line 47
    return-void
.end method
