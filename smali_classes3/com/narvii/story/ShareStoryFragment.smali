.class public Lcom/narvii/story/ShareStoryFragment;
.super Lcom/narvii/list/NVListFragment;
.source "ShareStoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/story/ShareStoryFragment$CreateBlogPostTask;,
        Lcom/narvii/story/ShareStoryFragment$Adapter;,
        Lcom/narvii/story/ShareStoryFragment$SingleItemAdapter;,
        Lcom/narvii/story/ShareStoryFragment$BlankAdapter;,
        Lcom/narvii/story/ShareStoryFragment$SectionAdapter;
    }
.end annotation


# static fields
.field private static final REQUEST_CODE_LOGIN:I = 0xfd10

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field private cancelDraftDir:Ljava/lang/String;

.field private draftDir:Ljava/lang/String;

.field private draftManager:Lcom/narvii/post/DraftManager;

.field private globalItemAdapter:Lcom/narvii/story/ShareStoryFragment$SingleItemAdapter;

.field private originDraftDir:Ljava/lang/String;

.field private packageUtils:Lcom/narvii/util/PackageUtils;

.field private pageAdapter:Lcom/narvii/story/ShareStoryFragment$Adapter;

.field private photoManager:Lcom/narvii/photos/PhotoManager;

.field private progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

.field private shareInfo:Lcom/narvii/scene/model/StoryShareInfo;

.field private uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    const-class v0, Lcom/narvii/story/ShareStoryFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/narvii/story/ShareStoryFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/story/ShareStoryFragment;)Lcom/narvii/story/ShareStoryFragment$Adapter;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/narvii/story/ShareStoryFragment;->pageAdapter:Lcom/narvii/story/ShareStoryFragment$Adapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/story/ShareStoryFragment;)Lcom/narvii/util/dialog/ProgressDialog;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/narvii/story/ShareStoryFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$102(Lcom/narvii/story/ShareStoryFragment;Lcom/narvii/util/dialog/ProgressDialog;)Lcom/narvii/util/dialog/ProgressDialog;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/narvii/story/ShareStoryFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/narvii/story/ShareStoryFragment;I)Lcom/narvii/blog/post/BlogPost;
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/narvii/story/ShareStoryFragment;->createBlogPost(I)Lcom/narvii/blog/post/BlogPost;

    move-result-object p0

    return-object p0
.end method

