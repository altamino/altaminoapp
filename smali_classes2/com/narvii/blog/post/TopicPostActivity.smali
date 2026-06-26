.class public Lcom/narvii/blog/post/TopicPostActivity;
.super Lcom/narvii/post/BackgroundPostActivity;
.source "TopicPostActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/post/LocationPickerFragment$LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/blog/post/TopicPostActivity$ImgCallback;
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
.field public static final DEFAULT_POLL_DURATION:I = 0x7

.field static final INSERT_IMG:I = 0xc

.field static final MAX_MEDIA:I = 0x19

.field public static final MAX_POLL_DURATION:I = 0x1e

.field static final PICK_CATEGORY_REQUEST:I = 0x1

.field static final PICK_ITEM_REQUEST:I = 0x5

.field static final SORT_ITEM_REQUEST:I = 0x6

.field static final SORT_PHOTO_REQUEST:I = 0x2


# instance fields
.field editContent:Lcom/narvii/widget/EditTextIMG;

.field influencerPostContainer:Landroid/view/View;

.field locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

.field rootView:Landroid/view/View;

.field stat_add_category:Z

.field stat_add_category_success:Z

.field stat_add_photo:Z

.field stat_add_photo_success:Z

.field stat_link_favorite:Z

.field stat_link_favorite_success:Z

.field stat_remove_location:Z

.field stat_remove_location_success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/narvii/post/BackgroundPostActivity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/narvii/blog/post/TopicPostActivity;Lcom/narvii/post/PostObject;)Lcom/narvii/post/PostObject;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    return-object p1
.end method

.method static synthetic access$100(Lcom/narvii/blog/post/TopicPostActivity;)Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/blog/post/TopicPostActivity;)Lcom/narvii/post/DraftManager;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/blog/post/TopicPostActivity;)Lcom/narvii/post/PostObject;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    return-object p0
.end method


