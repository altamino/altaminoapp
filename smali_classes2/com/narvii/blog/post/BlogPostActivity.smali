.class public Lcom/narvii/blog/post/BlogPostActivity;
.super Lcom/narvii/post/BackgroundPostActivity;
.source "BlogPostActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/post/LocationPickerFragment$LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/blog/post/BlogPostActivity$ImgCallback;
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
.field static final INSERT_IMG:I = 0x8

.field protected static final MAX_MEDIA:I = 0x19

.field static final PICK_CATEGORY_REQUEST:I = 0x1

.field static final PICK_ITEM_REQUEST:I = 0x5

.field static final SORT_ITEM_REQUEST:I = 0x6

.field static final SORT_PHOTO_REQUEST:I = 0x2


# instance fields
.field communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field protected editContent:Lcom/narvii/widget/EditTextIMG;

.field protected editTitle:Landroid/widget/EditText;

.field protected fansOnlyContainer:Landroid/view/View;

.field protected itemCount:Landroid/widget/TextView;

.field protected itemPreview:Lcom/narvii/widget/CardView;

.field protected locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

.field protected mediaCount:Landroid/widget/TextView;

.field protected mediaPreview:Lcom/narvii/widget/ThumbImageView;

.field protected pickCategories:Landroid/widget/Button;

.field protected pickItem:Landroid/widget/ImageView;

.field protected pickLocation:Landroid/widget/ImageView;

.field protected pickLocationProgress:Landroid/view/View;

.field protected pickMedia:Landroid/widget/ImageView;

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

    .line 60
    invoke-direct {p0}, Lcom/narvii/post/BackgroundPostActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/blog/post/BlogPostActivity;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/blog/post/BlogPostActivity;)Lcom/narvii/post/DraftManager;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/blog/post/BlogPostActivity;)Lcom/narvii/post/PostObject;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    return-object p0
.end method


