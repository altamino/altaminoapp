.class public Lcom/narvii/feed/FeedHelper;
.super Ljava/lang/Object;
.source "FeedHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/feed/FeedHelper$StartQuizInterceptor;,
        Lcom/narvii/feed/FeedHelper$StartQuizListener;
    }
.end annotation


# instance fields
.field private configService:Lcom/narvii/config/ConfigService;

.field private context:Lcom/narvii/app/NVContext;

.field public loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

.field public loggingSource:Lcom/narvii/util/logging/LoggingSource;

.field showProgressWhenLoadingQuiz:Z

.field public source:Ljava/lang/String;

.field public startQuizInterceptor:Lcom/narvii/feed/FeedHelper$StartQuizInterceptor;

.field public startQuizListener:Lcom/narvii/feed/FeedHelper$StartQuizListener;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/narvii/feed/FeedHelper;->showProgressWhenLoadingQuiz:Z

    .line 110
    iput-object p1, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    const-string v0, "config"

    .line 111
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    iput-object p1, p0, Lcom/narvii/feed/FeedHelper;->configService:Lcom/narvii/config/ConfigService;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/feed/FeedHelper;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/feed/FeedHelper;Lcom/narvii/model/Feed;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/feed/FeedHelper;->edit(Lcom/narvii/model/Feed;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/feed/FeedHelper;Lcom/narvii/model/Feed;ILcom/narvii/util/Callback;Lcom/narvii/util/Callback;Lcom/narvii/util/logging/LoggingSource;Ljava/lang/String;)V
    .locals 0

    .line 85
    invoke-direct/range {p0 .. p6}, Lcom/narvii/feed/FeedHelper;->voteFeed(Lcom/narvii/model/Feed;ILcom/narvii/util/Callback;Lcom/narvii/util/Callback;Lcom/narvii/util/logging/LoggingSource;Ljava/lang/String;)V

    return-void
.end method

