.class public Lcom/narvii/item/post/ItemPostActivity;
.super Lcom/narvii/post/BackgroundPostActivity;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/post/BackgroundPostActivity;-><init>()V

    .line 4
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/item/post/ItemPostActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/item/post/ItemPostActivity;)Lcom/narvii/post/DraftManager;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    .line 3
    return-object p0
.end method

.method public static safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVActivity;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public buildDraftParams()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 3

    .line 1
    .line 2
    const-string v0, "itemId"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 18
    .line 19
    const-string v0, "fork"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    .line 23
    move-result v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 27
    return-object v2
.end method

.method protected checkEligible()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "item"

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/narvii/post/BasePostActivity;->checkEligible(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    return-void
.end method

.method protected doPost(Lcom/narvii/item/post/ItemPost;)V
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/narvii/item/post/ItemPostActivity;->itemId()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/narvii/item/post/ItemPostActivity;->isFork()Z

    move-result v1

    const-string v2, "/item"

    if-eqz v0, :cond_0

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/fork"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/narvii/feed/BackgroundPostHelper;

    invoke-direct {v1, p0}, Lcom/narvii/feed/BackgroundPostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    invoke-virtual {v1, p0}, Lcom/narvii/post/PostHelper;->setPostListener(Lcom/narvii/post/PostListener;)V

    const-class v2, Lcom/narvii/model/api/ItemResponse;

    .line 9
    invoke-virtual {v1, p1, v0, v2}, Lcom/narvii/post/PostHelper;->startPost(Lcom/narvii/post/PostObject;Lcom/narvii/util/http/ApiRequest;Ljava/lang/Class;)V

    return-void
.end method

.method protected bridge synthetic doPost(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/item/post/ItemPost;

    invoke-virtual {p0, p1}, Lcom/narvii/item/post/ItemPostActivity;->doPost(Lcom/narvii/item/post/ItemPost;)V

    return-void
.end method

.method protected doPreview(Lcom/narvii/item/post/ItemPost;)V
    .locals 2

    const-string v0, "feed"

    .line 2
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

    .line 3
    invoke-static {v0}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/model/Feed;)Landroid/content/Intent;

    move-result-object v0

    .line 4
    iget-object p1, p1, Lcom/narvii/item/post/ItemPost;->itemList:Ljava/util/List;

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "taggedObjects"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "preview"

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "Source"

    const-string v1, "Preview"

    .line 6
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-static {p0, v0}, Lcom/narvii/item/post/ItemPostActivity;->safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V

    return-void
.end method

.method protected bridge synthetic doPreview(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 1
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

    iget-object v0, p0, Lcom/narvii/item/post/ItemPostActivity;->influencerPostContainer:Landroid/view/View;

    return-object v0
.end method

.method public isBackgroundColorSet()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 3
    .line 4
    check-cast v0, Lcom/narvii/item/post/ItemPost;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/feed/BackgroundPost;->getBackgroundColor()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public isEdit()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/item/post/ItemPostActivity;->itemId()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public isFork()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    const-string v1, "fork"

    .line 5
    .line 6
    .line 7
    filled-new-array {v1}, [Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public itemId()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    const-string v1, "itemId"

    .line 5
    .line 6
    .line 7
    filled-new-array {v1}, [Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    const/4 v0, 0x3

    .line 5
    .line 6
    const-class v1, Lcom/narvii/model/Media;

    .line 7
    .line 8
    const-string v2, "mediaList"

    .line 9
    const/4 v3, -0x1

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    if-ne p2, v3, :cond_0

    .line 14
    .line 15
    if-eqz p3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/item/post/ItemPostActivity;->savePost()Lcom/narvii/item/post/ItemPost;

    .line 29
    move-result-object v4

    .line 30
    .line 31
    iput-object v0, v4, Lcom/narvii/item/post/ItemPost;->mediaList:Ljava/util/List;

    .line 32
    .line 33
    iput-object v4, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v4}, Lcom/narvii/item/post/ItemPostActivity;->updateView(Lcom/narvii/item/post/ItemPost;)V

    .line 37
    :cond_0
    const/4 v0, 0x5

    .line 38
    const/4 v4, 0x1

    .line 39
    .line 40
    if-eq p1, v0, :cond_1

    .line 41
    const/4 v0, 0x6

    .line 42
    .line 43
    if-ne p1, v0, :cond_3

    .line 44
    .line 45
    :cond_1
    if-ne p2, v3, :cond_3

    .line 46
    .line 47
    if-eqz p3, :cond_3

    .line 48
    .line 49
    const-string v0, "itemList"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    const-class v5, Lcom/narvii/model/Item;

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v5}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/narvii/item/post/ItemPostActivity;->itemId()Ljava/lang/String;

    .line 65
    move-result-object v5

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v5}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/narvii/item/post/ItemPostActivity;->savePost()Lcom/narvii/item/post/ItemPost;

    .line 72
    move-result-object v5

    .line 73
    .line 74
    iput-object v0, v5, Lcom/narvii/item/post/ItemPost;->itemList:Ljava/util/List;

    .line 75
    .line 76
    iput-object v5, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v5}, Lcom/narvii/item/post/ItemPostActivity;->updateView(Lcom/narvii/item/post/ItemPost;)V

    .line 80
    .line 81
    :cond_2
    iput-boolean v4, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_link_favorite_success:Z

    .line 82
    .line 83
    :cond_3
    const/16 v0, 0x14

    .line 84
    .line 85
    if-ne p1, v0, :cond_4

    .line 86
    .line 87
    if-ne p2, v3, :cond_4

    .line 88
    .line 89
    if-eqz p3, :cond_4

    .line 90
    .line 91
    const-string v0, "extensions"

    .line 92
    .line 93
    .line 94
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    .line 98
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->createObjectNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 99
    move-result-object v0

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/narvii/item/post/ItemPostActivity;->savePost()Lcom/narvii/item/post/ItemPost;

    .line 103
    move-result-object v5

    .line 104
    .line 105
    iput-object v0, v5, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 106
    .line 107
    iput-object v5, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v5}, Lcom/narvii/item/post/ItemPostActivity;->updateView(Lcom/narvii/item/post/ItemPost;)V

    .line 111
    .line 112
    :cond_4
    const/16 v0, 0x1c

    .line 113
    .line 114
    if-ne p1, v0, :cond_5

    .line 115
    .line 116
    if-ne p2, v3, :cond_5

    .line 117
    .line 118
    if-eqz p3, :cond_5

    .line 119
    .line 120
    const-string v0, "refIdList"

    .line 121
    .line 122
    .line 123
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    move-result-object v0

    .line 125
    .line 126
    .line 127
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    move-result-object v2

    .line 129
    .line 130
    .line 131
    invoke-static {v2, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 132
    move-result-object v1

    .line 133
    .line 134
    .line 135
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 136
    move-result v2

    .line 137
    .line 138
    if-nez v2, :cond_5

    .line 139
    .line 140
    if-eqz v1, :cond_5

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/narvii/item/post/ItemPostActivity;->savePost()Lcom/narvii/item/post/ItemPost;

    .line 144
    move-result-object v2

    .line 145
    .line 146
    iput-object v1, v2, Lcom/narvii/item/post/ItemPost;->mediaList:Ljava/util/List;

    .line 147
    .line 148
    iput-object v2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, v2}, Lcom/narvii/item/post/ItemPostActivity;->updateView(Lcom/narvii/item/post/ItemPost;)V

    .line 152
    .line 153
    iget-object v1, p0, Lcom/narvii/item/post/ItemPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    .line 154
    .line 155
    .line 156
    invoke-static {v1, v0}, Lcom/narvii/util/text/IMGUtils;->insertEditText(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 157
    .line 158
    :cond_5
    const/16 v0, 0x8

    .line 159
    .line 160
    if-ne p1, v0, :cond_6

    .line 161
    .line 162
    if-ne p2, v3, :cond_6

    .line 163
    .line 164
    if-eqz p3, :cond_6

    .line 165
    .line 166
    const-string p1, "categoryList"

    .line 167
    .line 168
    .line 169
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    move-result-object p1

    .line 171
    .line 172
    const-class p2, Lcom/narvii/model/ItemCategory;

    .line 173
    .line 174
    .line 175
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 176
    move-result-object p1

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Lcom/narvii/item/post/ItemPostActivity;->savePost()Lcom/narvii/item/post/ItemPost;

    .line 180
    move-result-object p2

    .line 181
    .line 182
    iput-object p1, p2, Lcom/narvii/item/post/ItemPost;->itemCategoryList:Ljava/util/List;

    .line 183
    .line 184
    iput-object p2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, p2}, Lcom/narvii/item/post/ItemPostActivity;->updateView(Lcom/narvii/item/post/ItemPost;)V

    .line 188
    .line 189
    iput-boolean v4, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_add_category_success:Z

    .line 190
    :cond_6
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0b4e

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Lcom/narvii/item/property/ItemPropertyEditPanel;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/item/property/ItemPropertyEditPanel;->onBackPressed()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    return-void

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onBackPressed()V

    .line 20
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/item/post/ItemPostActivity;->savePost()Lcom/narvii/item/post/ItemPost;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x2

    .line 10
    const/4 v3, 0x6

    .line 11
    .line 12
    const-string v4, "itemList"

    .line 13
    const/4 v5, 0x3

    .line 14
    .line 15
    const-string v6, "type"

    .line 16
    .line 17
    const/16 v7, 0x32

    .line 18
    const/4 v8, 0x0

    .line 19
    const/4 v9, 0x1

    .line 20
    .line 21
    .line 22
    sparse-switch v1, :sswitch_data_0

    .line 23
    .line 24
    goto/16 :goto_3

    .line 25
    .line 26
    :sswitch_0
    const-class p1, Lcom/narvii/post/PostOptionsFragment;

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    iget-object v0, v0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    const-string v1, "extensions"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    .line 43
    const/16 v0, 0x14

    .line 44
    .line 45
    .line 46
    invoke-static {p0, p1, v0}, Lcom/narvii/item/post/ItemPostActivity;->safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V

    .line 47
    .line 48
    goto/16 :goto_3

    .line 49
    .line 50
    .line 51
    :sswitch_1
    const p1, 0x7f0a0b4d

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    check-cast p1, Lcom/narvii/item/property/ItemPropertyEditList;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/narvii/item/property/ItemPropertyEditList;->addNewProperty()V

    .line 61
    .line 62
    goto/16 :goto_3

    .line 63
    .line 64
    :sswitch_2
    iget-object p1, v0, Lcom/narvii/item/post/ItemPost;->mediaList:Ljava/util/List;

    .line 65
    .line 66
    .line 67
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 68
    move-result v0

    .line 69
    .line 70
    if-nez v0, :cond_0

    .line 71
    .line 72
    goto/16 :goto_3

    .line 73
    .line 74
    :cond_0
    const-class v0, Lcom/narvii/media/MediaOrganizeFragment;

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    const-string v1, "mediaList"

    .line 81
    .line 82
    .line 83
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    .line 89
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    .line 90
    .line 91
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v1}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    .line 95
    move-result-object p1

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 99
    move-result-object p1

    .line 100
    .line 101
    const-string v1, "dir"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    .line 106
    const-string p1, "maximum"

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, p1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    .line 111
    .line 112
    invoke-static {p0, v0, v5}, Lcom/narvii/item/post/ItemPostActivity;->safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V

    .line 113
    .line 114
    goto/16 :goto_3

    .line 115
    .line 116
    :sswitch_3
    const-class p1, Lcom/narvii/item/picker/ItemSortFragment;

    .line 117
    .line 118
    .line 119
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 120
    move-result-object p1

    .line 121
    .line 122
    iget-object v0, v0, Lcom/narvii/item/post/ItemPost;->itemList:Ljava/util/List;

    .line 123
    .line 124
    .line 125
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 126
    move-result-object v0

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    .line 131
    .line 132
    invoke-static {p0, p1, v3}, Lcom/narvii/item/post/ItemPostActivity;->safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V

    .line 133
    .line 134
    goto/16 :goto_3

    .line 135
    .line 136
    .line 137
    :sswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 138
    move-result-object p1

    .line 139
    .line 140
    check-cast p1, Landroid/view/View;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 144
    move-result-object p1

    .line 145
    .line 146
    check-cast p1, Lcom/narvii/model/ItemCategory;

    .line 147
    .line 148
    iget-object v1, v0, Lcom/narvii/item/post/ItemPost;->itemCategoryList:Ljava/util/List;

    .line 149
    .line 150
    iget-object p1, p1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    invoke-static {v1, p1}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 154
    .line 155
    iput-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, v0}, Lcom/narvii/item/post/ItemPostActivity;->updateView(Lcom/narvii/item/post/ItemPost;)V

    .line 159
    .line 160
    goto/16 :goto_3

    .line 161
    .line 162
    :sswitch_5
    const-string p1, "account"

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 166
    move-result-object p1

    .line 167
    .line 168
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 169
    .line 170
    const-class v1, Lcom/narvii/catalog/category/CategoryPickerFragment;

    .line 171
    .line 172
    .line 173
    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 174
    move-result-object v1

    .line 175
    .line 176
    const-string v2, "uid"

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 180
    move-result-object p1

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    .line 185
    const-string p1, "multiPick"

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, p1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 189
    .line 190
    .line 191
    const p1, 0x7f1201e9

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 195
    move-result-object p1

    .line 196
    .line 197
    const-string v2, "title"

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    .line 202
    iget-object p1, v0, Lcom/narvii/item/post/ItemPost;->itemCategoryList:Ljava/util/List;

    .line 203
    .line 204
    if-eqz p1, :cond_2

    .line 205
    .line 206
    new-instance p1, Ljava/util/ArrayList;

    .line 207
    .line 208
    .line 209
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .line 211
    iget-object v0, v0, Lcom/narvii/item/post/ItemPost;->itemCategoryList:Ljava/util/List;

    .line 212
    .line 213
    .line 214
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 215
    move-result-object v0

    .line 216
    .line 217
    .line 218
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 219
    move-result v2

    .line 220
    .line 221
    if-eqz v2, :cond_1

    .line 222
    .line 223
    .line 224
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 225
    move-result-object v2

    .line 226
    .line 227
    check-cast v2, Lcom/narvii/model/ItemCategory;

    .line 228
    .line 229
    iget-object v2, v2, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    goto :goto_0

    .line 234
    .line 235
    :cond_1
    const-string v0, "categoryIdList"

    .line 236
    .line 237
    .line 238
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 239
    move-result-object p1

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    .line 244
    :cond_2
    iput-boolean v9, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_add_category:Z

    .line 245
    .line 246
    const/16 p1, 0x8

    .line 247
    .line 248
    .line 249
    invoke-static {p0, v1, p1}, Lcom/narvii/item/post/ItemPostActivity;->safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V

    .line 250
    .line 251
    goto/16 :goto_3

    .line 252
    .line 253
    :sswitch_6
    iget-object p1, v0, Lcom/narvii/item/post/ItemPost;->mediaList:Ljava/util/List;

    .line 254
    .line 255
    if-eqz p1, :cond_3

    .line 256
    .line 257
    .line 258
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 259
    move-result v0

    .line 260
    .line 261
    if-lt v0, v7, :cond_3

    .line 262
    .line 263
    .line 264
    const p1, 0x7f120efb

    .line 265
    .line 266
    .line 267
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 268
    move-result-object p1

    .line 269
    .line 270
    .line 271
    invoke-static {p0, p1, v8}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 272
    move-result-object p1

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 276
    goto :goto_2

    .line 277
    .line 278
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    .line 279
    .line 280
    .line 281
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0, v6, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 285
    .line 286
    iget-object v1, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 287
    .line 288
    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    .line 289
    .line 290
    iget-object v3, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v2, v3}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    .line 294
    move-result-object v2

    .line 295
    .line 296
    if-nez p1, :cond_4

    .line 297
    move p1, v8

    .line 298
    goto :goto_1

    .line 299
    .line 300
    .line 301
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 302
    move-result p1

    .line 303
    :goto_1
    sub-int/2addr v7, p1

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1, v2, v0, v8, v7}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    .line 307
    .line 308
    :goto_2
    iput-boolean v9, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_user_galery:Z

    .line 309
    goto :goto_3

    .line 310
    .line 311
    :sswitch_7
    iget-object p1, p0, Lcom/narvii/item/post/ItemPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 312
    .line 313
    iget v1, v0, Lcom/narvii/item/post/ItemPost;->latitude:I

    .line 314
    .line 315
    iget v0, v0, Lcom/narvii/item/post/ItemPost;->longitude:I

    .line 316
    .line 317
    .line 318
    invoke-virtual {p1, v1, v0, v9}, Lcom/narvii/post/LocationPickerFragment;->pickLocation(IIZ)V

    .line 319
    goto :goto_3

    .line 320
    .line 321
    :sswitch_8
    const-class p1, Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 322
    .line 323
    .line 324
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 325
    move-result-object p1

    .line 326
    .line 327
    const-string v1, "mine"

    .line 328
    .line 329
    .line 330
    invoke-virtual {p1, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 331
    .line 332
    iget-object v0, v0, Lcom/narvii/item/post/ItemPost;->itemList:Ljava/util/List;

    .line 333
    .line 334
    .line 335
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 336
    move-result-object v0

    .line 337
    .line 338
    .line 339
    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const/4 v0, 0x5

    .line 341
    .line 342
    .line 343
    invoke-static {p0, p1, v0}, Lcom/narvii/item/post/ItemPostActivity;->safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V

    .line 344
    .line 345
    iput-boolean v9, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_link_favorite:Z

    .line 346
    goto :goto_3

    .line 347
    .line 348
    :sswitch_9
    new-instance p1, Landroid/os/Bundle;

    .line 349
    .line 350
    .line 351
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 352
    .line 353
    .line 354
    invoke-virtual {p1, v6, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 355
    .line 356
    iget-object v0, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 357
    .line 358
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    .line 359
    .line 360
    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v1, v2}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    .line 364
    move-result-object v1

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0, v1, p1, v3, v8}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    .line 368
    .line 369
    iput-boolean v9, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_user_photo:Z

    .line 370
    goto :goto_3

    .line 371
    .line 372
    :sswitch_a
    new-instance p1, Landroid/os/Bundle;

    .line 373
    .line 374
    .line 375
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 376
    .line 377
    .line 378
    invoke-virtual {p1, v6, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 379
    .line 380
    iget-object v0, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 381
    .line 382
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    .line 383
    .line 384
    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v1, v2}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    .line 388
    move-result-object v1

    .line 389
    .line 390
    const/16 v2, 0x46

    .line 391
    .line 392
    .line 393
    invoke-virtual {v0, v1, p1, v2, v8}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    .line 394
    .line 395
    iput-boolean v9, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_user_photo:Z

    .line 396
    .line 397
    :goto_3
    iget-object p1, p0, Lcom/narvii/item/post/ItemPostActivity;->rootView:Landroid/view/View;

    .line 398
    .line 399
    .line 400
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 401
    move-result-object p1

    .line 402
    .line 403
    if-eqz p1, :cond_5

    .line 404
    .line 405
    .line 406
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 407
    :cond_5
    return-void

    .line 408
    nop

    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    :sswitch_data_0
    .sparse-switch
        0x7f0a075b -> :sswitch_a
        0x7f0a075c -> :sswitch_9
        0x7f0a0b2a -> :sswitch_8
        0x7f0a0b2b -> :sswitch_7
        0x7f0a0b2c -> :sswitch_6
        0x7f0a0b2f -> :sswitch_5
        0x7f0a0b34 -> :sswitch_4
        0x7f0a0b35 -> :sswitch_3
        0x7f0a0b36 -> :sswitch_7
        0x7f0a0b37 -> :sswitch_2
        0x7f0a0b4c -> :sswitch_1
        0x7f0a0b5f -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/post/DraftPostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/app/theme/NVThemeActivity;->setShouldInflateAd(Z)V

    .line 8
    .line 9
    .line 10
    const v0, 0x7f0d0636

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    new-instance v0, Lcom/narvii/item/property/ItemPropertyEditPanelFragment;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0}, Lcom/narvii/item/property/ItemPropertyEditPanelFragment;-><init>()V

    .line 32
    .line 33
    .line 34
    const v1, 0x7f0a05ff

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    const-string v0, "locationPicker"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    check-cast p1, Lcom/narvii/post/LocationPickerFragment;

    .line 54
    .line 55
    iput-object p1, p0, Lcom/narvii/item/post/ItemPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 56
    .line 57
    if-nez p1, :cond_1

    .line 58
    .line 59
    new-instance p1, Lcom/narvii/post/LocationPickerFragment;

    .line 60
    .line 61
    .line 62
    invoke-direct {p1}, Lcom/narvii/post/LocationPickerFragment;-><init>()V

    .line 63
    .line 64
    iput-object p1, p0, Lcom/narvii/item/post/ItemPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    iget-object v1, p0, Lcom/narvii/item/post/ItemPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 82
    .line 83
    :cond_1
    iget-object p1, p0, Lcom/narvii/item/post/ItemPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 84
    .line 85
    iput-object p0, p1, Lcom/narvii/post/LocationPickerFragment;->listener:Lcom/narvii/post/LocationPickerFragment$LocationListener;

    .line 86
    .line 87
    .line 88
    const p1, 0x7f0a0c4c

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    iput-object p1, p0, Lcom/narvii/item/post/ItemPostActivity;->rootView:Landroid/view/View;

    .line 95
    .line 96
    .line 97
    const p1, 0x7f0a039d

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    check-cast p1, Lcom/narvii/widget/EditTextIMG;

    .line 104
    .line 105
    iput-object p1, p0, Lcom/narvii/item/post/ItemPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    .line 106
    .line 107
    new-instance v0, Lcom/narvii/item/post/ItemPostActivity$ImgCallback;

    .line 108
    .line 109
    .line 110
    invoke-direct {v0, p0}, Lcom/narvii/item/post/ItemPostActivity$ImgCallback;-><init>(Lcom/narvii/item/post/ItemPostActivity;)V

    .line 111
    .line 112
    iput-object v0, p1, Lcom/narvii/widget/EditTextIMG;->imgMode:Landroid/view/ActionMode$Callback;

    .line 113
    .line 114
    .line 115
    const p1, 0x7f0a0b3d

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 119
    move-result-object p1

    .line 120
    .line 121
    iget-object v0, p0, Lcom/narvii/item/post/ItemPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    .line 122
    .line 123
    new-instance v1, Lcom/narvii/post/BasePostActivity$HideHintWatcher;

    .line 124
    .line 125
    .line 126
    invoke-direct {v1, p1}, Lcom/narvii/post/BasePostActivity$HideHintWatcher;-><init>(Landroid/view/View;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 130
    .line 131
    .line 132
    const p1, 0x7f0a0b46

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 136
    move-result-object p1

    .line 137
    .line 138
    iput-object p1, p0, Lcom/narvii/item/post/ItemPostActivity;->influencerPostContainer:Landroid/view/View;

    .line 139
    return-void
.end method

.method public onLocatingChanged(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/item/post/ItemPostActivity;->savePost()Lcom/narvii/item/post/ItemPost;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/item/post/ItemPostActivity;->updateView(Lcom/narvii/item/post/ItemPost;)V

    .line 8
    return-void
.end method

.method public onLocationResult(Lcom/narvii/location/GPSCoordinate;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/item/post/ItemPostActivity;->savePost()Lcom/narvii/item/post/ItemPost;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->latitudeE6()I

    .line 12
    move-result v3

    .line 13
    .line 14
    iput v3, v0, Lcom/narvii/item/post/ItemPost;->latitude:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->longitudeE6()I

    .line 18
    move-result p1

    .line 19
    .line 20
    iput p1, v0, Lcom/narvii/item/post/ItemPost;->longitude:I

    .line 21
    .line 22
    iput-object v1, v0, Lcom/narvii/item/post/ItemPost;->address:Ljava/lang/String;

    .line 23
    .line 24
    iput-boolean v2, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_remove_location:Z

    .line 25
    .line 26
    iput-boolean v2, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_remove_location_success:Z

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    iput v2, v0, Lcom/narvii/item/post/ItemPost;->latitude:I

    .line 30
    .line 31
    iput v2, v0, Lcom/narvii/item/post/ItemPost;->longitude:I

    .line 32
    .line 33
    iput-object v1, v0, Lcom/narvii/item/post/ItemPost;->address:Ljava/lang/String;

    .line 34
    const/4 p1, 0x1

    .line 35
    .line 36
    iput-boolean p1, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_remove_location:Z

    .line 37
    .line 38
    iput-boolean p1, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_remove_location_success:Z

    .line 39
    .line 40
    :goto_0
    iput-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/narvii/item/post/ItemPostActivity;->updateView(Lcom/narvii/item/post/ItemPost;)V

    .line 44
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

    .line 1
    .line 2
    const-string v0, "type"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x2

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    if-eq p2, v0, :cond_1

    .line 11
    const/4 v0, 0x3

    .line 12
    .line 13
    if-eq p2, v0, :cond_0

    .line 14
    goto :goto_2

    .line 15
    .line 16
    :cond_0
    iget-object p2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 17
    move-object v0, p2

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/item/post/ItemPost;

    .line 20
    .line 21
    iput-object p1, v0, Lcom/narvii/item/post/ItemPost;->mediaList:Ljava/util/List;

    .line 22
    .line 23
    check-cast p2, Lcom/narvii/item/post/ItemPost;

    .line 24
    .line 25
    iget-object p1, p2, Lcom/narvii/item/post/ItemPost;->mediaList:Ljava/util/List;

    .line 26
    .line 27
    const/16 p2, 0x32

    .line 28
    .line 29
    .line 30
    const v0, 0x7f120efb

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/post/BasePostActivity;->trimMediaList(Ljava/util/List;II)V

    .line 34
    .line 35
    iput-boolean v1, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_user_galery_suceess:Z

    .line 36
    goto :goto_2

    .line 37
    .line 38
    :cond_1
    iget-object p2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 39
    .line 40
    check-cast p2, Lcom/narvii/item/post/ItemPost;

    .line 41
    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 44
    move-result v0

    .line 45
    const/4 v2, 0x0

    .line 46
    .line 47
    if-nez v0, :cond_2

    .line 48
    const/4 v0, 0x0

    .line 49
    goto :goto_0

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    check-cast v0, Lcom/narvii/model/Media;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 58
    .line 59
    :goto_0
    iput-object v0, p2, Lcom/narvii/item/post/ItemPost;->icon:Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 63
    move-result p1

    .line 64
    .line 65
    if-lez p1, :cond_3

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    move v1, v2

    .line 68
    .line 69
    :goto_1
    iput-boolean v1, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_user_photo_success:Z

    .line 70
    :goto_2
    return-void
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/post/DraftPostActivity;->onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V

    .line 4
    .line 5
    check-cast p2, Lcom/narvii/model/api/ItemResponse;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/narvii/model/api/ItemResponse;->object()Lcom/narvii/model/Item;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    new-instance p2, Lcom/narvii/model/ItemCategory;

    .line 12
    .line 13
    .line 14
    invoke-direct {p2}, Lcom/narvii/model/ItemCategory;-><init>()V

    .line 15
    .line 16
    new-instance v0, Lcom/narvii/model/User;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Lcom/narvii/model/User;-><init>()V

    .line 20
    .line 21
    iput-object v0, p2, Lcom/narvii/model/ItemCategory;->author:Lcom/narvii/model/User;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/narvii/model/Item;->uid()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    iput-object v1, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v0, Lcom/narvii/notification/Notification;

    .line 30
    .line 31
    const-string v1, "update"

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/narvii/item/post/ItemPostActivity;->isEdit()Z

    .line 41
    move-result p2

    .line 42
    const/4 v0, 0x1

    .line 43
    .line 44
    if-nez p2, :cond_0

    .line 45
    .line 46
    const-string p2, "disableOpenCallback"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    .line 50
    move-result p2

    .line 51
    .line 52
    if-nez p2, :cond_0

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/model/Feed;)Landroid/content/Intent;

    .line 56
    move-result-object p2

    .line 57
    .line 58
    const-string v1, "Source"

    .line 59
    .line 60
    const-string v2, "View Created Post"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    .line 65
    const-string v1, "justCreated"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    invoke-static {p0, p2}, Lcom/narvii/item/post/ItemPostActivity;->safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V

    .line 72
    .line 73
    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/item/post/ItemPostActivity;->isEdit()Z

    .line 75
    move-result p2

    .line 76
    .line 77
    const-string v1, "statistics"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    check-cast v1, Lcom/narvii/util/statistics/StatisticsService;

    .line 84
    .line 85
    if-eqz p2, :cond_1

    .line 86
    .line 87
    const-string v2, "User Edits a Post"

    .line 88
    goto :goto_0

    .line 89
    .line 90
    :cond_1
    const-string v2, "Create Post"

    .line 91
    .line 92
    .line 93
    :goto_0
    invoke-interface {v1, v2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 94
    move-result-object v1

    .line 95
    .line 96
    if-eqz p2, :cond_2

    .line 97
    .line 98
    const-string v2, "Total Edited Posts"

    .line 99
    goto :goto_1

    .line 100
    .line 101
    :cond_2
    const-string v2, "Total New Posts"

    .line 102
    .line 103
    .line 104
    :goto_1
    invoke-virtual {v1, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 105
    move-result-object v2

    .line 106
    .line 107
    const-string v3, "post_type"

    .line 108
    .line 109
    const-string v4, "wiki"

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v3, v4}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 113
    move-result-object v2

    .line 114
    .line 115
    iget-boolean v3, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_link_favorite:Z

    .line 116
    const/4 v4, 0x0

    .line 117
    .line 118
    if-eqz v3, :cond_3

    .line 119
    .line 120
    const-string v3, "Link Related favorites"

    .line 121
    goto :goto_2

    .line 122
    :cond_3
    move-object v3, v4

    .line 123
    .line 124
    :goto_2
    iget-boolean v5, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_link_favorite_success:Z

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, v3, v5}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 128
    move-result-object v2

    .line 129
    .line 130
    iget-boolean v3, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_about:Z

    .line 131
    .line 132
    if-eqz v3, :cond_4

    .line 133
    .line 134
    const-string v3, "Fill in about"

    .line 135
    goto :goto_3

    .line 136
    :cond_4
    move-object v3, v4

    .line 137
    .line 138
    :goto_3
    iget-boolean v5, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_about_success:Z

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, v3, v5}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 142
    move-result-object v2

    .line 143
    .line 144
    iget-boolean v3, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_keyword:Z

    .line 145
    .line 146
    if-eqz v3, :cond_5

    .line 147
    .line 148
    const-string v3, "Add keywords"

    .line 149
    goto :goto_4

    .line 150
    :cond_5
    move-object v3, v4

    .line 151
    .line 152
    :goto_4
    iget-boolean v5, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_keyword_success:Z

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, v3, v5}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 156
    move-result-object v2

    .line 157
    .line 158
    iget-boolean v3, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_user_galery:Z

    .line 159
    .line 160
    if-eqz v3, :cond_6

    .line 161
    .line 162
    const-string v3, "Add gallery photos"

    .line 163
    goto :goto_5

    .line 164
    :cond_6
    move-object v3, v4

    .line 165
    .line 166
    :goto_5
    iget-boolean v5, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_user_galery_suceess:Z

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, v3, v5}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 170
    move-result-object v2

    .line 171
    .line 172
    iget-boolean v3, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_user_photo:Z

    .line 173
    .line 174
    if-eqz v3, :cond_7

    .line 175
    .line 176
    const-string v3, "Add profile photo"

    .line 177
    goto :goto_6

    .line 178
    :cond_7
    move-object v3, v4

    .line 179
    .line 180
    :goto_6
    iget-boolean v5, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_user_photo_success:Z

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2, v3, v5}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 184
    move-result-object v2

    .line 185
    .line 186
    iget-boolean v3, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_remove_location:Z

    .line 187
    .line 188
    if-eqz v3, :cond_8

    .line 189
    .line 190
    const-string v3, "Remove location"

    .line 191
    goto :goto_7

    .line 192
    :cond_8
    move-object v3, v4

    .line 193
    .line 194
    :goto_7
    iget-boolean v5, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_remove_location_success:Z

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2, v3, v5}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 198
    move-result-object v2

    .line 199
    .line 200
    iget-boolean v3, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_add_category:Z

    .line 201
    .line 202
    if-eqz v3, :cond_9

    .line 203
    .line 204
    const-string v4, "Add Category"

    .line 205
    .line 206
    :cond_9
    iget-boolean v3, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_add_category_success:Z

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2, v4, v3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 210
    move-result-object v2

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    .line 214
    move-result v3

    .line 215
    const/4 v4, 0x0

    .line 216
    .line 217
    if-eqz v3, :cond_a

    .line 218
    move v3, v0

    .line 219
    goto :goto_8

    .line 220
    :cond_a
    move v3, v4

    .line 221
    .line 222
    :goto_8
    const-string v5, "Background Color"

    .line 223
    .line 224
    .line 225
    invoke-virtual {v2, v5, v3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 226
    move-result-object v2

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getBackgroundMedia()Lcom/narvii/model/Media;

    .line 230
    move-result-object v3

    .line 231
    .line 232
    if-eqz v3, :cond_b

    .line 233
    move v4, v0

    .line 234
    .line 235
    :cond_b
    const-string v3, "Background Image"

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2, v3, v4}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 239
    move-result-object v2

    .line 240
    .line 241
    iget-object v3, p1, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    .line 242
    .line 243
    .line 244
    invoke-static {v3}, Lcom/narvii/model/Media;->hasVideo(Ljava/util/Collection;)Z

    .line 245
    move-result v3

    .line 246
    .line 247
    const-string v4, "Has Video"

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2, v4, v3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 251
    move-result-object v2

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->isContentAccessible()Z

    .line 255
    move-result p1

    .line 256
    xor-int/2addr p1, v0

    .line 257
    .line 258
    const-string v0, "Gated"

    .line 259
    .line 260
    .line 261
    invoke-virtual {v2, v0, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 262
    .line 263
    if-nez p2, :cond_c

    .line 264
    .line 265
    const-string p1, "source"

    .line 266
    .line 267
    .line 268
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 269
    move-result-object p1

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 273
    .line 274
    const-string p1, "User Submits a New Favorite Total"

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 278
    .line 279
    .line 280
    invoke-static {p0, v1}, Lcom/narvii/util/statistics/FirebaseLogManager;->logEvent(Lcom/narvii/app/NVContext;Lcom/narvii/util/statistics/StatisticsEventBuilder;)V

    .line 281
    :cond_c
    return-void
.end method

.method protected onPostLoaded(Lcom/narvii/item/post/ItemPost;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/narvii/post/DraftPostActivity;->onPostLoaded(Lcom/narvii/post/PostObject;)V

    .line 3
    invoke-virtual {p0}, Lcom/narvii/item/post/ItemPostActivity;->isEdit()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/narvii/item/post/ItemPostActivity;->isFork()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f12035e

    .line 4
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/item/post/ItemPostActivity;->isEdit()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f120438

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    :cond_1
    const p1, 0x7f120ee8

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostLoaded(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 1
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

    const-class v0, Lcom/narvii/item/post/ItemPost;

    return-object v0
.end method

.method protected savePost()Lcom/narvii/item/post/ItemPost;
    .locals 6

    iget-object v0, p0, Lcom/narvii/item/post/ItemPostActivity;->rootView:Landroid/view/View;

    const v1, 0x7f0a0b4a

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0799

    .line 3
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 4
    check-cast v2, Lcom/narvii/item/post/ItemPost;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/narvii/item/post/ItemPost;->label:Ljava/lang/String;

    const v1, 0x7f0a0b4b

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 6
    check-cast v1, Lcom/narvii/widget/TagEditText;

    invoke-virtual {v1}, Lcom/narvii/widget/TagEditText;->getKeywords()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 7
    check-cast v2, Lcom/narvii/item/post/ItemPost;

    iget-object v2, v2, Lcom/narvii/item/post/ItemPost;->keywords:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iput-boolean v3, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_keyword:Z

    iput-boolean v3, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_keyword_success:Z

    :cond_0
    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 8
    check-cast v2, Lcom/narvii/item/post/ItemPost;

    iput-object v1, v2, Lcom/narvii/item/post/ItemPost;->keywords:Ljava/lang/String;

    const v1, 0x7f0a0b4d

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 10
    check-cast v1, Lcom/narvii/item/property/ItemPropertyEditList;

    invoke-virtual {v1}, Lcom/narvii/item/property/ItemPropertyEditList;->get()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    const-string v2, "props"

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 11
    move-object v4, v1

    check-cast v4, Lcom/narvii/item/post/ItemPost;

    iget-object v4, v4, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v4, :cond_3

    .line 12
    check-cast v1, Lcom/narvii/item/post/ItemPost;

    iget-object v1, v1, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 13
    move-object v5, v4

    check-cast v5, Lcom/narvii/item/post/ItemPost;

    iget-object v5, v5, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v5, :cond_2

    .line 14
    check-cast v4, Lcom/narvii/item/post/ItemPost;

    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v5

    iput-object v5, v4, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :cond_2
    iget-object v4, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 15
    check-cast v4, Lcom/narvii/item/post/ItemPost;

    iget-object v4, v4, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {v4, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    :cond_3
    :goto_0
    const v1, 0x7f0a039d

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 17
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 18
    check-cast v2, Lcom/narvii/item/post/ItemPost;

    iget-object v2, v2, Lcom/narvii/item/post/ItemPost;->content:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iput-boolean v3, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_about:Z

    iput-boolean v3, p0, Lcom/narvii/item/post/ItemPostActivity;->stat_about_success:Z

    :cond_4
    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 19
    check-cast v2, Lcom/narvii/item/post/ItemPost;

    iput-object v1, v2, Lcom/narvii/item/post/ItemPost;->content:Ljava/lang/String;

    const v1, 0x7f0a0b36

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a00a8

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/AddressView;

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 22
    check-cast v1, Lcom/narvii/item/post/ItemPost;

    invoke-virtual {v0}, Lcom/narvii/widget/AddressView;->getAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/narvii/item/post/ItemPost;->address:Ljava/lang/String;

    const/16 v1, 0x8

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 24
    check-cast v0, Lcom/narvii/item/post/ItemPost;

    return-object v0
.end method

.method protected bridge synthetic savePost()Lcom/narvii/post/PostObject;
    .locals 1

    .line 1
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

    .line 1
    check-cast p1, Lcom/narvii/item/post/ItemPost;

    invoke-virtual {p0, p1}, Lcom/narvii/item/post/ItemPostActivity;->updateView(Lcom/narvii/item/post/ItemPost;)V

    return-void
.end method

.method protected updateView(Lcom/narvii/item/post/ItemPost;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3
    invoke-super/range {p0 .. p1}, Lcom/narvii/post/BackgroundPostActivity;->updateView(Lcom/narvii/feed/BackgroundPost;)V

    iget-object v2, v0, Lcom/narvii/item/post/ItemPostActivity;->rootView:Landroid/view/View;

    const v3, 0x7f0a0b4a

    .line 4
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a075b

    .line 5
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0a075c

    .line 6
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v6, v1, Lcom/narvii/item/post/ItemPost;->icon:Ljava/lang/String;

    .line 8
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-nez v6, :cond_0

    move v9, v8

    goto :goto_0

    :cond_0
    move v9, v7

    :goto_0
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 9
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v6, :cond_1

    move v5, v7

    goto :goto_1

    :cond_1
    move v5, v8

    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f0a075a

    .line 10
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/narvii/widget/ThumbImageView;

    .line 11
    invoke-virtual {v4, v6}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const v4, 0x7f1211c1

    .line 12
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-nez v6, :cond_2

    const v5, 0x7f120eaa

    goto :goto_2

    :cond_2
    const v5, 0x7f120ec2

    .line 13
    :goto_2
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0a0799

    .line 14
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 15
    iget-object v4, v1, Lcom/narvii/item/post/ItemPost;->label:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 16
    iget-object v4, v1, Lcom/narvii/item/post/ItemPost;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    :cond_3
    iget-object v3, v1, Lcom/narvii/item/post/ItemPost;->mediaList:Ljava/util/List;

    const v4, 0x7f0a0b2c

    .line 18
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 19
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v3, :cond_5

    .line 20
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    move v5, v7

    goto :goto_4

    :cond_5
    :goto_3
    move v5, v8

    :goto_4
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f0a0b37

    .line 21
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 22
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v3, :cond_6

    .line 23
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_6

    move v5, v8

    goto :goto_5

    :cond_6
    move v5, v7

    :goto_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x7f12080f

    .line 24
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    if-nez v3, :cond_7

    move v11, v8

    goto :goto_6

    .line 25
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    :goto_6
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    const v11, 0x7f120ede

    invoke-virtual {v0, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    check-cast v4, Landroid/view/ViewGroup;

    move v6, v8

    move v10, v6

    .line 27
    :goto_7
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    if-ge v6, v11, :cond_c

    .line 28
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    const v14, 0x7f12082d

    .line 29
    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 30
    check-cast v11, Lcom/narvii/widget/ThumbImageView;

    if-nez v3, :cond_9

    :cond_8
    const/4 v13, 0x0

    goto :goto_8

    .line 31
    :cond_9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-ge v10, v14, :cond_8

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/narvii/model/Media;

    :goto_8
    add-int/lit8 v10, v10, 0x1

    .line 32
    invoke-virtual {v11, v13}, Lcom/narvii/widget/ThumbImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    if-nez v13, :cond_a

    const/4 v12, 0x4

    goto :goto_9

    :cond_a
    move v12, v8

    .line 33
    :goto_9
    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 34
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/item/post/ItemPostActivity;->isEdit()Z

    move-result v3

    const v4, 0x7f0a0b2d

    const v6, 0x7f0a0b2e

    if-eqz v3, :cond_d

    .line 35
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 36
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_f

    .line 37
    :cond_d
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 38
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 39
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f0a0b2f

    .line 40
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 41
    iget-object v6, v1, Lcom/narvii/item/post/ItemPost;->itemCategoryList:Ljava/util/List;

    if-eqz v6, :cond_e

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_e

    const v6, 0x7f120440

    goto :goto_a

    :cond_e
    const v6, 0x7f120082

    :goto_a
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 42
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 44
    iget-object v6, v1, Lcom/narvii/item/post/ItemPost;->itemCategoryList:Ljava/util/List;

    if-nez v6, :cond_f

    move v6, v8

    goto :goto_b

    :cond_f
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 45
    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    move v11, v8

    :goto_c
    if-ge v11, v6, :cond_12

    .line 46
    iget-object v14, v1, Lcom/narvii/item/post/ItemPost;->itemCategoryList:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/narvii/model/ItemCategory;

    add-int/lit8 v15, v4, -0x1

    if-ge v11, v15, :cond_10

    .line 47
    invoke-virtual {v3, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    goto :goto_d

    :cond_10
    const/4 v15, 0x0

    :goto_d
    if-nez v15, :cond_11

    const v15, 0x7f0d0635

    .line 48
    invoke-virtual {v10, v15, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    const v12, 0x7f0a0b34

    .line 49
    invoke-virtual {v15, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    sub-int/2addr v12, v9

    invoke-virtual {v3, v15, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_11
    const v12, 0x7f0a0b33

    .line 51
    invoke-virtual {v15, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iget-object v13, v14, Lcom/narvii/model/ItemCategory;->label:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {v15, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    .line 53
    :cond_12
    :goto_e
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v9

    if-le v4, v6, :cond_13

    .line 54
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_e

    :cond_13
    :goto_f
    const v3, 0x7f0a0b4b

    .line 55
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 56
    check-cast v3, Lcom/narvii/widget/TagEditText;

    iget-object v4, v1, Lcom/narvii/item/post/ItemPost;->keywords:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/narvii/widget/TagEditText;->setKeywords(Ljava/lang/String;)V

    const v3, 0x7f0a0b4d

    .line 57
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 58
    check-cast v3, Lcom/narvii/item/property/ItemPropertyEditList;

    iget-object v4, v1, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v6, "props"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/narvii/item/property/ItemPropertyEditList;->set(Lcom/fasterxml/jackson/databind/JsonNode;)V

    const v3, 0x7f0a0b4c

    .line 59
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a039d

    .line 60
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 61
    iget-object v4, v1, Lcom/narvii/item/post/ItemPost;->content:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 62
    iget-object v4, v1, Lcom/narvii/item/post/ItemPost;->content:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_14
    iget-object v3, v0, Lcom/narvii/item/post/ItemPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 63
    invoke-virtual {v3}, Lcom/narvii/post/LocationPickerFragment;->isLocating()Z

    .line 64
    iget v3, v1, Lcom/narvii/item/post/ItemPost;->latitude:I

    if-nez v3, :cond_15

    iget v3, v1, Lcom/narvii/item/post/ItemPost;->longitude:I

    :cond_15
    const v3, 0x7f0a0b2b

    .line 65
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 66
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f0a0b5a

    .line 68
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 69
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f0a0b36

    .line 70
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 71
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f0a00a8

    .line 73
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/widget/AddressView;

    .line 74
    iget v4, v1, Lcom/narvii/item/post/ItemPost;->latitude:I

    iget v6, v1, Lcom/narvii/item/post/ItemPost;->longitude:I

    iget-object v10, v1, Lcom/narvii/item/post/ItemPost;->address:Ljava/lang/String;

    invoke-virtual {v3, v4, v6, v10, v8}, Lcom/narvii/widget/AddressView;->setLatLngE6(IILjava/lang/String;Z)V

    .line 75
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 76
    iget-object v3, v1, Lcom/narvii/item/post/ItemPost;->itemList:Ljava/util/List;

    if-nez v3, :cond_16

    move v3, v8

    goto :goto_10

    :cond_16
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_10
    const v4, 0x7f0a0b2a

    .line 77
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 78
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez v3, :cond_17

    move v6, v8

    goto :goto_11

    :cond_17
    move v6, v7

    .line 79
    :goto_11
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f0a0b35

    .line 80
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 81
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez v3, :cond_18

    goto :goto_12

    :cond_18
    move v7, v8

    .line 82
    :goto_12
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 83
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-array v6, v9, [Ljava/lang/Object;

    .line 84
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const v7, 0x7f120eea

    invoke-virtual {v0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    check-cast v4, Landroid/view/ViewGroup;

    move v5, v8

    move v6, v5

    .line 86
    :goto_13
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v5, v7, :cond_1c

    .line 87
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 88
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    const-string v10, "link"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 89
    check-cast v7, Lcom/narvii/widget/CardView;

    if-ge v6, v3, :cond_19

    .line 90
    iget-object v9, v1, Lcom/narvii/item/post/ItemPost;->itemList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/narvii/model/Item;

    goto :goto_14

    :cond_19
    const/4 v9, 0x0

    .line 91
    :goto_14
    invoke-virtual {v7, v9}, Lcom/narvii/widget/CardView;->setItem(Lcom/narvii/model/Item;)V

    if-nez v9, :cond_1a

    const/4 v9, 0x4

    goto :goto_15

    :cond_1a
    move v9, v8

    .line 92
    :goto_15
    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v6, v6, 0x1

    :cond_1b
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_1c
    const v1, 0x7f0a0b5f

    .line 93
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 94
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/narvii/item/post/ItemPost;

    invoke-virtual {p0, p1}, Lcom/narvii/item/post/ItemPostActivity;->updateView(Lcom/narvii/item/post/ItemPost;)V

    return-void
.end method

.method protected validateUpload(Lcom/narvii/item/post/ItemPost;)Z
    .locals 5

    iget-object v0, p0, Lcom/narvii/item/post/ItemPostActivity;->rootView:Landroid/view/View;

    const v1, 0x7f0a0b4a

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0799

    .line 3
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v2, 0x7f120eda

    invoke-virtual {p0, v1, v2}, Lcom/narvii/post/BasePostActivity;->validateEditTextNotEmpty(Landroid/widget/EditText;I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 4
    :cond_0
    iget-object v1, p1, Lcom/narvii/item/post/ItemPost;->icon:Ljava/lang/String;

    if-nez v1, :cond_1

    const p1, 0x7f120ed9

    .line 5
    invoke-virtual {p0, p1}, Lcom/narvii/post/BasePostActivity;->showAlert(I)V

    return v2

    .line 6
    :cond_1
    iget-object v1, p1, Lcom/narvii/item/post/ItemPost;->mediaList:Ljava/util/List;

    const/16 v3, 0x32

    const v4, 0x7f120ed4

    invoke-virtual {p0, v1, v3, v4}, Lcom/narvii/post/BasePostActivity;->validateMediaListMax(Ljava/util/List;II)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    const v1, 0x7f0a0b4d

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 8
    check-cast v0, Lcom/narvii/item/property/ItemPropertyEditList;

    invoke-virtual {v0}, Lcom/narvii/item/property/ItemPropertyEditList;->validate()Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, Lcom/narvii/item/post/ItemPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    .line 9
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object p1, p1, Lcom/narvii/item/post/ItemPost;->mediaList:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/narvii/util/text/IMGUtils;->filterRefIds(Landroid/text/Editable;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {p0}, Lcom/narvii/item/post/ItemPostActivity;->savePost()Lcom/narvii/item/post/ItemPost;

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method protected bridge synthetic validateUpload(Lcom/narvii/post/PostObject;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/item/post/ItemPost;

    invoke-virtual {p0, p1}, Lcom/narvii/item/post/ItemPostActivity;->validateUpload(Lcom/narvii/item/post/ItemPost;)Z

    move-result p1

    return p1
.end method
