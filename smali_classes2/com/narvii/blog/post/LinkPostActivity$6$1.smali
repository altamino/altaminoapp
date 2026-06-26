.class Lcom/narvii/blog/post/LinkPostActivity$6$1;
.super Ljava/lang/Object;
.source "LinkPostActivity.java"

# interfaces
.implements Lcom/narvii/blog/post/LinkPostActivity$SaveImageCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/blog/post/LinkPostActivity$6;->onPos(Lcom/narvii/util/crawler/SourceContent;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/blog/post/LinkPostActivity$6;


# direct methods
.method constructor <init>(Lcom/narvii/blog/post/LinkPostActivity$6;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$6$1;->this$1:Lcom/narvii/blog/post/LinkPostActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSaveFail(Ljava/io/File;)V
    .locals 2

    .line 335
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$6$1;->this$1:Lcom/narvii/blog/post/LinkPostActivity$6;

    iget-object p1, p1, Lcom/narvii/blog/post/LinkPostActivity$6;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    iget-object v0, p1, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 336
    iput-object v1, v0, Lcom/narvii/model/LinkSummary;->mediaList:Ljava/util/List;

    .line 337
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPostActivity;->editTitle:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/narvii/model/LinkSummary;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 339
    :cond_0
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$6$1;->this$1:Lcom/narvii/blog/post/LinkPostActivity$6;

    iget-object p1, p1, Lcom/narvii/blog/post/LinkPostActivity$6;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    invoke-virtual {p1}, Lcom/narvii/blog/post/LinkPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/blog/post/LinkPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 340
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$6$1;->this$1:Lcom/narvii/blog/post/LinkPostActivity$6;

    iget-object p1, p1, Lcom/narvii/blog/post/LinkPostActivity$6;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    invoke-static {p1}, Lcom/narvii/blog/post/LinkPostActivity;->access$000(Lcom/narvii/blog/post/LinkPostActivity;)V

    return-void
.end method

.method public onSaveSuccess(Ljava/io/File;)V
    .locals 4

    if-eqz p1, :cond_4

    .line 313
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 314
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download_link_thumb width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    .line 316
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v2, 0x64

    if-le v1, v2, :cond_1

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v0, v2, :cond_0

    goto :goto_0

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity$6$1;->this$1:Lcom/narvii/blog/post/LinkPostActivity$6;

    iget-object v0, v0, Lcom/narvii/blog/post/LinkPostActivity$6;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    iget-object v0, v0, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    invoke-virtual {v0}, Lcom/narvii/model/LinkSummary;->getFirstMedia()Lcom/narvii/model/Media;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/blog/post/LinkPostActivity$6$1;->this$1:Lcom/narvii/blog/post/LinkPostActivity$6;

    iget-object v1, v1, Lcom/narvii/blog/post/LinkPostActivity$6;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    iget-object v1, v1, Lcom/narvii/blog/post/LinkPostActivity;->photo:Lcom/narvii/photos/PhotoManager;

    iget-object v2, p0, Lcom/narvii/blog/post/LinkPostActivity$6$1;->this$1:Lcom/narvii/blog/post/LinkPostActivity$6;

    iget-object v2, v2, Lcom/narvii/blog/post/LinkPostActivity$6;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    invoke-static {v2}, Lcom/narvii/blog/post/LinkPostActivity;->access$200(Lcom/narvii/blog/post/LinkPostActivity;)Lcom/narvii/post/DraftManager;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/blog/post/LinkPostActivity$6$1;->this$1:Lcom/narvii/blog/post/LinkPostActivity$6;

    iget-object v3, v3, Lcom/narvii/blog/post/LinkPostActivity$6;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    invoke-static {v3}, Lcom/narvii/blog/post/LinkPostActivity;->access$100(Lcom/narvii/blog/post/LinkPostActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/narvii/photos/PhotoManager;->importPhoto(Ljava/io/File;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    goto :goto_1

    .line 317
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$6$1;->this$1:Lcom/narvii/blog/post/LinkPostActivity$6;

    iget-object p1, p1, Lcom/narvii/blog/post/LinkPostActivity$6;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    iget-object p1, p1, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/narvii/model/LinkSummary;->mediaList:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    :goto_1
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$6$1;->this$1:Lcom/narvii/blog/post/LinkPostActivity$6;

    iget-object p1, p1, Lcom/narvii/blog/post/LinkPostActivity$6;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    iget-object v0, p1, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    if-eqz v0, :cond_2

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 322
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$6$1;->this$1:Lcom/narvii/blog/post/LinkPostActivity$6;

    iget-object p1, p1, Lcom/narvii/blog/post/LinkPostActivity$6;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    iget-object v0, p1, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    if-eqz v0, :cond_2

    .line 325
    :goto_2
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPostActivity;->editTitle:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/narvii/model/LinkSummary;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 327
    :cond_2
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$6$1;->this$1:Lcom/narvii/blog/post/LinkPostActivity$6;

    iget-object p1, p1, Lcom/narvii/blog/post/LinkPostActivity$6;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    invoke-virtual {p1}, Lcom/narvii/blog/post/LinkPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/blog/post/LinkPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 328
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$6$1;->this$1:Lcom/narvii/blog/post/LinkPostActivity$6;

    iget-object p1, p1, Lcom/narvii/blog/post/LinkPostActivity$6;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    invoke-static {p1}, Lcom/narvii/blog/post/LinkPostActivity;->access$000(Lcom/narvii/blog/post/LinkPostActivity;)V

    goto :goto_4

    .line 324
    :goto_3
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity$6$1;->this$1:Lcom/narvii/blog/post/LinkPostActivity$6;

    iget-object v0, v0, Lcom/narvii/blog/post/LinkPostActivity$6;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    iget-object v1, v0, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    if-eqz v1, :cond_3

    .line 325
    iget-object v0, v0, Lcom/narvii/blog/post/BlogPostActivity;->editTitle:Landroid/widget/EditText;

    invoke-virtual {v1}, Lcom/narvii/model/LinkSummary;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 327
    :cond_3
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity$6$1;->this$1:Lcom/narvii/blog/post/LinkPostActivity$6;

    iget-object v0, v0, Lcom/narvii/blog/post/LinkPostActivity$6;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    invoke-virtual {v0}, Lcom/narvii/blog/post/LinkPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/blog/post/LinkPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 328
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity$6$1;->this$1:Lcom/narvii/blog/post/LinkPostActivity$6;

    iget-object v0, v0, Lcom/narvii/blog/post/LinkPostActivity$6;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    invoke-static {v0}, Lcom/narvii/blog/post/LinkPostActivity;->access$000(Lcom/narvii/blog/post/LinkPostActivity;)V

    .line 329
    throw p1

    :cond_4
    :goto_4
    return-void
.end method
