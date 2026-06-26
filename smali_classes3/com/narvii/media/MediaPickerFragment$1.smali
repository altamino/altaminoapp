.class Lcom/narvii/media/MediaPickerFragment$1;
.super Ljava/lang/Object;
.source "MediaPickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/MediaPickerFragment;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ActionSheetDialog;

.field final synthetic val$li:Lcom/narvii/media/MediaPickerFragment$LatestImage;


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaPickerFragment;Lcom/narvii/media/MediaPickerFragment$LatestImage;Lcom/narvii/util/dialog/ActionSheetDialog;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/narvii/media/MediaPickerFragment$1;->this$0:Lcom/narvii/media/MediaPickerFragment;

    iput-object p2, p0, Lcom/narvii/media/MediaPickerFragment$1;->val$li:Lcom/narvii/media/MediaPickerFragment$LatestImage;

    iput-object p3, p0, Lcom/narvii/media/MediaPickerFragment$1;->val$dlg:Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 305
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 306
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment$1;->this$0:Lcom/narvii/media/MediaPickerFragment;

    const-string v1, "photo"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/photos/PhotoManager;

    .line 309
    :try_start_0
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment$1;->this$0:Lcom/narvii/media/MediaPickerFragment;

    invoke-static {v1}, Lcom/narvii/media/MediaPickerFragment;->access$100(Lcom/narvii/media/MediaPickerFragment;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment$1;->this$0:Lcom/narvii/media/MediaPickerFragment;

    invoke-static {v1}, Lcom/narvii/media/MediaPickerFragment;->access$200(Lcom/narvii/media/MediaPickerFragment;)Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isGalleryNoCopy:Z

    if-nez v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment$1;->this$0:Lcom/narvii/media/MediaPickerFragment;

    invoke-static {v1}, Lcom/narvii/media/MediaPickerFragment;->access$100(Lcom/narvii/media/MediaPickerFragment;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/narvii/media/MediaPickerFragment$1;->val$li:Lcom/narvii/media/MediaPickerFragment$LatestImage;

    iget-object v3, v3, Lcom/narvii/media/MediaPickerFragment$LatestImage;->path:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/narvii/photos/PhotoManager;->importPhoto(Ljava/io/File;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 312
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/narvii/media/MediaPickerFragment$1;->val$li:Lcom/narvii/media/MediaPickerFragment$LatestImage;

    iget-object v2, v2, Lcom/narvii/media/MediaPickerFragment$LatestImage;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/narvii/photos/PhotoManager;->getUri(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 315
    :goto_0
    new-instance v1, Lcom/narvii/model/Media;

    invoke-direct {v1}, Lcom/narvii/model/Media;-><init>()V

    const/16 v2, 0x64

    .line 316
    iput v2, v1, Lcom/narvii/model/Media;->type:I

    .line 317
    iput-object v0, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 318
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment$1;->this$0:Lcom/narvii/media/MediaPickerFragment;

    iget-object v0, v0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment$1;->this$0:Lcom/narvii/media/MediaPickerFragment;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment$1;->this$0:Lcom/narvii/media/MediaPickerFragment;

    iget-object v0, v0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    const-string v1, "pickSource"

    const-string v2, "Latest Photo"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment$1;->this$0:Lcom/narvii/media/MediaPickerFragment;

    iget-object v0, v0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    const-string v1, "pickFrom"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 325
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment$1;->this$0:Lcom/narvii/media/MediaPickerFragment;

    invoke-static {v0, p1}, Lcom/narvii/media/MediaPickerFragment;->access$300(Lcom/narvii/media/MediaPickerFragment;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to import image from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment$1;->val$li:Lcom/narvii/media/MediaPickerFragment$LatestImage;

    iget-object v1, v1, Lcom/narvii/media/MediaPickerFragment$LatestImage;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 329
    :goto_1
    iget-object p1, p0, Lcom/narvii/media/MediaPickerFragment$1;->this$0:Lcom/narvii/media/MediaPickerFragment;

    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment$1;->val$li:Lcom/narvii/media/MediaPickerFragment$LatestImage;

    invoke-static {p1, v0}, Lcom/narvii/media/MediaPickerFragment;->access$400(Lcom/narvii/media/MediaPickerFragment;Lcom/narvii/media/MediaPickerFragment$LatestImage;)V

    .line 330
    iget-object p1, p0, Lcom/narvii/media/MediaPickerFragment$1;->val$dlg:Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method
