.class public Lcom/narvii/story/StoryListFragment$IntentBuilder;
.super Ljava/lang/Object;
.source "StoryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/StoryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentBuilder"
.end annotation


# instance fields
.field intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/narvii/model/Feed;)V
    .locals 2

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    const-class v0, Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/story/StoryListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    .line 327
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    sget-object v1, Lcom/narvii/story/StoryListFragment;->KEY_FEED:Ljava/lang/String;

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public autoLoadNextPage(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    sget-object v1, Lcom/narvii/story/StoryListFragment;->KEY_AUTO_LOAD_NEXT_PAGE:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public build()Landroid/content/Intent;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public forceVideoAutoPlay(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    sget-object v1, Lcom/narvii/story/StoryListFragment;->KEY_FORCE_VIDEO_AUTO_PLAY:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public initFeedCommunity(Lcom/narvii/model/Community;)Lcom/narvii/story/StoryListFragment$IntentBuilder;
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    sget-object v1, Lcom/narvii/story/StoryListFragment;->KEY_FEED_COMMUNITY:Ljava/lang/String;

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public initFeedUser(Lcom/narvii/model/User;)Lcom/narvii/story/StoryListFragment$IntentBuilder;
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    sget-object v1, Lcom/narvii/story/StoryListFragment;->KEY_FEED_USER:Ljava/lang/String;

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public justCreated(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    sget-object v1, Lcom/narvii/story/StoryListFragment;->KEY_JUST_CREATED:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public loadRawVideo(Ljava/lang/Boolean;)Lcom/narvii/story/StoryListFragment$IntentBuilder;
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    sget-object v1, Lcom/narvii/story/StoryListFragment;->KEY_LOAD_RAW_VIDEO:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object p0
.end method

.method public pathSuffix(Ljava/lang/String;)Lcom/narvii/story/StoryListFragment$IntentBuilder;
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    sget-object v1, Lcom/narvii/story/StoryListFragment;->KEY_PATH_SUFFIX:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public searchKeyWord(Ljava/lang/String;)Lcom/narvii/story/StoryListFragment$IntentBuilder;
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    sget-object v1, Lcom/narvii/story/StoryListFragment;->KEY_KEY_WORD:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public showCommentBar(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    sget-object v1, Lcom/narvii/story/StoryListFragment;->KEY_SHOW_COMMENT_BAR:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public source(Ljava/lang/String;)Lcom/narvii/story/StoryListFragment$IntentBuilder;
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    sget-object v1, Lcom/narvii/story/StoryListFragment;->KEY_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public topicId(I)Lcom/narvii/story/StoryListFragment$IntentBuilder;
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    sget-object v1, Lcom/narvii/story/StoryListFragment;->KEY_TOPIC_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method

.method public uid(Ljava/lang/String;)Lcom/narvii/story/StoryListFragment$IntentBuilder;
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    sget-object v1, Lcom/narvii/story/StoryListFragment;->KEY_UID:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method
