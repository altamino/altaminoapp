.class public Lcom/narvii/blog/post/TopicPostActivity;
.super Lcom/narvii/post/BackgroundPostActivity;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/post/BackgroundPostActivity;-><init>()V

    .line 4
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/blog/post/TopicPostActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/blog/post/TopicPostActivity;)Lcom/narvii/post/DraftManager;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/blog/post/TopicPostActivity;)Lcom/narvii/post/PostObject;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 3
    return-object p0
.end method

.method private synthetic lambda$editPollDuration$0(Lcom/narvii/blog/post/BlogPost;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    .line 2
    add-int/lit8 p3, p3, 0x1

    .line 3
    .line 4
    iput p3, p1, Lcom/narvii/blog/post/BlogPost;->durationInDays:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/TopicPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 10
    return-void
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

.method public static synthetic y(Lcom/narvii/blog/post/TopicPostActivity;Lcom/narvii/blog/post/BlogPost;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/blog/post/TopicPostActivity;->lambda$editPollDuration$0(Lcom/narvii/blog/post/BlogPost;Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method protected allowSetCover()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blogId()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    const-string v1, "blogId"

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

.method public buildDraftParams()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 3

    .line 1
    .line 2
    const-string v0, "blogId"

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
    return-object v2
.end method

.method protected checkEligible()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    .line 7
    .line 8
    iget v0, v0, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 9
    const/4 v1, 0x3

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const-string v0, "question"

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    const-string v0, "normal"

    .line 17
    .line 18
    :goto_0
    const-string v1, "blog"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v1, v0}, Lcom/narvii/post/BasePostActivity;->checkEligible(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method protected doPost(Lcom/narvii/blog/post/BlogPost;)V
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->blogId()Ljava/lang/String;

    move-result-object v0

    .line 3
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

    .line 4
    new-instance v1, Lcom/narvii/feed/BackgroundPostHelper;

    invoke-direct {v1, p0}, Lcom/narvii/feed/BackgroundPostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 5
    invoke-virtual {v1, p0}, Lcom/narvii/post/PostHelper;->setPostListener(Lcom/narvii/post/PostListener;)V

    const-class v2, Lcom/narvii/model/api/BlogResponse;

    .line 6
    invoke-virtual {v1, p1, v0, v2}, Lcom/narvii/post/PostHelper;->startPost(Lcom/narvii/post/PostObject;Lcom/narvii/util/http/ApiRequest;Ljava/lang/Class;)V

    return-void
.end method

.method protected bridge synthetic doPost(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/TopicPostActivity;->doPost(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method protected doPreview(Lcom/narvii/blog/post/BlogPost;)V
    .locals 2

    const-string v0, "feed"

    .line 2
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

    .line 3
    invoke-static {v0}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/model/Feed;)Landroid/content/Intent;

    move-result-object v0

    .line 4
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->itemList:Ljava/util/List;

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "taggedObjects"

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
    invoke-static {p0, v0}, Lcom/narvii/blog/post/TopicPostActivity;->safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V

    return-void
.end method

.method protected bridge synthetic doPreview(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/TopicPostActivity;->doPreview(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method public draftType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "topic"

    return-object v0
.end method

.method public editPollDuration()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    new-instance v1, Lcom/narvii/blog/post/TopicPostActivity$1;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, p0, p0, v0}, Lcom/narvii/blog/post/TopicPostActivity$1;-><init>(Lcom/narvii/blog/post/TopicPostActivity;Lcom/narvii/app/NVContext;Lcom/narvii/blog/post/BlogPost;)V

    .line 13
    .line 14
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v3

    .line 19
    .line 20
    .line 21
    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    const v3, 0x7f120f00

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 28
    .line 29
    new-instance v3, Lcom/narvii/blog/post/d;

    .line 30
    .line 31
    .line 32
    invoke-direct {v3, p0, v0}, Lcom/narvii/blog/post/d;-><init>(Lcom/narvii/blog/post/TopicPostActivity;Lcom/narvii/blog/post/BlogPost;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 39
    return-void
.end method

.method protected getInfluencerLockLayout()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/narvii/blog/post/TopicPostActivity;->influencerPostContainer:Landroid/view/View;

    return-object v0
.end method

.method public isEdit()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->blogId()Ljava/lang/String;

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

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    const/4 v0, 0x2

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
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 29
    move-result-object v4

    .line 30
    .line 31
    iput-object v0, v4, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 32
    .line 33
    const-string v0, "coverMediaIndex"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 37
    move-result v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v0}, Lcom/narvii/blog/post/BlogPost;->setCoverMediaIndex(I)V

    .line 41
    .line 42
    iput-object v4, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v4}, Lcom/narvii/blog/post/TopicPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 46
    :cond_0
    const/4 v0, 0x5

    .line 47
    .line 48
    if-eq p1, v0, :cond_1

    .line 49
    const/4 v0, 0x6

    .line 50
    .line 51
    if-ne p1, v0, :cond_2

    .line 52
    .line 53
    :cond_1
    if-ne p2, v3, :cond_2

    .line 54
    .line 55
    if-eqz p3, :cond_2

    .line 56
    .line 57
    const-string v0, "itemList"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    const-class v4, Lcom/narvii/model/Item;

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v4}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 73
    move-result-object v4

    .line 74
    .line 75
    iput-object v0, v4, Lcom/narvii/blog/post/BlogPost;->itemList:Ljava/util/List;

    .line 76
    .line 77
    iput-object v4, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v4}, Lcom/narvii/blog/post/TopicPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 81
    :cond_2
    const/4 v0, 0x1

    .line 82
    .line 83
    if-ne p1, v0, :cond_3

    .line 84
    .line 85
    if-ne p2, v3, :cond_3

    .line 86
    .line 87
    if-eqz p3, :cond_3

    .line 88
    .line 89
    const-string v4, "blogCategoryList"

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    move-result-object v4

    .line 94
    .line 95
    const-class v5, Lcom/narvii/model/BlogCategory;

    .line 96
    .line 97
    .line 98
    invoke-static {v4, v5}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 99
    move-result-object v4

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 103
    move-result-object v5

    .line 104
    .line 105
    iput-object v4, v5, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    .line 106
    .line 107
    iput-object v5, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v5}, Lcom/narvii/blog/post/TopicPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 111
    .line 112
    iput-boolean v0, p0, Lcom/narvii/blog/post/TopicPostActivity;->stat_add_category_success:Z

    .line 113
    .line 114
    :cond_3
    const/16 v0, 0xc

    .line 115
    .line 116
    if-ne p1, v0, :cond_4

    .line 117
    .line 118
    if-ne p2, v3, :cond_4

    .line 119
    .line 120
    if-eqz p3, :cond_4

    .line 121
    .line 122
    const-string p1, "refIdList"

    .line 123
    .line 124
    .line 125
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    move-result-object p1

    .line 127
    .line 128
    .line 129
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    move-result-object p2

    .line 131
    .line 132
    .line 133
    invoke-static {p2, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 134
    move-result-object p2

    .line 135
    .line 136
    .line 137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 138
    move-result p3

    .line 139
    .line 140
    if-nez p3, :cond_4

    .line 141
    .line 142
    if-eqz p2, :cond_4

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 146
    move-result-object p3

    .line 147
    .line 148
    iput-object p2, p3, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 149
    .line 150
    iput-object p3, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, p3}, Lcom/narvii/blog/post/TopicPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 154
    .line 155
    iget-object p2, p0, Lcom/narvii/blog/post/TopicPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    .line 156
    .line 157
    .line 158
    invoke-static {p2, p1}, Lcom/narvii/util/text/IMGUtils;->insertEditText(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 159
    :cond_4
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x6

    .line 6
    .line 7
    const-string v1, "itemList"

    .line 8
    .line 9
    const/16 v2, 0x19

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    .line 13
    .line 14
    sparse-switch p1, :sswitch_data_0

    .line 15
    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    .line 19
    :sswitch_0
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->endTime:Ljava/util/Date;

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->editPollDuration()V

    .line 28
    .line 29
    goto/16 :goto_1

    .line 30
    .line 31
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    const v0, 0x7f120eb1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    const v0, 0x104000a

    .line 49
    .line 50
    sget-object v1, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 58
    .line 59
    goto/16 :goto_1

    .line 60
    .line 61
    .line 62
    :sswitch_1
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    const-class v0, Lcom/narvii/media/MediaOrganizeFragment;

    .line 66
    .line 67
    .line 68
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    iget-object v1, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 72
    .line 73
    .line 74
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    const-string v3, "mediaList"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    .line 82
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    .line 83
    .line 84
    iget-object v3, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v3}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    .line 88
    move-result-object v1

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 92
    move-result-object v1

    .line 93
    .line 94
    const-string v3, "dir"

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    .line 99
    const-string v1, "coverMediaIndex"

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/narvii/blog/post/BlogPost;->getCoverMediaIndex()I

    .line 103
    move-result p1

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    .line 108
    const-string p1, "maximum"

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    .line 113
    const-string p1, "allowSetCover"

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->allowSetCover()Z

    .line 117
    move-result v1

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 121
    const/4 p1, 0x2

    .line 122
    .line 123
    .line 124
    invoke-static {p0, v0, p1}, Lcom/narvii/blog/post/TopicPostActivity;->safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V

    .line 125
    .line 126
    goto/16 :goto_1

    .line 127
    .line 128
    .line 129
    :sswitch_2
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 130
    move-result-object p1

    .line 131
    .line 132
    const-class v2, Lcom/narvii/item/picker/ItemSortFragment;

    .line 133
    .line 134
    .line 135
    invoke-static {v2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 136
    move-result-object v2

    .line 137
    .line 138
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->itemList:Ljava/util/List;

    .line 139
    .line 140
    .line 141
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 142
    move-result-object p1

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    .line 147
    .line 148
    invoke-static {p0, v2, v0}, Lcom/narvii/blog/post/TopicPostActivity;->safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V

    .line 149
    .line 150
    goto/16 :goto_1

    .line 151
    .line 152
    .line 153
    :sswitch_3
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 154
    move-result-object p1

    .line 155
    .line 156
    const-class v1, Lcom/narvii/blog/category/BlogCategoryPickerFragment;

    .line 157
    .line 158
    .line 159
    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 160
    move-result-object v1

    .line 161
    .line 162
    iget-object v2, p1, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    .line 163
    .line 164
    .line 165
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 166
    move-result-object v2

    .line 167
    .line 168
    const-string v5, "blogCategoryList"

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    .line 173
    iget p1, p1, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 174
    .line 175
    if-ne p1, v0, :cond_1

    .line 176
    move v3, v4

    .line 177
    .line 178
    :cond_1
    const-string p1, "isQuiz"

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 182
    .line 183
    .line 184
    invoke-static {p0, v1, v4}, Lcom/narvii/blog/post/TopicPostActivity;->safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V

    .line 185
    .line 186
    iput-boolean v4, p0, Lcom/narvii/blog/post/TopicPostActivity;->stat_add_category:Z

    .line 187
    goto :goto_1

    .line 188
    .line 189
    .line 190
    :sswitch_4
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 191
    move-result-object p1

    .line 192
    .line 193
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 194
    .line 195
    if-eqz p1, :cond_2

    .line 196
    .line 197
    .line 198
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 199
    move-result p1

    .line 200
    .line 201
    if-lt p1, v2, :cond_2

    .line 202
    .line 203
    .line 204
    const p1, 0x7f120efb

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 208
    move-result-object p1

    .line 209
    .line 210
    .line 211
    invoke-static {p0, p1, v3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 212
    move-result-object p1

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 216
    goto :goto_0

    .line 217
    .line 218
    :cond_2
    iget-object p1, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 219
    .line 220
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    .line 221
    .line 222
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, v1}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    .line 226
    move-result-object v0

    .line 227
    const/4 v1, 0x0

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, v0, v1, v3, v3}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    .line 231
    .line 232
    :goto_0
    iput-boolean v4, p0, Lcom/narvii/blog/post/TopicPostActivity;->stat_add_photo:Z

    .line 233
    goto :goto_1

    .line 234
    .line 235
    .line 236
    :sswitch_5
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 237
    move-result-object p1

    .line 238
    .line 239
    iget-object v0, p0, Lcom/narvii/blog/post/TopicPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 240
    .line 241
    iget v1, p1, Lcom/narvii/blog/post/BlogPost;->latitude:I

    .line 242
    .line 243
    iget p1, p1, Lcom/narvii/blog/post/BlogPost;->longitude:I

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v1, p1, v4}, Lcom/narvii/post/LocationPickerFragment;->pickLocation(IIZ)V

    .line 247
    goto :goto_1

    .line 248
    .line 249
    .line 250
    :sswitch_6
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 251
    move-result-object p1

    .line 252
    .line 253
    const-class v0, Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 254
    .line 255
    .line 256
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 257
    move-result-object v0

    .line 258
    .line 259
    const-string v2, "mine"

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 263
    .line 264
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->itemList:Ljava/util/List;

    .line 265
    .line 266
    .line 267
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 268
    move-result-object p1

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const/4 p1, 0x5

    .line 273
    .line 274
    .line 275
    invoke-static {p0, v0, p1}, Lcom/narvii/blog/post/TopicPostActivity;->safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V

    .line 276
    .line 277
    iput-boolean v4, p0, Lcom/narvii/blog/post/TopicPostActivity;->stat_link_favorite:Z

    .line 278
    .line 279
    :goto_1
    iget-object p1, p0, Lcom/narvii/blog/post/TopicPostActivity;->rootView:Landroid/view/View;

    .line 280
    .line 281
    .line 282
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 283
    move-result-object p1

    .line 284
    .line 285
    if-eqz p1, :cond_3

    .line 286
    .line 287
    .line 288
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 289
    :cond_3
    return-void

    .line 290
    nop

    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    :sswitch_data_0
    .sparse-switch
        0x7f0a0b2a -> :sswitch_6
        0x7f0a0b2b -> :sswitch_5
        0x7f0a0b2c -> :sswitch_4
        0x7f0a0b31 -> :sswitch_3
        0x7f0a0b35 -> :sswitch_2
        0x7f0a0b36 -> :sswitch_5
        0x7f0a0b37 -> :sswitch_1
        0x7f0a0b3a -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/post/DraftPostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/app/theme/NVThemeActivity;->setShouldInflateAd(Z)V

    .line 8
    .line 9
    .line 10
    const p1, 0x7f0d0649

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    const-string v0, "locationPicker"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    check-cast p1, Lcom/narvii/post/LocationPickerFragment;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/narvii/blog/post/TopicPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    new-instance p1, Lcom/narvii/post/LocationPickerFragment;

    .line 35
    .line 36
    .line 37
    invoke-direct {p1}, Lcom/narvii/post/LocationPickerFragment;-><init>()V

    .line 38
    .line 39
    iput-object p1, p0, Lcom/narvii/blog/post/TopicPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    iget-object v1, p0, Lcom/narvii/blog/post/TopicPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 57
    .line 58
    :cond_0
    iget-object p1, p0, Lcom/narvii/blog/post/TopicPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 59
    .line 60
    iput-object p0, p1, Lcom/narvii/post/LocationPickerFragment;->listener:Lcom/narvii/post/LocationPickerFragment$LocationListener;

    .line 61
    .line 62
    .line 63
    const p1, 0x7f0a0c4c

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    iput-object p1, p0, Lcom/narvii/blog/post/TopicPostActivity;->rootView:Landroid/view/View;

    .line 70
    .line 71
    .line 72
    const p1, 0x7f0a039d

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    check-cast p1, Lcom/narvii/widget/EditTextIMG;

    .line 79
    .line 80
    iput-object p1, p0, Lcom/narvii/blog/post/TopicPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    .line 81
    .line 82
    .line 83
    const p1, 0x7f0a0b46

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    iput-object p1, p0, Lcom/narvii/blog/post/TopicPostActivity;->influencerPostContainer:Landroid/view/View;

    .line 90
    .line 91
    iget-object p1, p0, Lcom/narvii/blog/post/TopicPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    .line 92
    .line 93
    new-instance v0, Lcom/narvii/blog/post/TopicPostActivity$ImgCallback;

    .line 94
    .line 95
    .line 96
    invoke-direct {v0, p0}, Lcom/narvii/blog/post/TopicPostActivity$ImgCallback;-><init>(Lcom/narvii/blog/post/TopicPostActivity;)V

    .line 97
    .line 98
    iput-object v0, p1, Lcom/narvii/widget/EditTextIMG;->imgMode:Landroid/view/ActionMode$Callback;

    .line 99
    .line 100
    .line 101
    const p1, 0x7f0a0b3d

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 105
    move-result-object p1

    .line 106
    .line 107
    iget-object v0, p0, Lcom/narvii/blog/post/TopicPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    .line 108
    .line 109
    new-instance v1, Lcom/narvii/post/BasePostActivity$HideHintWatcher;

    .line 110
    .line 111
    .line 112
    invoke-direct {v1, p1}, Lcom/narvii/post/BasePostActivity$HideHintWatcher;-><init>(Landroid/view/View;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 116
    return-void
.end method

.method public onLocatingChanged(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/TopicPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 8
    return-void
.end method

.method public onLocationResult(Lcom/narvii/location/GPSCoordinate;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iput v2, v0, Lcom/narvii/blog/post/BlogPost;->latitude:I

    .line 11
    .line 12
    iput v2, v0, Lcom/narvii/blog/post/BlogPost;->longitude:I

    .line 13
    .line 14
    iput-object v1, v0, Lcom/narvii/blog/post/BlogPost;->address:Ljava/lang/String;

    .line 15
    const/4 p1, 0x1

    .line 16
    .line 17
    iput-boolean p1, p0, Lcom/narvii/blog/post/TopicPostActivity;->stat_remove_location:Z

    .line 18
    .line 19
    iput-boolean p1, p0, Lcom/narvii/blog/post/TopicPostActivity;->stat_remove_location_success:Z

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->latitudeE6()I

    .line 24
    move-result v3

    .line 25
    .line 26
    iput v3, v0, Lcom/narvii/blog/post/BlogPost;->latitude:I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->longitudeE6()I

    .line 30
    move-result p1

    .line 31
    .line 32
    iput p1, v0, Lcom/narvii/blog/post/BlogPost;->longitude:I

    .line 33
    .line 34
    iput-object v1, v0, Lcom/narvii/blog/post/BlogPost;->address:Ljava/lang/String;

    .line 35
    .line 36
    iput-boolean v2, p0, Lcom/narvii/blog/post/TopicPostActivity;->stat_remove_location:Z

    .line 37
    .line 38
    iput-boolean v2, p0, Lcom/narvii/blog/post/TopicPostActivity;->stat_remove_location_success:Z

    .line 39
    .line 40
    :goto_0
    iput-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/narvii/blog/post/TopicPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 44
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

    .line 1
    .line 2
    new-instance p2, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 8
    move-object v1, v0

    .line 9
    .line 10
    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 27
    move-object v0, p1

    .line 28
    .line 29
    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    .line 30
    .line 31
    iput-object p2, v0, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 32
    .line 33
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 36
    .line 37
    const/16 p2, 0x19

    .line 38
    .line 39
    .line 40
    const v0, 0x7f120efb

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/post/BasePostActivity;->trimMediaList(Ljava/util/List;II)V

    .line 44
    const/4 p1, 0x1

    .line 45
    .line 46
    iput-boolean p1, p0, Lcom/narvii/blog/post/TopicPostActivity;->stat_add_photo_success:Z

    .line 47
    return-void
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/post/DraftPostActivity;->onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V

    .line 4
    .line 5
    check-cast p2, Lcom/narvii/model/api/BlogResponse;

    .line 6
    .line 7
    iget-object p1, p2, Lcom/narvii/model/api/BlogResponse;->blog:Lcom/narvii/model/Blog;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->isEdit()Z

    .line 11
    move-result p2

    .line 12
    const/4 v0, 0x1

    .line 13
    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/model/Feed;)Landroid/content/Intent;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    const-string v1, "justCreated"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 24
    .line 25
    const-string v1, "Source"

    .line 26
    .line 27
    const-string v2, "View Created Post"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    invoke-static {p0, p2}, Lcom/narvii/blog/post/TopicPostActivity;->safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V

    .line 34
    .line 35
    :cond_0
    const-string/jumbo p2, "statistics"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    move-result-object p2

    .line 40
    .line 41
    check-cast p2, Lcom/narvii/util/statistics/StatisticsService;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->isEdit()Z

    .line 45
    move-result v1

    .line 46
    .line 47
    iget-object v2, p1, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 48
    .line 49
    const-string v3, "pollSettings"

    .line 50
    .line 51
    const-string v4, "polloptType"

    .line 52
    .line 53
    .line 54
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 55
    move-result-object v3

    .line 56
    .line 57
    .line 58
    invoke-static {v2, v3}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    .line 59
    move-result v2

    .line 60
    .line 61
    iget v3, p1, Lcom/narvii/model/Blog;->type:I

    .line 62
    const/4 v4, 0x3

    .line 63
    .line 64
    if-ne v3, v4, :cond_1

    .line 65
    .line 66
    const-string v2, "question"

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    const/4 v4, 0x4

    .line 69
    .line 70
    if-ne v3, v4, :cond_3

    .line 71
    .line 72
    if-ne v2, v0, :cond_2

    .line 73
    .line 74
    const-string v2, "poll_wiki"

    .line 75
    goto :goto_0

    .line 76
    .line 77
    :cond_2
    const-string v2, "poll_plain"

    .line 78
    goto :goto_0

    .line 79
    :cond_3
    const/4 v2, 0x6

    .line 80
    .line 81
    if-ne v3, v2, :cond_4

    .line 82
    .line 83
    const-string v2, "quiz"

    .line 84
    goto :goto_0

    .line 85
    .line 86
    :cond_4
    const-string v2, ""

    .line 87
    .line 88
    :goto_0
    if-eqz v1, :cond_5

    .line 89
    .line 90
    const-string v3, "User Edits a Post"

    .line 91
    goto :goto_1

    .line 92
    .line 93
    :cond_5
    const-string v3, "Create Post"

    .line 94
    .line 95
    .line 96
    :goto_1
    invoke-interface {p2, v3}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 97
    move-result-object p2

    .line 98
    .line 99
    if-eqz v1, :cond_6

    .line 100
    .line 101
    const-string v3, "Total Edited Posts"

    .line 102
    goto :goto_2

    .line 103
    .line 104
    :cond_6
    const-string v3, "Total New Posts"

    .line 105
    .line 106
    .line 107
    :goto_2
    invoke-virtual {p2, v3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 108
    move-result-object v3

    .line 109
    .line 110
    const-string v4, "post_type"

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 114
    move-result-object v5

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3, v4, v5}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 118
    move-result-object v3

    .line 119
    .line 120
    iget-boolean v4, p0, Lcom/narvii/blog/post/TopicPostActivity;->stat_add_photo:Z

    .line 121
    const/4 v5, 0x0

    .line 122
    .line 123
    if-eqz v4, :cond_7

    .line 124
    .line 125
    const-string v6, "Add photo"

    .line 126
    goto :goto_3

    .line 127
    :cond_7
    move-object v6, v5

    .line 128
    .line 129
    .line 130
    :goto_3
    invoke-virtual {v3, v6, v4}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 131
    move-result-object v3

    .line 132
    .line 133
    iget-boolean v4, p0, Lcom/narvii/blog/post/TopicPostActivity;->stat_link_favorite:Z

    .line 134
    .line 135
    if-eqz v4, :cond_8

    .line 136
    .line 137
    const-string v4, "Link Related favorites"

    .line 138
    goto :goto_4

    .line 139
    :cond_8
    move-object v4, v5

    .line 140
    .line 141
    :goto_4
    iget-boolean v6, p0, Lcom/narvii/blog/post/TopicPostActivity;->stat_link_favorite_success:Z

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3, v4, v6}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 145
    move-result-object v3

    .line 146
    .line 147
    iget-boolean v4, p0, Lcom/narvii/blog/post/TopicPostActivity;->stat_remove_location:Z

    .line 148
    .line 149
    if-eqz v4, :cond_9

    .line 150
    .line 151
    const-string v4, "Remove location"

    .line 152
    goto :goto_5

    .line 153
    :cond_9
    move-object v4, v5

    .line 154
    .line 155
    :goto_5
    iget-boolean v6, p0, Lcom/narvii/blog/post/TopicPostActivity;->stat_remove_location_success:Z

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3, v4, v6}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 159
    move-result-object v3

    .line 160
    .line 161
    iget-boolean v4, p0, Lcom/narvii/blog/post/TopicPostActivity;->stat_add_category:Z

    .line 162
    .line 163
    if-eqz v4, :cond_a

    .line 164
    .line 165
    const-string v5, "Add Category"

    .line 166
    .line 167
    :cond_a
    iget-boolean v4, p0, Lcom/narvii/blog/post/TopicPostActivity;->stat_add_category_success:Z

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3, v5, v4}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 171
    move-result-object v3

    .line 172
    .line 173
    iget-object v4, p1, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    .line 174
    .line 175
    .line 176
    invoke-static {v4}, Lcom/narvii/model/Media;->hasVideo(Ljava/util/Collection;)Z

    .line 177
    move-result v4

    .line 178
    .line 179
    const-string v5, "Has Video"

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3, v5, v4}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 183
    move-result-object v3

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    .line 187
    move-result v4

    .line 188
    const/4 v5, 0x0

    .line 189
    .line 190
    if-eqz v4, :cond_b

    .line 191
    move v4, v0

    .line 192
    goto :goto_6

    .line 193
    :cond_b
    move v4, v5

    .line 194
    .line 195
    :goto_6
    const-string v6, "Background Color"

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3, v6, v4}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 199
    move-result-object v3

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getBackgroundMedia()Lcom/narvii/model/Media;

    .line 203
    move-result-object p1

    .line 204
    .line 205
    if-eqz p1, :cond_c

    .line 206
    goto :goto_7

    .line 207
    :cond_c
    move v0, v5

    .line 208
    .line 209
    :goto_7
    const-string p1, "Background Image"

    .line 210
    .line 211
    .line 212
    invoke-virtual {v3, p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 213
    .line 214
    if-nez v1, :cond_d

    .line 215
    .line 216
    const-string/jumbo p1, "source"

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 220
    move-result-object p1

    .line 221
    .line 222
    .line 223
    invoke-virtual {p2, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 224
    .line 225
    new-instance p1, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .line 230
    const-string v0, "User Submits a New "

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    const-string v0, " Total"

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    move-result-object p1

    .line 246
    .line 247
    .line 248
    invoke-virtual {p2, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 249
    .line 250
    .line 251
    invoke-static {p0, p2}, Lcom/narvii/util/statistics/FirebaseLogManager;->logEvent(Lcom/narvii/app/NVContext;Lcom/narvii/util/statistics/StatisticsEventBuilder;)V

    .line 252
    :cond_d
    return-void
.end method

.method protected onPostLoaded(Lcom/narvii/blog/post/BlogPost;)V
    .locals 1

    .line 2
    invoke-super {p0, p1}, Lcom/narvii/post/DraftPostActivity;->onPostLoaded(Lcom/narvii/post/PostObject;)V

    .line 3
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->isEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f120438

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget p1, p1, Lcom/narvii/blog/post/BlogPost;->type:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0x7f120f06

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    :cond_2
    const p1, 0x7f120f0c

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostLoaded(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 1
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

    const-class v0, Lcom/narvii/blog/post/BlogPost;

    return-object v0
.end method

.method protected savePost()Lcom/narvii/blog/post/BlogPost;
    .locals 4

    iget-object v0, p0, Lcom/narvii/blog/post/TopicPostActivity;->rootView:Landroid/view/View;

    const v1, 0x7f0a0e9e

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 3
    check-cast v2, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/narvii/blog/post/BlogPost;->title:Ljava/lang/String;

    const v1, 0x7f0a039d

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 5
    check-cast v2, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/narvii/blog/post/BlogPost;->content:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 6
    move-object v2, v1

    check-cast v2, Lcom/narvii/blog/post/BlogPost;

    iget v2, v2, Lcom/narvii/blog/post/BlogPost;->type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 7
    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    iget-object v1, v1, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v2, "polloptType"

    const-string v3, "pollSettings"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const v1, 0x7f0a0b39

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 9
    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 10
    move-object v2, v1

    check-cast v2, Lcom/narvii/blog/post/BlogPost;

    iget-object v2, v2, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v2, :cond_0

    .line 11
    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    iput-object v2, v1, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :cond_0
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 12
    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    iget-object v1, v1, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    if-nez v1, :cond_1

    .line 13
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 14
    check-cast v2, Lcom/narvii/blog/post/BlogPost;

    iget-object v2, v2, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {v2, v3, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 15
    :cond_1
    check-cast v1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v2, "joinEnabled"

    invoke-virtual {v1, v2, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :cond_2
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 16
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

    .line 17
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/location/LocationService;

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 18
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

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 19
    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    invoke-interface {v0}, Lcom/narvii/location/ReadableAddress;->getCityLevelAddressText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/narvii/blog/post/BlogPost;->address:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 20
    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    return-object v0
.end method

.method protected bridge synthetic savePost()Lcom/narvii/post/PostObject;
    .locals 1

    .line 1
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
    .locals 13

    .line 3
    invoke-super {p0, p1}, Lcom/narvii/post/BackgroundPostActivity;->updateView(Lcom/narvii/feed/BackgroundPost;)V

    iget-object v0, p0, Lcom/narvii/blog/post/TopicPostActivity;->rootView:Landroid/view/View;

    const v1, 0x7f0a0e9e

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 5
    iget v2, p1, Lcom/narvii/blog/post/BlogPost;->type:I

    const/4 v3, 0x3

    const/4 v4, 0x4

    if-eq v2, v3, :cond_1

    if-eq v2, v4, :cond_0

    goto :goto_0

    :cond_0
    const v2, 0x7f120f07

    .line 6
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    goto :goto_0

    :cond_1
    const v2, 0x7f120f0a

    .line 7
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 8
    :goto_0
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p1, Lcom/narvii/blog/post/BlogPost;->title:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 9
    iget-object v2, p1, Lcom/narvii/blog/post/BlogPost;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const v1, 0x7f0a039d

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 11
    iget v2, p1, Lcom/narvii/blog/post/BlogPost;->type:I

    if-eq v2, v3, :cond_4

    if-eq v2, v4, :cond_3

    goto :goto_1

    :cond_3
    const v2, 0x7f120eff

    .line 12
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    goto :goto_1

    :cond_4
    const v2, 0x7f120f09

    .line 13
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 14
    :goto_1
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/narvii/blog/post/BlogPost;->content:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 15
    iget-object v2, p1, Lcom/narvii/blog/post/BlogPost;->content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :cond_5
    iget-object v1, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_2

    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_2
    const v3, 0x7f0a0b2c

    .line 17
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 18
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v5, 0x8

    if-nez v1, :cond_7

    move v6, v2

    goto :goto_3

    :cond_7
    move v6, v5

    .line 19
    :goto_3
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f0a0b37

    .line 20
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 21
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-lez v1, :cond_8

    move v6, v2

    goto :goto_4

    :cond_8
    move v6, v5

    .line 22
    :goto_4
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    const v6, 0x7f0a066e

    .line 23
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    const v9, 0x7f120ef0

    invoke-virtual {p0, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    check-cast v3, Landroid/view/ViewGroup;

    move v6, v2

    move v8, v6

    .line 26
    :goto_5
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    const/4 v10, 0x0

    if-ge v6, v9, :cond_c

    .line 27
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 28
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_b

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    const v12, 0x7f12082d

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 29
    check-cast v9, Lcom/narvii/widget/ThumbImageView;

    if-ge v8, v1, :cond_9

    .line 30
    iget-object v10, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/narvii/model/Media;

    .line 31
    :cond_9
    invoke-virtual {v9, v10}, Lcom/narvii/widget/ThumbImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    if-nez v10, :cond_a

    move v10, v4

    goto :goto_6

    :cond_a
    move v10, v2

    .line 32
    :goto_6
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v8, v8, 0x1

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_c
    const v1, 0x7f0a0b62

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 34
    iget v3, p1, Lcom/narvii/blog/post/BlogPost;->type:I

    if-ne v3, v4, :cond_e

    iget-object v3, p1, Lcom/narvii/blog/post/BlogPost;->endTime:Ljava/util/Date;

    if-nez v3, :cond_d

    goto :goto_7

    :cond_d
    move v3, v2

    goto :goto_8

    :cond_e
    :goto_7
    move v3, v5

    :goto_8
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 35
    check-cast v1, Lcom/narvii/poll/PollDurationView;

    iget-object v3, p1, Lcom/narvii/blog/post/BlogPost;->endTime:Ljava/util/Date;

    invoke-virtual {v1, v3}, Lcom/narvii/poll/PollDurationView;->setEndTime(Ljava/util/Date;)V

    const v1, 0x7f0a0b3a

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 37
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget v3, p1, Lcom/narvii/blog/post/BlogPost;->type:I

    if-ne v3, v4, :cond_13

    .line 39
    iget-object v3, p1, Lcom/narvii/blog/post/BlogPost;->endTime:Ljava/util/Date;

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    cmp-long v3, v8, v11

    if-lez v3, :cond_f

    goto :goto_9

    :cond_f
    move v3, v5

    goto :goto_a

    :cond_10
    :goto_9
    move v3, v2

    :goto_a
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f0a0b3c

    .line 40
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v6, 0x7f0a0b3b

    .line 41
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 42
    iget-object v6, p1, Lcom/narvii/blog/post/BlogPost;->endTime:Ljava/util/Date;

    if-eqz v6, :cond_11

    .line 43
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    const v6, 0x7f120eb0

    .line 44
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 45
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    .line 46
    :cond_11
    iget v6, p1, Lcom/narvii/blog/post/BlogPost;->durationInDays:I

    if-nez v6, :cond_12

    .line 47
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    const v6, 0x7f120ef5

    .line 48
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 49
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    .line 50
    :cond_12
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 51
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-array v3, v7, [Ljava/lang/Object;

    .line 52
    iget v6, p1, Lcom/narvii/blog/post/BlogPost;->durationInDays:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    const v6, 0x7f120f01

    invoke-virtual {p0, v6, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 53
    :cond_13
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 54
    :goto_b
    iget-object v1, p1, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v3, "polloptType"

    const-string v6, "pollSettings"

    filled-new-array {v6, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v1

    .line 55
    iget-object v3, p1, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v8, "joinEnabled"

    filled-new-array {v6, v8}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    move-result v3

    const v6, 0x7f0a0b38

    .line 56
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 57
    iget v8, p1, Lcom/narvii/blog/post/BlogPost;->type:I

    if-ne v8, v4, :cond_15

    if-ne v1, v7, :cond_15

    iget-object v1, p1, Lcom/narvii/blog/post/BlogPost;->endTime:Ljava/util/Date;

    if-eqz v1, :cond_14

    .line 58
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    cmp-long v1, v8, v11

    if-lez v1, :cond_15

    :cond_14
    move v1, v2

    goto :goto_c

    :cond_15
    move v1, v5

    .line 59
    :goto_c
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a0b39

    .line 60
    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 61
    check-cast v1, Landroid/widget/CompoundButton;

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const v1, 0x7f0a0b31

    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    iget-object v3, p1, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    if-eqz v3, :cond_16

    .line 65
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/model/BlogCategory;

    .line 66
    iget-object v6, v6, Lcom/narvii/model/BlogCategory;->label:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_16
    const v3, 0x7f0a0b2d

    .line 67
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/widget/KeywordsView;

    invoke-virtual {v3, v1}, Lcom/narvii/widget/KeywordsView;->setKeywords(Ljava/util/List;)V

    const v3, 0x7f0a0b30

    .line 68
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 69
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_17

    const v1, 0x7f1211d9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_17
    const v1, 0x7f1211da

    .line 70
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 71
    :goto_e
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget v1, p1, Lcom/narvii/blog/post/BlogPost;->latitude:I

    if-nez v1, :cond_18

    iget v1, p1, Lcom/narvii/blog/post/BlogPost;->longitude:I

    :cond_18
    iget-object v1, p0, Lcom/narvii/blog/post/TopicPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 73
    invoke-virtual {v1}, Lcom/narvii/post/LocationPickerFragment;->isLocating()Z

    const v1, 0x7f0a0b2b

    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 75
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a0b5a

    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 78
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a0b36

    .line 79
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 80
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f0a00a8

    .line 82
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/AddressView;

    .line 83
    iget v3, p1, Lcom/narvii/blog/post/BlogPost;->latitude:I

    iget v6, p1, Lcom/narvii/blog/post/BlogPost;->longitude:I

    iget-object v8, p1, Lcom/narvii/blog/post/BlogPost;->address:Ljava/lang/String;

    invoke-virtual {v1, v3, v6, v8, v2}, Lcom/narvii/widget/AddressView;->setLatLngE6(IILjava/lang/String;Z)V

    .line 84
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object v1, p1, Lcom/narvii/blog/post/BlogPost;->itemList:Ljava/util/List;

    if-nez v1, :cond_19

    move v1, v2

    goto :goto_f

    :cond_19
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_f
    const v3, 0x7f0a0b2a

    .line 86
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 87
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget v6, p1, Lcom/narvii/blog/post/BlogPost;->type:I

    if-eq v6, v4, :cond_1b

    if-lez v1, :cond_1a

    goto :goto_10

    :cond_1a
    move v6, v2

    goto :goto_11

    :cond_1b
    :goto_10
    move v6, v5

    :goto_11
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f0a0b35

    .line 89
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 90
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget v3, p1, Lcom/narvii/blog/post/BlogPost;->type:I

    if-eq v3, v4, :cond_1d

    if-nez v1, :cond_1c

    goto :goto_12

    :cond_1c
    move v5, v2

    :cond_1d
    :goto_12
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f0a066f

    .line 92
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-array v5, v7, [Ljava/lang/Object;

    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const v6, 0x7f120eea

    invoke-virtual {p0, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    check-cast v0, Landroid/view/ViewGroup;

    move v3, v2

    move v5, v3

    .line 95
    :goto_13
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_21

    .line 96
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 97
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    const-string v8, "link"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 98
    check-cast v6, Lcom/narvii/widget/CardView;

    if-ge v5, v1, :cond_1e

    .line 99
    iget-object v7, p1, Lcom/narvii/blog/post/BlogPost;->itemList:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/narvii/model/Item;

    goto :goto_14

    :cond_1e
    move-object v7, v10

    .line 100
    :goto_14
    invoke-virtual {v6, v7}, Lcom/narvii/widget/CardView;->setItem(Lcom/narvii/model/Item;)V

    if-nez v7, :cond_1f

    move v7, v4

    goto :goto_15

    :cond_1f
    move v7, v2

    .line 101
    :goto_15
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v5, v5, 0x1

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_21
    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/feed/BackgroundPost;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/TopicPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/TopicPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method protected validateUpload(Lcom/narvii/blog/post/BlogPost;)Z
    .locals 3

    iget-object v0, p0, Lcom/narvii/blog/post/TopicPostActivity;->rootView:Landroid/view/View;

    const v1, 0x7f0a0e9e

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f120eda

    invoke-virtual {p0, v0, v1}, Lcom/narvii/post/BasePostActivity;->validateEditTextNotEmpty(Landroid/widget/EditText;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/narvii/blog/post/TopicPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v2, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/narvii/util/text/IMGUtils;->filterRefIds(Landroid/text/Editable;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/narvii/blog/post/TopicPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 5
    :cond_1
    iget v0, p1, Lcom/narvii/blog/post/BlogPost;->type:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/narvii/blog/post/TopicPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    const v2, 0x7f120ed5

    invoke-virtual {p0, v0, v2}, Lcom/narvii/post/BasePostActivity;->validateEditTextNotEmpty(Landroid/widget/EditText;I)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 6
    :cond_2
    iget v0, p1, Lcom/narvii/blog/post/BlogPost;->type:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    iget-object v0, p1, Lcom/narvii/blog/post/BlogPost;->endTime:Ljava/util/Date;

    if-nez v0, :cond_3

    iget v0, p1, Lcom/narvii/blog/post/BlogPost;->durationInDays:I

    if-gtz v0, :cond_3

    const p1, 0x7f120ed8

    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/post/BasePostActivity;->showAlert(I)V

    return v1

    .line 8
    :cond_3
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    const/16 v0, 0x19

    const v2, 0x7f120ed4

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

    .line 1
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/TopicPostActivity;->validateUpload(Lcom/narvii/blog/post/BlogPost;)Z

    move-result p1

    return p1
.end method
