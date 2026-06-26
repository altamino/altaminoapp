.class Lcom/narvii/blog/post/TopicPostActivity$ImgCallback;
.super Lcom/narvii/post/BasePostActivity$BaseImgCallback;
.source "TopicPostActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/blog/post/TopicPostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImgCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/blog/post/TopicPostActivity;


# direct methods
.method public constructor <init>(Lcom/narvii/blog/post/TopicPostActivity;)V
    .locals 0

    .line 670
    iput-object p1, p0, Lcom/narvii/blog/post/TopicPostActivity$ImgCallback;->this$0:Lcom/narvii/blog/post/TopicPostActivity;

    .line 671
    iget-object p1, p1, Lcom/narvii/blog/post/TopicPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    invoke-direct {p0, p1}, Lcom/narvii/post/BasePostActivity$BaseImgCallback;-><init>(Lcom/narvii/widget/EditTextIMG;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2

    .line 684
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f0db7

    if-ne v0, v1, :cond_1

    .line 685
    iget-object p1, p0, Lcom/narvii/blog/post/TopicPostActivity$ImgCallback;->this$0:Lcom/narvii/blog/post/TopicPostActivity;

    iget-object p1, p1, Lcom/narvii/blog/post/TopicPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    invoke-static {p1}, Lcom/narvii/util/text/IMGUtils;->isSelectionInTag(Landroid/widget/TextView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 686
    iget-object p1, p0, Lcom/narvii/blog/post/TopicPostActivity$ImgCallback;->this$0:Lcom/narvii/blog/post/TopicPostActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0f0d86

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_0

    .line 688
    :cond_0
    iget-object p1, p0, Lcom/narvii/blog/post/TopicPostActivity$ImgCallback;->this$0:Lcom/narvii/blog/post/TopicPostActivity;

    invoke-virtual {p1}, Lcom/narvii/blog/post/TopicPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object p1

    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 689
    const-class p2, Lcom/narvii/media/MediaOrganizeFragment;

    invoke-static {p2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "android.intent.action.PICK"

    .line 690
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 691
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "mediaList"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    iget-object p1, p0, Lcom/narvii/blog/post/TopicPostActivity$ImgCallback;->this$0:Lcom/narvii/blog/post/TopicPostActivity;

    invoke-static {p1}, Lcom/narvii/blog/post/TopicPostActivity;->access$200(Lcom/narvii/blog/post/TopicPostActivity;)Lcom/narvii/post/DraftManager;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/blog/post/TopicPostActivity$ImgCallback;->this$0:Lcom/narvii/blog/post/TopicPostActivity;

    invoke-static {v0}, Lcom/narvii/blog/post/TopicPostActivity;->access$100(Lcom/narvii/blog/post/TopicPostActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "dir"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x19

    const-string v0, "maximum"

    .line 693
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 694
    iget-object p1, p0, Lcom/narvii/blog/post/TopicPostActivity$ImgCallback;->this$0:Lcom/narvii/blog/post/TopicPostActivity;

    invoke-static {p1}, Lcom/narvii/blog/post/TopicPostActivity;->access$300(Lcom/narvii/blog/post/TopicPostActivity;)Lcom/narvii/post/PostObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p1}, Lcom/narvii/blog/post/BlogPost;->getCoverMediaIndex()I

    move-result p1

    const-string v0, "coverMediaIndex"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 695
    iget-object p1, p0, Lcom/narvii/blog/post/TopicPostActivity$ImgCallback;->this$0:Lcom/narvii/blog/post/TopicPostActivity;

    invoke-virtual {p1}, Lcom/narvii/blog/post/TopicPostActivity;->allowSetCover()Z

    move-result p1

    const-string v0, "allowSetCover"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 696
    iget-object p1, p0, Lcom/narvii/blog/post/TopicPostActivity$ImgCallback;->this$0:Lcom/narvii/blog/post/TopicPostActivity;

    iget-object p1, p1, Lcom/narvii/blog/post/TopicPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/text/IMGUtils;->extractRefIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "existsRefIds"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 697
    iget-object p1, p0, Lcom/narvii/blog/post/TopicPostActivity$ImgCallback;->this$0:Lcom/narvii/blog/post/TopicPostActivity;

    const/16 v0, 0xc

    invoke-virtual {p1, p2, v0}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 701
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    const v0, 0x7f0f0db7

    const/4 v1, 0x0

    .line 676
    invoke-interface {p2, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/narvii/util/ActionBarIcon;

    iget-object v2, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->editText:Lcom/narvii/widget/EditTextIMG;

    .line 677
    invoke-virtual {v2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f08b9

    invoke-direct {v1, v2, v3}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    .line 678
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 679
    invoke-super {p0, p1, p2}, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