.method private correctFilePathParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 460
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 463
    :cond_0
    sget-object v0, Lcom/narvii/story/ShareStoryFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "correctFilePathParam  >>> oldDraftId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    newDraftId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   param = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/narvii/story/ShareStoryFragment;->originDraftDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/narvii/story/ShareStoryFragment;->packageUtils:Lcom/narvii/util/PackageUtils;

    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->getMasterPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/story/ShareStoryFragment;->packageUtils:Lcom/narvii/util/PackageUtils;

    invoke-virtual {v1}, Lcom/narvii/util/PackageUtils;->getStoryboardName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/story/ShareStoryFragment;->originDraftDir:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/story/ShareStoryFragment;->draftManager:Lcom/narvii/post/DraftManager;

    .line 470
    invoke-virtual {v1, p3}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 471
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, p1

    .line 474
    :goto_0
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 475
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 477
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 479
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p3, p1}, Lcom/narvii/util/Utils;->moveFile(Ljava/io/File;Ljava/io/File;Z)V

    .line 482
    :cond_3
    sget-object p1, Lcom/narvii/story/ShareStoryFragment;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ">>>  newPath = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method private createBlogPost(I)Lcom/narvii/blog/post/BlogPost;
    .locals 9

    const-string v0, "_"

    .line 402
    new-instance v1, Lcom/narvii/blog/post/BlogPost;

    invoke-direct {v1}, Lcom/narvii/blog/post/BlogPost;-><init>()V

    const/16 v2, 0x9

    .line 403
    iput v2, v1, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 404
    sget v2, Lcom/narvii/blog/post/BlogPost;->FROM_STORY_EDITOR:I

    iput v2, v1, Lcom/narvii/blog/post/BlogPost;->from:I

    .line 405
    new-instance v2, Lcom/narvii/post/DraftManager;

    invoke-direct {v2, p0, p1}, Lcom/narvii/post/DraftManager;-><init>(Lcom/narvii/app/NVContext;I)V

    iput-object v2, p0, Lcom/narvii/story/ShareStoryFragment;->draftManager:Lcom/narvii/post/DraftManager;

    .line 406
    iget-object p1, p0, Lcom/narvii/story/ShareStoryFragment;->draftManager:Lcom/narvii/post/DraftManager;

    const/4 v2, 0x0

    const-string v3, "story"

    invoke-virtual {p1, v3, v2, v1}, Lcom/narvii/post/DraftManager;->createDraft(Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/narvii/post/PostObject;)Ljava/lang/String;

    move-result-object p1

    .line 409
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/narvii/story/ShareStoryFragment;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 413
    iget-object v4, p0, Lcom/narvii/story/ShareStoryFragment;->draftManager:Lcom/narvii/post/DraftManager;

    invoke-virtual {v4, p1}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 414
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/narvii/story/ShareStoryFragment;->draftDir:Ljava/lang/String;

    .line 416
    sget-object v5, Lcom/narvii/story/ShareStoryFragment;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CreateBlogPostTask extract zip >>> dir -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/narvii/story/ShareStoryFragment;->draftDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-static {v3, v4}, Lcom/narvii/util/ZipUtils;->extract(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 423
    iget-object v3, p0, Lcom/narvii/story/ShareStoryFragment;->shareInfo:Lcom/narvii/scene/model/StoryShareInfo;

    if-nez v3, :cond_0

    .line 424
    iget-object v3, p0, Lcom/narvii/story/ShareStoryFragment;->draftManager:Lcom/narvii/post/DraftManager;

    const-class v4, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {v3, p1, v4}, Lcom/narvii/post/DraftManager;->readPost(Ljava/lang/String;Ljava/lang/Class;)Lcom/narvii/post/PostObject;

    move-result-object v3

    check-cast v3, Lcom/narvii/blog/post/BlogPost;

    .line 425
    iget-object v4, v3, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-direct {p0, v4, p1}, Lcom/narvii/story/ShareStoryFragment;->filterSceneDraft(Lcom/narvii/scene/model/SceneDraft;Ljava/lang/String;)Lcom/narvii/scene/model/SceneDraft;

    move-result-object v4

    iput-object v4, v1, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 426
    iget-object v3, v3, Lcom/narvii/blog/post/BlogPost;->title:Ljava/lang/String;

    iput-object v3, v1, Lcom/narvii/blog/post/BlogPost;->title:Ljava/lang/String;

    goto :goto_0

    .line 428
    :cond_0
    iget-object v3, p0, Lcom/narvii/story/ShareStoryFragment;->shareInfo:Lcom/narvii/scene/model/StoryShareInfo;

    iget-object v3, v3, Lcom/narvii/scene/model/StoryShareInfo;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-direct {p0, v3, p1}, Lcom/narvii/story/ShareStoryFragment;->filterSceneDraft(Lcom/narvii/scene/model/SceneDraft;Ljava/lang/String;)Lcom/narvii/scene/model/SceneDraft;

    move-result-object v3

    iput-object v3, v1, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 429
    iget-object v3, p0, Lcom/narvii/story/ShareStoryFragment;->shareInfo:Lcom/narvii/scene/model/StoryShareInfo;

    iget-object v3, v3, Lcom/narvii/scene/model/StoryShareInfo;->title:Ljava/lang/String;

    iput-object v3, v1, Lcom/narvii/blog/post/BlogPost;->title:Ljava/lang/String;

    .line 431
    :goto_0
    iget-object v3, v1, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-virtual {v3}, Lcom/narvii/scene/model/SceneDraft;->getFirstSceneCoverImagePath()Ljava/lang/String;

    move-result-object v3

    .line 432
    iget-object v4, v1, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    iput-object v2, v4, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 433
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 434
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/narvii/story/ShareStoryFragment;->draftManager:Lcom/narvii/post/DraftManager;

    invoke-virtual {v5, p1}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    iget-object v6, v1, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    iget-object v6, v6, Lcom/narvii/scene/model/SceneDraft;->globalFileFolder:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 435
    invoke-static {v4}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 436
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 438
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "scene_cover_image"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".jpg"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 438
    invoke-static {v5, v3, v4, v0}, Lcom/narvii/util/FileUtils;->copyFile(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 441
    new-instance v3, Lcom/narvii/model/Media;

    invoke-direct {v3}, Lcom/narvii/model/Media;-><init>()V

    const/16 v4, 0x64

    .line 442
    iput v4, v3, Lcom/narvii/model/Media;->type:I

    .line 443
    iget-object v4, p0, Lcom/narvii/story/ShareStoryFragment;->photoManager:Lcom/narvii/photos/PhotoManager;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/narvii/photos/PhotoManager;->getUri(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 444
    iget-object v0, v1, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-virtual {v3}, Lcom/narvii/model/Media;->getMediaUrl()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/narvii/scene/model/SceneDraft;->coverImage:Ljava/lang/String;

    .line 445
    invoke-virtual {v1, v3}, Lcom/narvii/blog/post/BlogPost;->setCoverMedia(Lcom/narvii/model/Media;)V

    .line 447
    :cond_2
    iget-object v0, p0, Lcom/narvii/story/ShareStoryFragment;->draftManager:Lcom/narvii/post/DraftManager;

    invoke-virtual {v0, p1, v1}, Lcom/narvii/post/DraftManager;->savePost(Ljava/lang/String;Lcom/narvii/post/PostObject;)Z

    goto :goto_1

    .line 449
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "extract zip failed"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 453
    sget-object v0, Lcom/narvii/story/ShareStoryFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createBlogPost exception : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    :cond_4
    :goto_1
    return-object v1
.end method

.method private filterSceneDraft(Lcom/narvii/scene/model/SceneDraft;Ljava/lang/String;)Lcom/narvii/scene/model/SceneDraft;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_9

    .line 489
    invoke-virtual {p1}, Lcom/narvii/scene/model/SceneDraft;->generateMetadata()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    iput-object v0, p1, Lcom/narvii/scene/model/SceneDraft;->metadata:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 490
    iget-object v0, p1, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/scene/model/SceneInfo;

    if-eqz v1, :cond_0

    .line 491
    invoke-virtual {v1}, Lcom/narvii/scene/model/SceneInfo;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 494
    :cond_1
    invoke-virtual {v1}, Lcom/narvii/scene/model/SceneInfo;->generateMetadata()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    iput-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->metadata:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 495
    iget-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->coverImage:Ljava/lang/String;

    iget-object v3, p1, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    invoke-direct {p0, v2, v3, p2}, Lcom/narvii/story/ShareStoryFragment;->correctFilePathParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->coverImage:Ljava/lang/String;

    .line 496
    iget-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->outputUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    invoke-direct {p0, v2, v3, p2}, Lcom/narvii/story/ShareStoryFragment;->correctFilePathParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->outputUrl:Ljava/lang/String;

    .line 498
    iget-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->question:Lcom/narvii/model/QuizQuestion;

    if-eqz v2, :cond_4

    .line 499
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 500
    iget-object v3, v1, Lcom/narvii/scene/model/SceneInfo;->question:Lcom/narvii/model/QuizQuestion;

    invoke-virtual {v3}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/QuizOption;

    if-eqz v4, :cond_2

    .line 501
    iget-object v5, v4, Lcom/narvii/model/QuizOption;->mediaList:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 502
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/model/Media;

    .line 503
    iget-object v7, p0, Lcom/narvii/story/ShareStoryFragment;->photoManager:Lcom/narvii/photos/PhotoManager;

    iget-object v8, v6, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p1, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    invoke-direct {p0, v7, v8, p2}, Lcom/narvii/story/ShareStoryFragment;->correctFilePathParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 504
    iget-object v8, p0, Lcom/narvii/story/ShareStoryFragment;->photoManager:Lcom/narvii/photos/PhotoManager;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/narvii/photos/PhotoManager;->getUri(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    goto :goto_2

    .line 507
    :cond_2
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 509
    :cond_3
    iget-object v3, v1, Lcom/narvii/scene/model/SceneInfo;->question:Lcom/narvii/model/QuizQuestion;

    invoke-virtual {v3, v2}, Lcom/narvii/model/QuizQuestion;->setQuizOptions(Ljava/util/List;)V

    .line 512
    :cond_4
    iget-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    if-eqz v2, :cond_6

    .line 513
    iget-object v2, v2, Lcom/narvii/model/PollAttach;->polloptList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/PollOption;

    if-eqz v3, :cond_5

    .line 514
    iget-object v3, v3, Lcom/narvii/model/PollOption;->mediaList:Ljava/util/List;

    if-eqz v3, :cond_5

    .line 515
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/Media;

    .line 516
    iget-object v5, p0, Lcom/narvii/story/ShareStoryFragment;->photoManager:Lcom/narvii/photos/PhotoManager;

    iget-object v6, v4, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    invoke-direct {p0, v5, v6, p2}, Lcom/narvii/story/ShareStoryFragment;->correctFilePathParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 517
    iget-object v6, p0, Lcom/narvii/story/ShareStoryFragment;->photoManager:Lcom/narvii/photos/PhotoManager;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/narvii/photos/PhotoManager;->getUri(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    goto :goto_3

    .line 523
    :cond_6
    iget-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 524
    iget-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    invoke-virtual {v2, v3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    :cond_7
    const/4 v2, 0x0

    .line 526
    iput-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->inputFilePathList:Ljava/util/List;

    .line 527
    iget-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->outputUrl:Ljava/lang/String;

    iput-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->previewFilePath:Ljava/lang/String;

    .line 528
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    .line 529
    new-instance v2, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-direct {v2}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    .line 530
    iget-object v3, v1, Lcom/narvii/scene/model/SceneInfo;->outputUrl:Ljava/lang/String;

    iput-object v3, v2, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 531
    iget-wide v3, v1, Lcom/narvii/scene/model/SceneInfo;->duration:J

    long-to-int v4, v3

    iput v4, v2, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    iput v4, v2, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 532
    iget-object v3, v1, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    .line 534
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    .line 535
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->stickers:Ljava/util/ArrayList;

    .line 536
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->pipClips:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 538
    :cond_8
    iput-object p2, p1, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    :cond_9
    return-object p1
.end method

.method private launchStoryPost(Lcom/narvii/model/Community;Lcom/narvii/blog/post/BlogPost;)V
    .locals 3

    .line 388
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/narvii/blog/post/StoryPostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 389
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "post"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 390
    iget-object p2, p2, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz p2, :cond_0

    .line 391
    iget-object p2, p2, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    const-string v1, "draftId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p1, :cond_1

    .line 394
    iget p1, p1, Lcom/narvii/model/Community;->id:I

    const-string p2, "__communityId"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    const-string p1, "Source"

    const-string p2, "Share Story"

    .line 396
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 398
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 174
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 176
    new-instance v0, Lcom/narvii/story/ShareStoryFragment$SingleItemAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/story/ShareStoryFragment$SingleItemAdapter;-><init>(Lcom/narvii/story/ShareStoryFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/story/ShareStoryFragment;->globalItemAdapter:Lcom/narvii/story/ShareStoryFragment$SingleItemAdapter;

    .line 177
    new-instance v0, Lcom/narvii/story/ShareStoryFragment$Adapter;

    invoke-direct {v0, p0}, Lcom/narvii/story/ShareStoryFragment$Adapter;-><init>(Lcom/narvii/story/ShareStoryFragment;)V

    iput-object v0, p0, Lcom/narvii/story/ShareStoryFragment;->pageAdapter:Lcom/narvii/story/ShareStoryFragment$Adapter;

    .line 178
    new-instance v0, Lcom/narvii/story/ShareStoryFragment$SectionAdapter;

    const v1, 0x7f0f0731

    invoke-direct {v0, p0, v1}, Lcom/narvii/story/ShareStoryFragment$SectionAdapter;-><init>(Lcom/narvii/story/ShareStoryFragment;I)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 179
    new-instance v0, Lcom/narvii/story/ShareStoryFragment$BlankAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/story/ShareStoryFragment$BlankAdapter;-><init>(Lcom/narvii/story/ShareStoryFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 180
    iget-object v0, p0, Lcom/narvii/story/ShareStoryFragment;->globalItemAdapter:Lcom/narvii/story/ShareStoryFragment$SingleItemAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 181
    new-instance v0, Lcom/narvii/story/ShareStoryFragment$BlankAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/story/ShareStoryFragment$BlankAdapter;-><init>(Lcom/narvii/story/ShareStoryFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 182
    new-instance v0, Lcom/narvii/story/ShareStoryFragment$1;

    const v1, 0x7f0f0bea

    invoke-direct {v0, p0, v1}, Lcom/narvii/story/ShareStoryFragment$1;-><init>(Lcom/narvii/story/ShareStoryFragment;I)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 188
    new-instance v0, Lcom/narvii/story/ShareStoryFragment$BlankAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/story/ShareStoryFragment$BlankAdapter;-><init>(Lcom/narvii/story/ShareStoryFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 189
    iget-object v0, p0, Lcom/narvii/story/ShareStoryFragment;->pageAdapter:Lcom/narvii/story/ShareStoryFragment$Adapter;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    return-object p1
.end method

.method protected getActionBarCustomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 134
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public synthetic lambda$toStoryPost$0$ShareStoryFragment(Lcom/narvii/story/ShareStoryFragment$CreateBlogPostTask;Landroid/content/DialogInterface;)V
    .locals 0

    .line 366
    iget-object p2, p0, Lcom/narvii/story/ShareStoryFragment;->draftDir:Ljava/lang/String;

    iput-object p2, p0, Lcom/narvii/story/ShareStoryFragment;->cancelDraftDir:Ljava/lang/String;

    const/4 p2, 0x1

    .line 367
    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->cancel(Z)Z

    return-void
.end method

.method public synthetic lambda$toStoryPost$1$ShareStoryFragment(Lcom/narvii/model/Community;Lcom/narvii/blog/post/BlogPost;)V
    .locals 2

    .line 370
    sget-object v0, Lcom/narvii/story/ShareStoryFragment;->TAG:Ljava/lang/String;

    const-string v1, "CreateBlogPostTask success >>> "

    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const p1, 0x7f0f0c4b

    .line 372
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->showShortToast(I)V

    .line 373
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    goto :goto_0

    .line 375
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/story/ShareStoryFragment;->launchStoryPost(Lcom/narvii/model/Community;Lcom/narvii/blog/post/BlogPost;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$toStoryPost$2$ShareStoryFragment(Ljava/lang/Boolean;)V
    .locals 2

    .line 379
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/story/ShareStoryFragment;->cancelDraftDir:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/narvii/story/ShareStoryFragment;->cancelDraftDir:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 380
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/narvii/story/ShareStoryFragment;->cancelDraftDir:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 381
    sget-object p1, Lcom/narvii/story/ShareStoryFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CreateBlogPostTask Cancel >>> delete -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/story/ShareStoryFragment;->cancelDraftDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 157
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    const p3, 0xfd10

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 158
    iget-object p1, p0, Lcom/narvii/story/ShareStoryFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 159
    iget-object p1, p0, Lcom/narvii/story/ShareStoryFragment;->pageAdapter:Lcom/narvii/story/ShareStoryFragment$Adapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    return-void

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 89
    const-class v0, Lcom/narvii/scene/model/StoryShareInfo;

    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    .line 91
    invoke-static {p0, v1}, Lcom/narvii/util/statusbar/StatusBarUtils;->setSystemUiFlagLightStatusBar(Lcom/narvii/app/NVContext;Z)V

    const-string v2, "account"

    .line 93
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/account/AccountService;

    iput-object v2, p0, Lcom/narvii/story/ShareStoryFragment;->accountService:Lcom/narvii/account/AccountService;

    const-string v2, "photo"

    .line 95
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/photos/PhotoManager;

    iput-object v2, p0, Lcom/narvii/story/ShareStoryFragment;->photoManager:Lcom/narvii/photos/PhotoManager;

    .line 97
    new-instance v2, Lcom/narvii/util/PackageUtils;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/narvii/story/ShareStoryFragment;->packageUtils:Lcom/narvii/util/PackageUtils;

    const-string v2, "draftDir"

    const-string v3, "fileUri"

    if-nez p1, :cond_3

    .line 100
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    goto :goto_0

    :cond_0
    move-object p1, v4

    :goto_0
    iput-object p1, p0, Lcom/narvii/story/ShareStoryFragment;->uri:Landroid/net/Uri;

    .line 103
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 104
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v3, "shareInfo"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/scene/model/StoryShareInfo;

    goto :goto_1

    :cond_1
    move-object p1, v4

    :goto_1
    iput-object p1, p0, Lcom/narvii/story/ShareStoryFragment;->shareInfo:Lcom/narvii/scene/model/StoryShareInfo;

    .line 106
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 107
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_2
    iput-object v4, p0, Lcom/narvii/story/ShareStoryFragment;->originDraftDir:Ljava/lang/String;

    goto :goto_2

    .line 110
    :cond_3
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/narvii/story/ShareStoryFragment;->uri:Landroid/net/Uri;

    const-string v3, "storyInfo"

    .line 111
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/model/StoryShareInfo;

    iput-object v0, p0, Lcom/narvii/story/ShareStoryFragment;->shareInfo:Lcom/narvii/scene/model/StoryShareInfo;

    .line 112
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/ShareStoryFragment;->originDraftDir:Ljava/lang/String;

    .line 115
    :goto_2
    iget-object p1, p0, Lcom/narvii/story/ShareStoryFragment;->uri:Landroid/net/Uri;

    if-nez p1, :cond_4

    .line 116
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void

    .line 120
    :cond_4
    iget-object p1, p0, Lcom/narvii/story/ShareStoryFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p1

    if-nez p1, :cond_5

    .line 121
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 122
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/narvii/account/LoginActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    sget-object v0, Lcom/narvii/account/LoginActivity$PromptType;->Required:Lcom/narvii/account/LoginActivity$PromptType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v2, "promptType"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "skipInterestPicker"

    .line 124
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "finishLoginPage"

    .line 125
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v0, 0xfd10

    .line 126
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 127
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_5
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 147
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 167
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 168
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    const/4 p2, 0x0

    .line 169
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 139
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 140
    iget-object v0, p0, Lcom/narvii/story/ShareStoryFragment;->uri:Landroid/net/Uri;

    const-string v1, "fileUri"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 141
    iget-object v0, p0, Lcom/narvii/story/ShareStoryFragment;->shareInfo:Lcom/narvii/scene/model/StoryShareInfo;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "storyInfo"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/narvii/story/ShareStoryFragment;->originDraftDir:Ljava/lang/String;

    const-string v1, "draftDir"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 152
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method protected toStoryPost(Lcom/narvii/model/Community;)V
    .locals 3

    .line 358
    new-instance v0, Lcom/narvii/story/ShareStoryFragment$CreateBlogPostTask;

    invoke-direct {v0, p0}, Lcom/narvii/story/ShareStoryFragment$CreateBlogPostTask;-><init>(Lcom/narvii/story/ShareStoryFragment;)V

    .line 359
    iget-object v1, p0, Lcom/narvii/story/ShareStoryFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-nez v1, :cond_0

    .line 360
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/narvii/story/ShareStoryFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 362
    :cond_0
    iget-object v1, p0, Lcom/narvii/story/ShareStoryFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 363
    iget-object v1, p0, Lcom/narvii/story/ShareStoryFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 365
    :cond_1
    iget-object v1, p0, Lcom/narvii/story/ShareStoryFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    new-instance v2, Lcom/narvii/story/-$$Lambda$ShareStoryFragment$clc-VjhqCY-lRW90oURAqaJKXLU;

    invoke-direct {v2, p0, v0}, Lcom/narvii/story/-$$Lambda$ShareStoryFragment$clc-VjhqCY-lRW90oURAqaJKXLU;-><init>(Lcom/narvii/story/ShareStoryFragment;Lcom/narvii/story/ShareStoryFragment$CreateBlogPostTask;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 369
    new-instance v1, Lcom/narvii/story/-$$Lambda$ShareStoryFragment$86NRFzvDlxKf83-0bcENWBgWJUU;

    invoke-direct {v1, p0, p1}, Lcom/narvii/story/-$$Lambda$ShareStoryFragment$86NRFzvDlxKf83-0bcENWBgWJUU;-><init>(Lcom/narvii/story/ShareStoryFragment;Lcom/narvii/model/Community;)V

    invoke-virtual {v0, v1}, Lcom/narvii/story/ShareStoryFragment$CreateBlogPostTask;->setCallback(Lcom/narvii/util/Callback;)V

    .line 378
    new-instance v1, Lcom/narvii/story/-$$Lambda$ShareStoryFragment$6I0DBMe1sXnPxCDzGw63xM3Du5o;

    invoke-direct {v1, p0}, Lcom/narvii/story/-$$Lambda$ShareStoryFragment$6I0DBMe1sXnPxCDzGw63xM3Du5o;-><init>(Lcom/narvii/story/ShareStoryFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/story/ShareStoryFragment$CreateBlogPostTask;->setCancelCallback(Lcom/narvii/util/Callback;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    .line 384
    :cond_2
    iget p1, p1, Lcom/narvii/model/Community;->id:I

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
