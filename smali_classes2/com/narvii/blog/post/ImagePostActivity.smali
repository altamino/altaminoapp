.class public Lcom/narvii/blog/post/ImagePostActivity;
.super Lcom/narvii/post/BackgroundPostActivity;
.source "ImagePostActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/post/LocationPickerFragment$LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/blog/post/ImagePostActivity$ImageViewHolder;,
        Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/post/BackgroundPostActivity<",
        "Lcom/narvii/blog/post/BlogPost;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/narvii/post/LocationPickerFragment$LocationListener;"
    }
.end annotation


# static fields
.field private static final COLUMN_NUMBER:I = 0x3

.field protected static final MAX_MEDIA:I = 0x19

.field static final PICK_CATEGORY_REQUEST:I = 0x1

.field static final SORT_PHOTO_REQUEST:I = 0x2


# instance fields
.field private addPhoto:Landroid/view/View;

.field protected editTitle:Landroid/widget/EditText;

.field protected fansOnlyContainer:Landroid/view/View;

.field private imgContent:Lcom/narvii/widget/NVImageView;

.field layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field protected locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

.field protected mediaCount:Landroid/widget/TextView;

.field protected mediaPreview:Lcom/narvii/widget/ThumbImageView;

.field multiImageContainer:Landroid/support/v7/widget/RecyclerView;

.field protected pickCategories:Landroid/widget/Button;

.field protected pickLocation:Landroid/widget/ImageView;

.field protected pickLocationProgress:Landroid/view/View;

.field protected pickMedia:Landroid/widget/ImageView;

.field recycleViewAdapter:Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter;

.field screenSize:Landroid/graphics/Point;

.field singleImageCaption:Landroid/widget/TextView;

.field stat_add_category:Z

.field stat_add_category_success:Z

.field stat_add_photo:Z

.field stat_add_photo_success:Z

.field stat_remove_location:Z

.field stat_remove_location_success:Z

