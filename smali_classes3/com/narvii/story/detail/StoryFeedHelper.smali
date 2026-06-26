.class public Lcom/narvii/story/detail/StoryFeedHelper;
.super Ljava/lang/Object;
.source "StoryFeedHelper.java"


# instance fields
.field private context:Lcom/narvii/app/NVContext;

.field public loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

.field public loggingSource:Lcom/narvii/util/logging/LoggingSource;

.field public source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/narvii/story/detail/StoryFeedHelper;->context:Lcom/narvii/app/NVContext;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/story/detail/StoryFeedHelper;Lcom/narvii/model/Feed;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/story/detail/StoryFeedHelper;->edit(Lcom/narvii/model/Feed;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/story/detail/StoryFeedHelper;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/narvii/story/detail/StoryFeedHelper;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method private edit(Lcom/narvii/model/Feed;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/Feed;",
            "Ljava/util/List<",
            "Lcom/narvii/model/Item;",
            ">;",
            "Ljava/util/List<",
            "Lcom/narvii/model/BlogCategory;",
            ">;)V"
        }
    .end annotation

    .line 158
    instance-of v0, p1, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_b

    .line 159
    move-object v0, p1

    check-cast v0, Lcom/narvii/model/Blog;

    .line 160
    iget v1, v0, Lcom/narvii/model/Blog;->type:I

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 161
    iput-object v3, v0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 163
    :cond_0
    iget-object v1, v0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    if-nez v1, :cond_a

    .line 164
    new-instance v1, Lcom/narvii/blog/post/BlogPost;

    invoke-direct {v1, v0, p2, p3}, Lcom/narvii/blog/post/BlogPost;-><init>(Lcom/narvii/model/Blog;Ljava/util/List;Ljava/util/List;)V

    .line 166
    iget p2, v0, Lcom/narvii/model/Blog;->type:I

    if-nez p2, :cond_1

    .line 167
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/narvii/story/detail/StoryFeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p3

    const-class v0, Lcom/narvii/blog/post/BlogPostActivity;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    const/4 p3, 0x5

    if-ne p2, p3, :cond_2

    .line 169
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/narvii/story/detail/StoryFeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p3

    const-class v0, Lcom/narvii/blog/post/LinkPostActivity;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_2
    const/4 p3, 0x6

    if-ne p2, p3, :cond_3

    .line 171
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/narvii/story/detail/StoryFeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p3

    const-class v0, Lcom/narvii/blog/post/QuizPostActivity;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_3
    const/4 p3, 0x4

    if-ne p2, p3, :cond_4

    .line 173
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/narvii/story/detail/StoryFeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p3

    const-class v0, Lcom/narvii/blog/post/PollPostActivity;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_4
    const/4 p3, 0x7

    if-ne p2, p3, :cond_5

    .line 175
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/narvii/story/detail/StoryFeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p3

    const-class v0, Lcom/narvii/blog/post/ImagePostActivity;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_5
    if-ne p2, v2, :cond_6

    .line 177
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/narvii/story/detail/StoryFeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p3

    const-class v0, Lcom/narvii/blog/post/StoryPostActivity;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 179
    :cond_6
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/narvii/story/detail/StoryFeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p3

    const-class v0, Lcom/narvii/blog/post/TopicPostActivity;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    :goto_0
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p3

    const-string v0, "blogId"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "post"

    .line 183
    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "feed"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    iget-object p3, p0, Lcom/narvii/story/detail/StoryFeedHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    if-nez p3, :cond_7

    move-object p3, v3

    goto :goto_1

    :cond_7
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    :goto_1
    const-string v0, "loggingSource"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    iget-object p3, p0, Lcom/narvii/story/detail/StoryFeedHelper;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    if-nez p3, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    :goto_2
    const-string p3, "loggingOrigin"

    invoke-virtual {p2, p3, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    iget p1, p1, Lcom/narvii/model/Feed;->ndcId:I

    const/4 p3, -0x1

    if-eq p1, p3, :cond_9

    const-string p3, "__communityId"

    .line 188
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    :cond_9
    invoke-virtual {p0, p2}, Lcom/narvii/story/detail/StoryFeedHelper;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 192
    :cond_a
    invoke-virtual {p0, p1}, Lcom/narvii/story/detail/StoryFeedHelper;->repost(Lcom/narvii/model/Feed;)V

    :cond_b
    :goto_3
    return-void
.end method


# virtual methods
.method public delete(Lcom/narvii/model/Feed;Z)V
    .locals 7

    .line 198
    iget-object v0, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    iget v0, v0, Lcom/narvii/model/User;->role:I

    const v1, 0x1040009

    const v2, 0x1040013

    const-string v3, "api"

    const-string v4, "/"

    const/16 v5, 0xfe

    if-ne v0, v5, :cond_1

    if-nez p2, :cond_0

    .line 200
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/narvii/story/detail/StoryFeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f0399

    .line 201
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 202
    new-instance v0, Lcom/narvii/story/detail/StoryFeedHelper$2;

    invoke-direct {v0, p0, p1}, Lcom/narvii/story/detail/StoryFeedHelper$2;-><init>(Lcom/narvii/story/detail/StoryFeedHelper;Lcom/narvii/model/Feed;)V

    invoke-virtual {p2, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 209
    sget-object p1, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, v1, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 211
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 213
    :cond_0
    new-instance p2, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v0, p0, Lcom/narvii/story/detail/StoryFeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 214
    new-instance v0, Lcom/narvii/story/detail/StoryFeedHelper$3;

    invoke-direct {v0, p0, p1}, Lcom/narvii/story/detail/StoryFeedHelper$3;-><init>(Lcom/narvii/story/detail/StoryFeedHelper;Lcom/narvii/model/Feed;)V

    iput-object v0, p2, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 240
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 242
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    .line 243
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 244
    iget-object v1, p0, Lcom/narvii/story/detail/StoryFeedHelper;->context:Lcom/narvii/app/NVContext;

    const-string v2, "account"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 245
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->apiTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/batch-delete"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    iget p1, p1, Lcom/narvii/model/Feed;->ndcId:I

    .line 247
    invoke-virtual {v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 248
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sourceUid"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v1, "itemIdList"

    .line 249
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 250
    iget-object v0, p0, Lcom/narvii/story/detail/StoryFeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 251
    iget-object p2, p2, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 255
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/narvii/story/detail/StoryFeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f0398

    .line 256
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 257
    new-instance v0, Lcom/narvii/story/detail/StoryFeedHelper$4;

    invoke-direct {v0, p0, p1}, Lcom/narvii/story/detail/StoryFeedHelper$4;-><init>(Lcom/narvii/story/detail/StoryFeedHelper;Lcom/narvii/model/Feed;)V

    invoke-virtual {p2, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 264
    sget-object p1, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, v1, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 266
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 268
    :cond_2
    new-instance p2, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v0, p0, Lcom/narvii/story/detail/StoryFeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 269
    new-instance v0, Lcom/narvii/story/detail/StoryFeedHelper$5;

    invoke-direct {v0, p0, p1}, Lcom/narvii/story/detail/StoryFeedHelper$5;-><init>(Lcom/narvii/story/detail/StoryFeedHelper;Lcom/narvii/model/Feed;)V

    iput-object v0, p2, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 276
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 278
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->apiTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget p1, p1, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 280
    iget-object v0, p0, Lcom/narvii/story/detail/StoryFeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 281
    iget-object p2, p2, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :goto_0
    return-void
.end method

.method public refreshAndEdit(Lcom/narvii/model/Feed;)V
    .locals 5

    .line 109
    const-class v0, Lcom/narvii/model/api/BlogResponse;

    instance-of v1, p1, Lcom/narvii/model/Blog;

    if-eqz v1, :cond_2

    .line 110
    move-object v1, p1

    check-cast v1, Lcom/narvii/model/Blog;

    .line 111
    iget-object v2, v1, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    if-nez v2, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    iget v1, v1, Lcom/narvii/model/Blog;->type:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, p1, v0, v0}, Lcom/narvii/story/detail/StoryFeedHelper;->edit(Lcom/narvii/model/Feed;Ljava/util/List;Ljava/util/List;)V

    return-void

    .line 119
    :cond_2
    instance-of v0, p1, Lcom/narvii/model/Item;

    if-eqz v0, :cond_4

    .line 120
    const-class v0, Lcom/narvii/model/api/ItemResponse;

    .line 125
    :goto_0
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v2, p0, Lcom/narvii/story/detail/StoryFeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->apiTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    const-string v3, "action"

    const-string v4, "edit"

    .line 132
    invoke-virtual {v2, v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 133
    iget p1, p1, Lcom/narvii/model/Feed;->ndcId:I

    const/4 v3, -0x1

    if-eq p1, v3, :cond_3

    .line 134
    invoke-virtual {v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 136
    :cond_3
    iget-object p1, p0, Lcom/narvii/story/detail/StoryFeedHelper;->context:Lcom/narvii/app/NVContext;

    const-string v3, "api"

    invoke-interface {p1, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 137
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v2

    new-instance v3, Lcom/narvii/story/detail/StoryFeedHelper$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/narvii/story/detail/StoryFeedHelper$1;-><init>(Lcom/narvii/story/detail/StoryFeedHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    invoke-virtual {p1, v2, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void

    .line 122
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public repost(Lcom/narvii/model/Feed;)V
    .locals 5

    .line 72
    new-instance v0, Lcom/narvii/repost/RepostPost;

    invoke-direct {v0}, Lcom/narvii/repost/RepostPost;-><init>()V

    const/4 v1, 0x2

    .line 73
    iput v1, v0, Lcom/narvii/repost/RepostPost;->type:I

    .line 74
    instance-of v1, p1, Lcom/narvii/model/Blog;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 75
    move-object v1, p1

    check-cast v1, Lcom/narvii/model/Blog;

    .line 76
    iget-object v3, v1, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    if-eqz v3, :cond_1

    .line 77
    iget-object v3, p0, Lcom/narvii/story/detail/StoryFeedHelper;->context:Lcom/narvii/app/NVContext;

    const-string v4, "account"

    invoke-interface {v3, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/account/AccountService;

    .line 78
    iget-object p1, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 79
    iget-object p1, v1, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    .line 80
    iget-object v2, v1, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    iput-object v2, v0, Lcom/narvii/repost/RepostPost;->content:Ljava/lang/String;

    move-object v2, p1

    .line 82
    :cond_0
    iget-object p1, v1, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 85
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->objectType()I

    move-result v1

    iput v1, v0, Lcom/narvii/repost/RepostPost;->refObjectType:I

    .line 86
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/repost/RepostPost;->refObjectId:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/repost/RepostPost;->previewImage:Lcom/narvii/model/Media;

    .line 88
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/repost/RepostPost;->previewTitle:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->content()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/repost/RepostPost;->previewContent:Ljava/lang/String;

    .line 90
    iget-boolean v1, p1, Lcom/narvii/model/Feed;->needHidden:Z

    iput-boolean v1, v0, Lcom/narvii/repost/RepostPost;->needHidden:Z

    .line 92
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/narvii/story/detail/StoryFeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/narvii/repost/RepostActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v3

    const-string v4, "refObjectId"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "repostBlogId"

    .line 94
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "post"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    iget-object v0, p0, Lcom/narvii/story/detail/StoryFeedHelper;->source:Ljava/lang/String;

    const-string v2, "Source"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    instance-of v0, p1, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/narvii/model/Blog;

    iget v0, v0, Lcom/narvii/model/Blog;->type:I

    const/16 v2, 0x9

    if-ne v0, v2, :cond_2

    const-string v0, "imageType"

    const-string v2, "story-cover"

    .line 98
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    :cond_2
    iget p1, p1, Lcom/narvii/model/Feed;->ndcId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    const-string v0, "__communityId"

    .line 101
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    :cond_3
    invoke-virtual {p0, v1}, Lcom/narvii/story/detail/StoryFeedHelper;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public source(Ljava/lang/String;)Lcom/narvii/story/detail/StoryFeedHelper;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/narvii/story/detail/StoryFeedHelper;->source:Ljava/lang/String;

    return-object p0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/narvii/story/detail/StoryFeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
