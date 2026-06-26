.class Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$4;
.super Ljava/lang/Object;
.source "SharedAlbumInfoPostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->onItemClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;

.field final synthetic val$optCover:[I


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;[I)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$4;->this$0:Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;

    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$4;->val$optCover:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 283
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$4;->val$optCover:[I

    aget p1, p1, p2

    const p2, 0x7f0f01c0

    if-eq p1, p2, :cond_1

    const p2, 0x7f0f1164

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 285
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$4;->this$0:Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;

    invoke-virtual {p2}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Lcom/narvii/media/MediaGalleryActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 286
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$4;->this$0:Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;

    iget-object p2, p2, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->post:Lcom/narvii/sharedfolder/AlbumInfoPost;

    iget-object p2, p2, Lcom/narvii/sharedfolder/AlbumInfoPost;->coverMediaList:Ljava/util/List;

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "list"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x0

    const-string v0, "position"

    .line 287
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 288
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$4;->this$0:Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 291
    :cond_1
    const-class p1, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 292
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$4;->this$0:Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;

    const-string v0, "folderId"

    invoke-virtual {p2, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "id"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "selectMode"

    const-string v0, "singlePick"

    .line 293
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$4;->this$0:Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;

    const-string v0, "album"

    invoke-virtual {p2, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$4;->this$0:Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method