.field private viewHeight:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/narvii/post/BackgroundPostActivity;-><init>()V

    .line 194
    new-instance v0, Lcom/narvii/blog/post/ImagePostActivity$2;

    invoke-direct {v0, p0}, Lcom/narvii/blog/post/ImagePostActivity$2;-><init>(Lcom/narvii/blog/post/ImagePostActivity;)V

    iput-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/blog/post/ImagePostActivity;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/narvii/blog/post/ImagePostActivity;->viewHeight:I

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/blog/post/ImagePostActivity;Lcom/narvii/model/Media;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/narvii/blog/post/ImagePostActivity;->showActionDialog(Lcom/narvii/model/Media;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/blog/post/ImagePostActivity;Lcom/narvii/model/Media;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/narvii/blog/post/ImagePostActivity;->editCaption(Lcom/narvii/model/Media;)V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/blog/post/ImagePostActivity;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/narvii/blog/post/ImagePostActivity;->organizeMediaList()V

    return-void
.end method

.method static synthetic access$402(Lcom/narvii/blog/post/ImagePostActivity;Lcom/narvii/post/PostObject;)Lcom/narvii/post/PostObject;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    return-object p1
.end method

.method static synthetic access$500(Lcom/narvii/blog/post/ImagePostActivity;)Lcom/narvii/post/PostObject;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    return-object p0
.end method

.method static synthetic access$600(Lcom/narvii/blog/post/ImagePostActivity;)Lcom/narvii/post/PostObject;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    return-object p0
.end method

.method static synthetic access$700(Lcom/narvii/blog/post/ImagePostActivity;)Lcom/narvii/post/PostObject;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    return-object p0
.end method

.method static synthetic access$800(Lcom/narvii/blog/post/ImagePostActivity;)Lcom/narvii/post/PostObject;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    return-object p0
.end method

.method private editCaption(Lcom/narvii/model/Media;)V
    .locals 4

    .line 657
    iget-object v0, p1, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    .line 658
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f0b2c

    .line 659
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 660
    new-instance v2, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 661
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 662
    iget-object v0, p1, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    const v0, 0x7f0f0076

    .line 663
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 664
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v0, 0x104000a

    .line 665
    new-instance v3, Lcom/narvii/blog/post/ImagePostActivity$4;

    invoke-direct {v3, p0, p1, v2}, Lcom/narvii/blog/post/ImagePostActivity$4;-><init>(Lcom/narvii/blog/post/ImagePostActivity;Lcom/narvii/model/Media;Landroid/widget/EditText;)V

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000

    .line 674
    sget-object v0, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 675
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 676
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 677
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private organizeMediaList()V
    .locals 3

    .line 404
    const-class v0, Lcom/narvii/media/MediaOrganizeFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 405
    invoke-virtual {p0}, Lcom/narvii/blog/post/ImagePostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object v1

    iget-object v1, v1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mediaList"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dir"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {v1}, Lcom/narvii/blog/post/BlogPost;->getCoverMediaIndex()I

    move-result v1

    const-string v2, "coverMediaIndex"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "maximum"

    const/16 v2, 0x19

    .line 408
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "allowSetCover"

    const/4 v2, 0x1

    .line 409
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x2

    .line 410
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showActionDialog(Lcom/narvii/model/Media;I)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move-object v3, v0

    check-cast v3, Lcom/narvii/blog/post/BlogPost;

    iget-object v3, v3, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget-object v0, v0, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 618
    :goto_0
    new-instance v3, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 619
    iget-object v4, p1, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const v4, 0x7f0f0076

    goto :goto_1

    :cond_2
    const v4, 0x7f0f03d8

    :goto_1
    invoke-virtual {v3, v4, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    if-eqz v0, :cond_3

    const v4, 0x7f0f0ed5

    .line 621
    invoke-virtual {v3, v4, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    :cond_3
    const v2, 0x7f0f0348

    .line 624
    invoke-virtual {v3, v2, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 625
    new-instance v1, Lcom/narvii/blog/post/ImagePostActivity$3;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/narvii/blog/post/ImagePostActivity$3;-><init>(Lcom/narvii/blog/post/ImagePostActivity;Lcom/narvii/model/Media;ZI)V

    invoke-virtual {v3, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 651
    invoke-virtual {v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void
.end method


# virtual methods
.method public blogId()Ljava/lang/String;
    .locals 4

    .line 242
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "blogId"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public buildDraftParams()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 3

    const-string v0, "blogId"

    .line 230
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 234
    :cond_0
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    .line 235
    invoke-virtual {v2, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-object v2
.end method

.method protected checkEligible()V
    .locals 2

    const-string v0, "blog"

    const-string v1, "image"

    .line 225
    invoke-virtual {p0, v0, v1}, Lcom/narvii/post/BasePostActivity;->checkEligible(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected doPost(Lcom/narvii/blog/post/BlogPost;)V
    .locals 4

    .line 283
    invoke-virtual {p0}, Lcom/narvii/blog/post/ImagePostActivity;->blogId()Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    if-nez v0, :cond_0

    const-string v0, "/blog"

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/blog/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 285
    new-instance v1, Lcom/narvii/feed/BackgroundPostHelper;

    invoke-direct {v1, p0}, Lcom/narvii/feed/BackgroundPostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 286
    invoke-virtual {v1, p0}, Lcom/narvii/post/PostHelper;->setPostListener(Lcom/narvii/post/PostListener;)V

    .line 287
    const-class v2, Lcom/narvii/model/api/BlogResponse;

    invoke-virtual {v1, p1, v0, v2}, Lcom/narvii/post/PostHelper;->startPost(Lcom/narvii/post/PostObject;Lcom/narvii/util/http/ApiRequest;Ljava/lang/Class;)V

    return-void
.end method

.method protected bridge synthetic doPost(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 63
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/ImagePostActivity;->doPost(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method protected doPreview(Lcom/narvii/blog/post/BlogPost;)V
    .locals 2

    const-string v0, "feed"

    .line 546
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/Blog;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Blog;

    invoke-virtual {p0}, Lcom/narvii/blog/post/ImagePostActivity;->blogId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p0, v1}, Lcom/narvii/blog/post/BlogPost;->getPreviewBlog(Lcom/narvii/model/Blog;Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/model/Blog;

    move-result-object v0

    .line 547
    invoke-static {v0}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/model/Feed;)Landroid/content/Intent;

    move-result-object v0

    .line 548
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->itemList:Ljava/util/List;

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "taggedObjects"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "preview"

    const/4 v1, 0x1

    .line 549
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "Source"

    const-string v1, "Preview"

    .line 550
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected bridge synthetic doPreview(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 63
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/ImagePostActivity;->doPreview(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method public draftType()Ljava/lang/String;
    .locals 1

    const-string v0, "image"

    return-object v0
.end method

.method protected getInfluencerLockLayout()Landroid/view/View;
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->fansOnlyContainer:Landroid/view/View;

    return-object v0
.end method

.method public isEdit()Z
    .locals 1

    .line 252
    invoke-virtual {p0}, Lcom/narvii/blog/post/ImagePostActivity;->blogId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 415
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    const-string v2, "blogCategoryList"

    .line 418
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/narvii/model/BlogCategory;

    invoke-static {v2, v3}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v2

    .line 419
    invoke-virtual {p0}, Lcom/narvii/blog/post/ImagePostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object v3

    .line 420
    iput-object v2, v3, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    .line 421
    iput-object v3, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 422
    invoke-virtual {p0, v3}, Lcom/narvii/blog/post/ImagePostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 423
    iput-boolean v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->stat_add_category_success:Z

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    if-eqz p3, :cond_1

    const-string p1, "mediaList"

    .line 427
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 428
    const-class p2, Lcom/narvii/model/Media;

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 430
    invoke-virtual {p0}, Lcom/narvii/blog/post/ImagePostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object p2

    .line 431
    iput-object p1, p2, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    const-string p1, "coverMediaIndex"

    .line 432
    invoke-virtual {p3, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/narvii/blog/post/BlogPost;->setCoverMediaIndex(I)V

    .line 433
    iput-object p2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 434
    invoke-virtual {p0, p2}, Lcom/narvii/blog/post/ImagePostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 344
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v0, 0x19

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_4

    .line 376
    :sswitch_0
    iput-boolean v1, p0, Lcom/narvii/blog/post/ImagePostActivity;->stat_add_category:Z

    .line 377
    invoke-virtual {p0}, Lcom/narvii/blog/post/ImagePostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object p1

    .line 378
    const-class v0, Lcom/narvii/blog/category/BlogCategoryPickerFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 379
    iget-object v3, p1, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    invoke-static {v3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "blogCategoryList"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    iget v3, p1, Lcom/narvii/blog/post/BlogPost;->type:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "isQuiz"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 382
    iget-object v3, p1, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    .line 383
    :goto_1
    iget-object v4, p1, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 384
    iget-object v4, p1, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/BlogCategory;

    iget v4, v4, Lcom/narvii/model/BlogCategory;->status:I

    const/16 v5, 0x9

    if-eq v4, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v3

    :cond_3
    const-string p1, "maximum"

    .line 389
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 390
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_4

    .line 361
    :sswitch_1
    iput-boolean v1, p0, Lcom/narvii/blog/post/ImagePostActivity;->stat_add_photo:Z

    .line 362
    invoke-virtual {p0}, Lcom/narvii/blog/post/ImagePostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object p1

    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    if-eqz p1, :cond_4

    .line 363
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v0, :cond_4

    .line 364
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f0dd0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    goto/16 :goto_4

    .line 366
    :cond_4
    iget-object v1, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    iget-object v3, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object v4, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    if-nez p1, :cond_5

    const/4 p1, 0x0

    goto :goto_2

    .line 367
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_2
    sub-int/2addr v0, p1

    .line 366
    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    goto :goto_4

    .line 372
    :sswitch_2
    invoke-direct {p0}, Lcom/narvii/blog/post/ImagePostActivity;->organizeMediaList()V

    goto :goto_4

    .line 346
    :sswitch_3
    invoke-virtual {p0}, Lcom/narvii/blog/post/ImagePostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object p1

    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 347
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Media;

    invoke-direct {p0, p1, v2}, Lcom/narvii/blog/post/ImagePostActivity;->showActionDialog(Lcom/narvii/model/Media;I)V

    goto :goto_4

    .line 395
    :sswitch_4
    invoke-virtual {p0}, Lcom/narvii/blog/post/ImagePostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object p1

    .line 396
    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    iget v2, p1, Lcom/narvii/blog/post/BlogPost;->latitude:I

    iget p1, p1, Lcom/narvii/blog/post/BlogPost;->longitude:I

    invoke-virtual {v0, v2, p1, v1}, Lcom/narvii/post/LocationPickerFragment;->pickLocation(IIZ)V

    goto :goto_4

    .line 351
    :sswitch_5
    iput-boolean v1, p0, Lcom/narvii/blog/post/ImagePostActivity;->stat_add_photo:Z

    .line 352
    invoke-virtual {p0}, Lcom/narvii/blog/post/ImagePostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object p1

    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 353
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "type"

    const-string v4, "pickimage"

    .line 354
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    .line 355
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 356
    :cond_6
    iget-object v3, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    iget-object v4, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object v5, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    if-nez p1, :cond_7

    const/4 p1, 0x0

    goto :goto_3

    .line 357
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_3
    sub-int/2addr v0, p1

    .line 356
    invoke-virtual {v3, v4, v1, v2, v0}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090068 -> :sswitch_5
        0x7f09006f -> :sswitch_4
        0x7f090578 -> :sswitch_3
        0x7f0906dc -> :sswitch_2
        0x7f090832 -> :sswitch_4
        0x7f090833 -> :sswitch_1
        0x7f090871 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 106
    invoke-super {p0, p1}, Lcom/narvii/post/DraftPostActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b058c

    .line 107
    invoke-virtual {p0, v0}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    .line 108
    invoke-static {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    .line 111
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "locationPicker"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/post/LocationPickerFragment;

    iput-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 112
    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/narvii/post/LocationPickerFragment;

    invoke-direct {v0}, Lcom/narvii/post/LocationPickerFragment;-><init>()V

    iput-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 114
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/blog/post/ImagePostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    iput-object p0, v0, Lcom/narvii/post/LocationPickerFragment;->listener:Lcom/narvii/post/LocationPickerFragment$LocationListener;

    const v0, 0x7f090b9a

    .line 118
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->editTitle:Landroid/widget/EditText;

    const v0, 0x7f090068

    .line 119
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->addPhoto:Landroid/view/View;

    const v0, 0x7f090832

    .line 120
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->pickLocation:Landroid/widget/ImageView;

    .line 121
    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->pickLocation:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090831

    .line 122
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->pickLocationProgress:Landroid/view/View;

    const v0, 0x7f090578

    .line 124
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->imgContent:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f090197

    .line 125
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->singleImageCaption:Landroid/widget/TextView;

    .line 126
    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->imgContent:Lcom/narvii/widget/NVImageView;

    iget-object v1, p0, Lcom/narvii/blog/post/ImagePostActivity;->layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 128
    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->imgContent:Lcom/narvii/widget/NVImageView;

    new-instance v1, Lcom/narvii/blog/post/ImagePostActivity$1;

    invoke-direct {v1, p0}, Lcom/narvii/blog/post/ImagePostActivity$1;-><init>(Lcom/narvii/blog/post/ImagePostActivity;)V

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    const v0, 0x7f090871

    .line 155
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->pickCategories:Landroid/widget/Button;

    const v0, 0x7f090833

    .line 156
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->pickMedia:Landroid/widget/ImageView;

    .line 157
    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->pickMedia:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0906dc

    .line 158
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/ThumbImageView;

    iput-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->mediaPreview:Lcom/narvii/widget/ThumbImageView;

    .line 159
    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->mediaPreview:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0906d0

    .line 160
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->mediaCount:Landroid/widget/TextView;

    const v0, 0x7f090734

    .line 162
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->multiImageContainer:Landroid/support/v7/widget/RecyclerView;

    .line 163
    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->multiImageContainer:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 164
    new-instance v0, Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter;-><init>(Lcom/narvii/blog/post/ImagePostActivity;)V

    iput-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->recycleViewAdapter:Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter;

    .line 165
    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->multiImageContainer:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/narvii/blog/post/ImagePostActivity;->recycleViewAdapter:Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 167
    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->addPhoto:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->imgContent:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_2

    const-string p1, "blogId"

    .line 170
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 171
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    if-nez p1, :cond_1

    .line 172
    new-instance p1, Lcom/narvii/blog/post/BlogPost;

    invoke-direct {p1}, Lcom/narvii/blog/post/BlogPost;-><init>()V

    iput-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 174
    :cond_1
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    const/4 v0, 0x7

    iput v0, p1, Lcom/narvii/blog/post/BlogPost;->type:I

    :cond_2
    const p1, 0x7f090830

    .line 177
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0905ec

    .line 178
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 180
    invoke-static {p0}, Lcom/narvii/util/Utils;->getScreenSize(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity;->screenSize:Landroid/graphics/Point;

    .line 181
    iget-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity;->screenSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-double v0, p1

    const-wide v2, 0x3fd47ae147ae147bL    # 0.32

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/narvii/blog/post/ImagePostActivity;->viewHeight:I

    const p1, 0x7f090427

    .line 182
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity;->fansOnlyContainer:Landroid/view/View;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 188
    invoke-super {p0}, Lcom/narvii/post/BasePostActivity;->onDestroy()V

    .line 189
    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->imgContent:Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_0

    .line 190
    iget-object v1, p0, Lcom/narvii/blog/post/ImagePostActivity;->layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method public onLocatingChanged(Z)V
    .locals 1

    .line 455
    iget-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity;->pickLocation:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 456
    iget-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity;->pickLocationProgress:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onLocationResult(Lcom/narvii/location/GPSCoordinate;)V
    .locals 5

    .line 461
    invoke-virtual {p0}, Lcom/narvii/blog/post/ImagePostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 463
    iput v2, v0, Lcom/narvii/blog/post/BlogPost;->latitude:I

    .line 464
    iput v2, v0, Lcom/narvii/blog/post/BlogPost;->longitude:I

    .line 465
    iput-object v1, v0, Lcom/narvii/blog/post/BlogPost;->address:Ljava/lang/String;

    const/4 p1, 0x1

    .line 466
    iput-boolean p1, p0, Lcom/narvii/blog/post/ImagePostActivity;->stat_remove_location:Z

    .line 467
    iput-boolean p1, p0, Lcom/narvii/blog/post/ImagePostActivity;->stat_remove_location_success:Z

    goto :goto_0

    .line 469
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->latitudeE6()I

    move-result v3

    iput v3, v0, Lcom/narvii/blog/post/BlogPost;->latitude:I

    .line 470
    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->longitudeE6()I

    move-result p1

    iput p1, v0, Lcom/narvii/blog/post/BlogPost;->longitude:I

    .line 471
    iput-object v1, v0, Lcom/narvii/blog/post/BlogPost;->address:Ljava/lang/String;

    const-string p1, "location"

    .line 472
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/location/LocationService;

    .line 473
    iget v3, v0, Lcom/narvii/blog/post/BlogPost;->latitude:I

    iget v4, v0, Lcom/narvii/blog/post/BlogPost;->longitude:I

    invoke-static {v3, v4}, Lcom/narvii/location/GPSCoordinate;->create(II)Lcom/narvii/location/GPSCoordinate;

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Lcom/narvii/location/LocationService;->reverseGeocoding(Lcom/narvii/location/GPSCoordinate;Lcom/narvii/location/LocationService$GeocodeResultListener;)V

    .line 474
    iput-boolean v2, p0, Lcom/narvii/blog/post/ImagePostActivity;->stat_remove_location:Z

    .line 475
    iput-boolean v2, p0, Lcom/narvii/blog/post/ImagePostActivity;->stat_remove_location_success:Z

    .line 477
    :goto_0
    iput-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 478
    invoke-virtual {p0, v0}, Lcom/narvii/blog/post/ImagePostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method protected onPickOtherMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 441
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 442
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    move-object v1, v0

    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    iget-object v1, v1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 443
    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget-object v0, v0, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 445
    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 446
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    move-object v0, p1

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iput-object p2, v0, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 447
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    const/16 p2, 0x19

    const v0, 0x7f0f0dd0

    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/post/BasePostActivity;->trimMediaList(Ljava/util/List;II)V

    const/4 p1, 0x1

    .line 448
    iput-boolean p1, p0, Lcom/narvii/blog/post/ImagePostActivity;->stat_add_photo_success:Z

    .line 449
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/ImagePostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 215
    invoke-super {p0, p1}, Lcom/narvii/post/BackgroundPostActivity;->onPostCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 9

    .line 293
    invoke-super {p0, p1, p2}, Lcom/narvii/post/DraftPostActivity;->onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V

    .line 294
    check-cast p2, Lcom/narvii/model/api/BlogResponse;

    invoke-virtual {p2}, Lcom/narvii/model/api/BlogResponse;->object()Lcom/narvii/model/Blog;

    move-result-object p1

    .line 295
    invoke-virtual {p0}, Lcom/narvii/blog/post/ImagePostActivity;->isEdit()Z

    move-result p2

    const-string v0, "Source"

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 296
    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/model/Feed;)Landroid/content/Intent;

    move-result-object p2

    const-string v2, "justCreated"

    .line 297
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "View Created Post"

    .line 298
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    invoke-virtual {p0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onPostLoaded(Lcom/narvii/blog/post/BlogPost;)V
    .locals 4

    .line 323
    invoke-super {p0, p1}, Lcom/narvii/post/DraftPostActivity;->onPostLoaded(Lcom/narvii/post/PostObject;)V

    .line 324
    invoke-virtual {p0}, Lcom/narvii/blog/post/ImagePostActivity;->isEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f03cd

    .line 325
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0f0dcd

    .line 327
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 329
    :goto_0
    iget v0, p1, Lcom/narvii/blog/post/BlogPost;->latitude:I

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/narvii/blog/post/BlogPost;->longitude:I

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/narvii/blog/post/BlogPost;->address:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "location"

    .line 330
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/location/LocationService;

    .line 331
    iget v1, p1, Lcom/narvii/blog/post/BlogPost;->latitude:I

    iget p1, p1, Lcom/narvii/blog/post/BlogPost;->longitude:I

    invoke-static {v1, p1}, Lcom/narvii/location/GPSCoordinate;->create(II)Lcom/narvii/location/GPSCoordinate;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/narvii/location/LocationService;->reverseGeocoding(Lcom/narvii/location/GPSCoordinate;Lcom/narvii/location/LocationService$GeocodeResultListener;)V

    .line 333
    :cond_1
    iget-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity;->editTitle:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    .line 334
    invoke-virtual {p0}, Lcom/narvii/blog/post/ImagePostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object p1

    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 335
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 336
    :cond_2
    iget-object v0, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x0

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    .line 337
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_1
    rsub-int/lit8 p1, p1, 0x19

    .line 336
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    :cond_4
    return-void
.end method

.method protected bridge synthetic onPostLoaded(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 63
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/ImagePostActivity;->onPostLoaded(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method public postClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/blog/post/BlogPost;",
            ">;"
        }
    .end annotation

    .line 247
    const-class v0, Lcom/narvii/blog/post/BlogPost;

    return-object v0
.end method

.method protected savePost()Lcom/narvii/blog/post/BlogPost;
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget-object v1, p0, Lcom/narvii/blog/post/ImagePostActivity;->editTitle:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/blog/post/BlogPost;->title:Ljava/lang/String;

    .line 258
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    move-object v1, v0

    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    iget v1, v1, Lcom/narvii/blog/post/BlogPost;->latitude:I

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    iget v1, v1, Lcom/narvii/blog/post/BlogPost;->longitude:I

    if-eqz v1, :cond_0

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget-object v0, v0, Lcom/narvii/blog/post/BlogPost;->address:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "location"

    .line 259
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/location/LocationService;

    .line 260
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    move-object v2, v1

    check-cast v2, Lcom/narvii/blog/post/BlogPost;

    iget v2, v2, Lcom/narvii/blog/post/BlogPost;->latitude:I

    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    iget v1, v1, Lcom/narvii/blog/post/BlogPost;->longitude:I

    invoke-static {v2, v1}, Lcom/narvii/location/GPSCoordinate;->create(II)Lcom/narvii/location/GPSCoordinate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/location/LocationService;->getCachedReverseGeocoding(Lcom/narvii/location/GPSCoordinate;)Lcom/narvii/location/ReadableAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    invoke-interface {v0}, Lcom/narvii/location/ReadableAddress;->getCityLevelAddressText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/narvii/blog/post/BlogPost;->address:Ljava/lang/String;

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    return-object v0
.end method

.method protected bridge synthetic savePost()Lcom/narvii/post/PostObject;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/narvii/blog/post/ImagePostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object v0

    return-object v0
.end method

.method protected shouldShowFansOnlySwitchDialog()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected supportPreview()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected updateView(Lcom/narvii/blog/post/BlogPost;)V
    .locals 7

    .line 483
    invoke-super {p0, p1}, Lcom/narvii/post/BackgroundPostActivity;->updateView(Lcom/narvii/feed/BackgroundPost;)V

    if-nez p1, :cond_0

    return-void

    .line 488
    :cond_0
    iget-object v0, p1, Lcom/narvii/blog/post/BlogPost;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/blog/post/ImagePostActivity;->editTitle:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 489
    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->editTitle:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/narvii/blog/post/BlogPost;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 493
    :cond_1
    iget-object v0, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    const/4 v2, 0x0

    if-lez v0, :cond_3

    .line 494
    iget-object v3, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Media;

    goto :goto_1

    :cond_3
    move-object v3, v2

    .line 495
    :goto_1
    iget-object v4, p0, Lcom/narvii/blog/post/ImagePostActivity;->pickMedia:Landroid/widget/ImageView;

    if-nez v3, :cond_4

    .line 496
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0802c9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_2

    .line 497
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0802ca

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 495
    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 498
    iget-object v4, p0, Lcom/narvii/blog/post/ImagePostActivity;->mediaPreview:Lcom/narvii/widget/ThumbImageView;

    const/16 v5, 0x8

    if-nez v3, :cond_5

    const/16 v6, 0x8

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 499
    iget-object v4, p0, Lcom/narvii/blog/post/ImagePostActivity;->mediaPreview:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {v4, v3}, Lcom/narvii/widget/ThumbImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 500
    iget-object v3, p0, Lcom/narvii/blog/post/ImagePostActivity;->mediaCount:Landroid/widget/TextView;

    const/4 v4, 0x1

    if-le v0, v4, :cond_6

    const/4 v6, 0x0

    goto :goto_4

    :cond_6
    const/16 v6, 0x8

    :goto_4
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 501
    iget-object v3, p0, Lcom/narvii/blog/post/ImagePostActivity;->mediaCount:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    invoke-virtual {v0}, Lcom/narvii/post/LocationPickerFragment;->isLocating()Z

    .line 505
    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->pickLocation:Landroid/widget/ImageView;

    iget v3, p1, Lcom/narvii/blog/post/BlogPost;->latitude:I

    if-eqz v3, :cond_8

    iget v3, p1, Lcom/narvii/blog/post/BlogPost;->longitude:I

    if-nez v3, :cond_7

    goto :goto_5

    .line 507
    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0803b9

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_6

    .line 506
    :cond_8
    :goto_5
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0803b8

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 505
    :goto_6
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 508
    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->pickLocation:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 509
    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->pickLocationProgress:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 512
    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->pickCategories:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->pickCategories:Landroid/widget/Button;

    iget-object v3, p1, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    if-eqz v3, :cond_9

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_9

    const v3, 0x7f080672

    goto :goto_7

    :cond_9
    const v3, 0x7f080671

    :goto_7
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 515
    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->pickCategories:Landroid/widget/Button;

    iget-object v3, p1, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    if-eqz v3, :cond_a

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_a

    const/4 v3, -0x1

    goto :goto_8

    :cond_a
    const v3, -0x77665a

    :goto_8
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 519
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    if-nez p1, :cond_b

    const/4 v0, 0x0

    goto :goto_9

    .line 520
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 522
    :goto_9
    iget-object v3, p0, Lcom/narvii/blog/post/ImagePostActivity;->addPhoto:Landroid/view/View;

    if-nez v0, :cond_c

    const/4 v6, 0x0

    goto :goto_a

    :cond_c
    const/16 v6, 0x8

    :goto_a
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 523
    iget-object v3, p0, Lcom/narvii/blog/post/ImagePostActivity;->imgContent:Lcom/narvii/widget/NVImageView;

    if-ne v0, v4, :cond_d

    const/4 v6, 0x0

    goto :goto_b

    :cond_d
    const/16 v6, 0x8

    :goto_b
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 524
    iget-object v3, p0, Lcom/narvii/blog/post/ImagePostActivity;->multiImageContainer:Landroid/support/v7/widget/RecyclerView;

    if-le v0, v4, :cond_e

    const/4 v6, 0x0

    goto :goto_c

    :cond_e
    const/16 v6, 0x8

    :goto_c
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-ne v0, v4, :cond_10

    .line 526
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 527
    iget-object v3, p0, Lcom/narvii/blog/post/ImagePostActivity;->singleImageCaption:Landroid/widget/TextView;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/model/Media;

    iget-object v6, v6, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    const/4 v5, 0x0

    :cond_f
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 528
    iget-object v3, p0, Lcom/narvii/blog/post/ImagePostActivity;->singleImageCaption:Landroid/widget/TextView;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/model/Media;

    iget-object v5, v5, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v3, p0, Lcom/narvii/blog/post/ImagePostActivity;->imgContent:Lcom/narvii/widget/NVImageView;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Media;

    invoke-virtual {v3, v1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    goto :goto_d

    .line 531
    :cond_10
    iget-object v1, p0, Lcom/narvii/blog/post/ImagePostActivity;->singleImageCaption:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 534
    :goto_d
    iget-object v1, p0, Lcom/narvii/blog/post/ImagePostActivity;->recycleViewAdapter:Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter;

    if-eqz v1, :cond_12

    if-le v0, v4, :cond_11

    goto :goto_e

    :cond_11
    move-object p1, v2

    .line 535
    :goto_e
    invoke-virtual {v1, p1}, Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter;->notifyImageChanged(Ljava/util/List;)V

    :cond_12
    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/feed/BackgroundPost;)V
    .locals 0

    .line 63
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/ImagePostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 63
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/ImagePostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method protected validateUpload(Lcom/narvii/blog/post/BlogPost;)Z
    .locals 4

    .line 271
    iget-object v0, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    iget-object v0, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    const/16 v2, 0x19

    const v3, 0x7f0f0dc5

    invoke-virtual {p0, v0, v2, v3}, Lcom/narvii/post/BasePostActivity;->validateMediaListMax(Ljava/util/List;II)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 278
    :cond_1
    invoke-super {p0, p1}, Lcom/narvii/post/BasePostActivity;->validateUpload(Lcom/narvii/post/PostObject;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method protected bridge synthetic validateUpload(Lcom/narvii/post/PostObject;)Z
    .locals 0

    .line 63
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/ImagePostActivity;->validateUpload(Lcom/narvii/blog/post/BlogPost;)Z

    move-result p1

    return p1
.end method
