.class Lcom/narvii/blog/post/BlogPostActivity$ImgCallback;
.super Lcom/narvii/post/BasePostActivity$BaseImgCallback;
.source "BlogPostActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/blog/post/BlogPostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImgCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/blog/post/BlogPostActivity;


# direct methods
.method public constructor <init>(Lcom/narvii/blog/post/BlogPostActivity;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity$ImgCallback;->this$0:Lcom/narvii/blog/post/BlogPostActivity;

    .line 497
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    invoke-direct {p0, p1}, Lcom/narvii/post/BasePostActivity$BaseImgCallback;-><init>(Lcom/narvii/widget/EditTextIMG;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2

    .line 510
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f0db7

    if-ne v0, v1, :cond_1

    .line 511
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity$ImgCallback;->this$0:Lcom/narvii/blog/post/BlogPostActivity;

    iget-object p1, p1, Lcom/narvii/blog/post/BlogPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    invoke-static {p1}, Lcom/narvii/util/text/IMGUtils;->isSelectionInTag(Landroid/widget/TextView;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 512
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity$ImgCallback;->this$0:Lcom/narvii/blog/post/BlogPostActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f0d86

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_0

    .line 514
    :cond_0
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity$ImgCallback;->this$0:Lcom/narvii/blog/post/BlogPostActivity;

    invoke-virtual {p1}, Lcom/narvii/blog/post/BlogPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object p1

    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 515
    const-class v0, Lcom/narvii/media/MediaOrganizeFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.PICK"

    .line 516
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 517
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "mediaList"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity$ImgCallback;->this$0:Lcom/narvii/blog/post/BlogPostActivity;

    invoke-static {p1}, Lcom/narvii/blog/post/BlogPostActivity;->access$100(Lcom/narvii/blog/post/BlogPostActivity;)Lcom/narvii/post/DraftManager;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/blog/post/BlogPostActivity$ImgCallback;->this$0:Lcom/narvii/blog/post/BlogPostActivity;

    invoke-static {v1}, Lcom/narvii/blog/post/BlogPostActivity;->access$000(Lcom/narvii/blog/post/BlogPostActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "dir"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x19

    const-string v1, "maximum"

    .line 519
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 520
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity$ImgCallback;->this$0:Lcom/narvii/blog/post/BlogPostActivity;

    invoke-static {p1}, Lcom/narvii/blog/post/BlogPostActivity;->access$200(Lcom/narvii/blog/post/BlogPostActivity;)Lcom/narvii/post/PostObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p1}, Lcom/narvii/blog/post/BlogPost;->getCoverMediaIndex()I

    move-result p1

    const-string v1, "coverMediaIndex"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "allowSetCover"

    .line 521
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 522
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity$ImgCallback;->this$0:Lcom/narvii/blog/post/BlogPostActivity;

    iget-object p1, p1, Lcom/narvii/blog/post/BlogPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/text/IMGUtils;->extractRefIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "existsRefIds"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity$ImgCallback;->this$0:Lcom/narvii/blog/post/BlogPostActivity;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return p2

    .line 527
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    const v0, 0x7f0f0db7

    const/4 v1, 0x0

    .line 502
    invoke-interface {p2, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/narvii/util/ActionBarIcon;

    iget-object v2, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->editText:Lcom/narvii/widget/EditTextIMG;

    .line 503
    invoke-virtual {v2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f08b9

    invoke-direct {v1, v2, v3}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    .line 504
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 505
    invoke-super {p0, p1, p2}, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