# virtual methods
.method protected allowSetCover()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blogId()Ljava/lang/String;
    .locals 4

    .line 114
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

    .line 98
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 102
    :cond_0
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    .line 103
    invoke-virtual {v2, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-object v2
.end method

.method protected checkEligible()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget v0, v0, Lcom/narvii/blog/post/BlogPost;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "question"

    goto :goto_0

    :cond_0
    const-string v0, "normal"

    :goto_0
    const-string v1, "blog"

    .line 187
    invoke-virtual {p0, v1, v0}, Lcom/narvii/post/BasePostActivity;->checkEligible(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected doPost(Lcom/narvii/blog/post/BlogPost;)V
    .locals 4

    .line 618
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->blogId()Ljava/lang/String;

    move-result-object v0

    .line 619
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

    .line 620
    new-instance v1, Lcom/narvii/feed/BackgroundPostHelper;

    invoke-direct {v1, p0}, Lcom/narvii/feed/BackgroundPostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 621
    invoke-virtual {v1, p0}, Lcom/narvii/post/PostHelper;->setPostListener(Lcom/narvii/post/PostListener;)V

    .line 622
    const-class v2, Lcom/narvii/model/api/BlogResponse;

    invoke-virtual {v1, p1, v0, v2}, Lcom/narvii/post/PostHelper;->startPost(Lcom/narvii/post/PostObject;Lcom/narvii/util/http/ApiRequest;Ljava/lang/Class;)V

    return-void
.end method

.method protected bridge synthetic doPost(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 64
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/TopicPostActivity;->doPost(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method protected doPreview(Lcom/narvii/blog/post/BlogPost;)V
    .locals 2

    const-string v0, "feed"

    .line 173
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/Blog;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Blog;

    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->blogId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p0, v1}, Lcom/narvii/blog/post/BlogPost;->getPreviewBlog(Lcom/narvii/model/Blog;Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/model/Blog;

    move-result-object v0

    .line 174
    invoke-static {v0}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/model/Feed;)Landroid/content/Intent;

    move-result-object v0

    .line 175
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->itemList:Ljava/util/List;

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "taggedObjects"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "preview"

    const/4 v1, 0x1

    .line 176
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "Source"

    const-string v1, "Preview"

    .line 177
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected bridge synthetic doPreview(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 64
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/TopicPostActivity;->doPreview(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method public draftType()Ljava/lang/String;
    .locals 1

    const-string v0, "topic"

    return-object v0
.end method

.method public editPollDuration()V
    .locals 4

    .line 268
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 269
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object v0

    .line 270
    new-instance v1, Lcom/narvii/blog/post/TopicPostActivity$1;

    invoke-direct {v1, p0, p0, v0}, Lcom/narvii/blog/post/TopicPostActivity$1;-><init>(Lcom/narvii/blog/post/TopicPostActivity;Lcom/narvii/app/NVContext;Lcom/narvii/blog/post/BlogPost;)V

    .line 296
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f0dd5

    .line 297
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 298
    new-instance v3, Lcom/narvii/blog/post/TopicPostActivity$2;

    invoke-direct {v3, p0, v0}, Lcom/narvii/blog/post/TopicPostActivity$2;-><init>(Lcom/narvii/blog/post/TopicPostActivity;Lcom/narvii/blog/post/BlogPost;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 306
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method protected getInfluencerLockLayout()Landroid/view/View;
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/narvii/blog/post/TopicPostActivity;->influencerPostContainer:Landroid/view/View;

    return-object v0
.end method

.method public isEdit()Z
    .locals 1

    .line 119
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->blogId()Ljava/lang/String;

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
    .locals 6

    .line 348
    const-class v0, Lcom/narvii/model/Media;

    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v1, "mediaList"

    const/4 v2, -0x1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    if-ne p2, v2, :cond_0

    if-eqz p3, :cond_0

    .line 351
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 352
    invoke-static {v3, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object v4

    .line 355
    iput-object v3, v4, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    const-string v3, "coverMediaIndex"

    .line 356
    invoke-virtual {p3, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/narvii/blog/post/BlogPost;->setCoverMediaIndex(I)V

    .line 357
    iput-object v4, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 358
    invoke-virtual {p0, v4}, Lcom/narvii/blog/post/TopicPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    :cond_0
    const/4 v3, 0x5

    if-eq p1, v3, :cond_1

    const/4 v3, 0x6

    if-ne p1, v3, :cond_2

    :cond_1
    if-ne p2, v2, :cond_2

    if-eqz p3, :cond_2

    const-string v3, "itemList"

    .line 364
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 365
    const-class v4, Lcom/narvii/model/Item;

    invoke-static {v3, v4}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 367
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object v4

    .line 368
    iput-object v3, v4, Lcom/narvii/blog/post/BlogPost;->itemList:Ljava/util/List;

    .line 369
    iput-object v4, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 370
    invoke-virtual {p0, v4}, Lcom/narvii/blog/post/TopicPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    :cond_2
    const/4 v3, 0x1

    if-ne p1, v3, :cond_3

    if-ne p2, v2, :cond_3

    if-eqz p3, :cond_3

    const-string v4, "blogCategoryList"

    .line 375
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/narvii/model/BlogCategory;

    invoke-static {v4, v5}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v4

    .line 376
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object v5

    .line 377
    iput-object v4, v5, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    .line 378
    iput-object v5, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 379
    invoke-virtual {p0, v5}, Lcom/narvii/blog/post/TopicPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 380
    iput-boolean v3, p0, Lcom/narvii/blog/post/TopicPostActivity;->stat_add_category_success:Z

    :cond_3
    const/16 v3, 0xc

    if-ne p1, v3, :cond_4

    if-ne p2, v2, :cond_4

    if-eqz p3, :cond_4

    const-string p1, "refIdList"

    .line 384
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 386
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 385
    invoke-static {p2, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p2

    .line 387
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4

    if-eqz p2, :cond_4

    .line 388
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object p3

    .line 389
    iput-object p2, p3, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 390
    iput-object p3, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 391
    invoke-virtual {p0, p3}, Lcom/narvii/blog/post/TopicPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 392
    iget-object p2, p0, Lcom/narvii/blog/post/TopicPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    invoke-static {p2, p1}, Lcom/narvii/util/text/IMGUtils;->insertEditText(Landroid/widget/EditText;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v0, 0x19

    const/4 v1, 0x6

    const-string v2, "itemList"

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 247
    :sswitch_0
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object p1

    .line 248
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->endTime:Ljava/util/Date;

    if-nez p1, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->editPollDuration()V

    goto/16 :goto_1

    .line 251
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f0d85

    .line 252
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    sget-object v1, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    .line 253
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 254
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 205
    :sswitch_1
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object p1

    .line 206
    const-class v1, Lcom/narvii/media/MediaOrganizeFragment;

    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 207
    iget-object v2, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mediaList"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object v3, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dir"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    invoke-virtual {p1}, Lcom/narvii/blog/post/BlogPost;->getCoverMediaIndex()I

    move-result p1

    const-string v2, "coverMediaIndex"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "maximum"

    .line 210
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 211
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->allowSetCover()Z

    move-result p1

    const-string v0, "allowSetCover"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x2

    .line 212
    invoke-virtual {p0, v1, p1}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 240
    :sswitch_2
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object p1

    .line 241
    const-class v0, Lcom/narvii/item/picker/ItemSortFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 242
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->itemList:Ljava/util/List;

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 216
    :sswitch_3
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object p1

    .line 217
    const-class v0, Lcom/narvii/blog/category/BlogCategoryPickerFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 218
    iget-object v2, p1, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "blogCategoryList"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    iget p1, p1, Lcom/narvii/blog/post/BlogPost;->type:I

    if-ne p1, v1, :cond_1

    const/4 v3, 0x1

    :cond_1
    const-string p1, "isQuiz"

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 220
    invoke-virtual {p0, v0, v4}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 221
    iput-boolean v4, p0, Lcom/narvii/blog/post/TopicPostActivity;->stat_add_category:Z

    goto :goto_1

    .line 194
    :sswitch_4
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object p1

    .line 195
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 196
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v0, :cond_2

    const p1, 0x7f0f0dd0

    .line 197
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_0

    .line 199
    :cond_2
    iget-object p1, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v3, v3}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    .line 201
    :goto_0
    iput-boolean v4, p0, Lcom/narvii/blog/post/TopicPostActivity;->stat_add_photo:Z

    goto :goto_1

    .line 226
    :sswitch_5
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object p1

    .line 227
    iget-object v0, p0, Lcom/narvii/blog/post/TopicPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    iget v1, p1, Lcom/narvii/blog/post/BlogPost;->latitude:I

    iget p1, p1, Lcom/narvii/blog/post/BlogPost;->longitude:I

    invoke-virtual {v0, v1, p1, v4}, Lcom/narvii/post/LocationPickerFragment;->pickLocation(IIZ)V

    goto :goto_1

    .line 231
    :sswitch_6
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object p1

    .line 232
    const-class v0, Lcom/narvii/catalog/picker/CatalogPickerFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mine"

    .line 233
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 234
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->itemList:Ljava/util/List;

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x5

    .line 235
    invoke-virtual {p0, v0, p1}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 236
    iput-boolean v4, p0, Lcom/narvii/blog/post/TopicPostActivity;->stat_link_favorite:Z

    .line 261
    :goto_1
    iget-object p1, p0, Lcom/narvii/blog/post/TopicPostActivity;->rootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 263
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    :cond_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09086e -> :sswitch_6
        0x7f09086f -> :sswitch_5
        0x7f090870 -> :sswitch_4
        0x7f090875 -> :sswitch_3
        0x7f090879 -> :sswitch_2
        0x7f09087a -> :sswitch_5
        0x7f09087b -> :sswitch_1
        0x7f09087e -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 125
    invoke-super {p0, p1}, Lcom/narvii/post/DraftPostActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b05a2

    .line 127
    invoke-virtual {p0, p1}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    .line 128
    invoke-static {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    .line 130
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "locationPicker"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/narvii/post/LocationPickerFragment;

    iput-object p1, p0, Lcom/narvii/blog/post/TopicPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 131
    iget-object p1, p0, Lcom/narvii/blog/post/TopicPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    if-nez p1, :cond_0

    .line 132
    new-instance p1, Lcom/narvii/post/LocationPickerFragment;

    invoke-direct {p1}, Lcom/narvii/post/LocationPickerFragment;-><init>()V

    iput-object p1, p0, Lcom/narvii/blog/post/TopicPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 133
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/blog/post/TopicPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 135
    :cond_0
    iget-object p1, p0, Lcom/narvii/blog/post/TopicPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    iput-object p0, p1, Lcom/narvii/post/LocationPickerFragment;->listener:Lcom/narvii/post/LocationPickerFragment$LocationListener;

    const p1, 0x7f09098b

    .line 137
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/blog/post/TopicPostActivity;->rootView:Landroid/view/View;

    const p1, 0x7f0902d0

    .line 138
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/EditTextIMG;

    iput-object p1, p0, Lcom/narvii/blog/post/TopicPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    const p1, 0x7f09088a

    .line 139
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/blog/post/TopicPostActivity;->influencerPostContainer:Landroid/view/View;

    .line 140
    iget-object p1, p0, Lcom/narvii/blog/post/TopicPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    new-instance v0, Lcom/narvii/blog/post/TopicPostActivity$ImgCallback;

    invoke-direct {v0, p0}, Lcom/narvii/blog/post/TopicPostActivity$ImgCallback;-><init>(Lcom/narvii/blog/post/TopicPostActivity;)V

    iput-object v0, p1, Lcom/narvii/widget/EditTextIMG;->imgMode:Landroid/view/ActionMode$Callback;

    const p1, 0x7f090881

    .line 141
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 142
    iget-object v0, p0, Lcom/narvii/blog/post/TopicPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    new-instance v1, Lcom/narvii/post/BasePostActivity$HideHintWatcher;

    invoke-direct {v1, p1}, Lcom/narvii/post/BasePostActivity$HideHintWatcher;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public onLocatingChanged(Z)V
    .locals 0

    .line 343
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/TopicPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method public onLocationResult(Lcom/narvii/location/GPSCoordinate;)V
    .locals 4

    .line 323
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 325
    iput v2, v0, Lcom/narvii/blog/post/BlogPost;->latitude:I

    .line 326
    iput v2, v0, Lcom/narvii/blog/post/BlogPost;->longitude:I

    .line 327
    iput-object v1, v0, Lcom/narvii/blog/post/BlogPost;->address:Ljava/lang/String;

    const/4 p1, 0x1

    .line 328
    iput-boolean p1, p0, Lcom/narvii/blog/post/TopicPostActivity;->stat_remove_location:Z

    .line 329
    iput-boolean p1, p0, Lcom/narvii/blog/post/TopicPostActivity;->stat_remove_location_success:Z

    goto :goto_0

    .line 331
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->latitudeE6()I

    move-result v3

    iput v3, v0, Lcom/narvii/blog/post/BlogPost;->latitude:I

    .line 332
    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->longitudeE6()I

    move-result p1

    iput p1, v0, Lcom/narvii/blog/post/BlogPost;->longitude:I

    .line 333
    iput-object v1, v0, Lcom/narvii/blog/post/BlogPost;->address:Ljava/lang/String;

    .line 334
    iput-boolean v2, p0, Lcom/narvii/blog/post/TopicPostActivity;->stat_remove_location:Z

    .line 335
    iput-boolean v2, p0, Lcom/narvii/blog/post/TopicPostActivity;->stat_remove_location_success:Z

    .line 337
    :goto_0
    iput-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 338
    invoke-virtual {p0, v0}, Lcom/narvii/blog/post/TopicPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

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

    .line 311
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 312
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    move-object v1, v0

    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    iget-object v1, v1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 313
    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget-object v0, v0, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 315
    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 316
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    move-object v0, p1

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iput-object p2, v0, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 317
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    const/16 p2, 0x19

    const v0, 0x7f0f0dd0

    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/post/BasePostActivity;->trimMediaList(Ljava/util/List;II)V

    const/4 p1, 0x1

    .line 318
    iput-boolean p1, p0, Lcom/narvii/blog/post/TopicPostActivity;->stat_add_photo_success:Z

    return-void
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 9

    .line 627
    invoke-super {p0, p1, p2}, Lcom/narvii/post/DraftPostActivity;->onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V

    .line 628
    check-cast p2, Lcom/narvii/model/api/BlogResponse;

    iget-object p1, p2, Lcom/narvii/model/api/BlogResponse;->blog:Lcom/narvii/model/Blog;

    .line 630
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->isEdit()Z

    move-result p2

    const-string v0, "Source"

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 631
    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/model/Feed;)Landroid/content/Intent;

    move-result-object p2

    const-string v2, "justCreated"

    .line 632
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "View Created Post"

    .line 633
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 634
    invoke-virtual {p0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onPostLoaded(Lcom/narvii/blog/post/BlogPost;)V
    .locals 1

    .line 147
    invoke-super {p0, p1}, Lcom/narvii/post/DraftPostActivity;->onPostLoaded(Lcom/narvii/post/PostObject;)V

    .line 148
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->isEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f0f03cd

    .line 149
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    .line 151
    :cond_0
    iget p1, p1, Lcom/narvii/blog/post/BlogPost;->type:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0x7f0f0ddb

    .line 153
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    :cond_2
    const p1, 0x7f0f0de1

    .line 156
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostLoaded(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 64
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/TopicPostActivity;->onPostLoaded(Lcom/narvii/blog/post/BlogPost;)V

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

    .line 110
    const-class v0, Lcom/narvii/blog/post/BlogPost;

    return-object v0
.end method

.method protected savePost()Lcom/narvii/blog/post/BlogPost;
    .locals 6

    .line 557
    iget-object v0, p0, Lcom/narvii/blog/post/TopicPostActivity;->rootView:Landroid/view/View;

    const v1, 0x7f090b9a

    .line 560
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 561
    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v2, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/narvii/blog/post/BlogPost;->title:Ljava/lang/String;

    const v1, 0x7f0902d0

    .line 563
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 564
    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v2, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/narvii/blog/post/BlogPost;->content:Ljava/lang/String;

    .line 566
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    move-object v2, v1

    check-cast v2, Lcom/narvii/blog/post/BlogPost;

    iget v2, v2, Lcom/narvii/blog/post/BlogPost;->type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 567
    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    iget-object v1, v1, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "pollSettings"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v5, "polloptType"

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_2

    const v1, 0x7f09087d

    .line 568
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 569
    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 570
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    move-object v2, v1

    check-cast v2, Lcom/narvii/blog/post/BlogPost;

    iget-object v2, v2, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v2, :cond_0

    .line 571
    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    iput-object v2, v1, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 573
    :cond_0
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    iget-object v1, v1, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {v1, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    if-nez v1, :cond_1

    .line 575
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v1

    .line 576
    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v2, Lcom/narvii/blog/post/BlogPost;

    iget-object v2, v2, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {v2, v4, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 578
    :cond_1
    check-cast v1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v2, "joinEnabled"

    invoke-virtual {v1, v2, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 582
    :cond_2
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    move-object v1, v0

    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    iget v1, v1, Lcom/narvii/blog/post/BlogPost;->latitude:I

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    iget v1, v1, Lcom/narvii/blog/post/BlogPost;->longitude:I

    if-eqz v1, :cond_3

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget-object v0, v0, Lcom/narvii/blog/post/BlogPost;->address:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "location"

    .line 583
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/location/LocationService;

    .line 584
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

    if-eqz v0, :cond_3

    .line 586
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    invoke-interface {v0}, Lcom/narvii/location/ReadableAddress;->getCityLevelAddressText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/narvii/blog/post/BlogPost;->address:Ljava/lang/String;

    .line 590
    :cond_3
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    return-object v0
.end method

.method protected bridge synthetic savePost()Lcom/narvii/post/PostObject;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object v0

    return-object v0
.end method

.method protected supportPreview()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected updateView(Lcom/narvii/blog/post/BlogPost;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 399
    invoke-super/range {p0 .. p1}, Lcom/narvii/post/BackgroundPostActivity;->updateView(Lcom/narvii/feed/BackgroundPost;)V

    .line 401
    iget-object v2, v0, Lcom/narvii/blog/post/TopicPostActivity;->rootView:Landroid/view/View;

    const v3, 0x7f090b9a

    .line 408
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 409
    iget v4, v1, Lcom/narvii/blog/post/BlogPost;->type:I

    const/4 v5, 0x3

    const/4 v6, 0x4

    if-eq v4, v5, :cond_1

    if-eq v4, v6, :cond_0

    goto :goto_0

    :cond_0
    const v4, 0x7f0f0ddc

    .line 414
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHint(I)V

    goto :goto_0

    :cond_1
    const v4, 0x7f0f0ddf

    .line 411
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHint(I)V

    .line 417
    :goto_0
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v7, v1, Lcom/narvii/blog/post/BlogPost;->title:Ljava/lang/String;

    invoke-static {v4, v7}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 418
    iget-object v4, v1, Lcom/narvii/blog/post/BlogPost;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const v3, 0x7f0902d0

    .line 422
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 423
    iget v4, v1, Lcom/narvii/blog/post/BlogPost;->type:I

    if-eq v4, v5, :cond_4

    if-eq v4, v6, :cond_3

    goto :goto_1

    :cond_3
    const v4, 0x7f0f0dd4

    .line 428
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHint(I)V

    goto :goto_1

    :cond_4
    const v4, 0x7f0f0dde

    .line 425
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHint(I)V

    .line 431
    :goto_1
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/narvii/blog/post/BlogPost;->content:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 432
    iget-object v4, v1, Lcom/narvii/blog/post/BlogPost;->content:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    :cond_5
    iget-object v3, v1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    const/4 v4, 0x0

    if-nez v3, :cond_6

    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_2
    const v5, 0x7f090870

    .line 437
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 438
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v7, 0x8

    if-nez v3, :cond_7

    const/4 v8, 0x0

    goto :goto_3

    :cond_7
    const/16 v8, 0x8

    .line 439
    :goto_3
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x7f09087b

    .line 441
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 442
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-lez v3, :cond_8

    const/4 v8, 0x0

    goto :goto_4

    :cond_8
    const/16 v8, 0x8

    .line 443
    :goto_4
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    const v8, 0x7f09050e

    .line 444
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f0f0dc5

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    .line 445
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v4

    invoke-virtual {v0, v10, v12}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    check-cast v5, Landroid/view/ViewGroup;

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 447
    :goto_5
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    const/4 v13, 0x0

    if-ge v9, v12, :cond_c

    .line 448
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 449
    invoke-virtual {v12}, Landroid/view/View;->getId()I

    move-result v14

    const v15, 0x7f090571

    if-ne v14, v15, :cond_b

    .line 450
    check-cast v12, Lcom/narvii/widget/ThumbImageView;

    if-ge v10, v3, :cond_9

    .line 451
    iget-object v13, v1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/narvii/model/Media;

    .line 452
    :cond_9
    invoke-virtual {v12, v13}, Lcom/narvii/widget/ThumbImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    if-nez v13, :cond_a

    const/4 v13, 0x4

    goto :goto_6

    :cond_a
    const/4 v13, 0x0

    .line 453
    :goto_6
    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 v10, v10, 0x1

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_c
    const v3, 0x7f0908a5

    .line 459
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 460
    iget v5, v1, Lcom/narvii/blog/post/BlogPost;->type:I

    if-ne v5, v6, :cond_e

    iget-object v5, v1, Lcom/narvii/blog/post/BlogPost;->endTime:Ljava/util/Date;

    if-nez v5, :cond_d

    goto :goto_7

    :cond_d
    const/4 v5, 0x0

    goto :goto_8

    :cond_e
    :goto_7
    const/16 v5, 0x8

    :goto_8
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 461
    check-cast v3, Lcom/narvii/poll/PollDurationView;

    iget-object v5, v1, Lcom/narvii/blog/post/BlogPost;->endTime:Ljava/util/Date;

    invoke-virtual {v3, v5}, Lcom/narvii/poll/PollDurationView;->setEndTime(Ljava/util/Date;)V

    const v3, 0x7f09087e

    .line 464
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 465
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    iget v5, v1, Lcom/narvii/blog/post/BlogPost;->type:I

    if-ne v5, v6, :cond_13

    .line 467
    iget-object v5, v1, Lcom/narvii/blog/post/BlogPost;->endTime:Ljava/util/Date;

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    cmp-long v5, v9, v14

    if-lez v5, :cond_f

    goto :goto_9

    :cond_f
    const/16 v5, 0x8

    goto :goto_a

    :cond_10
    :goto_9
    const/4 v5, 0x0

    :goto_a
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x7f090880

    .line 469
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v9, 0x7f09087f

    .line 470
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 471
    iget-object v9, v1, Lcom/narvii/blog/post/BlogPost;->endTime:Ljava/util/Date;

    if-eqz v9, :cond_11

    .line 472
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const v9, 0x7f0f0d84

    .line 473
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(I)V

    .line 474
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b

    .line 475
    :cond_11
    iget v9, v1, Lcom/narvii/blog/post/BlogPost;->durationInDays:I

    if-nez v9, :cond_12

    .line 476
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const v9, 0x7f0f0dca

    .line 477
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(I)V

    .line 478
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b

    .line 480
    :cond_12
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 481
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const v5, 0x7f0f0dd6

    new-array v9, v11, [Ljava/lang/Object;

    .line 482
    iget v10, v1, Lcom/narvii/blog/post/BlogPost;->durationInDays:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-virtual {v0, v5, v9}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 485
    :cond_13
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 489
    :goto_b
    iget-object v3, v1, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v5, 0x2

    new-array v9, v5, [Ljava/lang/String;

    const-string v10, "pollSettings"

    aput-object v10, v9, v4

    const-string v12, "polloptType"

    aput-object v12, v9, v11

    invoke-static {v3, v9}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v3

    .line 490
    iget-object v9, v1, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array v5, v5, [Ljava/lang/String;

    aput-object v10, v5, v4

    const-string v10, "joinEnabled"

    aput-object v10, v5, v11

    invoke-static {v9, v5}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    move-result v5

    const v9, 0x7f09087c

    .line 491
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 492
    iget v10, v1, Lcom/narvii/blog/post/BlogPost;->type:I

    if-ne v10, v6, :cond_15

    if-ne v3, v11, :cond_15

    iget-object v3, v1, Lcom/narvii/blog/post/BlogPost;->endTime:Ljava/util/Date;

    if-eqz v3, :cond_14

    .line 494
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    cmp-long v3, v14, v16

    if-lez v3, :cond_15

    :cond_14
    const/4 v3, 0x1

    goto :goto_c

    :cond_15
    const/4 v3, 0x0

    :goto_c
    if-eqz v3, :cond_16

    const/4 v3, 0x0

    goto :goto_d

    :cond_16
    const/16 v3, 0x8

    .line 495
    :goto_d
    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f09087d

    .line 496
    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 497
    check-cast v3, Landroid/widget/CompoundButton;

    invoke-virtual {v3, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const v3, 0x7f090875

    .line 500
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 502
    iget-object v5, v1, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    if-eqz v5, :cond_17

    .line 503
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/narvii/model/BlogCategory;

    .line 504
    iget-object v9, v9, Lcom/narvii/model/BlogCategory;->label:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_17
    const v5, 0x7f090871

    .line 507
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/narvii/widget/KeywordsView;

    invoke-virtual {v5, v3}, Lcom/narvii/widget/KeywordsView;->setKeywords(Ljava/util/List;)V

    const v5, 0x7f090874

    .line 508
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 509
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_18

    const v3, 0x7f0f10cd

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_f

    :cond_18
    const v3, 0x7f0f10ce

    .line 510
    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 509
    :goto_f
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    iget v3, v1, Lcom/narvii/blog/post/BlogPost;->latitude:I

    if-nez v3, :cond_19

    iget v3, v1, Lcom/narvii/blog/post/BlogPost;->longitude:I

    .line 514
    :cond_19
    iget-object v3, v0, Lcom/narvii/blog/post/TopicPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    invoke-virtual {v3}, Lcom/narvii/post/LocationPickerFragment;->isLocating()Z

    const v3, 0x7f09086f

    .line 516
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 517
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f09089d

    .line 520
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 521
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f09087a

    .line 523
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 524
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x7f09006f

    .line 527
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/widget/AddressView;

    .line 528
    iget v5, v1, Lcom/narvii/blog/post/BlogPost;->latitude:I

    iget v9, v1, Lcom/narvii/blog/post/BlogPost;->longitude:I

    iget-object v10, v1, Lcom/narvii/blog/post/BlogPost;->address:Ljava/lang/String;

    invoke-virtual {v3, v5, v9, v10, v4}, Lcom/narvii/widget/AddressView;->setLatLngE6(IILjava/lang/String;Z)V

    .line 529
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 532
    iget-object v3, v1, Lcom/narvii/blog/post/BlogPost;->itemList:Ljava/util/List;

    if-nez v3, :cond_1a

    const/4 v3, 0x0

    goto :goto_10

    :cond_1a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_10
    const v5, 0x7f09086e

    .line 533
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 534
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 535
    iget v9, v1, Lcom/narvii/blog/post/BlogPost;->type:I

    if-eq v9, v6, :cond_1c

    if-lez v3, :cond_1b

    goto :goto_11

    :cond_1b
    const/4 v9, 0x0

    goto :goto_12

    :cond_1c
    :goto_11
    const/16 v9, 0x8

    :goto_12
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x7f090879

    .line 537
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 538
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 539
    iget v5, v1, Lcom/narvii/blog/post/BlogPost;->type:I

    if-eq v5, v6, :cond_1e

    if-nez v3, :cond_1d

    goto :goto_13

    :cond_1d
    const/4 v7, 0x0

    :cond_1e
    :goto_13
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 540
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v7, 0x7f0f0dbf

    new-array v8, v11, [Ljava/lang/Object;

    .line 541
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-virtual {v0, v7, v8}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    check-cast v2, Landroid/view/ViewGroup;

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 543
    :goto_14
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v5, v8, :cond_22

    .line 544
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 545
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    const-string v10, "link"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21

    .line 546
    check-cast v8, Lcom/narvii/widget/CardView;

    if-ge v7, v3, :cond_1f

    .line 547
    iget-object v9, v1, Lcom/narvii/blog/post/BlogPost;->itemList:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/narvii/model/Item;

    goto :goto_15

    :cond_1f
    move-object v9, v13

    .line 548
    :goto_15
    invoke-virtual {v8, v9}, Lcom/narvii/widget/CardView;->setItem(Lcom/narvii/model/Item;)V

    if-nez v9, :cond_20

    const/4 v9, 0x4

    goto :goto_16

    :cond_20
    const/4 v9, 0x0

    .line 549
    :goto_16
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    add-int/lit8 v7, v7, 0x1

    :cond_21
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_22
    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/feed/BackgroundPost;)V
    .locals 0

    .line 64
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/TopicPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 64
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/TopicPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method protected validateUpload(Lcom/narvii/blog/post/BlogPost;)Z
    .locals 3

    .line 595
    iget-object v0, p0, Lcom/narvii/blog/post/TopicPostActivity;->rootView:Landroid/view/View;

    const v1, 0x7f090b9a

    .line 596
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f0f0daf

    invoke-virtual {p0, v0, v1}, Lcom/narvii/post/BasePostActivity;->validateEditTextNotEmpty(Landroid/widget/EditText;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/narvii/blog/post/TopicPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v2, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/narvii/util/text/IMGUtils;->filterRefIds(Landroid/text/Editable;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 602
    :cond_1
    iget v0, p1, Lcom/narvii/blog/post/BlogPost;->type:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/narvii/blog/post/TopicPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    const v2, 0x7f0f0daa

    invoke-virtual {p0, v0, v2}, Lcom/narvii/post/BasePostActivity;->validateEditTextNotEmpty(Landroid/widget/EditText;I)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 605
    :cond_2
    iget v0, p1, Lcom/narvii/blog/post/BlogPost;->type:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    iget-object v0, p1, Lcom/narvii/blog/post/BlogPost;->endTime:Ljava/util/Date;

    if-nez v0, :cond_3

    iget v0, p1, Lcom/narvii/blog/post/BlogPost;->durationInDays:I

    if-gtz v0, :cond_3

    const p1, 0x7f0f0dad

    .line 606
    invoke-virtual {p0, p1}, Lcom/narvii/post/BasePostActivity;->showAlert(I)V

    return v1

    .line 610
    :cond_3
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    const/16 v0, 0x19

    const v2, 0x7f0f0da9

    invoke-virtual {p0, p1, v0, v2}, Lcom/narvii/post/BasePostActivity;->validateMediaListMax(Ljava/util/List;II)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method protected bridge synthetic validateUpload(Lcom/narvii/post/PostObject;)Z
    .locals 0

    .line 64
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/TopicPostActivity;->validateUpload(Lcom/narvii/blog/post/BlogPost;)Z

    move-result p1

    return p1
.end method
