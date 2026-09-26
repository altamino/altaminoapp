.class Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6$1;->this$1:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 4

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6$1;->this$1:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 7
    .line 8
    const-string v0, "shared_photo_pick"

    .line 9
    .line 10
    iput-object v0, p1, Lcom/narvii/media/MediaPickerFragment;->pickCallback:Ljava/lang/String;

    .line 11
    .line 12
    new-instance p1, Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6$1;->this$1:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6;->val$sharedAlbum:Lcom/narvii/model/SharedAlbum;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/model/SharedAlbum;->id()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    const-string v1, "folderId"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    const-string v0, "Source"

    .line 31
    .line 32
    const-string v1, "Album"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6$1;->this$1:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    .line 40
    .line 41
    iget-object v1, v0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 42
    .line 43
    iput-object p1, v1, Lcom/narvii/media/MediaPickerFragment;->pickCallbackParams:Ljava/util/HashMap;

    .line 44
    .line 45
    iget-object p1, v0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->dir:Ljava/io/File;

    .line 46
    const/4 v0, 0x0

    .line 47
    .line 48
    const/16 v2, 0x19

    .line 49
    const/4 v3, 0x0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1, v3, v0, v2}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    .line 53
    return-void
.end method
