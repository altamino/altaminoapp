.class Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$7;
.super Ljava/lang/Object;
.source "SharedAlbumDetailFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$7;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 3

    .line 259
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$7;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 260
    new-instance v0, Lcom/narvii/sharedfolder/AlbumInfoPost;

    invoke-direct {v0}, Lcom/narvii/sharedfolder/AlbumInfoPost;-><init>()V

    .line 261
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$7;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    iget-object v1, v1, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->adapter:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;

    invoke-virtual {v1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/SharedAlbum;

    if-nez v1, :cond_0

    return-void

    .line 265
    :cond_0
    iget-object v2, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$7;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/model/SharedAlbum;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/narvii/sharedfolder/AlbumInfoPost;->title:Ljava/lang/String;

    .line 266
    iget-object v2, v1, Lcom/narvii/model/SharedAlbum;->description:Ljava/lang/String;

    iput-object v2, v0, Lcom/narvii/sharedfolder/AlbumInfoPost;->description:Ljava/lang/String;

    .line 267
    iget-object v2, v1, Lcom/narvii/model/SharedAlbum;->coverMediaList:Ljava/util/List;

    iput-object v2, v0, Lcom/narvii/sharedfolder/AlbumInfoPost;->coverMediaList:Ljava/util/List;

    .line 268
    invoke-virtual {v1}, Lcom/narvii/model/SharedAlbum;->isDefaultAlbum()Z

    move-result v2

    iput-boolean v2, v0, Lcom/narvii/sharedfolder/AlbumInfoPost;->isDefaultFolder:Z

    .line 269
    iget v2, v1, Lcom/narvii/model/SharedAlbum;->status:I

    iput v2, v0, Lcom/narvii/sharedfolder/AlbumInfoPost;->status:I

    .line 270
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "post"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    iget-object v0, v1, Lcom/narvii/model/SharedAlbum;->folderId:Ljava/lang/String;

    const-string v2, "folderId"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "album"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$7;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
