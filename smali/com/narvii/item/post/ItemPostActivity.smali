.class public Lcom/narvii/item/post/ItemPostActivity;
.super Lcom/narvii/post/BackgroundPostActivity;
.source "ItemPostActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/post/LocationPickerFragment$LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/item/post/ItemPostActivity$ImgCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/post/BackgroundPostActivity<",
        "Lcom/narvii/item/post/ItemPost;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/narvii/post/LocationPickerFragment$LocationListener;"
    }
.end annotation


# static fields
.field static final ADVANCED_OPTIONS:I = 0x14

.field public static final IMAGE_AVATAR:I = 0x2

.field public static final IMAGE_GALLEY:I = 0x3

.field static final INSERT_IMG:I = 0x1c

.field static final MAX_MEDIA:I = 0x32

.field static final PICK_BACKGROUND_COLOR:I = 0x15

.field static final PICK_CATEGORIES:I = 0x8

.field static final PICK_ITEM_REQUEST:I = 0x5

.field static final SORT_ITEM_REQUEST:I = 0x6

.field static final SORT_PHOTO_REQUEST:I = 0x3


# instance fields
.field editContent:Lcom/narvii/widget/EditTextIMG;

.field influencerPostContainer:Landroid/view/View;

.field locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

.field rootView:Landroid/view/View;

.field stat_about:Z

.field stat_about_success:Z

.field stat_add_category:Z

.field stat_add_category_success:Z

.field stat_keyword:Z

.field stat_keyword_success:Z

.field stat_link_favorite:Z

.field stat_link_favorite_success:Z

.field stat_remove_location:Z

.field stat_remove_location_success:Z

.field stat_user_galery:Z

.field stat_user_galery_suceess:Z

.field stat_user_photo:Z

.field stat_user_photo_success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/narvii/post/BackgroundPostActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/item/post/ItemPostActivity;)Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/item/post/ItemPostActivity;)Lcom/narvii/post/DraftManager;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    return-object p0
.end method