.method private edit(Lcom/narvii/model/Feed;Ljava/util/List;Ljava/util/List;)V
    .locals 7
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

    .line 331
    instance-of v0, p1, Lcom/narvii/model/Blog;

    const-string v1, "loggingOrigin"

    const-string v2, "loggingSource"

    const-string v3, "feed"

    const-string v4, "post"

    const/4 v5, 0x0

    if-eqz v0, :cond_9

    .line 332
    move-object v0, p1

    check-cast v0, Lcom/narvii/model/Blog;

    .line 333
    iget-object v6, v0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    if-nez v6, :cond_8

    .line 334
    new-instance v6, Lcom/narvii/blog/post/BlogPost;

    invoke-direct {v6, v0, p2, p3}, Lcom/narvii/blog/post/BlogPost;-><init>(Lcom/narvii/model/Blog;Ljava/util/List;Ljava/util/List;)V

    .line 336
    iget p2, v0, Lcom/narvii/model/Blog;->type:I

    if-nez p2, :cond_0

    .line 337
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p3

    const-class v0, Lcom/narvii/blog/post/BlogPostActivity;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x5

    if-ne p2, p3, :cond_1

    .line 339
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p3

    const-class v0, Lcom/narvii/blog/post/LinkPostActivity;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    const/4 p3, 0x6

    if-ne p2, p3, :cond_2

    .line 341
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p3

    const-class v0, Lcom/narvii/blog/post/QuizPostActivity;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_2
    const/4 p3, 0x4

    if-ne p2, p3, :cond_3

    .line 343
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p3

    const-class v0, Lcom/narvii/blog/post/PollPostActivity;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_3
    const/4 p3, 0x7

    if-ne p2, p3, :cond_4

    .line 345
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p3

    const-class v0, Lcom/narvii/blog/post/ImagePostActivity;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_4
    const/16 p3, 0x9

    if-ne p2, p3, :cond_5

    .line 347
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p3

    const-class v0, Lcom/narvii/blog/post/StoryPostActivity;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 349
    :cond_5
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p3

    const-class v0, Lcom/narvii/blog/post/TopicPostActivity;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 351
    :goto_0
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p3

    const-string v0, "blogId"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    invoke-static {v6}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 353
    invoke-virtual {p2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    if-nez p1, :cond_6

    move-object p1, v5

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    invoke-virtual {p0, p2}, Lcom/narvii/feed/FeedHelper;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    .line 359
    :cond_8
    invoke-virtual {p0, p1}, Lcom/narvii/feed/FeedHelper;->repost(Lcom/narvii/model/Feed;)V

    goto :goto_5

    .line 361
    :cond_9
    instance-of p3, p1, Lcom/narvii/model/Item;

    if-eqz p3, :cond_c

    .line 362
    new-instance p3, Lcom/narvii/item/post/ItemPost;

    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    move-object v6, p1

    check-cast v6, Lcom/narvii/model/Item;

    invoke-direct {p3, v0, v6, p2}, Lcom/narvii/item/post/ItemPost;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Item;Ljava/util/List;)V

    .line 363
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v6, Lcom/narvii/item/post/ItemPostActivity;

    invoke-direct {p2, v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 364
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v0

    const-string v6, "itemId"

    invoke-virtual {p2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 366
    invoke-virtual {p2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    if-nez p1, :cond_a

    move-object p1, v5

    goto :goto_3

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    if-nez p1, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    :goto_4
    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    invoke-virtual {p0, p2}, Lcom/narvii/feed/FeedHelper;->startActivity(Landroid/content/Intent;)V

    :cond_c
    :goto_5
    return-void
.end method

.method public static isFeedContinuousOpen(Lcom/narvii/app/NVContext;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private voteFeed(Lcom/narvii/model/Feed;ILcom/narvii/util/Callback;Lcom/narvii/util/Callback;Lcom/narvii/util/logging/LoggingSource;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/Feed;",
            "I",
            "Lcom/narvii/util/Callback;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/narvii/util/logging/LoggingSource;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    .line 871
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 874
    :cond_0
    new-instance p3, Lcom/narvii/story/detail/VoteHelper;

    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p3, v0}, Lcom/narvii/story/detail/VoteHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 875
    iput-object p5, p3, Lcom/narvii/story/detail/VoteHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 876
    iput-object p6, p3, Lcom/narvii/story/detail/VoteHelper;->loggingOriginName:Ljava/lang/String;

    .line 877
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance p5, Lcom/narvii/feed/FeedHelper$13;

    invoke-direct {p5, p0, p4}, Lcom/narvii/feed/FeedHelper$13;-><init>(Lcom/narvii/feed/FeedHelper;Lcom/narvii/util/Callback;)V

    invoke-virtual {p3, p1, p2, p5}, Lcom/narvii/story/detail/VoteHelper;->vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V

    return-void
.end method


# virtual methods
.method public addQuizListExtra(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 4

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "fromQuizFeedList"

    .line 693
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "key_continuous_feed_api_request"

    .line 694
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "key_continuous_feed_list"

    .line 695
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "key_continuous_feed_list_timestamp"

    .line 696
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "key_continuous_feed_current_position"

    .line 697
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 698
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public bookmark(Lcom/narvii/model/Feed;Lcom/narvii/util/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/Feed;",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 156
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    new-instance p1, Landroid/content/Intent;

    const-string p2, "ndc://login"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 158
    sget-object p2, Lcom/narvii/account/LoginActivity$PromptType;->Required:Lcom/narvii/account/LoginActivity$PromptType;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    const-string v0, "promptType"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/narvii/feed/FeedHelper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p1, "unable to start login activity"

    .line 162
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 166
    :cond_1
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 167
    iput-object p2, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 168
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 169
    new-instance p2, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {p2}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    const-string v1, "/bookmark"

    invoke-virtual {p2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    .line 170
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->objectType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "objectType"

    invoke-virtual {p2, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    .line 171
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "objectId"

    invoke-virtual {p2, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    .line 172
    iget-object v1, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 173
    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v1, p2, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public copyAndEdit(Lcom/narvii/model/Item;)V
    .locals 5

    .line 375
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 376
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 378
    iget-object v1, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 379
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/item/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v2

    new-instance v3, Lcom/narvii/feed/FeedHelper$3;

    const-class v4, Lcom/narvii/model/api/ItemResponse;

    invoke-direct {v3, p0, v4, v0, p1}, Lcom/narvii/feed/FeedHelper$3;-><init>(Lcom/narvii/feed/FeedHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/model/Item;)V

    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public delete(Lcom/narvii/model/Feed;Z)V
    .locals 7

    .line 413
    iget-object v0, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    iget v0, v0, Lcom/narvii/model/User;->role:I

    const v1, 0x1040009

    const v2, 0x1040013

    const-string v3, "api"

    const-string v4, "/"

    const/16 v5, 0xfe

    if-ne v0, v5, :cond_1

    if-nez p2, :cond_0

    .line 415
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 416
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f0399

    .line 417
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 418
    new-instance v0, Lcom/narvii/feed/FeedHelper$4;

    invoke-direct {v0, p0, p1}, Lcom/narvii/feed/FeedHelper$4;-><init>(Lcom/narvii/feed/FeedHelper;Lcom/narvii/model/Feed;)V

    invoke-virtual {p2, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 425
    sget-object p1, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, v1, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 427
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 429
    :cond_0
    new-instance p2, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 430
    new-instance v0, Lcom/narvii/feed/FeedHelper$5;

    invoke-direct {v0, p0, p1}, Lcom/narvii/feed/FeedHelper$5;-><init>(Lcom/narvii/feed/FeedHelper;Lcom/narvii/model/Feed;)V

    iput-object v0, p2, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 448
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 450
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    .line 451
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 452
    iget-object v1, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    const-string v2, "account"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 453
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->apiTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/batch-delete"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 455
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sourceUid"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v1, "itemIdList"

    .line 456
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 457
    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 458
    iget-object p2, p2, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 462
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 463
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f0398

    .line 464
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 465
    new-instance v0, Lcom/narvii/feed/FeedHelper$6;

    invoke-direct {v0, p0, p1}, Lcom/narvii/feed/FeedHelper$6;-><init>(Lcom/narvii/feed/FeedHelper;Lcom/narvii/model/Feed;)V

    invoke-virtual {p2, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 472
    sget-object p1, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, v1, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 474
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 476
    :cond_2
    new-instance p2, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 477
    new-instance v0, Lcom/narvii/feed/FeedHelper$7;

    invoke-direct {v0, p0, p1}, Lcom/narvii/feed/FeedHelper$7;-><init>(Lcom/narvii/feed/FeedHelper;Lcom/narvii/model/Feed;)V

    iput-object v0, p2, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 484
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 486
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 487
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->apiTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 488
    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 489
    iget-object p2, p2, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :goto_0
    return-void
.end method

.method public flagForReview(Lcom/narvii/model/Feed;)V
    .locals 2

    .line 495
    new-instance v0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    iget-object v1, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 496
    invoke-virtual {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    move-result-object p1

    .line 497
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    return-void
.end method

.method public follow(Lcom/narvii/model/Feed;ZZLcom/narvii/util/Callback;Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V
    .locals 7

    .line 528
    iget-object v0, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "/user-profile/"

    if-nez p2, :cond_2

    if-eqz p3, :cond_1

    .line 532
    new-instance p2, Lcom/narvii/util/dialog/ActionSheetDialog;

    iget-object p3, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const p3, 0x7f0f1145

    const/4 v0, 0x1

    .line 533
    invoke-virtual {p2, p3, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 534
    new-instance p3, Lcom/narvii/feed/FeedHelper$8;

    move-object v1, p3

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/narvii/feed/FeedHelper$8;-><init>(Lcom/narvii/feed/FeedHelper;Lcom/narvii/util/Callback;Lcom/narvii/model/Feed;Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V

    invoke-virtual {p2, p3}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 545
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    const/4 p1, 0x0

    goto :goto_0

    .line 547
    :cond_1
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    const-string p2, "account"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 548
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "/member/"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    goto :goto_0

    .line 552
    :cond_2
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/member"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_3

    return-void

    .line 557
    :cond_3
    iget-object p2, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    const-string p3, "api"

    invoke-interface {p2, p3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/http/ApiService;

    .line 558
    new-instance p3, Lcom/narvii/feed/FeedHelper$9;

    const-class p4, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {p3, p0, p4, p5, p6}, Lcom/narvii/feed/FeedHelper$9;-><init>(Lcom/narvii/feed/FeedHelper;Ljava/lang/Class;Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V

    invoke-virtual {p2, p1, p3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public followAuthor(Lcom/narvii/model/Feed;ZLcom/narvii/util/Callback;Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 512
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/feed/FeedHelper;->follow(Lcom/narvii/model/Feed;ZZLcom/narvii/util/Callback;Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 514
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/feed/FeedHelper;->follow(Lcom/narvii/model/Feed;ZZLcom/narvii/util/Callback;Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V

    :goto_0
    return-void
.end method

.method public getFeedContinuousIntent(Lcom/narvii/model/Feed;Ljava/util/List;ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Landroid/content/Intent;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/Feed;",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/Feed;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    if-nez p2, :cond_0

    .line 891
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v5, p2

    .line 894
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v2, :cond_3

    .line 905
    :goto_1
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v11

    if-ge v8, v11, :cond_2

    .line 907
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/2addr v10, v9

    if-lt v6, v9, :cond_1

    if-ge v6, v10, :cond_1

    move/from16 v19, v10

    move v10, v9

    move/from16 v9, v19

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    move/from16 v19, v10

    move v10, v9

    move/from16 v9, v19

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 915
    :cond_3
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 916
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-lt v11, v9, :cond_4

    .line 917
    invoke-interface {v5, v10, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    :cond_4
    const/4 v5, 0x0

    if-eqz v3, :cond_5

    .line 920
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v8, :cond_5

    .line 921
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v17, v3

    goto :goto_3

    :cond_5
    move-object/from16 v17, v5

    :goto_3
    if-eqz v1, :cond_6

    .line 923
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v8, :cond_6

    .line 924
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v14, v1

    goto :goto_4

    :cond_6
    move-object v14, v5

    :goto_4
    if-eqz v4, :cond_7

    .line 926
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v8, :cond_7

    .line 927
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v15, v1

    goto :goto_5

    :cond_7
    move-object v15, v5

    .line 929
    :goto_5
    iget-object v1, v0, Lcom/narvii/feed/FeedHelper;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getPageSize()I

    move-result v1

    .line 930
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_8

    .line 931
    invoke-interface {v2, v7, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    move/from16 v3, p3

    .line 932
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move/from16 v18, v1

    goto :goto_6

    :cond_8
    move/from16 v3, p3

    move/from16 v18, v3

    .line 934
    :goto_6
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 935
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Feed;

    .line 936
    instance-of v3, v2, Lcom/narvii/util/FeedBriefContent;

    if-eqz v3, :cond_9

    .line 937
    check-cast v2, Lcom/narvii/util/FeedBriefContent;

    invoke-interface {v2}, Lcom/narvii/util/FeedBriefContent;->getBriefContent()Lcom/narvii/model/Feed;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 939
    :cond_9
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 942
    :cond_a
    iget-object v11, v0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    sub-int v16, v6, v10

    move-object/from16 v12, p1

    invoke-static/range {v11 .. v18}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 944
    iget-object v2, v0, Lcom/narvii/feed/FeedHelper;->source:Ljava/lang/String;

    const-string v3, "Source"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 945
    iget-object v2, v0, Lcom/narvii/feed/FeedHelper;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    if-nez v2, :cond_b

    goto :goto_8

    :cond_b
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    :goto_8
    const-string v2, "loggingOrigin"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v1
.end method

.method public getHighLightColor()I
    .locals 6

    .line 742
    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "config"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 743
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result v1

    .line 744
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorHighlight()I

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 746
    invoke-static {v1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v1, 0x1

    .line 747
    aget v2, v0, v1

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 748
    aget v2, v0, v1

    float-to-double v2, v2

    const-wide v4, 0x3ff199999999999aL    # 1.1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-float v2, v2

    aput v2, v0, v1

    .line 749
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    return v0
.end method

.method public getQuizHintInfo(Lcom/narvii/model/Blog;)Ljava/lang/String;
    .locals 7

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 758
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getQuizPlayedTimes()I

    move-result v0

    .line 759
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getQuizQuestionCount()I

    move-result v1

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v0, v2, :cond_1

    .line 760
    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 761
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0f0e6f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 762
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f0f0e75

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v1, :cond_2

    .line 764
    iget-object p1, p1, Lcom/narvii/model/Blog;->quizQuestionList:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 765
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :cond_2
    if-eqz v1, :cond_3

    .line 768
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  \u2022  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const v2, 0x7f0f0e5f

    new-array v4, v4, [Ljava/lang/Object;

    .line 770
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v3

    .line 769
    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public getTextOnlyBackground()Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 704
    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "config"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 705
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result v1

    .line 706
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorHighlight()I

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 708
    invoke-static {v1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v2, 0x1

    .line 709
    aget v3, v0, v2

    float-to-double v3, v3

    const-wide/high16 v5, 0x3fe8000000000000L    # 0.75

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-float v3, v3

    aput v3, v0, v2

    const/4 v3, 0x2

    .line 710
    aget v4, v0, v3

    float-to-double v4, v4

    const-wide v6, 0x3ff199999999999aL    # 1.1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-float v4, v4

    aput v4, v0, v3

    .line 711
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 712
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v2, v2, [I

    const/4 v4, 0x0

    const v5, 0x10100a7

    aput v5, v2, v4

    .line 713
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 714
    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v3
.end method

.method public getTextOnlyBackground(Lcom/narvii/model/Community;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    .line 719
    invoke-virtual {p0, p1, v0}, Lcom/narvii/feed/FeedHelper;->getTextOnlyBackground(Lcom/narvii/model/Community;F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getTextOnlyBackground(Lcom/narvii/model/Community;F)Landroid/graphics/drawable/Drawable;
    .locals 7

    if-nez p1, :cond_0

    .line 723
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f06007a

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/Community;->themeColor()I

    move-result p1

    :goto_0
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 726
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v1, 0x1

    .line 727
    aget v2, v0, v1

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-float v2, v2

    aput v2, v0, v1

    const/4 v2, 0x2

    .line 728
    aget v3, v0, v2

    float-to-double v3, v3

    const-wide v5, 0x3ff199999999999aL    # 1.1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-float v3, v3

    aput v3, v0, v2

    .line 729
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 730
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v5, v2, [I

    const/4 v6, 0x0

    aput v0, v5, v6

    aput v0, v5, v1

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 731
    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 732
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v2, [I

    aput p1, v2, v6

    aput p1, v2, v1

    invoke-direct {v0, v4, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 733
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 734
    new-instance p1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array p2, v1, [I

    const v1, 0x10100a7

    aput v1, p2, v6

    .line 735
    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 736
    sget-object p2, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {p1, p2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method public loadQuizQuestionList(Lcom/narvii/model/Blog;Lcom/narvii/util/Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/Blog;",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/Blog;",
            ">;)V"
        }
    .end annotation

    .line 776
    const-class v0, Lcom/narvii/model/api/BlogResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/feed/FeedHelper;->needLoadingQuizQuestions(Lcom/narvii/model/Blog;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    .line 778
    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 782
    :cond_1
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v2, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 783
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 784
    iget-object v2, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    const-string v3, "config"

    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/config/ConfigService;

    .line 785
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v2

    .line 786
    iget-object v3, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    const-string v4, "api"

    invoke-interface {v3, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/util/http/ApiService;

    .line 787
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/blog/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    if-nez v2, :cond_2

    .line 789
    iget p1, p1, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {v4, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 791
    :cond_2
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    new-instance v2, Lcom/narvii/feed/FeedHelper$11;

    invoke-direct {v2, p0, v0, v1, p2}, Lcom/narvii/feed/FeedHelper$11;-><init>(Lcom/narvii/feed/FeedHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/util/Callback;)V

    invoke-virtual {v3, p1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public needLoadingQuizQuestions(Lcom/narvii/model/Blog;)Z
    .locals 0

    .line 655
    iget-object p1, p1, Lcom/narvii/model/Blog;->quizQuestionList:Ljava/util/List;

    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public refreshAndEdit(Lcom/narvii/model/Feed;)V
    .locals 4

    .line 287
    instance-of v0, p1, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_1

    .line 288
    move-object v0, p1

    check-cast v0, Lcom/narvii/model/Blog;

    .line 289
    iget-object v0, v0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    if-nez v0, :cond_0

    .line 290
    const-class v0, Lcom/narvii/model/api/BlogResponse;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 292
    invoke-direct {p0, p1, v0, v0}, Lcom/narvii/feed/FeedHelper;->edit(Lcom/narvii/model/Feed;Ljava/util/List;Ljava/util/List;)V

    return-void

    .line 295
    :cond_1
    instance-of v0, p1, Lcom/narvii/model/Item;

    if-eqz v0, :cond_2

    .line 296
    const-class v0, Lcom/narvii/model/api/ItemResponse;

    .line 301
    :goto_0
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v2, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 302
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->apiTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    .line 306
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v2, "action"

    const-string v3, "edit"

    .line 308
    invoke-virtual {p1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 309
    iget-object v2, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    const-string v3, "api"

    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 310
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    new-instance v3, Lcom/narvii/feed/FeedHelper$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/narvii/feed/FeedHelper$2;-><init>(Lcom/narvii/feed/FeedHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    invoke-virtual {v2, p1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void

    .line 298
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public repost(Lcom/narvii/model/Feed;)V
    .locals 5

    .line 121
    new-instance v0, Lcom/narvii/repost/RepostPost;

    invoke-direct {v0}, Lcom/narvii/repost/RepostPost;-><init>()V

    const/4 v1, 0x2

    .line 122
    iput v1, v0, Lcom/narvii/repost/RepostPost;->type:I

    .line 123
    instance-of v1, p1, Lcom/narvii/model/Blog;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 124
    move-object v1, p1

    check-cast v1, Lcom/narvii/model/Blog;

    .line 125
    iget-object v3, v1, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    if-eqz v3, :cond_1

    .line 126
    iget-object v3, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    const-string v4, "account"

    invoke-interface {v3, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/account/AccountService;

    .line 127
    iget-object p1, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 128
    iget-object p1, v1, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    .line 129
    iget-object v2, v1, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    iput-object v2, v0, Lcom/narvii/repost/RepostPost;->content:Ljava/lang/String;

    move-object v2, p1

    .line 131
    :cond_0
    iget-object p1, v1, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 134
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->objectType()I

    move-result v1

    iput v1, v0, Lcom/narvii/repost/RepostPost;->refObjectType:I

    .line 135
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/repost/RepostPost;->refObjectId:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/repost/RepostPost;->previewImage:Lcom/narvii/model/Media;

    .line 137
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/repost/RepostPost;->previewTitle:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->content()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/repost/RepostPost;->previewContent:Ljava/lang/String;

    .line 139
    iget-boolean v1, p1, Lcom/narvii/model/Feed;->needHidden:Z

    iput-boolean v1, v0, Lcom/narvii/repost/RepostPost;->needHidden:Z

    .line 141
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/narvii/repost/RepostActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v3

    const-string v4, "refObjectId"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "repostBlogId"

    .line 143
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "post"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->source:Ljava/lang/String;

    const-string v2, "Source"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    instance-of v0, p1, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/narvii/model/Blog;

    iget p1, p1, Lcom/narvii/model/Blog;->type:I

    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    const-string p1, "imageType"

    const-string v0, "story-cover"

    .line 147
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    :cond_2
    invoke-virtual {p0, v1}, Lcom/narvii/feed/FeedHelper;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public showExternalSourceNotAvailable()V
    .locals 4

    .line 823
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    iget-object v1, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f040f

    .line 824
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    const v1, 0x7f0f03aa

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 825
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 826
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method public showShareFeedDialog(Lcom/narvii/model/Feed;Z)V
    .locals 8

    .line 193
    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 194
    new-instance v1, Lcom/narvii/util/dialog/ActionSheetDialog;

    iget-object v2, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 197
    iget-object v2, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 198
    :goto_0
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 197
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x10

    new-array v3, v3, [I

    const/4 v4, 0x0

    if-nez v2, :cond_1

    const v5, 0x7f0f0ee0

    .line 204
    invoke-virtual {v1, v5, v4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    aput v5, v3, v4

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const v6, 0x7f0f02f5

    .line 208
    invoke-virtual {v1, v6, v4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    add-int/lit8 v7, v5, 0x1

    .line 209
    aput v6, v3, v5

    if-eqz p2, :cond_2

    const p2, 0x7f0f10fb

    .line 213
    invoke-virtual {v1, p2, v4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    add-int/lit8 v5, v7, 0x1

    .line 214
    aput p2, v3, v7

    goto :goto_2

    :cond_2
    const p2, 0x7f0f0170

    .line 216
    invoke-virtual {v1, p2, v4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    add-int/lit8 v5, v7, 0x1

    .line 217
    aput p2, v3, v7

    :goto_2
    if-eqz v2, :cond_3

    const p2, 0x7f0f03cd

    .line 221
    invoke-virtual {v1, p2, v4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    add-int/lit8 v6, v5, 0x1

    .line 222
    aput p2, v3, v5

    move v5, v6

    :cond_3
    if-nez v2, :cond_4

    const p2, 0x7f0f06d5

    .line 227
    invoke-virtual {v1, p2, v4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    add-int/lit8 v2, v5, 0x1

    .line 228
    aput p2, v3, v5

    goto :goto_3

    :cond_4
    move v2, v5

    .line 231
    :goto_3
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/model/User;->isCurator()Z

    move-result p2

    if-eqz p2, :cond_5

    const p2, 0x7f0b0167

    const v0, 0x7f0f0094

    .line 232
    invoke-virtual {v1, v0, v4, p2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(III)V

    .line 233
    aput v0, v3, v2

    .line 235
    :cond_5
    new-instance p2, Lcom/narvii/feed/FeedHelper$1;

    invoke-direct {p2, p0, v3, p1}, Lcom/narvii/feed/FeedHelper$1;-><init>(Lcom/narvii/feed/FeedHelper;[ILcom/narvii/model/Feed;)V

    invoke-virtual {v1, p2}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 281
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void
.end method

.method public source(Ljava/lang/String;)Lcom/narvii/feed/FeedHelper;
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/narvii/feed/FeedHelper;->source:Ljava/lang/String;

    return-object p0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startLocalQuiz(Lcom/narvii/model/Blog;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 660
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/feed/FeedHelper;->startLocalQuiz(Lcom/narvii/model/Blog;Landroid/content/Intent;Z)V

    return-void
.end method

.method public startLocalQuiz(Lcom/narvii/model/Blog;Landroid/content/Intent;Z)V
    .locals 2

    .line 664
    const-class v0, Lcom/narvii/quiz/QuizWelcomeFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hellMode"

    .line 665
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-nez p1, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 666
    :cond_0
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    const-string v1, "quiz"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_1

    .line 667
    iget p3, p1, Lcom/narvii/model/Feed;->ndcId:I

    const/4 v1, -0x1

    if-eq p3, v1, :cond_1

    const-string v1, "__communityId"

    .line 668
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 670
    :cond_1
    invoke-virtual {p0, p2, v0}, Lcom/narvii/feed/FeedHelper;->addQuizListExtra(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 671
    invoke-virtual {p0, v0}, Lcom/narvii/feed/FeedHelper;->startActivity(Landroid/content/Intent;)V

    .line 673
    iget-object p2, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    const-string p3, "logging"

    invoke-interface {p2, p3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/logging/LoggingService;

    .line 674
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 675
    iget v0, p1, Lcom/narvii/model/Feed;->ndcId:I

    if-lez v0, :cond_2

    const-string v0, "ndcId"

    .line 676
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    iget v0, p1, Lcom/narvii/model/Feed;->ndcId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v0, "objectId"

    .line 679
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    if-eqz p1, :cond_3

    const-string p1, "eventSource"

    .line 682
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    :cond_3
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    if-eqz p1, :cond_4

    const-string p1, "eventOrigin"

    .line 686
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    :cond_4
    invoke-virtual {p3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p1

    const-string p3, "PlayQuizStarting"

    invoke-interface {p2, p3, p1}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public startQuiz(Lcom/narvii/model/Blog;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 651
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/feed/FeedHelper;->startQuiz(Lcom/narvii/model/Blog;Landroid/content/Intent;Z)V

    return-void
.end method

.method public startQuiz(Lcom/narvii/model/Blog;Landroid/content/Intent;Z)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 581
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_2

    .line 582
    new-instance p1, Landroid/content/Intent;

    const-string p2, "ndc://login"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p1, p3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 583
    sget-object p2, Lcom/narvii/account/LoginActivity$PromptType;->Required:Lcom/narvii/account/LoginActivity$PromptType;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    const-string p3, "promptType"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/narvii/feed/FeedHelper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p1, "unable to start login activity"

    .line 587
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 589
    :goto_0
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper;->startQuizListener:Lcom/narvii/feed/FeedHelper$StartQuizListener;

    if-eqz p1, :cond_1

    .line 590
    invoke-interface {p1}, Lcom/narvii/feed/FeedHelper$StartQuizListener;->onQuizStartFailed()V

    .line 592
    :cond_1
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0f0b08

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void

    .line 595
    :cond_2
    invoke-virtual {p0, p1}, Lcom/narvii/feed/FeedHelper;->needLoadingQuizQuestions(Lcom/narvii/model/Blog;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 596
    new-instance v4, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/narvii/model/api/BlogResponse;

    invoke-direct {v4, v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 597
    iget-boolean v0, p0, Lcom/narvii/feed/FeedHelper;->showProgressWhenLoadingQuiz:Z

    if-eqz v0, :cond_3

    .line 598
    invoke-virtual {v4}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 600
    :cond_3
    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 601
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/blog/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 602
    iget v2, p1, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 603
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v8

    new-instance v9, Lcom/narvii/feed/FeedHelper$10;

    const-class v3, Lcom/narvii/model/api/BlogResponse;

    move-object v1, v9

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/narvii/feed/FeedHelper$10;-><init>(Lcom/narvii/feed/FeedHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/model/Blog;Landroid/content/Intent;Z)V

    invoke-virtual {v0, v8, v9}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    goto :goto_1

    .line 643
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/feed/FeedHelper;->startLocalQuiz(Lcom/narvii/model/Blog;Landroid/content/Intent;Z)V

    .line 644
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper;->startQuizListener:Lcom/narvii/feed/FeedHelper$StartQuizListener;

    if-eqz p1, :cond_5

    .line 645
    invoke-interface {p1}, Lcom/narvii/feed/FeedHelper$StartQuizListener;->onQuizStarted()V

    :cond_5
    :goto_1
    return-void
.end method

.method public unBookmark(Lcom/narvii/model/Feed;Lcom/narvii/util/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/Feed;",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    .line 182
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 183
    iput-object p2, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 184
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 185
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/bookmark/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 186
    new-instance p2, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {p2}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    invoke-virtual {p2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 187
    iget-object p2, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    invoke-interface {p2, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/http/ApiService;

    .line 188
    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p2, p1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public vote(Lcom/narvii/model/Feed;ILcom/narvii/util/Callback;Lcom/narvii/util/Callback;Lcom/narvii/util/logging/LoggingSource;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/Feed;",
            "I",
            "Lcom/narvii/util/Callback;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/narvii/util/logging/LoggingSource;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    .line 835
    invoke-interface {p4, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 840
    :cond_1
    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-static {v0}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 843
    new-instance p2, Lcom/narvii/util/dialog/ActionSheetDialog;

    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f1105

    const/4 v1, 0x1

    .line 844
    invoke-virtual {p2, v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    const v0, 0x7f0f029c

    const/4 v1, 0x0

    .line 845
    invoke-virtual {p2, v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 846
    new-instance v0, Lcom/narvii/feed/FeedHelper$12;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/narvii/feed/FeedHelper$12;-><init>(Lcom/narvii/feed/FeedHelper;Lcom/narvii/model/Feed;Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;Lcom/narvii/util/logging/LoggingSource;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 858
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void

    :cond_2
    if-nez p2, :cond_3

    const/4 p2, 0x4

    const/4 v2, 0x4

    goto :goto_0

    :cond_3
    move v2, p2

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 864
    invoke-direct/range {v0 .. v6}, Lcom/narvii/feed/FeedHelper;->voteFeed(Lcom/narvii/model/Feed;ILcom/narvii/util/Callback;Lcom/narvii/util/Callback;Lcom/narvii/util/logging/LoggingSource;Ljava/lang/String;)V

    return-void
.end method
