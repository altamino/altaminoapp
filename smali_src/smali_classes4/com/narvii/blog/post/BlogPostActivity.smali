.class public Lcom/narvii/blog/post/BlogPostActivity;
.super Lcom/narvii/post/BackgroundPostActivity;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/post/BackgroundPostActivity;-><init>()V

    .line 4
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/blog/post/BlogPostActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/blog/post/BlogPostActivity;)Lcom/narvii/post/DraftManager;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/blog/post/BlogPostActivity;)Lcom/narvii/post/PostObject;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

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
    const-string v0, "blog"

    .line 3
    .line 4
    const-string v1, "normal"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/narvii/post/BasePostActivity;->checkEligible(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method protected doPost(Lcom/narvii/blog/post/BlogPost;)V
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->blogId()Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/BlogPostActivity;->doPost(Lcom/narvii/blog/post/BlogPost;)V

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

    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->blogId()Ljava/lang/String;

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
    invoke-static {p0, v0}, Lcom/narvii/blog/post/BlogPostActivity;->safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V

    return-void
.end method

.method protected bridge synthetic doPreview(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 1
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

    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity;->fansOnlyContainer:Landroid/view/View;

    return-object v0
.end method

.method public isEdit()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->blogId()Ljava/lang/String;

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

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0d062a

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    const/4 v0, -0x1

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    if-ne p2, v0, :cond_0

    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    const-string v2, "blogCategoryList"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    const-class v3, Lcom/narvii/model/BlogCategory;

    .line 20
    .line 21
    .line 22
    invoke-static {v2, v3}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    iput-object v2, v3, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    .line 30
    .line 31
    iput-object v3, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v3}, Lcom/narvii/blog/post/BlogPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 35
    .line 36
    iput-boolean v1, p0, Lcom/narvii/blog/post/BlogPostActivity;->stat_add_category_success:Z

    .line 37
    :cond_0
    const/4 v2, 0x2

    .line 38
    .line 39
    const-class v3, Lcom/narvii/model/Media;

    .line 40
    .line 41
    const-string v4, "mediaList"

    .line 42
    .line 43
    if-ne p1, v2, :cond_1

    .line 44
    .line 45
    if-ne p2, v0, :cond_1

    .line 46
    .line 47
    if-eqz p3, :cond_1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    .line 54
    invoke-static {v2, v3}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 61
    move-result-object v5

    .line 62
    .line 63
    iput-object v2, v5, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 64
    .line 65
    const-string v2, "coverMediaIndex"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 69
    move-result v2

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5, v2}, Lcom/narvii/blog/post/BlogPost;->setCoverMediaIndex(I)V

    .line 73
    .line 74
    iput-object v5, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v5}, Lcom/narvii/blog/post/BlogPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 78
    :cond_1
    const/4 v2, 0x5

    .line 79
    .line 80
    if-eq p1, v2, :cond_2

    .line 81
    const/4 v2, 0x6

    .line 82
    .line 83
    if-ne p1, v2, :cond_4

    .line 84
    .line 85
    :cond_2
    if-ne p2, v0, :cond_4

    .line 86
    .line 87
    if-eqz p3, :cond_4

    .line 88
    .line 89
    const-string v2, "itemList"

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    move-result-object v2

    .line 94
    .line 95
    const-class v5, Lcom/narvii/model/Item;

    .line 96
    .line 97
    .line 98
    invoke-static {v2, v5}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 99
    move-result-object v2

    .line 100
    .line 101
    if-eqz v2, :cond_3

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 105
    move-result-object v5

    .line 106
    .line 107
    iput-object v2, v5, Lcom/narvii/blog/post/BlogPost;->itemList:Ljava/util/List;

    .line 108
    .line 109
    iput-object v5, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v5}, Lcom/narvii/blog/post/BlogPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 113
    .line 114
    :cond_3
    iput-boolean v1, p0, Lcom/narvii/blog/post/BlogPostActivity;->stat_link_favorite_success:Z

    .line 115
    .line 116
    :cond_4
    const/16 v1, 0x8

    .line 117
    .line 118
    if-ne p1, v1, :cond_5

    .line 119
    .line 120
    if-ne p2, v0, :cond_5

    .line 121
    .line 122
    if-eqz p3, :cond_5

    .line 123
    .line 124
    const-string p1, "refIdList"

    .line 125
    .line 126
    .line 127
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    move-result-object p1

    .line 129
    .line 130
    .line 131
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    move-result-object p2

    .line 133
    .line 134
    .line 135
    invoke-static {p2, v3}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 136
    move-result-object p2

    .line 137
    .line 138
    .line 139
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 140
    move-result p3

    .line 141
    .line 142
    if-nez p3, :cond_5

    .line 143
    .line 144
    if-eqz p2, :cond_5

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 148
    move-result-object p3

    .line 149
    .line 150
    iput-object p2, p3, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 151
    .line 152
    iput-object p3, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, p3}, Lcom/narvii/blog/post/BlogPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 156
    .line 157
    iget-object p2, p0, Lcom/narvii/blog/post/BlogPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    .line 158
    .line 159
    .line 160
    invoke-static {p2, p1}, Lcom/narvii/util/text/IMGUtils;->insertEditText(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 161
    :cond_5
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    const-string v0, "itemList"

    .line 7
    .line 8
    const-string v1, "maximum"

    .line 9
    const/4 v2, 0x6

    .line 10
    .line 11
    const/16 v3, 0x19

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x1

    .line 14
    .line 15
    .line 16
    sparse-switch p1, :sswitch_data_0

    .line 17
    .line 18
    goto/16 :goto_3

    .line 19
    .line 20
    :sswitch_0
    iput-boolean v5, p0, Lcom/narvii/blog/post/BlogPostActivity;->stat_add_category:Z

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    const-class v0, Lcom/narvii/blog/category/BlogCategoryPickerFragment;

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    iget-object v3, p1, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    .line 33
    .line 34
    .line 35
    invoke-static {v3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    const-string v6, "blogCategoryList"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    .line 43
    iget v3, p1, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 44
    .line 45
    if-ne v3, v2, :cond_0

    .line 46
    move v2, v5

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move v2, v4

    .line 49
    .line 50
    :goto_0
    const-string v3, "isQuiz"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 54
    .line 55
    iget-object v2, p1, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    .line 56
    .line 57
    if-eqz v2, :cond_3

    .line 58
    move v2, v4

    .line 59
    .line 60
    :goto_1
    iget-object v3, p1, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    .line 61
    .line 62
    .line 63
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 64
    move-result v3

    .line 65
    .line 66
    if-ge v4, v3, :cond_2

    .line 67
    .line 68
    iget-object v3, p1, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    .line 69
    .line 70
    .line 71
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object v3

    .line 73
    .line 74
    check-cast v3, Lcom/narvii/model/BlogCategory;

    .line 75
    .line 76
    iget v3, v3, Lcom/narvii/model/BlogCategory;->status:I

    .line 77
    .line 78
    const/16 v6, 0x9

    .line 79
    .line 80
    if-eq v3, v6, :cond_1

    .line 81
    .line 82
    add-int/lit8 v2, v2, 0x1

    .line 83
    .line 84
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    move v4, v2

    .line 87
    .line 88
    .line 89
    :cond_3
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    invoke-static {p0, v0, v5}, Lcom/narvii/blog/post/BlogPostActivity;->safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V

    .line 93
    .line 94
    goto/16 :goto_3

    .line 95
    .line 96
    :sswitch_1
    iput-boolean v5, p0, Lcom/narvii/blog/post/BlogPostActivity;->stat_add_photo:Z

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 103
    .line 104
    if-eqz p1, :cond_4

    .line 105
    .line 106
    .line 107
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 108
    move-result v0

    .line 109
    .line 110
    if-lt v0, v3, :cond_4

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 114
    move-result-object p1

    .line 115
    .line 116
    .line 117
    const v0, 0x7f120efb

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 121
    move-result-object v0

    .line 122
    .line 123
    .line 124
    invoke-static {p1, v0, v4}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 125
    move-result-object p1

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 129
    .line 130
    goto/16 :goto_3

    .line 131
    .line 132
    :cond_4
    iget-object v0, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 133
    .line 134
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    .line 135
    .line 136
    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v2}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    .line 140
    move-result-object v1

    .line 141
    .line 142
    if-nez p1, :cond_5

    .line 143
    move p1, v4

    .line 144
    goto :goto_2

    .line 145
    .line 146
    .line 147
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 148
    move-result p1

    .line 149
    :goto_2
    sub-int/2addr v3, p1

    .line 150
    const/4 p1, 0x0

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v1, p1, v4, v3}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    .line 154
    .line 155
    goto/16 :goto_3

    .line 156
    .line 157
    :sswitch_2
    iput-boolean v5, p0, Lcom/narvii/blog/post/BlogPostActivity;->stat_link_favorite:Z

    .line 158
    .line 159
    const-class p1, Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 160
    .line 161
    .line 162
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 163
    move-result-object p1

    .line 164
    .line 165
    const-string v1, "mine"

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 172
    move-result-object v1

    .line 173
    .line 174
    iget-object v1, v1, Lcom/narvii/blog/post/BlogPost;->itemList:Ljava/util/List;

    .line 175
    .line 176
    .line 177
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 178
    move-result-object v1

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const/4 v0, 0x5

    .line 183
    .line 184
    .line 185
    invoke-static {p0, p1, v0}, Lcom/narvii/blog/post/BlogPostActivity;->safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V

    .line 186
    goto :goto_3

    .line 187
    .line 188
    .line 189
    :sswitch_3
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 190
    .line 191
    const-class p1, Lcom/narvii/media/MediaOrganizeFragment;

    .line 192
    .line 193
    .line 194
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 195
    move-result-object p1

    .line 196
    .line 197
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 198
    .line 199
    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    .line 200
    .line 201
    iget-object v0, v0, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 202
    .line 203
    .line 204
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 205
    move-result-object v0

    .line 206
    .line 207
    const-string v2, "mediaList"

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    .line 212
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 213
    .line 214
    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0}, Lcom/narvii/blog/post/BlogPost;->getCoverMediaIndex()I

    .line 218
    move-result v0

    .line 219
    .line 220
    const-string v2, "coverMediaIndex"

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    .line 225
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    .line 226
    .line 227
    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v2}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    .line 231
    move-result-object v0

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 235
    move-result-object v0

    .line 236
    .line 237
    const-string v2, "dir"

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 244
    .line 245
    const-string v0, "allowSetCover"

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 249
    const/4 v0, 0x2

    .line 250
    .line 251
    .line 252
    invoke-static {p0, p1, v0}, Lcom/narvii/blog/post/BlogPostActivity;->safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V

    .line 253
    goto :goto_3

    .line 254
    .line 255
    :sswitch_4
    const-class p1, Lcom/narvii/item/picker/ItemSortFragment;

    .line 256
    .line 257
    .line 258
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 259
    move-result-object p1

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 263
    move-result-object v1

    .line 264
    .line 265
    iget-object v1, v1, Lcom/narvii/blog/post/BlogPost;->itemList:Ljava/util/List;

    .line 266
    .line 267
    .line 268
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 269
    move-result-object v1

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    .line 274
    .line 275
    invoke-static {p0, p1, v2}, Lcom/narvii/blog/post/BlogPostActivity;->safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V

    .line 276
    goto :goto_3

    .line 277
    .line 278
    .line 279
    :sswitch_5
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 280
    move-result-object p1

    .line 281
    .line 282
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 283
    .line 284
    iget v1, p1, Lcom/narvii/blog/post/BlogPost;->latitude:I

    .line 285
    .line 286
    iget p1, p1, Lcom/narvii/blog/post/BlogPost;->longitude:I

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0, v1, p1, v5}, Lcom/narvii/post/LocationPickerFragment;->pickLocation(IIZ)V

    .line 290
    :goto_3
    return-void

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
        0x7f0a00a8 -> :sswitch_5
        0x7f0a075b -> :sswitch_4
        0x7f0a093b -> :sswitch_3
        0x7f0a0ae7 -> :sswitch_2
        0x7f0a0ae9 -> :sswitch_5
        0x7f0a0aea -> :sswitch_1
        0x7f0a0b2d -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

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
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->layoutId()I

    .line 11
    move-result p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    const-string v0, "locationPicker"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    check-cast p1, Lcom/narvii/post/LocationPickerFragment;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 32
    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    new-instance p1, Lcom/narvii/post/LocationPickerFragment;

    .line 36
    .line 37
    .line 38
    invoke-direct {p1}, Lcom/narvii/post/LocationPickerFragment;-><init>()V

    .line 39
    .line 40
    iput-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    iget-object v1, p0, Lcom/narvii/blog/post/BlogPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 58
    .line 59
    :cond_0
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 60
    .line 61
    iput-object p0, p1, Lcom/narvii/post/LocationPickerFragment;->listener:Lcom/narvii/post/LocationPickerFragment$LocationListener;

    .line 62
    .line 63
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 64
    .line 65
    .line 66
    invoke-direct {p1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 67
    .line 68
    iput-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 69
    .line 70
    .line 71
    const p1, 0x7f0a0e9e

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    check-cast p1, Landroid/widget/EditText;

    .line 78
    .line 79
    iput-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->editTitle:Landroid/widget/EditText;

    .line 80
    .line 81
    .line 82
    const p1, 0x7f0a039d

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    check-cast p1, Lcom/narvii/widget/EditTextIMG;

    .line 89
    .line 90
    iput-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    .line 91
    .line 92
    new-instance v0, Lcom/narvii/blog/post/BlogPostActivity$ImgCallback;

    .line 93
    .line 94
    .line 95
    invoke-direct {v0, p0}, Lcom/narvii/blog/post/BlogPostActivity$ImgCallback;-><init>(Lcom/narvii/blog/post/BlogPostActivity;)V

    .line 96
    .line 97
    iput-object v0, p1, Lcom/narvii/widget/EditTextIMG;->imgMode:Landroid/view/ActionMode$Callback;

    .line 98
    .line 99
    .line 100
    const p1, 0x7f0a0b3d

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 104
    move-result-object p1

    .line 105
    .line 106
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    .line 107
    .line 108
    new-instance v1, Lcom/narvii/post/BasePostActivity$HideHintWatcher;

    .line 109
    .line 110
    .line 111
    invoke-direct {v1, p1}, Lcom/narvii/post/BasePostActivity$HideHintWatcher;-><init>(Landroid/view/View;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 115
    .line 116
    .line 117
    const p1, 0x7f0a0aea

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    check-cast p1, Landroid/widget/ImageView;

    .line 124
    .line 125
    iput-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->pickMedia:Landroid/widget/ImageView;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    .line 130
    .line 131
    const p1, 0x7f0a093b

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 135
    move-result-object p1

    .line 136
    .line 137
    check-cast p1, Lcom/narvii/widget/ThumbImageView;

    .line 138
    .line 139
    iput-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->mediaPreview:Lcom/narvii/widget/ThumbImageView;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    .line 144
    .line 145
    const p1, 0x7f0a092e

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 149
    move-result-object p1

    .line 150
    .line 151
    check-cast p1, Landroid/widget/TextView;

    .line 152
    .line 153
    iput-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->mediaCount:Landroid/widget/TextView;

    .line 154
    .line 155
    .line 156
    const p1, 0x7f0a0ae7

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 160
    move-result-object p1

    .line 161
    .line 162
    check-cast p1, Landroid/widget/ImageView;

    .line 163
    .line 164
    iput-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->pickItem:Landroid/widget/ImageView;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    .line 169
    .line 170
    const p1, 0x7f0a075b

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 174
    move-result-object p1

    .line 175
    .line 176
    check-cast p1, Lcom/narvii/widget/CardView;

    .line 177
    .line 178
    iput-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->itemPreview:Lcom/narvii/widget/CardView;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    .line 183
    .line 184
    const p1, 0x7f0a0763

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 188
    move-result-object p1

    .line 189
    .line 190
    check-cast p1, Landroid/widget/TextView;

    .line 191
    .line 192
    iput-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->itemCount:Landroid/widget/TextView;

    .line 193
    .line 194
    .line 195
    const p1, 0x7f0a0ae9

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 199
    move-result-object p1

    .line 200
    .line 201
    check-cast p1, Landroid/widget/ImageView;

    .line 202
    .line 203
    iput-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->pickLocation:Landroid/widget/ImageView;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    .line 208
    .line 209
    const p1, 0x7f0a0ae8

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 213
    move-result-object p1

    .line 214
    .line 215
    iput-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->pickLocationProgress:Landroid/view/View;

    .line 216
    .line 217
    .line 218
    const p1, 0x7f0a0b2d

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 222
    move-result-object p1

    .line 223
    .line 224
    check-cast p1, Landroid/widget/Button;

    .line 225
    .line 226
    iput-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->pickCategories:Landroid/widget/Button;

    .line 227
    .line 228
    .line 229
    const p1, 0x7f0a055f

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 233
    move-result-object p1

    .line 234
    .line 235
    iput-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->fansOnlyContainer:Landroid/view/View;

    .line 236
    .line 237
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->pickItem:Landroid/widget/ImageView;

    .line 238
    .line 239
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isCatalogEnable()Z

    .line 243
    move-result v0

    .line 244
    .line 245
    const/16 v1, 0x8

    .line 246
    const/4 v2, 0x0

    .line 247
    .line 248
    if-eqz v0, :cond_1

    .line 249
    move v0, v2

    .line 250
    goto :goto_0

    .line 251
    :cond_1
    move v0, v1

    .line 252
    .line 253
    .line 254
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 255
    .line 256
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->itemPreview:Lcom/narvii/widget/CardView;

    .line 257
    .line 258
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isCatalogEnable()Z

    .line 262
    move-result v0

    .line 263
    .line 264
    if-eqz v0, :cond_2

    .line 265
    move v0, v2

    .line 266
    goto :goto_1

    .line 267
    :cond_2
    move v0, v1

    .line 268
    .line 269
    .line 270
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 271
    .line 272
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->itemCount:Landroid/widget/TextView;

    .line 273
    .line 274
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isCatalogEnable()Z

    .line 278
    move-result v0

    .line 279
    .line 280
    if-eqz v0, :cond_3

    .line 281
    move v0, v2

    .line 282
    goto :goto_2

    .line 283
    :cond_3
    move v0, v1

    .line 284
    .line 285
    .line 286
    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 287
    .line 288
    .line 289
    const p1, 0x7f0a076c

    .line 290
    .line 291
    .line 292
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 293
    move-result-object p1

    .line 294
    .line 295
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isCatalogEnable()Z

    .line 299
    move-result v0

    .line 300
    .line 301
    if-eqz v0, :cond_4

    .line 302
    move v1, v2

    .line 303
    .line 304
    .line 305
    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 306
    return-void
.end method

.method public onLocatingChanged(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->pickLocation:Landroid/widget/ImageView;

    .line 3
    .line 4
    const/16 v0, 0x8

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->pickLocationProgress:Landroid/view/View;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    return-void
.end method

.method public onLocationResult(Lcom/narvii/location/GPSCoordinate;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

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
    iput-boolean p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->stat_remove_location:Z

    .line 18
    .line 19
    iput-boolean p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->stat_remove_location_success:Z

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
    const-string p1, "location"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    check-cast p1, Lcom/narvii/location/LocationService;

    .line 43
    .line 44
    iget v3, v0, Lcom/narvii/blog/post/BlogPost;->latitude:I

    .line 45
    .line 46
    iget v4, v0, Lcom/narvii/blog/post/BlogPost;->longitude:I

    .line 47
    .line 48
    .line 49
    invoke-static {v3, v4}, Lcom/narvii/location/GPSCoordinate;->create(II)Lcom/narvii/location/GPSCoordinate;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v3, v1}, Lcom/narvii/location/LocationService;->reverseGeocoding(Lcom/narvii/location/GPSCoordinate;Lcom/narvii/location/LocationService$GeocodeResultListener;)V

    .line 54
    .line 55
    iput-boolean v2, p0, Lcom/narvii/blog/post/BlogPostActivity;->stat_remove_location:Z

    .line 56
    .line 57
    iput-boolean v2, p0, Lcom/narvii/blog/post/BlogPostActivity;->stat_remove_location_success:Z

    .line 58
    .line 59
    :goto_0
    iput-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lcom/narvii/blog/post/BlogPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 63
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
    iput-boolean p1, p0, Lcom/narvii/blog/post/BlogPostActivity;->stat_add_photo_success:Z

    .line 47
    return-void
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/post/DraftPostActivity;->onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V

    .line 4
    .line 5
    check-cast p2, Lcom/narvii/model/api/BlogResponse;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/narvii/model/api/BlogResponse;->object()Lcom/narvii/model/Blog;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->isEdit()Z

    .line 13
    move-result p2

    .line 14
    const/4 v0, 0x1

    .line 15
    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/model/Feed;)Landroid/content/Intent;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    const-string v1, "justCreated"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 26
    .line 27
    const-string v1, "Source"

    .line 28
    .line 29
    const-string v2, "View Created Post"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    invoke-static {p0, p2}, Lcom/narvii/blog/post/BlogPostActivity;->safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V

    .line 36
    .line 37
    :cond_0
    const-string p2, "statistics"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    check-cast p2, Lcom/narvii/util/statistics/StatisticsService;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->isEdit()Z

    .line 47
    move-result v1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->draftType()Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    const/4 v4, 0x0

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 61
    move-result-object v5

    .line 62
    .line 63
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 67
    move-result-object v5

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 74
    move-result-object v2

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v2

    .line 82
    .line 83
    if-eqz v1, :cond_1

    .line 84
    .line 85
    const-string v3, "User Edits a Post"

    .line 86
    goto :goto_0

    .line 87
    .line 88
    :cond_1
    const-string v3, "Create Post"

    .line 89
    .line 90
    .line 91
    :goto_0
    invoke-interface {p2, v3}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 92
    move-result-object p2

    .line 93
    .line 94
    if-eqz v1, :cond_2

    .line 95
    .line 96
    const-string v3, "Total Edited Posts"

    .line 97
    goto :goto_1

    .line 98
    .line 99
    :cond_2
    const-string v3, "Total New Posts"

    .line 100
    .line 101
    .line 102
    :goto_1
    invoke-virtual {p2, v3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 103
    move-result-object v3

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 107
    move-result-object v5

    .line 108
    .line 109
    const-string v6, "post_type"

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3, v6, v5}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 113
    move-result-object v3

    .line 114
    .line 115
    iget-boolean v5, p0, Lcom/narvii/blog/post/BlogPostActivity;->stat_add_photo:Z

    .line 116
    const/4 v6, 0x0

    .line 117
    .line 118
    if-eqz v5, :cond_3

    .line 119
    .line 120
    const-string v7, "Add photo"

    .line 121
    goto :goto_2

    .line 122
    :cond_3
    move-object v7, v6

    .line 123
    .line 124
    .line 125
    :goto_2
    invoke-virtual {v3, v7, v5}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 126
    move-result-object v3

    .line 127
    .line 128
    iget-boolean v5, p0, Lcom/narvii/blog/post/BlogPostActivity;->stat_link_favorite:Z

    .line 129
    .line 130
    if-eqz v5, :cond_4

    .line 131
    .line 132
    const-string v5, "Link Related favorites"

    .line 133
    goto :goto_3

    .line 134
    :cond_4
    move-object v5, v6

    .line 135
    .line 136
    :goto_3
    iget-boolean v7, p0, Lcom/narvii/blog/post/BlogPostActivity;->stat_link_favorite_success:Z

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3, v5, v7}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 140
    move-result-object v3

    .line 141
    .line 142
    iget-boolean v5, p0, Lcom/narvii/blog/post/BlogPostActivity;->stat_remove_location:Z

    .line 143
    .line 144
    if-eqz v5, :cond_5

    .line 145
    .line 146
    const-string v5, "Remove location"

    .line 147
    goto :goto_4

    .line 148
    :cond_5
    move-object v5, v6

    .line 149
    .line 150
    :goto_4
    iget-boolean v7, p0, Lcom/narvii/blog/post/BlogPostActivity;->stat_remove_location_success:Z

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3, v5, v7}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 154
    move-result-object v3

    .line 155
    .line 156
    iget-boolean v5, p0, Lcom/narvii/blog/post/BlogPostActivity;->stat_add_category:Z

    .line 157
    .line 158
    if-eqz v5, :cond_6

    .line 159
    .line 160
    const-string v6, "Add Category"

    .line 161
    .line 162
    :cond_6
    iget-boolean v5, p0, Lcom/narvii/blog/post/BlogPostActivity;->stat_add_category_success:Z

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3, v6, v5}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 166
    move-result-object v3

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    .line 170
    move-result v5

    .line 171
    .line 172
    if-eqz v5, :cond_7

    .line 173
    move v5, v0

    .line 174
    goto :goto_5

    .line 175
    :cond_7
    move v5, v4

    .line 176
    .line 177
    :goto_5
    const-string v6, "Background Color"

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3, v6, v5}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 181
    move-result-object v3

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getBackgroundMedia()Lcom/narvii/model/Media;

    .line 185
    move-result-object v5

    .line 186
    .line 187
    if-eqz v5, :cond_8

    .line 188
    move v4, v0

    .line 189
    .line 190
    :cond_8
    const-string v5, "Background Image"

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3, v5, v4}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 194
    move-result-object v3

    .line 195
    .line 196
    iget-object v4, p1, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    .line 197
    .line 198
    .line 199
    invoke-static {v4}, Lcom/narvii/model/Media;->hasVideo(Ljava/util/Collection;)Z

    .line 200
    move-result v4

    .line 201
    .line 202
    const-string v5, "Has Video"

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3, v5, v4}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 206
    move-result-object v3

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->isContentAccessible()Z

    .line 210
    move-result p1

    .line 211
    xor-int/2addr p1, v0

    .line 212
    .line 213
    const-string v0, "Gated"

    .line 214
    .line 215
    .line 216
    invoke-virtual {v3, v0, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 217
    .line 218
    if-nez v1, :cond_9

    .line 219
    .line 220
    const-string p1, "source"

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 224
    move-result-object p1

    .line 225
    .line 226
    .line 227
    invoke-virtual {p2, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 228
    .line 229
    new-instance p1, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    const-string v0, "User Submits a New "

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    const-string v0, " Total"

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    move-result-object p1

    .line 250
    .line 251
    .line 252
    invoke-virtual {p2, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 253
    .line 254
    .line 255
    invoke-static {p0, p2}, Lcom/narvii/util/statistics/FirebaseLogManager;->logEvent(Lcom/narvii/app/NVContext;Lcom/narvii/util/statistics/StatisticsEventBuilder;)V

    .line 256
    :cond_9
    return-void
.end method

.method protected onPostLoaded(Lcom/narvii/blog/post/BlogPost;)V
    .locals 2

    .line 2
    invoke-super {p0, p1}, Lcom/narvii/post/DraftPostActivity;->onPostLoaded(Lcom/narvii/post/PostObject;)V

    .line 3
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->isEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120438

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f120eaf

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 6
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

    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/location/LocationService;

    .line 8
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

    .line 1
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

    const-class v0, Lcom/narvii/blog/post/BlogPost;

    return-object v0
.end method

.method protected savePost()Lcom/narvii/blog/post/BlogPost;
    .locals 3

    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 2
    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget-object v1, p0, Lcom/narvii/blog/post/BlogPostActivity;->editTitle:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/blog/post/BlogPost;->title:Ljava/lang/String;

    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 3
    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget-object v1, p0, Lcom/narvii/blog/post/BlogPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/blog/post/BlogPost;->content:Ljava/lang/String;

    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 4
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

    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/location/LocationService;

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 6
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

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 7
    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    invoke-interface {v0}, Lcom/narvii/location/ReadableAddress;->getCityLevelAddressText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/narvii/blog/post/BlogPost;->address:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 8
    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    return-object v0
.end method

.method protected bridge synthetic savePost()Lcom/narvii/post/PostObject;
    .locals 1

    .line 1
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

    .line 3
    invoke-super {p0, p1}, Lcom/narvii/post/BackgroundPostActivity;->updateView(Lcom/narvii/feed/BackgroundPost;)V

    if-nez p1, :cond_0

    return-void

    .line 4
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

    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity;->editTitle:Landroid/widget/EditText;

    .line 5
    iget-object v1, p1, Lcom/narvii/blog/post/BlogPost;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
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

    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    .line 7
    iget-object v1, p1, Lcom/narvii/blog/post/BlogPost;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :cond_2
    iget-object v0, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    const/4 v2, 0x0

    if-lez v0, :cond_4

    .line 9
    iget-object v3, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Media;

    goto :goto_1

    :cond_4
    move-object v3, v2

    :goto_1
    iget-object v4, p0, Lcom/narvii/blog/post/BlogPostActivity;->pickMedia:Landroid/widget/ImageView;

    if-nez v3, :cond_5

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0803d3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_2

    .line 11
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0803d4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 12
    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/narvii/blog/post/BlogPostActivity;->mediaPreview:Lcom/narvii/widget/ThumbImageView;

    const/16 v5, 0x8

    if-nez v3, :cond_6

    move v6, v5

    goto :goto_3

    :cond_6
    move v6, v1

    .line 13
    :goto_3
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/narvii/blog/post/BlogPostActivity;->mediaPreview:Lcom/narvii/widget/ThumbImageView;

    .line 14
    invoke-virtual {v4, v3}, Lcom/narvii/widget/ThumbImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    iget-object v3, p0, Lcom/narvii/blog/post/BlogPostActivity;->mediaCount:Landroid/widget/TextView;

    const/4 v4, 0x1

    if-le v0, v4, :cond_7

    move v6, v1

    goto :goto_4

    :cond_7
    move v6, v5

    .line 15
    :goto_4
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/narvii/blog/post/BlogPostActivity;->mediaCount:Landroid/widget/TextView;

    .line 16
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p1, Lcom/narvii/blog/post/BlogPost;->itemList:Ljava/util/List;

    if-nez v0, :cond_8

    move v0, v1

    goto :goto_5

    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_5
    if-lez v0, :cond_9

    .line 18
    iget-object v2, p1, Lcom/narvii/blog/post/BlogPost;->itemList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Item;

    :cond_9
    iget-object v3, p0, Lcom/narvii/blog/post/BlogPostActivity;->pickItem:Landroid/widget/ImageView;

    if-nez v2, :cond_a

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0803c4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_6

    .line 20
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0803c5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 21
    :goto_6
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/narvii/blog/post/BlogPostActivity;->itemPreview:Lcom/narvii/widget/CardView;

    if-nez v2, :cond_b

    move v6, v5

    goto :goto_7

    :cond_b
    move v6, v1

    .line 22
    :goto_7
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/narvii/blog/post/BlogPostActivity;->itemPreview:Lcom/narvii/widget/CardView;

    .line 23
    invoke-virtual {v3, v2}, Lcom/narvii/widget/CardView;->setItem(Lcom/narvii/model/Item;)V

    iget-object v2, p0, Lcom/narvii/blog/post/BlogPostActivity;->itemCount:Landroid/widget/TextView;

    if-le v0, v4, :cond_c

    goto :goto_8

    :cond_c
    move v1, v5

    .line 24
    :goto_8
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/narvii/blog/post/BlogPostActivity;->itemCount:Landroid/widget/TextView;

    .line 25
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 26
    invoke-virtual {v0}, Lcom/narvii/post/LocationPickerFragment;->isLocating()Z

    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity;->pickLocation:Landroid/widget/ImageView;

    .line 27
    iget v1, p1, Lcom/narvii/blog/post/BlogPost;->latitude:I

    if-eqz v1, :cond_e

    iget v1, p1, Lcom/narvii/blog/post/BlogPost;->longitude:I

    if-nez v1, :cond_d

    goto :goto_9

    .line 28
    :cond_d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0804d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_a

    .line 29
    :cond_e
    :goto_9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0804d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 30
    :goto_a
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity;->pickLocation:Landroid/widget/ImageView;

    .line 31
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity;->pickLocationProgress:Landroid/view/View;

    .line 32
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity;->pickCategories:Landroid/widget/Button;

    .line 33
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity;->pickCategories:Landroid/widget/Button;

    .line 34
    iget-object v1, p1, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_f

    const v1, 0x7f08086c

    goto :goto_b

    :cond_f
    const v1, 0x7f08086b

    :goto_b
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity;->pickCategories:Landroid/widget/Button;

    .line 35
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
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/feed/BackgroundPost;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/BlogPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/BlogPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method protected validateUpload(Lcom/narvii/blog/post/BlogPost;)Z
    .locals 3

    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity;->editTitle:Landroid/widget/EditText;

    const v1, 0x7f120eda

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/narvii/post/BasePostActivity;->validateEditTextNotEmpty(Landroid/widget/EditText;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v2, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/narvii/util/text/IMGUtils;->filterRefIds(Landroid/text/Editable;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    :cond_1
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    const v2, 0x7f120ed5

    .line 5
    invoke-virtual {p0, v0, v2}, Lcom/narvii/post/BasePostActivity;->validateEditTextNotEmpty(Landroid/widget/EditText;I)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 6
    :cond_2
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    const/16 v0, 0x19

    const v2, 0x7f120ef0

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

    .line 1
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/BlogPostActivity;->validateUpload(Lcom/narvii/blog/post/BlogPost;)Z

    move-result p1

    return p1
.end method