# virtual methods
.method public buildDraftParams()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 3

    const-string v0, "itemId"

    .line 115
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 119
    :cond_0
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    .line 120
    invoke-virtual {v2, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v0, "fork"

    .line 121
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-object v2
.end method

.method protected checkEligible()V
    .locals 2

    const-string v0, "item"

    const/4 v1, 0x0

    .line 168
    invoke-virtual {p0, v0, v1}, Lcom/narvii/post/BasePostActivity;->checkEligible(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected doPost(Lcom/narvii/item/post/ItemPost;)V
    .locals 4

    .line 643
    invoke-virtual {p0}, Lcom/narvii/item/post/ItemPostActivity;->itemId()Ljava/lang/String;

    move-result-object v0

    .line 644
    invoke-virtual {p0}, Lcom/narvii/item/post/ItemPostActivity;->isFork()Z

    move-result v1

    const-string v2, "/item"

    if-eqz v0, :cond_0

    .line 647
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/fork"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 652
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 653
    new-instance v1, Lcom/narvii/feed/BackgroundPostHelper;

    invoke-direct {v1, p0}, Lcom/narvii/feed/BackgroundPostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 654
    invoke-virtual {v1, p0}, Lcom/narvii/post/PostHelper;->setPostListener(Lcom/narvii/post/PostListener;)V

    .line 655
    const-class v2, Lcom/narvii/model/api/ItemResponse;

    invoke-virtual {v1, p1, v0, v2}, Lcom/narvii/post/PostHelper;->startPost(Lcom/narvii/post/PostObject;Lcom/narvii/util/http/ApiRequest;Ljava/lang/Class;)V

    return-void
.end method

.method protected bridge synthetic doPost(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 65
    check-cast p1, Lcom/narvii/item/post/ItemPost;

    invoke-virtual {p0, p1}, Lcom/narvii/item/post/ItemPostActivity;->doPost(Lcom/narvii/item/post/ItemPost;)V

    return-void
.end method

.method protected doPreview(Lcom/narvii/item/post/ItemPost;)V
    .locals 2

    const-string v0, "feed"

    .line 204
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/Item;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Item;

    invoke-virtual {p0}, Lcom/narvii/item/post/ItemPostActivity;->itemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p0, v1}, Lcom/narvii/item/post/ItemPost;->getPreviewItem(Lcom/narvii/model/Item;Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/model/Item;

    move-result-object v0

    .line 205
    invoke-static {v0}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/model/Feed;)Landroid/content/Intent;

    move-result-object v0

    .line 206
    iget-object p1, p1, Lcom/narvii/item/post/ItemPost;->itemList:Ljava/util/List;

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "taggedObjects"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "preview"

    const/4 v1, 0x1

    .line 207
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "Source"

    const-string v1, "Preview"

    .line 208
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected bridge synthetic doPreview(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 65
    check-cast p1, Lcom/narvii/item/post/ItemPost;

    invoke-virtual {p0, p1}, Lcom/narvii/item/post/ItemPostActivity;->doPreview(Lcom/narvii/item/post/ItemPost;)V

    return-void
.end method

.method public draftType()Ljava/lang/String;
    .locals 1

    const-string v0, "item"

    return-object v0
.end method

.method protected getInfluencerLockLayout()Landroid/view/View;
    .locals 1

    .line 741
    iget-object v0, p0, Lcom/narvii/item/post/ItemPostActivity;->influencerPostContainer:Landroid/view/View;

    return-object v0
.end method

.method public isBackgroundColorSet()Z
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v0, Lcom/narvii/item/post/ItemPost;

    invoke-virtual {v0}, Lcom/narvii/feed/BackgroundPost;->getBackgroundColor()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEdit()Z
    .locals 1

    .line 136
    invoke-virtual {p0}, Lcom/narvii/item/post/ItemPostActivity;->itemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFork()Z
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "fork"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public itemId()Ljava/lang/String;
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "itemId"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 364
    const-class v0, Lcom/narvii/model/Media;

    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v1, "mediaList"

    const/4 v2, -0x1

    const/4 v3, 0x3

    if-ne p1, v3, :cond_0

    if-ne p2, v2, :cond_0

    if-eqz p3, :cond_0

    .line 367
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 368
    invoke-static {v3, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/narvii/item/post/ItemPostActivity;->savePost()Lcom/narvii/item/post/ItemPost;

    move-result-object v4

    .line 371
    iput-object v3, v4, Lcom/narvii/item/post/ItemPost;->mediaList:Ljava/util/List;

    .line 372
    iput-object v4, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 373
    invoke-virtual {p0, v4}, Lcom/narvii/item/post/ItemPostActivity;->updateView(Lcom/narvii/item/post/ItemPost;)V

    :cond_0
    const/4 v3, 0x5

    const/4 v4, 0x1

    if-eq p1, v3, :cond_1

    const/4 v3, 0x6

    if-ne p1, v3, :cond_3

    :cond_1
    if-ne p2, v2, :cond_3

    if-eqz p3, :cond_3

    const-string v3, "itemList"

    .line 379
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 380
    const-class v5, Lcom/narvii/model/Item;

    invoke-static {v3, v5}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 382
    invoke-virtual {p0}, Lcom/narvii/item/post/ItemPostActivity;->itemId()Ljava/lang/String;

    move-result-object v5

    .line 383
    invoke-static {v3, v5}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 384
    invoke-virtual {p0}, Lcom/narvii/item/post/ItemPostActivity;->savePost()Lcom/narvii/item/post/ItemPost;

    move-result-object v5

    .line 385
    iput-object v3, v5, Lcom/narvii/item/post/ItemPost;->itemList:Ljava/util/List;

    .line 386
    iput-object v5, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 387
    invoke-virtual {p0, v5}, Lcom/narvii/item/post/ItemPostActivity;->updateView(Lcom/narvii/item/post/ItemPost;)V

    .line 389
    :cond_2
    iput-boolean v4, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_link_favorite_success:Z

    :cond_3
    const/16 v3, 0x14

    if-ne p1, v3, :cond_4

    if-ne p2, v2, :cond_4

    if-eqz p3, :cond_4

    const-string v3, "extensions"

    .line 393
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 394
    invoke-static {v3}, Lcom/narvii/util/JacksonUtils;->createObjectNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v3

    .line 395
    invoke-virtual {p0}, Lcom/narvii/item/post/ItemPostActivity;->savePost()Lcom/narvii/item/post/ItemPost;

    move-result-object v5

    .line 396
    iput-object v3, v5, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 397
    iput-object v5, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 398
    invoke-virtual {p0, v5}, Lcom/narvii/item/post/ItemPostActivity;->updateView(Lcom/narvii/item/post/ItemPost;)V

    :cond_4
    const/16 v3, 0x1c

    if-ne p1, v3, :cond_5

    if-ne p2, v2, :cond_5

    if-eqz p3, :cond_5

    const-string/jumbo v3, "refIdList"

    .line 402
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 403
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 404
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz v0, :cond_5

    .line 405
    invoke-virtual {p0}, Lcom/narvii/item/post/ItemPostActivity;->savePost()Lcom/narvii/item/post/ItemPost;

    move-result-object v1

    .line 406
    iput-object v0, v1, Lcom/narvii/item/post/ItemPost;->mediaList:Ljava/util/List;

    .line 407
    iput-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 408
    invoke-virtual {p0, v1}, Lcom/narvii/item/post/ItemPostActivity;->updateView(Lcom/narvii/item/post/ItemPost;)V

    .line 409
    iget-object v0, p0, Lcom/narvii/item/post/ItemPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    invoke-static {v0, v3}, Lcom/narvii/util/text/IMGUtils;->insertEditText(Landroid/widget/EditText;Ljava/lang/String;)V

    :cond_5
    const/16 v0, 0x8

    if-ne p1, v0, :cond_6

    if-ne p2, v2, :cond_6

    if-eqz p3, :cond_6

    const-string p1, "categoryList"

    .line 414
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/narvii/model/ItemCategory;

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    .line 415
    invoke-virtual {p0}, Lcom/narvii/item/post/ItemPostActivity;->savePost()Lcom/narvii/item/post/ItemPost;

    move-result-object p2

    .line 416
    iput-object p1, p2, Lcom/narvii/item/post/ItemPost;->itemCategoryList:Ljava/util/List;

    .line 417
    iput-object p2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 418
    invoke-virtual {p0, p2}, Lcom/narvii/item/post/ItemPostActivity;->updateView(Lcom/narvii/item/post/ItemPost;)V

    .line 419
    iput-boolean v4, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_add_category_success:Z

    :cond_6
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const v0, 0x7f090891

    .line 173
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/item/property/ItemPropertyEditPanel;

    .line 174
    invoke-virtual {v0}, Lcom/narvii/item/property/ItemPropertyEditPanel;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 177
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 214
    invoke-virtual {p0}, Lcom/narvii/item/post/ItemPostActivity;->savePost()Lcom/narvii/item/post/ItemPost;

    move-result-object v0

    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x3

    const-string v3, "itemList"

    const/4 v4, 0x6

    const/4 v5, 0x2

    const/16 v6, 0x32

    const-string/jumbo v7, "type"

    const/4 v8, 0x0

    const/4 v9, 0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_3

    .line 277
    :sswitch_0
    const-class p1, Lcom/narvii/post/PostOptionsFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 278
    iget-object v0, v0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "extensions"

    .line 279
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x14

    .line 280
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    :sswitch_1
    const p1, 0x7f090890

    .line 254
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/item/property/ItemPropertyEditList;

    invoke-virtual {p1}, Lcom/narvii/item/property/ItemPropertyEditList;->addNewProperty()V

    goto/16 :goto_3

    .line 243
    :sswitch_2
    iget-object p1, v0, Lcom/narvii/item/post/ItemPost;->mediaList:Ljava/util/List;

    .line 244
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 246
    :cond_0
    const-class v0, Lcom/narvii/media/MediaOrganizeFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 247
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "mediaList"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "dir"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "maximum"

    .line 249
    invoke-virtual {v0, p1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 250
    invoke-virtual {p0, v0, v2}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    .line 271
    :sswitch_3
    const-class p1, Lcom/narvii/item/picker/ItemSortFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 272
    iget-object v0, v0, Lcom/narvii/item/post/ItemPost;->itemList:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    invoke-virtual {p0, p1, v4}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    .line 301
    :sswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ItemCategory;

    .line 302
    iget-object v1, v0, Lcom/narvii/item/post/ItemPost;->itemCategoryList:Ljava/util/List;

    iget-object p1, p1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 303
    iput-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 304
    invoke-virtual {p0, v0}, Lcom/narvii/item/post/ItemPostActivity;->updateView(Lcom/narvii/item/post/ItemPost;)V

    goto/16 :goto_3

    :sswitch_5
    const-string p1, "account"

    .line 284
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 285
    const-class v1, Lcom/narvii/catalog/category/CategoryPickerFragment;

    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 286
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "uid"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "multiPick"

    .line 287
    invoke-virtual {v1, p1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const p1, 0x7f0f019a

    .line 288
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    iget-object p1, v0, Lcom/narvii/item/post/ItemPost;->itemCategoryList:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 290
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 291
    iget-object v0, v0, Lcom/narvii/item/post/ItemPost;->itemCategoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/ItemCategory;

    .line 292
    iget-object v2, v2, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 294
    :cond_1
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "categoryIdList"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    :cond_2
    iput-boolean v9, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_add_category:Z

    const/16 p1, 0x8

    .line 297
    invoke-virtual {p0, v1, p1}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    .line 231
    :sswitch_6
    iget-object p1, v0, Lcom/narvii/item/post/ItemPost;->mediaList:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 232
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v6, :cond_3

    const p1, 0x7f0f0dd0

    .line 233
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v8}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_2

    .line 235
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 236
    invoke-virtual {v0, v7, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    iget-object v1, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object v3, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_1
    sub-int/2addr v6, p1

    invoke-virtual {v1, v2, v0, v8, v6}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    .line 239
    :goto_2
    iput-boolean v9, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_user_galery:Z

    goto :goto_3

    .line 259
    :sswitch_7
    iget-object p1, p0, Lcom/narvii/item/post/ItemPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    iget v1, v0, Lcom/narvii/item/post/ItemPost;->latitude:I

    iget v0, v0, Lcom/narvii/item/post/ItemPost;->longitude:I

    invoke-virtual {p1, v1, v0, v9}, Lcom/narvii/post/LocationPickerFragment;->pickLocation(IIZ)V

    goto :goto_3

    .line 263
    :sswitch_8
    const-class p1, Lcom/narvii/catalog/picker/CatalogPickerFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "mine"

    .line 264
    invoke-virtual {p1, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 265
    iget-object v0, v0, Lcom/narvii/item/post/ItemPost;->itemList:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x5

    .line 266
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 267
    iput-boolean v9, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_link_favorite:Z

    goto :goto_3

    .line 224
    :sswitch_9
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 225
    invoke-virtual {p1, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 226
    iget-object v0, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v4, v8}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    .line 227
    iput-boolean v9, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_user_photo:Z

    goto :goto_3

    .line 217
    :sswitch_a
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 218
    invoke-virtual {p1, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 219
    iget-object v0, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const/16 v2, 0x46

    invoke-virtual {v0, v1, p1, v2, v8}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    .line 220
    iput-boolean v9, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_user_photo:Z

    .line 310
    :goto_3
    iget-object p1, p0, Lcom/narvii/item/post/ItemPostActivity;->rootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 312
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    :cond_5
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0905db -> :sswitch_a
        0x7f0905dc -> :sswitch_9
        0x7f09086e -> :sswitch_8
        0x7f09086f -> :sswitch_7
        0x7f090870 -> :sswitch_6
        0x7f090873 -> :sswitch_5
        0x7f090878 -> :sswitch_4
        0x7f090879 -> :sswitch_3
        0x7f09087a -> :sswitch_7
        0x7f09087b -> :sswitch_2
        0x7f09088f -> :sswitch_1
        0x7f0908a2 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 141
    invoke-super {p0, p1}, Lcom/narvii/post/DraftPostActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b058e

    .line 142
    invoke-virtual {p0, v0}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    .line 143
    invoke-static {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    if-nez p1, :cond_0

    .line 146
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f0904ba

    new-instance v1, Lcom/narvii/item/property/ItemPropertyEditPanelFragment;

    invoke-direct {v1}, Lcom/narvii/item/property/ItemPropertyEditPanelFragment;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 149
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "locationPicker"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/narvii/post/LocationPickerFragment;

    iput-object p1, p0, Lcom/narvii/item/post/ItemPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 150
    iget-object p1, p0, Lcom/narvii/item/post/ItemPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    if-nez p1, :cond_1

    .line 151
    new-instance p1, Lcom/narvii/post/LocationPickerFragment;

    invoke-direct {p1}, Lcom/narvii/post/LocationPickerFragment;-><init>()V

    iput-object p1, p0, Lcom/narvii/item/post/ItemPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 152
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/item/post/ItemPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 154
    :cond_1
    iget-object p1, p0, Lcom/narvii/item/post/ItemPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    iput-object p0, p1, Lcom/narvii/post/LocationPickerFragment;->listener:Lcom/narvii/post/LocationPickerFragment$LocationListener;

    const p1, 0x7f09098b

    .line 156
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/item/post/ItemPostActivity;->rootView:Landroid/view/View;

    const p1, 0x7f0902d0

    .line 157
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/EditTextIMG;

    iput-object p1, p0, Lcom/narvii/item/post/ItemPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    .line 158
    iget-object p1, p0, Lcom/narvii/item/post/ItemPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    new-instance v0, Lcom/narvii/item/post/ItemPostActivity$ImgCallback;

    invoke-direct {v0, p0}, Lcom/narvii/item/post/ItemPostActivity$ImgCallback;-><init>(Lcom/narvii/item/post/ItemPostActivity;)V

    iput-object v0, p1, Lcom/narvii/widget/EditTextIMG;->imgMode:Landroid/view/ActionMode$Callback;

    const p1, 0x7f090881

    .line 159
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 160
    iget-object v0, p0, Lcom/narvii/item/post/ItemPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    new-instance v1, Lcom/narvii/post/BasePostActivity$HideHintWatcher;

    invoke-direct {v1, p1}, Lcom/narvii/post/BasePostActivity$HideHintWatcher;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p1, 0x7f09088a

    .line 162
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/item/post/ItemPostActivity;->influencerPostContainer:Landroid/view/View;

    return-void
.end method

.method public onLocatingChanged(Z)V
    .locals 0

    .line 355
    invoke-virtual {p0}, Lcom/narvii/item/post/ItemPostActivity;->savePost()Lcom/narvii/item/post/ItemPost;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/item/post/ItemPostActivity;->updateView(Lcom/narvii/item/post/ItemPost;)V

    return-void
.end method

.method public onLocationResult(Lcom/narvii/location/GPSCoordinate;)V
    .locals 4

    .line 335
    invoke-virtual {p0}, Lcom/narvii/item/post/ItemPostActivity;->savePost()Lcom/narvii/item/post/ItemPost;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 337
    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->latitudeE6()I

    move-result v3

    iput v3, v0, Lcom/narvii/item/post/ItemPost;->latitude:I

    .line 338
    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->longitudeE6()I

    move-result p1

    iput p1, v0, Lcom/narvii/item/post/ItemPost;->longitude:I

    .line 339
    iput-object v1, v0, Lcom/narvii/item/post/ItemPost;->address:Ljava/lang/String;

    .line 340
    iput-boolean v2, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_remove_location:Z

    .line 341
    iput-boolean v2, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_remove_location_success:Z

    goto :goto_0

    .line 343
    :cond_0
    iput v2, v0, Lcom/narvii/item/post/ItemPost;->latitude:I

    .line 344
    iput v2, v0, Lcom/narvii/item/post/ItemPost;->longitude:I

    .line 345
    iput-object v1, v0, Lcom/narvii/item/post/ItemPost;->address:Ljava/lang/String;

    const/4 p1, 0x1

    .line 346
    iput-boolean p1, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_remove_location:Z

    .line 347
    iput-boolean p1, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_remove_location_success:Z

    .line 349
    :goto_0
    iput-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 350
    invoke-virtual {p0, v0}, Lcom/narvii/item/post/ItemPostActivity;->updateView(Lcom/narvii/item/post/ItemPost;)V

    return-void
.end method

.method protected onPickOtherMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 3
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

    const-string/jumbo v0, "type"

    .line 318
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_2

    .line 325
    :cond_0
    iget-object p2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    move-object v0, p2

    check-cast v0, Lcom/narvii/item/post/ItemPost;

    iput-object p1, v0, Lcom/narvii/item/post/ItemPost;->mediaList:Ljava/util/List;

    .line 326
    check-cast p2, Lcom/narvii/item/post/ItemPost;

    iget-object p1, p2, Lcom/narvii/item/post/ItemPost;->mediaList:Ljava/util/List;

    const/16 p2, 0x32

    const v0, 0x7f0f0dd0

    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/post/BasePostActivity;->trimMediaList(Ljava/util/List;II)V

    .line 327
    iput-boolean v1, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_user_galery_suceess:Z

    goto :goto_2

    .line 321
    :cond_1
    iget-object p2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast p2, Lcom/narvii/item/post/ItemPost;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    :goto_0
    iput-object v0, p2, Lcom/narvii/item/post/ItemPost;->icon:Ljava/lang/String;

    .line 322
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_user_photo_success:Z

    :goto_2
    return-void
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 7

    .line 660
    invoke-super {p0, p1, p2}, Lcom/narvii/post/DraftPostActivity;->onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V

    .line 661
    check-cast p2, Lcom/narvii/model/api/ItemResponse;

    invoke-virtual {p2}, Lcom/narvii/model/api/ItemResponse;->object()Lcom/narvii/model/Item;

    move-result-object p1

    .line 663
    new-instance p2, Lcom/narvii/model/ItemCategory;

    invoke-direct {p2}, Lcom/narvii/model/ItemCategory;-><init>()V

    .line 664
    new-instance v0, Lcom/narvii/model/User;

    invoke-direct {v0}, Lcom/narvii/model/User;-><init>()V

    iput-object v0, p2, Lcom/narvii/model/ItemCategory;->author:Lcom/narvii/model/User;

    .line 665
    iget-object v0, p2, Lcom/narvii/model/ItemCategory;->author:Lcom/narvii/model/User;

    invoke-virtual {p1}, Lcom/narvii/model/Item;->uid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 666
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string/jumbo v1, "update"

    invoke-direct {v0, v1, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 667
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 669
    invoke-virtual {p0}, Lcom/narvii/item/post/ItemPostActivity;->isEdit()Z

    move-result p2

    const-string v0, "Source"

    const/4 v1, 0x1

    if-nez p2, :cond_0

    const-string p2, "disableOpenCallback"

    invoke-virtual {p0, p2}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 670
    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/model/Feed;)Landroid/content/Intent;

    move-result-object p2

    const-string v2, "View Created Post"

    .line 671
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "justCreated"

    .line 672
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 673
    invoke-virtual {p0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onPostLoaded(Lcom/narvii/item/post/ItemPost;)V
    .locals 0

    .line 182
    invoke-super {p0, p1}, Lcom/narvii/post/DraftPostActivity;->onPostLoaded(Lcom/narvii/post/PostObject;)V

    .line 184
    invoke-virtual {p0}, Lcom/narvii/item/post/ItemPostActivity;->isEdit()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/narvii/item/post/ItemPostActivity;->isFork()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0f0309

    .line 185
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/item/post/ItemPostActivity;->isEdit()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0f03cd

    .line 187
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    :cond_1
    const p1, 0x7f0f0dbd

    .line 189
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostLoaded(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 65
    check-cast p1, Lcom/narvii/item/post/ItemPost;

    invoke-virtual {p0, p1}, Lcom/narvii/item/post/ItemPostActivity;->onPostLoaded(Lcom/narvii/item/post/ItemPost;)V

    return-void
.end method

.method public postClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/item/post/ItemPost;",
            ">;"
        }
    .end annotation

    .line 105
    const-class v0, Lcom/narvii/item/post/ItemPost;

    return-object v0
.end method

.method protected savePost()Lcom/narvii/item/post/ItemPost;
    .locals 6

    .line 569
    iget-object v0, p0, Lcom/narvii/item/post/ItemPostActivity;->rootView:Landroid/view/View;

    const v1, 0x7f09088d

    .line 573
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090619

    .line 574
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 575
    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v2, Lcom/narvii/item/post/ItemPost;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/narvii/item/post/ItemPost;->label:Ljava/lang/String;

    const v1, 0x7f09088e

    .line 577
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 578
    check-cast v1, Lcom/narvii/widget/TagEditText;

    invoke-virtual {v1}, Lcom/narvii/widget/TagEditText;->getKeywords()Ljava/lang/String;

    move-result-object v1

    .line 579
    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v2, Lcom/narvii/item/post/ItemPost;

    iget-object v2, v2, Lcom/narvii/item/post/ItemPost;->keywords:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 580
    iput-boolean v3, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_keyword:Z

    .line 581
    iput-boolean v3, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_keyword_success:Z

    .line 583
    :cond_0
    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v2, Lcom/narvii/item/post/ItemPost;

    iput-object v1, v2, Lcom/narvii/item/post/ItemPost;->keywords:Ljava/lang/String;

    const v1, 0x7f090890

    .line 585
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 586
    check-cast v1, Lcom/narvii/item/property/ItemPropertyEditList;

    invoke-virtual {v1}, Lcom/narvii/item/property/ItemPropertyEditList;->get()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    const-string/jumbo v2, "props"

    if-nez v1, :cond_1

    .line 588
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    move-object v4, v1

    check-cast v4, Lcom/narvii/item/post/ItemPost;

    iget-object v4, v4, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v4, :cond_3

    .line 589
    check-cast v1, Lcom/narvii/item/post/ItemPost;

    iget-object v1, v1, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    goto :goto_0

    .line 592
    :cond_1
    iget-object v4, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    move-object v5, v4

    check-cast v5, Lcom/narvii/item/post/ItemPost;

    iget-object v5, v5, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v5, :cond_2

    .line 593
    check-cast v4, Lcom/narvii/item/post/ItemPost;

    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v5

    iput-object v5, v4, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 595
    :cond_2
    iget-object v4, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v4, Lcom/narvii/item/post/ItemPost;

    iget-object v4, v4, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {v4, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    :cond_3
    :goto_0
    const v1, 0x7f0902d0

    .line 598
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 599
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 600
    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v2, Lcom/narvii/item/post/ItemPost;

    iget-object v2, v2, Lcom/narvii/item/post/ItemPost;->content:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 601
    iput-boolean v3, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_about:Z

    .line 602
    iput-boolean v3, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_about_success:Z

    .line 604
    :cond_4
    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v2, Lcom/narvii/item/post/ItemPost;

    iput-object v1, v2, Lcom/narvii/item/post/ItemPost;->content:Ljava/lang/String;

    const v1, 0x7f09087a

    .line 606
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09006f

    .line 607
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/AddressView;

    .line 608
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v1, Lcom/narvii/item/post/ItemPost;

    invoke-virtual {v0}, Lcom/narvii/widget/AddressView;->getAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/narvii/item/post/ItemPost;->address:Ljava/lang/String;

    const/16 v1, 0x8

    .line 609
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 611
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v0, Lcom/narvii/item/post/ItemPost;

    return-object v0
.end method

.method protected bridge synthetic savePost()Lcom/narvii/post/PostObject;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/narvii/item/post/ItemPostActivity;->savePost()Lcom/narvii/item/post/ItemPost;

    move-result-object v0

    return-object v0
.end method

.method protected supportPreview()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic updateView(Lcom/narvii/feed/BackgroundPost;)V
    .locals 0

    .line 65
    check-cast p1, Lcom/narvii/item/post/ItemPost;

    invoke-virtual {p0, p1}, Lcom/narvii/item/post/ItemPostActivity;->updateView(Lcom/narvii/item/post/ItemPost;)V

    return-void
.end method

.method protected updateView(Lcom/narvii/item/post/ItemPost;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 425
    invoke-super/range {p0 .. p1}, Lcom/narvii/post/BackgroundPostActivity;->updateView(Lcom/narvii/feed/BackgroundPost;)V

    .line 427
    iget-object v2, v0, Lcom/narvii/item/post/ItemPostActivity;->rootView:Landroid/view/View;

    const v3, 0x7f09088d

    .line 433
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0905db

    .line 436
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0905dc

    .line 437
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    iget-object v6, v1, Lcom/narvii/item/post/ItemPost;->icon:Ljava/lang/String;

    .line 439
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-nez v6, :cond_0

    const/4 v9, 0x0

    goto :goto_0

    :cond_0
    const/16 v9, 0x8

    :goto_0
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 440
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v6, :cond_1

    const/16 v5, 0x8

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f090571

    .line 441
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/narvii/widget/ThumbImageView;

    .line 442
    invoke-virtual {v5, v6}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const v5, 0x7f090b9a

    .line 444
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-nez v6, :cond_2

    const v6, 0x7f0f0d7e

    goto :goto_2

    :cond_2
    const v6, 0x7f0f0d96

    .line 445
    :goto_2
    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f090619

    .line 448
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 449
    iget-object v5, v1, Lcom/narvii/item/post/ItemPost;->label:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 450
    iget-object v5, v1, Lcom/narvii/item/post/ItemPost;->label:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    :cond_3
    iget-object v3, v1, Lcom/narvii/item/post/ItemPost;->mediaList:Ljava/util/List;

    const v5, 0x7f090870

    .line 455
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 456
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v3, :cond_5

    .line 457
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    const/16 v6, 0x8

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x7f09087b

    .line 459
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 460
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v3, :cond_6

    .line 461
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_6

    const/4 v6, 0x0

    goto :goto_5

    :cond_6
    const/16 v6, 0x8

    :goto_5
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    const v6, 0x7f09050e

    .line 462
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f0f0db3

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    if-nez v3, :cond_7

    const/4 v13, 0x0

    goto :goto_6

    .line 463
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    :goto_6
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v8

    invoke-virtual {v0, v10, v12}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    check-cast v5, Landroid/view/ViewGroup;

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 465
    :goto_7
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    if-ge v9, v12, :cond_c

    .line 466
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 467
    invoke-virtual {v12}, Landroid/view/View;->getId()I

    move-result v15

    if-ne v15, v4, :cond_b

    .line 468
    check-cast v12, Lcom/narvii/widget/ThumbImageView;

    if-nez v3, :cond_9

    :cond_8
    const/4 v14, 0x0

    goto :goto_8

    .line 469
    :cond_9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v15

    if-ge v10, v15, :cond_8

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/narvii/model/Media;

    :goto_8
    add-int/lit8 v10, v10, 0x1

    .line 471
    invoke-virtual {v12, v14}, Lcom/narvii/widget/ThumbImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    if-nez v14, :cond_a

    const/4 v13, 0x4

    goto :goto_9

    :cond_a
    const/4 v13, 0x0

    .line 472
    :goto_9
    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 477
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/item/post/ItemPostActivity;->isEdit()Z

    move-result v3

    const v4, 0x7f090871

    const v5, 0x7f090872

    if-eqz v3, :cond_d

    .line 478
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 479
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_f

    .line 481
    :cond_d
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 482
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 483
    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    const v4, 0x7f090873

    .line 484
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 485
    iget-object v5, v1, Lcom/narvii/item/post/ItemPost;->itemCategoryList:Ljava/util/List;

    if-eqz v5, :cond_e

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_e

    const v5, 0x7f0f03d5

    goto :goto_a

    :cond_e
    const v5, 0x7f0f0079

    :goto_a
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 486
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 489
    iget-object v5, v1, Lcom/narvii/item/post/ItemPost;->itemCategoryList:Ljava/util/List;

    if-nez v5, :cond_f

    const/4 v5, 0x0

    goto :goto_b

    :cond_f
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 490
    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const/4 v10, 0x0

    :goto_c
    if-ge v10, v5, :cond_12

    .line 492
    iget-object v12, v1, Lcom/narvii/item/post/ItemPost;->itemCategoryList:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/narvii/model/ItemCategory;

    add-int/lit8 v15, v4, -0x1

    if-ge v10, v15, :cond_10

    .line 493
    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    goto :goto_d

    :cond_10
    const/4 v15, 0x0

    :goto_d
    if-nez v15, :cond_11

    const v15, 0x7f0b058d

    .line 495
    invoke-virtual {v9, v15, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    const v13, 0x7f090878

    .line 496
    invoke-virtual {v15, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 497
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-virtual {v3, v15, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_11
    const v13, 0x7f090877

    .line 499
    invoke-virtual {v15, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iget-object v14, v12, Lcom/narvii/model/ItemCategory;->label:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    invoke-virtual {v15, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    .line 502
    :cond_12
    :goto_e
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v11

    if-le v4, v5, :cond_13

    .line 503
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_e

    :cond_13
    :goto_f
    const v3, 0x7f09088e

    .line 508
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 509
    check-cast v3, Lcom/narvii/widget/TagEditText;

    iget-object v4, v1, Lcom/narvii/item/post/ItemPost;->keywords:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/narvii/widget/TagEditText;->setKeywords(Ljava/lang/String;)V

    const v3, 0x7f090890

    .line 512
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 513
    check-cast v3, Lcom/narvii/item/property/ItemPropertyEditList;

    iget-object v4, v1, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array v5, v11, [Ljava/lang/String;

    const-string/jumbo v9, "props"

    aput-object v9, v5, v8

    invoke-static {v4, v5}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/narvii/item/property/ItemPropertyEditList;->set(Lcom/fasterxml/jackson/databind/JsonNode;)V

    const v3, 0x7f09088f

    .line 514
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0902d0

    .line 517
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 518
    iget-object v4, v1, Lcom/narvii/item/post/ItemPost;->content:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 519
    iget-object v4, v1, Lcom/narvii/item/post/ItemPost;->content:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    :cond_14
    iget-object v3, v0, Lcom/narvii/item/post/ItemPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    invoke-virtual {v3}, Lcom/narvii/post/LocationPickerFragment;->isLocating()Z

    .line 524
    iget v3, v1, Lcom/narvii/item/post/ItemPost;->latitude:I

    if-nez v3, :cond_15

    iget v3, v1, Lcom/narvii/item/post/ItemPost;->longitude:I

    :cond_15
    const v3, 0x7f09086f

    .line 526
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 527
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 528
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f09089d

    .line 530
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 531
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f09087a

    .line 533
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 534
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 535
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f09006f

    .line 537
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/widget/AddressView;

    .line 538
    iget v4, v1, Lcom/narvii/item/post/ItemPost;->latitude:I

    iget v5, v1, Lcom/narvii/item/post/ItemPost;->longitude:I

    iget-object v9, v1, Lcom/narvii/item/post/ItemPost;->address:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v9, v8}, Lcom/narvii/widget/AddressView;->setLatLngE6(IILjava/lang/String;Z)V

    .line 539
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 541
    iget-object v3, v1, Lcom/narvii/item/post/ItemPost;->itemList:Ljava/util/List;

    if-nez v3, :cond_16

    const/4 v3, 0x0

    goto :goto_10

    :cond_16
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_10
    const v4, 0x7f09086e

    .line 542
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 543
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez v3, :cond_17

    const/4 v5, 0x0

    goto :goto_11

    :cond_17
    const/16 v5, 0x8

    .line 544
    :goto_11
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f090879

    .line 546
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 547
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez v3, :cond_18

    goto :goto_12

    :cond_18
    const/4 v7, 0x0

    .line 548
    :goto_12
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 549
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0f0dbf

    new-array v7, v11, [Ljava/lang/Object;

    .line 550
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    check-cast v4, Landroid/view/ViewGroup;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 552
    :goto_13
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v5, v7, :cond_1c

    .line 553
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 554
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    const-string v10, "link"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 555
    check-cast v7, Lcom/narvii/widget/CardView;

    if-ge v6, v3, :cond_19

    .line 556
    iget-object v9, v1, Lcom/narvii/item/post/ItemPost;->itemList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v14, v9

    check-cast v14, Lcom/narvii/model/Item;

    goto :goto_14

    :cond_19
    const/4 v14, 0x0

    .line 557
    :goto_14
    invoke-virtual {v7, v14}, Lcom/narvii/widget/CardView;->setItem(Lcom/narvii/model/Item;)V

    if-nez v14, :cond_1a

    const/4 v9, 0x4

    goto :goto_15

    :cond_1a
    const/4 v9, 0x0

    .line 558
    :goto_15
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    add-int/lit8 v6, v6, 0x1

    :cond_1b
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_1c
    const v1, 0x7f0908a2

    .line 563
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 564
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 65
    check-cast p1, Lcom/narvii/item/post/ItemPost;

    invoke-virtual {p0, p1}, Lcom/narvii/item/post/ItemPostActivity;->updateView(Lcom/narvii/item/post/ItemPost;)V

    return-void
.end method

.method protected validateUpload(Lcom/narvii/item/post/ItemPost;)Z
    .locals 5

    .line 616
    iget-object v0, p0, Lcom/narvii/item/post/ItemPostActivity;->rootView:Landroid/view/View;

    const v1, 0x7f09088d

    .line 618
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090619

    .line 619
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v2, 0x7f0f0daf

    invoke-virtual {p0, v1, v2}, Lcom/narvii/post/BasePostActivity;->validateEditTextNotEmpty(Landroid/widget/EditText;I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 622
    :cond_0
    iget-object v1, p1, Lcom/narvii/item/post/ItemPost;->icon:Ljava/lang/String;

    if-nez v1, :cond_1

    const p1, 0x7f0f0dae

    .line 623
    invoke-virtual {p0, p1}, Lcom/narvii/post/BasePostActivity;->showAlert(I)V

    return v2

    .line 626
    :cond_1
    iget-object v1, p1, Lcom/narvii/item/post/ItemPost;->mediaList:Ljava/util/List;

    const/16 v3, 0x32

    const v4, 0x7f0f0da9

    invoke-virtual {p0, v1, v3, v4}, Lcom/narvii/post/BasePostActivity;->validateMediaListMax(Ljava/util/List;II)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    const v1, 0x7f090890

    .line 629
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 630
    check-cast v0, Lcom/narvii/item/property/ItemPropertyEditList;

    invoke-virtual {v0}, Lcom/narvii/item/property/ItemPropertyEditList;->validate()Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    .line 634
    :cond_3
    iget-object v0, p0, Lcom/narvii/item/post/ItemPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object p1, p1, Lcom/narvii/item/post/ItemPost;->mediaList:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/narvii/util/text/IMGUtils;->filterRefIds(Landroid/text/Editable;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 635
    invoke-virtual {p0}, Lcom/narvii/item/post/ItemPostActivity;->savePost()Lcom/narvii/item/post/ItemPost;

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method protected bridge synthetic validateUpload(Lcom/narvii/post/PostObject;)Z
    .locals 0

    .line 65
    check-cast p1, Lcom/narvii/item/post/ItemPost;

    invoke-virtual {p0, p1}, Lcom/narvii/item/post/ItemPostActivity;->validateUpload(Lcom/narvii/item/post/ItemPost;)Z

    move-result p1

    return p1
.end method