# virtual methods
.method public blogId()Ljava/lang/String;
    .locals 4

    .line 118
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

    .line 102
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 106
    :cond_0
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    .line 107
    invoke-virtual {v2, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-object v2
.end method

.method protected checkEligible()V
    .locals 2

    const-string v0, "blog"

    const-string v1, "normal"

    .line 209
    invoke-virtual {p0, v0, v1}, Lcom/narvii/post/BasePostActivity;->checkEligible(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected doPost(Lcom/narvii/blog/post/BlogPost;)V
    .locals 4

    .line 450
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->blogId()Ljava/lang/String;

    move-result-object v0

    .line 451
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

    .line 452
    new-instance v1, Lcom/narvii/feed/BackgroundPostHelper;

    invoke-direct {v1, p0}, Lcom/narvii/feed/BackgroundPostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 453
    invoke-virtual {v1, p0}, Lcom/narvii/post/PostHelper;->setPostListener(Lcom/narvii/post/PostListener;)V

    .line 454
    const-class v2, Lcom/narvii/model/api/BlogResponse;

    invoke-virtual {v1, p1, v0, v2}, Lcom/narvii/post/PostHelper;->startPost(Lcom/narvii/post/PostObject;Lcom/narvii/util/http/ApiRequest;Ljava/lang/Class;)V

    return-void
.end method

.method protected bridge synthetic doPost(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 60
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/BlogPostActivity;->doPost(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method protected doPreview(Lcom/narvii/blog/post/BlogPost;)V
    .locals 2

    const-string v0, "feed"

    .line 199
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/Blog;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Blog;

    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->blogId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p0, v1}, Lcom/narvii/blog/post/BlogPost;->getPreviewBlog(Lcom/narvii/model/Blog;Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/model/Blog;

    move-result-object v0

    .line 200
    invoke-static {v0}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/model/Feed;)Landroid/content/Intent;

    move-result-object v0

    .line 201
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->itemList:Ljava/util/List;

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "taggedObjects"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "preview"

    const/4 v1, 0x1

    .line 202
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "Source"

    const-string v1, "Preview"

    .line 203
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected bridge synthetic doPreview(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 60
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/BlogPostActivity;->doPreview(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method public draftType()Ljava/lang/String;
    .locals 1

    const-string v0, "blog"

    return-object v0
.end method

.method protected getInfluencerLockLayout()Landroid/view/View;
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity;->fansOnlyContainer:Landroid/view/View;

    return-object v0
.end method

.method public isEdit()Z
    .locals 1

    .line 123
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->blogId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0b0582

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 279
    const-class v0, Lcom/narvii/model/Media;

    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p1, v1, :cond_0

    if-ne p2, v2, :cond_0

    if-eqz p3, :cond_0

    const-string v3, "blogCategoryList"

    .line 282
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/narvii/model/BlogCategory;

    invoke-static {v3, v4}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v3

    .line 283
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object v4

    .line 284
    iput-object v3, v4, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    .line 285
    iput-object v4, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 286
    invoke-virtual {p0, v4}, Lcom/narvii/blog/post/BlogPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 287
    iput-boolean v1, p0, Lcom/narvii/blog/post/BlogPostActivity;->stat_add_category_success:Z

    :cond_0
    const/4 v3, 0x2

    const-string v4, "mediaList"

    if-ne p1, v3, :cond_1

    if-ne p2, v2, :cond_1

    if-eqz p3, :cond_1

    .line 291
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 292
    invoke-static {v3, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 294
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object v5

    .line 295
    iput-object v3, v5, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    const-string v3, "coverMediaIndex"

    .line 296
    invoke-virtual {p3, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/narvii/blog/post/BlogPost;->setCoverMediaIndex(I)V

    .line 297
    iput-object v5, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 298
    invoke-virtual {p0, v5}, Lcom/narvii/blog/post/BlogPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    :cond_1
    const/4 v3, 0x5

    if-eq p1, v3, :cond_2

    const/4 v3, 0x6

    if-ne p1, v3, :cond_4

    :cond_2
    if-ne p2, v2, :cond_4

    if-eqz p3, :cond_4

    const-string v3, "itemList"

    .line 303
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 304
    const-class v5, Lcom/narvii/model/Item;

    invoke-static {v3, v5}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 306
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object v5

    .line 307
    iput-object v3, v5, Lcom/narvii/blog/post/BlogPost;->itemList:Ljava/util/List;

    .line 308
    iput-object v5, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 309
    invoke-virtual {p0, v5}, Lcom/narvii/blog/post/BlogPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 311
    :cond_3
    iput-boolean v1, p0, Lcom/narvii/blog/post/BlogPostActivity;->stat_link_favorite_success:Z

    :cond_4
    const/16 v1, 0x8

    if-ne p1, v1, :cond_5

    if-ne p2, v2, :cond_5

    if-eqz p3, :cond_5

    const-string p1, "refIdList"

    .line 315
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 316
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p2

    .line 317
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_5

    if-eqz p2, :cond_5

    .line 318
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object p3

    .line 319
    iput-object p2, p3, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 320
    iput-object p3, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 321
    invoke-virtual {p0, p3}, Lcom/narvii/blog/post/BlogPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 322
    iget-object p2, p0, Lcom/narvii/blog/post/BlogPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    invoke-static {p2, p1}, Lcom/narvii/util/text/IMGUtils;->insertEditText(Landroid/widget/EditText;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "maximum"

    const/4 v1, 0x6

    const-string v2, "itemList"

    const/16 v3, 0x19

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_3

    .line 216
    :sswitch_0
    iput-boolean v5, p0, Lcom/narvii/blog/post/BlogPostActivity;->stat_add_category:Z

    .line 217
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object p1

    .line 218
    const-class v2, Lcom/narvii/blog/category/BlogCategoryPickerFragment;

    invoke-static {v2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 219
    iget-object v3, p1, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    invoke-static {v3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "blogCategoryList"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    iget v3, p1, Lcom/narvii/blog/post/BlogPost;->type:I

    if-ne v3, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "isQuiz"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 222
    iget-object v1, p1, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 223
    :goto_1
    iget-object v3, p1, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_3

    .line 224
    iget-object v3, p1, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/BlogCategory;

    iget v3, v3, Lcom/narvii/model/BlogCategory;->status:I

    const/16 v6, 0x9

    if-eq v3, v6, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 229
    :cond_3
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 230
    invoke-virtual {p0, v2, v5}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    .line 234
    :sswitch_1
    iput-boolean v5, p0, Lcom/narvii/blog/post/BlogPostActivity;->stat_add_photo:Z

    .line 235
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object p1

    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    if-eqz p1, :cond_4

    .line 236
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v3, :cond_4

    .line 237
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f0dd0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v4}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    goto/16 :goto_3

    .line 239
    :cond_4
    iget-object v0, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p1, :cond_5

    const/4 p1, 0x0

    goto :goto_2

    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_2
    sub-int/2addr v3, p1

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    goto/16 :goto_3

    .line 255
    :sswitch_2
    iput-boolean v5, p0, Lcom/narvii/blog/post/BlogPostActivity;->stat_link_favorite:Z

    .line 256
    const-class p1, Lcom/narvii/catalog/picker/CatalogPickerFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "mine"

    .line 257
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 258
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/blog/post/BlogPost;->itemList:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x5

    .line 259
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    .line 244
    :sswitch_3
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 245
    const-class p1, Lcom/narvii/media/MediaOrganizeFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 246
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    iget-object v1, v1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mediaList"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {v1}, Lcom/narvii/blog/post/BlogPost;->getCoverMediaIndex()I

    move-result v1

    const-string v2, "coverMediaIndex"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 248
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dir"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "allowSetCover"

    .line 250
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, 0x2

    .line 251
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    .line 263
    :sswitch_4
    const-class p1, Lcom/narvii/item/picker/ItemSortFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 264
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/blog/post/BlogPost;->itemList:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    invoke-virtual {p0, p1, v1}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    .line 270
    :sswitch_5
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object p1

    .line 271
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    iget v1, p1, Lcom/narvii/blog/post/BlogPost;->latitude:I

    iget p1, p1, Lcom/narvii/blog/post/BlogPost;->longitude:I

    invoke-virtual {v0, v1, p1, v5}, Lcom/narvii/post/LocationPickerFragment;->pickLocation(IIZ)V

    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f09006f -> :sswitch_5
        0x7f0905db -> :sswitch_4
        0x7f0906dc -> :sswitch_3
        0x7f090830 -> :sswitch_2
        0x7f090832 -> :sswitch_5
        0x7f090833 -> :sswitch_1
        0x7f090871 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 132
    invoke-super {p0, p1}, Lcom/narvii/post/DraftPostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->layoutId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    .line 135
    invoke-static {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    .line 137
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "locationPicker"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/narvii/post/LocationPickerFragment;

    iput-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 138
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    if-nez p1, :cond_0

    .line 139
    new-instance p1, Lcom/narvii/post/LocationPickerFragment;

    invoke-direct {p1}, Lcom/narvii/post/LocationPickerFragment;-><init>()V

    iput-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 140
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/blog/post/BlogPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 142
    :cond_0
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    iput-object p0, p1, Lcom/narvii/post/LocationPickerFragment;->listener:Lcom/narvii/post/LocationPickerFragment$LocationListener;

    .line 143
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {p1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    const p1, 0x7f090b9a

    .line 145
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->editTitle:Landroid/widget/EditText;

    const p1, 0x7f0902d0

    .line 146
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/EditTextIMG;

    iput-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    .line 147
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    new-instance v0, Lcom/narvii/blog/post/BlogPostActivity$ImgCallback;

    invoke-direct {v0, p0}, Lcom/narvii/blog/post/BlogPostActivity$ImgCallback;-><init>(Lcom/narvii/blog/post/BlogPostActivity;)V

    iput-object v0, p1, Lcom/narvii/widget/EditTextIMG;->imgMode:Landroid/view/ActionMode$Callback;

    const p1, 0x7f090881

    .line 148
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 149
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    new-instance v1, Lcom/narvii/post/BasePostActivity$HideHintWatcher;

    invoke-direct {v1, p1}, Lcom/narvii/post/BasePostActivity$HideHintWatcher;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p1, 0x7f090833

    .line 150
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->pickMedia:Landroid/widget/ImageView;

    .line 151
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->pickMedia:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0906dc

    .line 152
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/ThumbImageView;

    iput-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->mediaPreview:Lcom/narvii/widget/ThumbImageView;

    .line 153
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->mediaPreview:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0906d0

    .line 154
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->mediaCount:Landroid/widget/TextView;

    const p1, 0x7f090830

    .line 155
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->pickItem:Landroid/widget/ImageView;

    .line 156
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->pickItem:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0905db

    .line 157
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/CardView;

    iput-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->itemPreview:Lcom/narvii/widget/CardView;

    .line 158
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->itemPreview:Lcom/narvii/widget/CardView;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0905e2

    .line 159
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->itemCount:Landroid/widget/TextView;

    const p1, 0x7f090832

    .line 160
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->pickLocation:Landroid/widget/ImageView;

    .line 161
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->pickLocation:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090831

    .line 162
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->pickLocationProgress:Landroid/view/View;

    const p1, 0x7f090871

    .line 163
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->pickCategories:Landroid/widget/Button;

    const p1, 0x7f090427

    .line 165
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->fansOnlyContainer:Landroid/view/View;

    .line 167
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->pickItem:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isCatalogEnable()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 168
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->itemPreview:Lcom/narvii/widget/CardView;

    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isCatalogEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 169
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->itemCount:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isCatalogEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const p1, 0x7f0905ec

    .line 170
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isCatalogEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onLocatingChanged(Z)V
    .locals 1

    .line 341
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->pickLocation:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 342
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->pickLocationProgress:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onLocationResult(Lcom/narvii/location/GPSCoordinate;)V
    .locals 5

    .line 347
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 349
    iput v2, v0, Lcom/narvii/blog/post/BlogPost;->latitude:I

    .line 350
    iput v2, v0, Lcom/narvii/blog/post/BlogPost;->longitude:I

    .line 351
    iput-object v1, v0, Lcom/narvii/blog/post/BlogPost;->address:Ljava/lang/String;

    const/4 p1, 0x1

    .line 352
    iput-boolean p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->stat_remove_location:Z

    .line 353
    iput-boolean p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->stat_remove_location_success:Z

    goto :goto_0

    .line 355
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->latitudeE6()I

    move-result v3

    iput v3, v0, Lcom/narvii/blog/post/BlogPost;->latitude:I

    .line 356
    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->longitudeE6()I

    move-result p1

    iput p1, v0, Lcom/narvii/blog/post/BlogPost;->longitude:I

    .line 357
    iput-object v1, v0, Lcom/narvii/blog/post/BlogPost;->address:Ljava/lang/String;

    const-string p1, "location"

    .line 358
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/location/LocationService;

    .line 359
    iget v3, v0, Lcom/narvii/blog/post/BlogPost;->latitude:I

    iget v4, v0, Lcom/narvii/blog/post/BlogPost;->longitude:I

    invoke-static {v3, v4}, Lcom/narvii/location/GPSCoordinate;->create(II)Lcom/narvii/location/GPSCoordinate;

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Lcom/narvii/location/LocationService;->reverseGeocoding(Lcom/narvii/location/GPSCoordinate;Lcom/narvii/location/LocationService$GeocodeResultListener;)V

    .line 360
    iput-boolean v2, p0, Lcom/narvii/blog/post/BlogPostActivity;->stat_remove_location:Z

    .line 361
    iput-boolean v2, p0, Lcom/narvii/blog/post/BlogPostActivity;->stat_remove_location_success:Z

    .line 363
    :goto_0
    iput-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 364
    invoke-virtual {p0, v0}, Lcom/narvii/blog/post/BlogPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

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

    .line 329
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 330
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    move-object v1, v0

    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    iget-object v1, v1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 331
    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget-object v0, v0, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 333
    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 334
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    move-object v0, p1

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iput-object p2, v0, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 335
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    const/16 p2, 0x19

    const v0, 0x7f0f0dd0

    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/post/BasePostActivity;->trimMediaList(Ljava/util/List;II)V

    const/4 p1, 0x1

    .line 336
    iput-boolean p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->stat_add_photo_success:Z

    return-void
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 9

    .line 459
    invoke-super {p0, p1, p2}, Lcom/narvii/post/DraftPostActivity;->onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V

    .line 461
    check-cast p2, Lcom/narvii/model/api/BlogResponse;

    invoke-virtual {p2}, Lcom/narvii/model/api/BlogResponse;->object()Lcom/narvii/model/Blog;

    move-result-object p1

    .line 462
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->isEdit()Z

    move-result p2

    const-string v0, "Source"

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 463
    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/model/Feed;)Landroid/content/Intent;

    move-result-object p2

    const-string v2, "justCreated"

    .line 464
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "View Created Post"

    .line 465
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    invoke-virtual {p0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onPostLoaded(Lcom/narvii/blog/post/BlogPost;)V
    .locals 2

    .line 176
    invoke-super {p0, p1}, Lcom/narvii/post/DraftPostActivity;->onPostLoaded(Lcom/narvii/post/PostObject;)V

    .line 177
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->isEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f03cd

    .line 178
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0f0d83

    .line 180
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 185
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

    .line 186
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/location/LocationService;

    .line 187
    iget v1, p1, Lcom/narvii/blog/post/BlogPost;->latitude:I

    iget p1, p1, Lcom/narvii/blog/post/BlogPost;->longitude:I

    invoke-static {v1, p1}, Lcom/narvii/location/GPSCoordinate;->create(II)Lcom/narvii/location/GPSCoordinate;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/narvii/location/LocationService;->reverseGeocoding(Lcom/narvii/location/GPSCoordinate;Lcom/narvii/location/LocationService$GeocodeResultListener;)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostLoaded(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 60
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/BlogPostActivity;->onPostLoaded(Lcom/narvii/blog/post/BlogPost;)V

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

    .line 114
    const-class v0, Lcom/narvii/blog/post/BlogPost;

    return-object v0
.end method

.method protected savePost()Lcom/narvii/blog/post/BlogPost;
    .locals 3

    .line 419
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget-object v1, p0, Lcom/narvii/blog/post/BlogPostActivity;->editTitle:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/blog/post/BlogPost;->title:Ljava/lang/String;

    .line 420
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget-object v1, p0, Lcom/narvii/blog/post/BlogPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/blog/post/BlogPost;->content:Ljava/lang/String;

    .line 421
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

    .line 422
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/location/LocationService;

    .line 423
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

    .line 425
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    invoke-interface {v0}, Lcom/narvii/location/ReadableAddress;->getCityLevelAddressText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/narvii/blog/post/BlogPost;->address:Ljava/lang/String;

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    return-object v0
.end method

.method protected bridge synthetic savePost()Lcom/narvii/post/PostObject;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

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
    .locals 8

    .line 369
    invoke-super {p0, p1}, Lcom/narvii/post/BackgroundPostActivity;->updateView(Lcom/narvii/feed/BackgroundPost;)V

    if-nez p1, :cond_0

    return-void

    .line 374
    :cond_0
    iget-object v0, p1, Lcom/narvii/blog/post/BlogPost;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/blog/post/BlogPostActivity;->editTitle:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity;->editTitle:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/narvii/blog/post/BlogPost;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 377
    :cond_1
    iget-object v0, p1, Lcom/narvii/blog/post/BlogPost;->content:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/blog/post/BlogPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 378
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    iget-object v1, p1, Lcom/narvii/blog/post/BlogPost;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 381
    :cond_2
    iget-object v0, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    const/4 v2, 0x0

    if-lez v0, :cond_4

    .line 382
    iget-object v3, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Media;

    goto :goto_1

    :cond_4
    move-object v3, v2

    .line 383
    :goto_1
    iget-object v4, p0, Lcom/narvii/blog/post/BlogPostActivity;->pickMedia:Landroid/widget/ImageView;

    if-nez v3, :cond_5

    .line 384
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0802c9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_2

    .line 385
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0802ca

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 383
    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 386
    iget-object v4, p0, Lcom/narvii/blog/post/BlogPostActivity;->mediaPreview:Lcom/narvii/widget/ThumbImageView;

    const/16 v5, 0x8

    if-nez v3, :cond_6

    const/16 v6, 0x8

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 387
    iget-object v4, p0, Lcom/narvii/blog/post/BlogPostActivity;->mediaPreview:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {v4, v3}, Lcom/narvii/widget/ThumbImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 388
    iget-object v3, p0, Lcom/narvii/blog/post/BlogPostActivity;->mediaCount:Landroid/widget/TextView;

    const/4 v4, 0x1

    if-le v0, v4, :cond_7

    const/4 v6, 0x0

    goto :goto_4

    :cond_7
    const/16 v6, 0x8

    :goto_4
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 389
    iget-object v3, p0, Lcom/narvii/blog/post/BlogPostActivity;->mediaCount:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v0, p1, Lcom/narvii/blog/post/BlogPost;->itemList:Ljava/util/List;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_5
    if-lez v0, :cond_9

    .line 392
    iget-object v2, p1, Lcom/narvii/blog/post/BlogPost;->itemList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Item;

    .line 393
    :cond_9
    iget-object v3, p0, Lcom/narvii/blog/post/BlogPostActivity;->pickItem:Landroid/widget/ImageView;

    if-nez v2, :cond_a

    .line 394
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0802ba

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_6

    .line 395
    :cond_a
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0802bb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 393
    :goto_6
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 396
    iget-object v3, p0, Lcom/narvii/blog/post/BlogPostActivity;->itemPreview:Lcom/narvii/widget/CardView;

    if-nez v2, :cond_b

    const/16 v6, 0x8

    goto :goto_7

    :cond_b
    const/4 v6, 0x0

    :goto_7
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 397
    iget-object v3, p0, Lcom/narvii/blog/post/BlogPostActivity;->itemPreview:Lcom/narvii/widget/CardView;

    invoke-virtual {v3, v2}, Lcom/narvii/widget/CardView;->setItem(Lcom/narvii/model/Item;)V

    .line 398
    iget-object v2, p0, Lcom/narvii/blog/post/BlogPostActivity;->itemCount:Landroid/widget/TextView;

    if-le v0, v4, :cond_c

    goto :goto_8

    :cond_c
    const/16 v1, 0x8

    :goto_8
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 399
    iget-object v1, p0, Lcom/narvii/blog/post/BlogPostActivity;->itemCount:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    invoke-virtual {v0}, Lcom/narvii/post/LocationPickerFragment;->isLocating()Z

    .line 402
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity;->pickLocation:Landroid/widget/ImageView;

    iget v1, p1, Lcom/narvii/blog/post/BlogPost;->latitude:I

    if-eqz v1, :cond_e

    iget v1, p1, Lcom/narvii/blog/post/BlogPost;->longitude:I

    if-nez v1, :cond_d

    goto :goto_9

    .line 404
    :cond_d
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0803b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_a

    .line 403
    :cond_e
    :goto_9
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0803b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 402
    :goto_a
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 405
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity;->pickLocation:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity;->pickLocationProgress:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity;->pickCategories:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity;->pickCategories:Landroid/widget/Button;

    iget-object v1, p1, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_f

    const v1, 0x7f080672

    goto :goto_b

    :cond_f
    const v1, 0x7f080671

    :goto_b
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 412
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity;->pickCategories:Landroid/widget/Button;

    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    if-eqz p1, :cond_10

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_10

    const/4 p1, -0x1

    goto :goto_c

    :cond_10
    const p1, -0x77665a

    :goto_c
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/feed/BackgroundPost;)V
    .locals 0

    .line 60
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/BlogPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 60
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/BlogPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method protected validateUpload(Lcom/narvii/blog/post/BlogPost;)Z
    .locals 3

    .line 433
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity;->editTitle:Landroid/widget/EditText;

    const v1, 0x7f0f0daf

    invoke-virtual {p0, v0, v1}, Lcom/narvii/post/BasePostActivity;->validateEditTextNotEmpty(Landroid/widget/EditText;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v2, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/narvii/util/text/IMGUtils;->filterRefIds(Landroid/text/Editable;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    const v2, 0x7f0f0daa

    invoke-virtual {p0, v0, v2}, Lcom/narvii/post/BasePostActivity;->validateEditTextNotEmpty(Landroid/widget/EditText;I)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 442
    :cond_2
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    const/16 v0, 0x19

    const v2, 0x7f0f0dc5

    invoke-virtual {p0, p1, v0, v2}, Lcom/narvii/post/BasePostActivity;->validateMediaListMax(Ljava/util/List;II)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method protected bridge synthetic validateUpload(Lcom/narvii/post/PostObject;)Z
    .locals 0

    .line 60
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/BlogPostActivity;->validateUpload(Lcom/narvii/blog/post/BlogPost;)Z

    move-result p1

    return p1
.end method
