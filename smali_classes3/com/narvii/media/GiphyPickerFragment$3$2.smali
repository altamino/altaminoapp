.class Lcom/narvii/media/GiphyPickerFragment$3$2;
.super Ljava/lang/Object;
.source "GiphyPickerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/GiphyPickerFragment$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/media/GiphyPickerFragment$3;

.field final synthetic val$results:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/narvii/media/GiphyPickerFragment$3;Ljava/util/ArrayList;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/narvii/media/GiphyPickerFragment$3$2;->this$1:Lcom/narvii/media/GiphyPickerFragment$3;

    iput-object p2, p0, Lcom/narvii/media/GiphyPickerFragment$3$2;->val$results:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 268
    iget-object v0, p0, Lcom/narvii/media/GiphyPickerFragment$3$2;->this$1:Lcom/narvii/media/GiphyPickerFragment$3;

    invoke-static {v0}, Lcom/narvii/media/GiphyPickerFragment$3;->access$200(Lcom/narvii/media/GiphyPickerFragment$3;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 269
    iget-object v0, p0, Lcom/narvii/media/GiphyPickerFragment$3$2;->this$1:Lcom/narvii/media/GiphyPickerFragment$3;

    iget-object v0, v0, Lcom/narvii/media/GiphyPickerFragment$3;->val$dlg:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 271
    iget-object v0, p0, Lcom/narvii/media/GiphyPickerFragment$3$2;->this$1:Lcom/narvii/media/GiphyPickerFragment$3;

    iget-object v0, v0, Lcom/narvii/media/GiphyPickerFragment$3;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    const-string v1, "photo"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/photos/PhotoManager;

    .line 273
    iget-object v1, p0, Lcom/narvii/media/GiphyPickerFragment$3$2;->val$results:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 274
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 275
    iget-object v2, p0, Lcom/narvii/media/GiphyPickerFragment$3$2;->val$results:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 277
    :try_start_0
    iget-object v4, p0, Lcom/narvii/media/GiphyPickerFragment$3$2;->this$1:Lcom/narvii/media/GiphyPickerFragment$3;

    iget-object v4, v4, Lcom/narvii/media/GiphyPickerFragment$3;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "dir"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 278
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/narvii/photos/PhotoManager;->importPhoto(Ljava/io/File;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 279
    new-instance v5, Lcom/narvii/model/Media;

    invoke-direct {v5}, Lcom/narvii/model/Media;-><init>()V

    const/16 v6, 0x64

    .line 280
    iput v6, v5, Lcom/narvii/model/Media;->type:I

    .line 281
    iput-object v4, v5, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 282
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 284
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to import image from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 288
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 289
    iget-object v0, p0, Lcom/narvii/media/GiphyPickerFragment$3$2;->this$1:Lcom/narvii/media/GiphyPickerFragment$3;

    iget-object v0, v0, Lcom/narvii/media/GiphyPickerFragment$3;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    const-string v2, "pickCallback"

    invoke-virtual {v0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "mediaList"

    if-eqz v0, :cond_4

    .line 291
    iget-object v3, p0, Lcom/narvii/media/GiphyPickerFragment$3$2;->this$1:Lcom/narvii/media/GiphyPickerFragment$3;

    iget-object v3, v3, Lcom/narvii/media/GiphyPickerFragment$3;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    const-string v4, "mediaPickCallback"

    invoke-virtual {v3, v4}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/media/MediaPickCallbackManager;

    if-nez v3, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 292
    :cond_1
    invoke-virtual {v3, v0}, Lcom/narvii/media/MediaPickCallbackManager;->getCallback(Ljava/lang/String;)Lcom/narvii/media/MediaPickCallback;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_2

    return-void

    .line 296
    :cond_2
    iget-object v3, p0, Lcom/narvii/media/GiphyPickerFragment$3$2;->this$1:Lcom/narvii/media/GiphyPickerFragment$3;

    iget-object v3, v3, Lcom/narvii/media/GiphyPickerFragment$3;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "pickCallbackParams"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    if-nez v3, :cond_3

    .line 298
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 300
    :cond_3
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pickSource"

    const-string v2, "Giphy"

    .line 301
    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object v1, p0, Lcom/narvii/media/GiphyPickerFragment$3$2;->this$1:Lcom/narvii/media/GiphyPickerFragment$3;

    iget-object v1, v1, Lcom/narvii/media/GiphyPickerFragment$3;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/narvii/app/NVActivity;

    const/4 v2, 0x1

    invoke-interface {v0, v3, v1, v2}, Lcom/narvii/media/MediaPickCallback;->onPick(Ljava/util/HashMap;Lcom/narvii/app/NVActivity;Z)V

    goto :goto_2

    .line 304
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 305
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    iget-object v1, p0, Lcom/narvii/media/GiphyPickerFragment$3$2;->this$1:Lcom/narvii/media/GiphyPickerFragment$3;

    iget-object v1, v1, Lcom/narvii/media/GiphyPickerFragment$3;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 307
    iget-object v0, p0, Lcom/narvii/media/GiphyPickerFragment$3$2;->this$1:Lcom/narvii/media/GiphyPickerFragment$3;

    iget-object v0, v0, Lcom/narvii/media/GiphyPickerFragment$3;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->finish()V

    :cond_5
    :goto_2
    return-void
.end method
