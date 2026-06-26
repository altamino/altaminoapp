.class public Lcom/narvii/blog/post/StoryPostActivity;
.super Lcom/narvii/post/DraftPostActivity;
.source "StoryPostActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/blog/post/StoryPostActivity$PollAttachWrapper;,
        Lcom/narvii/blog/post/StoryPostActivity$CheckUneditablePollResponse;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/post/DraftPostActivity<",
        "Lcom/narvii/blog/post/BlogPost;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/narvii/notification/NotificationListener;"
    }
.end annotation


# static fields
.field static final EDIT_COVER_IMAGE_REQUEST:I = 0xfd12

.field static final EDIT_POLL_QUZI_REQUEST:I = 0xfd09

.field static final EDIT_SCENE_REQUEST:I = 0xfd10

.field static final EDIT_TOPIC_REQUEST:I = 0xfd11

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private checkOriginFileFlag:Z

.field private communityService:Lcom/narvii/community/CommunityService;

.field private configService:Lcom/narvii/config/ConfigService;

.field private coverImageMedia:Lcom/narvii/model/Media;

.field private createSceneView:Lcom/narvii/widget/TintButton;

.field private editContent:Landroid/widget/EditText;

.field private editCredits:Landroid/widget/EditText;

.field private editSceneView:Landroid/view/View;

.field private editTitle:Landroid/widget/EditText;

.field private emptySceneLayout:Landroid/view/View;

.field private final encodeScenes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/scene/model/SceneInfo;",
            ">;"
        }
    .end annotation
.end field

.field private fansOnlyContainer:Landroid/view/View;

.field private fileMisssingDialog:Lcom/narvii/widget/ACMAlertDialog;

.field private ivCoverImage:Lcom/narvii/widget/ThumbImageView;

.field private ivWarning:Landroid/widget/ImageView;

.field private linkDescription:Landroid/widget/TextView;

.field private linkLayout:Landroid/view/View;

.field private mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

.field private noSceneLayout:Landroid/view/View;

.field onSubmitClickListener:Landroid/view/View$OnClickListener;

.field onTagClickListener:Landroid/view/View$OnClickListener;

.field private originPost:Lcom/narvii/blog/post/BlogPost;

.field private originPublishToGlobalValue:I

.field private photoManager:Lcom/narvii/photos/PhotoManager;

.field private progressView:Lcom/narvii/util/dialog/ProgressDialog;

.field private publishToGlobalLayout:Lcom/narvii/widget/PublishToGlobalLayout;

.field private sceneDraftHelper:Lcom/narvii/scene/service/SceneDraftHelper;

.field private sceneLayout:Landroid/view/View;

.field private sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

.field private setCoverImageButton:Landroid/view/View;

.field private singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field private submitButton:Landroid/widget/Button;

.field private toSceneListTimeStamp:J

.field private topicFlowLayout:Lcom/narvii/util/layouts/NVFlowLayout;

.field private topicHint:Landroid/view/View;

.field private topicLayout:Landroid/view/View;

.field private videoGenerator:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;

.field private videoManager:Lcom/narvii/video/services/VideoManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    const-class v0, Lcom/narvii/blog/post/StoryPostActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/narvii/blog/post/StoryPostActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 112
    invoke-direct {p0}, Lcom/narvii/post/DraftPostActivity;-><init>()V

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->encodeScenes:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 157
    iput-wide v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->toSceneListTimeStamp:J

    const/4 v0, 0x0

    .line 160
    iput v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->originPublishToGlobalValue:I

    .line 163
    iput-boolean v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->checkOriginFileFlag:Z

    .line 1179
    new-instance v0, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$16kMX0NKek-zLmlo3UQ9N3kVvh4;

    invoke-direct {v0, p0}, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$16kMX0NKek-zLmlo3UQ9N3kVvh4;-><init>(Lcom/narvii/blog/post/StoryPostActivity;)V

    iput-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->onTagClickListener:Landroid/view/View$OnClickListener;

    .line 1194
    new-instance v0, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$YC57mjnGkT83xYvaYU1yMxNh9Zg;

    invoke-direct {v0, p0}, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$YC57mjnGkT83xYvaYU1yMxNh9Zg;-><init>(Lcom/narvii/blog/post/StoryPostActivity;)V

    iput-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->onSubmitClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/blog/post/StoryPostActivity;)Landroid/widget/EditText;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/narvii/blog/post/StoryPostActivity;->editTitle:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/blog/post/StoryPostActivity;)Lcom/narvii/post/PostObject;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/blog/post/StoryPostActivity;)Lcom/narvii/post/PostObject;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/blog/post/StoryPostActivity;)Lcom/narvii/util/dialog/ProgressDialog;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/narvii/blog/post/StoryPostActivity;->progressView:Lcom/narvii/util/dialog/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/blog/post/StoryPostActivity;)Ljava/util/List;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/narvii/blog/post/StoryPostActivity;->encodeScenes:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/blog/post/StoryPostActivity;)Lcom/narvii/scene/service/SceneDraftHelper;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/narvii/blog/post/StoryPostActivity;->sceneDraftHelper:Lcom/narvii/scene/service/SceneDraftHelper;

    return-object p0
.end method

.method static synthetic access$600(Lcom/narvii/blog/post/StoryPostActivity;Lcom/narvii/blog/post/BlogPost;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/narvii/blog/post/StoryPostActivity;->previewPost(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method static synthetic access$700(Lcom/narvii/blog/post/StoryPostActivity;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/narvii/blog/post/StoryPostActivity;->startPostStory()V

    return-void
.end method

.method static synthetic access$800(Lcom/narvii/blog/post/StoryPostActivity;Lcom/narvii/blog/post/BlogPost;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/narvii/blog/post/StoryPostActivity;->postStory(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method private checkSubmit()Z
    .locals 4

    .line 655
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget-object v0, v0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-static {v0}, Lcom/narvii/post/StoryUtils;->getStoryCoverImageMedia(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/model/Media;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget-object v0, v0, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    iget-object v0, v0, Lcom/narvii/scene/model/SceneDraft;->coverImage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 656
    new-instance v0, Lcom/narvii/model/Media;

    invoke-direct {v0}, Lcom/narvii/model/Media;-><init>()V

    const/16 v1, 0x64

    .line 657
    iput v1, v0, Lcom/narvii/model/Media;->type:I

    .line 658
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    move-object v2, v1

    check-cast v2, Lcom/narvii/blog/post/BlogPost;

    iget-object v2, v2, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    iget-object v2, v2, Lcom/narvii/scene/model/SceneDraft;->coverImage:Ljava/lang/String;

    iput-object v2, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 659
    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {v1, v0}, Lcom/narvii/blog/post/BlogPost;->setCoverMedia(Lcom/narvii/model/Media;)V

    .line 662
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isEdit()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isFromStoryEditor()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 669
    :cond_1
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget-object v0, v0, Lcom/narvii/blog/post/BlogPost;->title:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    move-object v3, v0

    check-cast v3, Lcom/narvii/blog/post/BlogPost;

    iget-object v3, v3, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz v3, :cond_3

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget-object v0, v0, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 671
    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneDraft;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    move-object v3, v0

    check-cast v3, Lcom/narvii/blog/post/BlogPost;

    iget-object v3, v3, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v3, :cond_3

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget-object v0, v0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 673
    invoke-static {v0}, Lcom/narvii/post/StoryUtils;->getStoryCoverImageMedia(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/model/Media;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v2

    .line 663
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget-object v0, v0, Lcom/narvii/blog/post/BlogPost;->title:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    move-object v3, v0

    check-cast v3, Lcom/narvii/blog/post/BlogPost;

    iget-object v3, v3, Lcom/narvii/blog/post/BlogPost;->sceneList:Ljava/util/List;

    if-eqz v3, :cond_5

    move-object v3, v0

    check-cast v3, Lcom/narvii/blog/post/BlogPost;

    iget-object v3, v3, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v3, :cond_5

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget-object v0, v0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 666
    invoke-static {v0}, Lcom/narvii/post/StoryUtils;->getStoryCoverImageMedia(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/model/Media;

    move-result-object v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method private createTopicView(Lcom/narvii/model/story/StoryTopic;)Landroid/widget/TextView;
    .locals 4

    .line 1172
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/blog/post/StoryPostActivity;->topicFlowLayout:Lcom/narvii/util/layouts/NVFlowLayout;

    const/high16 v2, 0x7f0b0000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1173
    iget-object v1, p0, Lcom/narvii/blog/post/StoryPostActivity;->onTagClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1174
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1175
    invoke-virtual {p1}, Lcom/narvii/model/story/StoryTopic;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private deleteDraft(Ljava/lang/String;)V
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    if-nez v0, :cond_0

    return-void

    .line 640
    :cond_0
    invoke-virtual {v0, p1}, Lcom/narvii/post/DraftManager;->deleteDraft(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/StoryPostActivity;->onDraftDeleted(Ljava/lang/String;)V

    return-void
.end method

.method private encodeScene(ZLcom/narvii/blog/post/BlogPost;)V
    .locals 9

    if-nez p2, :cond_0

    return-void

    .line 781
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isEdit()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p2}, Lcom/narvii/blog/post/StoryPostActivity;->isSceneDraftNotModify(Lcom/narvii/blog/post/BlogPost;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isFromStoryEditor()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 790
    :cond_1
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->progressView:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 792
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->encodeScenes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 793
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->encodeScenes:Ljava/util/List;

    iget-object v1, p2, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-direct {p0, v1}, Lcom/narvii/blog/post/StoryPostActivity;->getEncodeScenes(Lcom/narvii/scene/model/SceneDraft;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 795
    sget-object v2, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->encodeScenes:Ljava/util/List;

    move-object v4, v0

    check-cast v4, Ljava/util/ArrayList;

    iget-object v0, p2, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    iget-object v5, v0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    iget-object v6, p0, Lcom/narvii/blog/post/StoryPostActivity;->videoManager:Lcom/narvii/video/services/VideoManager;

    iget-object v7, p0, Lcom/narvii/blog/post/StoryPostActivity;->videoGenerator:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;

    new-instance v8, Lcom/narvii/blog/post/StoryPostActivity$2;

    invoke-direct {v8, p0, p2, p1}, Lcom/narvii/blog/post/StoryPostActivity$2;-><init>(Lcom/narvii/blog/post/StoryPostActivity;Lcom/narvii/blog/post/BlogPost;Z)V

    move-object v3, p0

    invoke-virtual/range {v2 .. v8}, Lcom/narvii/video/services/SceneMediaProcessor;->processStory(Lcom/narvii/app/NVContext;Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)Ljava/util/ArrayList;

    return-void

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 783
    invoke-direct {p0, p2}, Lcom/narvii/blog/post/StoryPostActivity;->previewPost(Lcom/narvii/blog/post/BlogPost;)V

    goto :goto_1

    .line 785
    :cond_3
    invoke-direct {p0}, Lcom/narvii/blog/post/StoryPostActivity;->startPostStory()V

    :goto_1
    return-void
.end method

.method private getEncodeScenes(Lcom/narvii/scene/model/SceneDraft;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/scene/model/SceneDraft;",
            ")",
            "Ljava/util/List<",
            "Lcom/narvii/scene/model/SceneInfo;",
            ">;"
        }
    .end annotation

    .line 835
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 836
    iget-object p1, p1, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 839
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 840
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 841
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/scene/model/SceneInfo;

    if-eqz v1, :cond_2

    .line 842
    invoke-virtual {v1}, Lcom/narvii/scene/model/SceneInfo;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 844
    :cond_1
    iget-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->outputUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 845
    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object v3, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/narvii/scene/helper/SceneUtils;->getSceneDraftFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 846
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/narvii/blog/post/StoryPostActivity;->photoManager:Lcom/narvii/photos/PhotoManager;

    invoke-virtual {v5, v2}, Lcom/narvii/photos/PhotoManager;->getNewVideoName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".mp4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->outputUrl:Ljava/lang/String;

    goto :goto_0

    .line 843
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private initView()V
    .locals 2

    const v0, 0x7f090602

    .line 464
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/ThumbImageView;

    iput-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->ivCoverImage:Lcom/narvii/widget/ThumbImageView;

    const v0, 0x7f0903cc

    .line 465
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->editSceneView:Landroid/view/View;

    const v0, 0x7f090774

    .line 466
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->noSceneLayout:Landroid/view/View;

    const v0, 0x7f0903eb

    .line 467
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->emptySceneLayout:Landroid/view/View;

    const v0, 0x7f0909a6

    .line 468
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->sceneLayout:Landroid/view/View;

    const v0, 0x7f090609

    .line 470
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->ivWarning:Landroid/widget/ImageView;

    const v0, 0x7f09030b

    .line 471
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/TintButton;

    iput-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->createSceneView:Lcom/narvii/widget/TintButton;

    const v0, 0x7f090b9a

    .line 472
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->editTitle:Landroid/widget/EditText;

    const v0, 0x7f0902d0

    .line 473
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->editContent:Landroid/widget/EditText;

    const v0, 0x7f09030f

    .line 474
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->editCredits:Landroid/widget/EditText;

    const v0, 0x7f090bc9

    .line 475
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/layouts/NVFlowLayout;

    iput-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->topicFlowLayout:Lcom/narvii/util/layouts/NVFlowLayout;

    const v0, 0x7f090bcb

    .line 476
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->topicHint:Landroid/view/View;

    const v0, 0x7f090427

    .line 477
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->fansOnlyContainer:Landroid/view/View;

    const v0, 0x7f090a14

    .line 478
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->setCoverImageButton:Landroid/view/View;

    const v0, 0x7f090bcd

    .line 479
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->topicLayout:Landroid/view/View;

    const v0, 0x7f0908e0

    .line 480
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/PublishToGlobalLayout;

    iput-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->publishToGlobalLayout:Lcom/narvii/widget/PublishToGlobalLayout;

    .line 481
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->publishToGlobalLayout:Lcom/narvii/widget/PublishToGlobalLayout;

    const v1, 0x7f0908df

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/TintButton;

    const v1, -0x3b3b3c

    .line 482
    invoke-virtual {v0, v1}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    const v0, 0x7f090667

    .line 483
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->linkLayout:Landroid/view/View;

    const v0, 0x7f090664

    .line 484
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->linkDescription:Landroid/widget/TextView;

    .line 486
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->editSceneView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->noSceneLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->emptySceneLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 489
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->sceneLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->setCoverImageButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->topicLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902ce

    .line 492
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->publishToGlobalLayout:Lcom/narvii/widget/PublishToGlobalLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-direct {v0, p0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->progressView:Lcom/narvii/util/dialog/ProgressDialog;

    .line 496
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->progressView:Lcom/narvii/util/dialog/ProgressDialog;

    new-instance v1, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$Pl7SXvhmGlz0owoiAScgmlnwy4Q;

    invoke-direct {v1, p0}, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$Pl7SXvhmGlz0owoiAScgmlnwy4Q;-><init>(Lcom/narvii/blog/post/StoryPostActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 497
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->createSceneView:Lcom/narvii/widget/TintButton;

    iget-object v1, p0, Lcom/narvii/blog/post/StoryPostActivity;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/narvii/scene/helper/SceneUtils;->getStoryThemeColor(Lcom/narvii/app/NVContext;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 499
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->editTitle:Landroid/widget/EditText;

    new-instance v1, Lcom/narvii/blog/post/StoryPostActivity$1;

    invoke-direct {v1, p0}, Lcom/narvii/blog/post/StoryPostActivity$1;-><init>(Lcom/narvii/blog/post/StoryPostActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private isCommunityOpen()Z
    .locals 2

    .line 526
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->communityService:Lcom/narvii/community/CommunityService;

    iget-object v1, p0, Lcom/narvii/blog/post/StoryPostActivity;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 527
    iget v1, v0, Lcom/narvii/model/Community;->id:I

    if-lez v1, :cond_0

    iget v0, v0, Lcom/narvii/model/Community;->joinType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPublishToGlobalPost()Z
    .locals 2

    .line 531
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget v0, v0, Lcom/narvii/blog/post/BlogPost;->originPublishToGlobal:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isSceneDraftNotModify(Lcom/narvii/blog/post/BlogPost;)Z
    .locals 1

    .line 881
    iget-object v0, p1, Lcom/narvii/blog/post/BlogPost;->sceneList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->oldSceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-virtual {v0, p1}, Lcom/narvii/scene/model/SceneDraft;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isSupportPublishToGlobal()Z
    .locals 1

    .line 522
    invoke-direct {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isPublishToGlobalPost()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isCommunityOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static synthetic lambda$null$9(Landroid/view/View;Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 1190
    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method static synthetic lambda$showPublishToGlobalDialog$6(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1092
    invoke-virtual {p0}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$showPublishToGlobalTurnOffDialog$4(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1077
    invoke-virtual {p0}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    return-void
.end method

.method private postStory(Lcom/narvii/blog/post/BlogPost;)V
    .locals 4

    .line 961
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->storyId()Ljava/lang/String;

    move-result-object v0

    .line 962
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

    const-string v0, "?updateWidgets=true"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 963
    new-instance v1, Lcom/narvii/feed/StoryPostHelper;

    invoke-direct {v1, p0}, Lcom/narvii/feed/StoryPostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 964
    invoke-virtual {v1, p0}, Lcom/narvii/post/PostHelper;->setPostListener(Lcom/narvii/post/PostListener;)V

    .line 965
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isFromStoryEditor()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 966
    iget-object v2, p0, Lcom/narvii/blog/post/StoryPostActivity;->sceneDraftHelper:Lcom/narvii/scene/service/SceneDraftHelper;

    iget-object v3, p1, Lcom/narvii/blog/post/BlogPost;->sceneList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/narvii/scene/service/SceneDraftHelper;->removeSceneId(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p1, Lcom/narvii/blog/post/BlogPost;->sceneList:Ljava/util/List;

    .line 968
    :cond_1
    const-class v2, Lcom/narvii/model/api/BlogResponse;

    invoke-virtual {v1, p1, v0, v2}, Lcom/narvii/post/PostHelper;->startPost(Lcom/narvii/post/PostObject;Lcom/narvii/util/http/ApiRequest;Ljava/lang/Class;)V

    return-void
.end method

.method private previewPost(Lcom/narvii/blog/post/BlogPost;)V
    .locals 2

    const-string v0, "feed"

    .line 885
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/Blog;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Blog;

    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->storyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p0, v1}, Lcom/narvii/blog/post/BlogPost;->getPreviewBlog(Lcom/narvii/model/Blog;Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/model/Blog;

    move-result-object p1

    .line 887
    new-instance v0, Lcom/narvii/story/StoryListFragment$IntentBuilder;

    invoke-direct {v0, p1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;-><init>(Lcom/narvii/model/Feed;)V

    const/4 p1, 0x0

    .line 888
    invoke-virtual {v0, p1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->autoLoadNextPage(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    .line 889
    invoke-virtual {p1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "preview"

    const/4 v1, 0x1

    .line 890
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 891
    new-instance v0, Lcom/narvii/story/StoryHelper;

    invoke-direct {v0, p0}, Lcom/narvii/story/StoryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/narvii/story/StoryHelper;->openStoryDetailPageInAnotherActivity(Landroid/view/View;Landroid/content/Intent;)V

    return-void
.end method

.method private removeTopicView(Landroid/view/View;)V
    .locals 2

    .line 1197
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->topicFlowLayout:Lcom/narvii/util/layouts/NVFlowLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 1201
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 1202
    instance-of v0, p1, Lcom/narvii/model/story/StoryTopic;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    move-object v1, v0

    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    iget-object v1, v1, Lcom/narvii/blog/post/BlogPost;->userAddedTopicList:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 1203
    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget-object v0, v0, Lcom/narvii/blog/post/BlogPost;->userAddedTopicList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1204
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1205
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/story/StoryTopic;

    if-eqz v1, :cond_1

    .line 1206
    invoke-virtual {v1, p1}, Lcom/narvii/model/story/StoryTopic;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1207
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1211
    :cond_2
    invoke-direct {p0}, Lcom/narvii/blog/post/StoryPostActivity;->updateTopicView()V

    return-void
.end method

.method private savePost(Lcom/narvii/blog/post/BlogPost;)Lcom/narvii/blog/post/BlogPost;
    .locals 2

    .line 924
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->editTitle:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->editTitle:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p1, Lcom/narvii/blog/post/BlogPost;->title:Ljava/lang/String;

    .line 925
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->editContent:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->editContent:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p1, Lcom/narvii/blog/post/BlogPost;->content:Ljava/lang/String;

    .line 926
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->editCredits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->editCredits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    iput-object v1, p1, Lcom/narvii/blog/post/BlogPost;->credits:Ljava/lang/String;

    return-object p1
.end method

.method private showPublishToGlobalDialog(Z)V
    .locals 3

    .line 1089
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    invoke-direct {v0, p0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    const v1, 0x7f0f0e35

    goto :goto_0

    :cond_0
    const v1, 0x7f0f0695

    .line 1090
    :goto_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v1, 0x7f0f0193

    .line 1091
    new-instance v2, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$laCZ7ua6vSyoRcdj81VewfOzyBA;

    invoke-direct {v2, v0}, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$laCZ7ua6vSyoRcdj81VewfOzyBA;-><init>(Lcom/narvii/widget/ACMAlertDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v1, 0x7f0f119f

    .line 1094
    new-instance v2, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$8j6MDrRplD-hBL6pvaNomYgBwS0;

    invoke-direct {v2, p0, p1, v0}, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$8j6MDrRplD-hBL6pvaNomYgBwS0;-><init>(Lcom/narvii/blog/post/StoryPostActivity;ZLcom/narvii/widget/ACMAlertDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const/4 p1, 0x0

    .line 1108
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1109
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method private showPublishToGlobalTurnOffDialog()V
    .locals 3

    .line 1073
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    invoke-direct {v0, p0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f012e

    .line 1074
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f0f10f5

    .line 1075
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1076
    new-instance v1, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$sRTtIDzELKYybVTax3g3rf32_hk;

    invoke-direct {v1, v0}, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$sRTtIDzELKYybVTax3g3rf32_hk;-><init>(Lcom/narvii/widget/ACMAlertDialog;)V

    const v2, 0x7f0f0193

    invoke-virtual {v0, v2, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 1079
    new-instance v1, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$Z90Pujdb3vpp5Nn3HSf9BIjlR-U;

    invoke-direct {v1, p0, v0}, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$Z90Pujdb3vpp5Nn3HSf9BIjlR-U;-><init>(Lcom/narvii/blog/post/StoryPostActivity;Lcom/narvii/widget/ACMAlertDialog;)V

    const v2, 0x7f0f119f

    invoke-virtual {v0, v2, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const/4 v1, 0x0

    .line 1084
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1085
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method private startPostStory()V
    .locals 2

    .line 952
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/blog/post/BlogPost;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    .line 953
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isEdit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 954
    invoke-virtual {p0, v0}, Lcom/narvii/blog/post/StoryPostActivity;->checkUneditablePoll(Lcom/narvii/blog/post/BlogPost;)V

    goto :goto_0

    .line 956
    :cond_0
    invoke-direct {p0, v0}, Lcom/narvii/blog/post/StoryPostActivity;->postStory(Lcom/narvii/blog/post/BlogPost;)V

    :goto_0
    return-void
.end method

.method private updateContentView()V
    .locals 2

    .line 687
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget-object v0, v0, Lcom/narvii/blog/post/BlogPost;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->editTitle:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    iget-object v1, v1, Lcom/narvii/blog/post/BlogPost;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget-object v0, v0, Lcom/narvii/blog/post/BlogPost;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 692
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->editContent:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    iget-object v1, v1, Lcom/narvii/blog/post/BlogPost;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 695
    :cond_1
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget-object v0, v0, Lcom/narvii/blog/post/BlogPost;->credits:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 696
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->editCredits:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    iget-object v1, v1, Lcom/narvii/blog/post/BlogPost;->credits:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 699
    :cond_2
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget-object v0, v0, Lcom/narvii/blog/post/BlogPost;->linkDesc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 700
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->linkDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    iget-object v1, v1, Lcom/narvii/blog/post/BlogPost;->linkDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 701
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->linkLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 703
    :cond_3
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->linkLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updatePublishToGlobalLayout()V
    .locals 4

    .line 614
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->publishToGlobalLayout:Lcom/narvii/widget/PublishToGlobalLayout;

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    iget v1, v1, Lcom/narvii/blog/post/BlogPost;->publishToGlobal:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/narvii/widget/PublishToGlobalLayout;->setPublishToGlobal(Z)V

    .line 615
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->publishToGlobalLayout:Lcom/narvii/widget/PublishToGlobalLayout;

    invoke-direct {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isSupportPublishToGlobal()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0908de

    .line 616
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isSupportPublishToGlobal()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateTopicView()V
    .locals 3

    .line 1155
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->topicFlowLayout:Lcom/narvii/util/layouts/NVFlowLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1157
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    move-object v1, v0

    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    iget-object v1, v1, Lcom/narvii/blog/post/BlogPost;->userAddedTopicList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1158
    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget-object v0, v0, Lcom/narvii/blog/post/BlogPost;->userAddedTopicList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/story/StoryTopic;

    .line 1159
    iget-object v2, p0, Lcom/narvii/blog/post/StoryPostActivity;->topicFlowLayout:Lcom/narvii/util/layouts/NVFlowLayout;

    invoke-direct {p0, v1}, Lcom/narvii/blog/post/StoryPostActivity;->createTopicView(Lcom/narvii/model/story/StoryTopic;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 1162
    :cond_0
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->topicFlowLayout:Lcom/narvii/util/layouts/NVFlowLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-lez v0, :cond_1

    .line 1163
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->topicFlowLayout:Lcom/narvii/util/layouts/NVFlowLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1164
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->topicHint:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1166
    :cond_1
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->topicFlowLayout:Lcom/narvii/util/layouts/NVFlowLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1167
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->topicHint:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected autoSaveDraftInterval()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public buildDraftParams()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 3

    const-string v0, "blogId"

    .line 177
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 181
    :cond_0
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    .line 182
    invoke-virtual {v2, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-object v2
.end method

.method protected checkActivation()Z
    .locals 6

    .line 1236
    invoke-super {p0}, Lcom/narvii/post/BasePostActivity;->checkActivation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1238
    new-instance v1, Lcom/narvii/notification/Notification;

    new-instance v2, Lcom/narvii/scene/notification/StoryCheckEligible;

    iget-object v3, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/narvii/scene/notification/StoryCheckEligible;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v3, "update"

    invoke-direct {v1, v3, v2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 1239
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->sendNotification(Lcom/narvii/notification/Notification;)V

    :cond_0
    return v0
.end method

.method protected checkEligible()V
    .locals 2

    const-string v0, "blog"

    const-string v1, "story"

    .line 683
    invoke-virtual {p0, v0, v1}, Lcom/narvii/post/BasePostActivity;->checkEligible(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public checkUneditablePoll(Lcom/narvii/blog/post/BlogPost;)V
    .locals 5

    .line 1347
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-direct {v0, p0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1348
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    const-string v1, "api"

    .line 1349
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 1350
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "blog/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->storyId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/uneditable-widgets"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v2

    .line 1351
    new-instance v3, Lcom/narvii/blog/post/StoryPostActivity$4;

    const-class v4, Lcom/narvii/blog/post/StoryPostActivity$CheckUneditablePollResponse;

    invoke-direct {v3, p0, v4, v0, p1}, Lcom/narvii/blog/post/StoryPostActivity$4;-><init>(Lcom/narvii/blog/post/StoryPostActivity;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/blog/post/BlogPost;)V

    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public clearUselessClip()V
    .locals 2

    .line 874
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    move-object v1, v0

    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget-object v0, v0, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneDraft;->clearUselessClip()Lcom/narvii/scene/model/SceneDraft;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneDraft;->clone()Lcom/narvii/scene/model/SceneDraft;

    move-result-object v0

    iput-object v0, v1, Lcom/narvii/blog/post/BlogPost;->oldSceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 875
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/blog/post/BlogPost;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iput-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->originPost:Lcom/narvii/blog/post/BlogPost;

    .line 876
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->saveDraft()V

    const/4 v0, 0x1

    .line 877
    invoke-virtual {p0, v0}, Lcom/narvii/blog/post/StoryPostActivity;->editScene(Z)V

    return-void
.end method

.method protected completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V
    .locals 1

    .line 359
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVActivity;->completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V

    .line 360
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->toThirdParty()Lcom/narvii/logging/LogEvent$Builder;

    .line 361
    iget-object p2, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 362
    invoke-static {}, Lcom/narvii/post/StoryEditSessionManager;->getInstance()Lcom/narvii/post/StoryEditSessionManager;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/narvii/post/StoryEditSessionManager;->getSessionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "editSessionId"

    invoke-virtual {p1, v0, p2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    const-string v0, "storyDraftId"

    invoke-virtual {p1, v0, p2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    :cond_0
    return-void
.end method

.method protected createPreviewOption(Landroid/view/Menu;)V
    .locals 8

    const v0, 0x7f0f02e5

    const/4 v1, 0x0

    .line 303
    invoke-interface {p1, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    new-instance v7, Lcom/narvii/util/ActionBarIcon;

    .line 304
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const v0, 0x7f0f089b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0601fa

    invoke-static {v0, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    const v3, 0x3f59999a    # 0.85f

    const/16 v5, 0x7f

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;Ljava/lang/String;FIIZ)V

    invoke-interface {p1, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x2

    .line 305
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method protected createSubmitButton(Landroid/view/Menu;)V
    .locals 5

    .line 312
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b002b

    const/4 v2, 0x0

    .line 313
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090051

    .line 314
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/narvii/blog/post/StoryPostActivity;->submitButton:Landroid/widget/Button;

    .line 316
    iget-object v1, p0, Lcom/narvii/blog/post/StoryPostActivity;->submitButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 317
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v3, 0x41200000    # 10.0f

    const/16 v4, 0x11

    if-lt v2, v4, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_0

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 322
    :goto_0
    iget-object v2, p0, Lcom/narvii/blog/post/StoryPostActivity;->submitButton:Landroid/widget/Button;

    const v3, 0x7f0f0df3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 323
    iget-object v2, p0, Lcom/narvii/blog/post/StoryPostActivity;->submitButton:Landroid/widget/Button;

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 324
    iget-object v2, p0, Lcom/narvii/blog/post/StoryPostActivity;->submitButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/narvii/blog/post/StoryPostActivity;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v4}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v4

    invoke-static {p0, v4}, Lcom/narvii/scene/helper/SceneUtils;->getStoryThemeColor(Lcom/narvii/app/NVContext;I)I

    move-result v4

    invoke-static {v4}, Lcom/narvii/app/NVActivity;->getRightButtonBackground(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 325
    iget-object v2, p0, Lcom/narvii/blog/post/StoryPostActivity;->submitButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    iget-object v1, p0, Lcom/narvii/blog/post/StoryPostActivity;->submitButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/narvii/blog/post/StoryPostActivity;->onSubmitClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    .line 328
    invoke-interface {p1, v1, v3, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 329
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x2

    .line 330
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method protected doPost(Lcom/narvii/blog/post/BlogPost;)V
    .locals 1

    const/4 v0, 0x0

    .line 947
    invoke-direct {p0, v0, p1}, Lcom/narvii/blog/post/StoryPostActivity;->encodeScene(ZLcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method protected bridge synthetic doPost(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 112
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/StoryPostActivity;->doPost(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method protected doPreview(Lcom/narvii/blog/post/BlogPost;)V
    .locals 1

    const/4 v0, 0x1

    .line 773
    invoke-direct {p0, v0, p1}, Lcom/narvii/blog/post/StoryPostActivity;->encodeScene(ZLcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method protected bridge synthetic doPreview(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 112
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/StoryPostActivity;->doPreview(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method public draftType()Ljava/lang/String;
    .locals 1

    const-string v0, "story"

    return-object v0
.end method

.method protected editScene()V
    .locals 1

    const/4 v0, 0x0

    .line 1113
    invoke-virtual {p0, v0}, Lcom/narvii/blog/post/StoryPostActivity;->editScene(Z)V

    return-void
.end method

.method protected editScene(Z)V
    .locals 5

    .line 1121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/narvii/blog/post/StoryPostActivity;->toSceneListTimeStamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 1125
    :cond_0
    sget-object v0, Lcom/narvii/logging/ActSemantic;->editStory:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "EditArea"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    .line 1126
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isEdit()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isPublished"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    .line 1127
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 1129
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isFromBlogPromote()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1130
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    move-object v0, p1

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget-object v0, v0, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    iget-object p1, p1, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_1

    goto :goto_0

    .line 1133
    :cond_1
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    iget-object p1, p1, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/scene/model/SceneInfo;

    .line 1134
    new-instance v0, Lcom/narvii/scene/helper/SceneListHelper;

    invoke-direct {v0, p0}, Lcom/narvii/scene/helper/SceneListHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object v3, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/narvii/scene/helper/SceneListHelper;->launchSceneEditor(Lcom/narvii/scene/model/SceneInfo;ZLjava/lang/String;)V

    goto/16 :goto_7

    :cond_2
    :goto_0
    return-void

    .line 1136
    :cond_3
    const-class v0, Lcom/narvii/story/SceneListFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1137
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isEdit()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isFromStoryEditor()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v2, 0x1

    :goto_2
    const-string v3, "isEdit"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1138
    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v2, Lcom/narvii/blog/post/BlogPost;

    iget-object v2, v2, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sceneDraft"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1139
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isEdit()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isFromStoryEditor()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    const-string v2, "alreadyClearUselessFile"

    .line 1143
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_4

    .line 1140
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->sceneList:Ljava/util/List;

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "sceneList"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1141
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    const-string v2, "draftId"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_4
    const-string p1, "customFinishAnimIn"

    .line 1146
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const p1, 0x7f01000d

    const-string v1, "customFinishAnimOut"

    .line 1147
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1148
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isEdit()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isFromStoryEditor()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    const p1, 0xfd10

    goto :goto_6

    :cond_9
    :goto_5
    const p1, 0xfd09

    :goto_6
    invoke-virtual {p0, v0, p1}, Lcom/narvii/blog/post/StoryPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const p1, 0x7f01000c

    const v0, 0x7f01002a

    .line 1149
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->toSceneListTimeStamp:J

    :goto_7
    return-void
.end method

.method protected eligibleFail(Ljava/lang/String;)V
    .locals 4

    .line 1246
    invoke-super {p0, p1}, Lcom/narvii/post/BasePostActivity;->eligibleFail(Ljava/lang/String;)V

    .line 1247
    new-instance v0, Lcom/narvii/notification/Notification;

    new-instance v1, Lcom/narvii/scene/notification/StoryCheckEligible;

    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, p1}, Lcom/narvii/scene/notification/StoryCheckEligible;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo p1, "update"

    invoke-direct {v0, p1, v1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 1248
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method protected fanOnlyStatusChanged(Z)V
    .locals 3

    .line 1060
    invoke-direct {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isSupportPublishToGlobal()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget v0, v0, Lcom/narvii/blog/post/BlogPost;->publishToGlobal:I

    if-ne v0, v1, :cond_0

    .line 1061
    invoke-direct {p0, v2}, Lcom/narvii/blog/post/StoryPostActivity;->showPublishToGlobalDialog(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 1063
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    move-object v0, p1

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iput v2, v0, Lcom/narvii/blog/post/BlogPost;->publishToGlobal:I

    .line 1064
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p1, v1}, Lcom/narvii/blog/post/BlogPost;->setFansOnly(Z)V

    .line 1065
    invoke-direct {p0}, Lcom/narvii/blog/post/StoryPostActivity;->updatePublishToGlobalLayout()V

    .line 1066
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->updateInfluencerView()V

    goto :goto_0

    .line 1068
    :cond_1
    invoke-super {p0, p1}, Lcom/narvii/post/DraftPostActivity;->fanOnlyStatusChanged(Z)V

    :goto_0
    return-void
.end method

.method protected getActionbarLayoutId(ZII)I
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x7f0b0031

    :goto_0
    return p2
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method protected getInfluencerLockLayout()Landroid/view/View;
    .locals 1

    .line 1216
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->fansOnlyContainer:Landroid/view/View;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "StoryCompose"

    return-object v0
.end method

.method public isEdit()Z
    .locals 1

    .line 213
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->storyId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFromBlogPromote()Z
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget v0, v0, Lcom/narvii/blog/post/BlogPost;->from:I

    sget v1, Lcom/narvii/blog/post/BlogPost;->FROM_BLOG_PROMOTE:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFromStoryEditor()Z
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget v0, v0, Lcom/narvii/blog/post/BlogPost;->from:I

    sget v1, Lcom/narvii/blog/post/BlogPost;->FROM_STORY_EDITOR:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$initView$1$StoryPostActivity(Landroid/content/DialogInterface;)V
    .locals 2

    .line 496
    sget-object p1, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->videoManager:Lcom/narvii/video/services/VideoManager;

    iget-object v1, p0, Lcom/narvii/blog/post/StoryPostActivity;->videoGenerator:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/video/services/SceneMediaProcessor;->terminateAll(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/ISceneVideoGenerator;)V

    return-void
.end method

.method public synthetic lambda$new$10$StoryPostActivity(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    .line 1180
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 1181
    new-instance v1, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f0eb6

    .line 1182
    invoke-virtual {v1, v2, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 1183
    new-instance v0, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$CVD6smy1rAWNE2uV3x3Ra4EKiPc;

    invoke-direct {v0, p0, p1}, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$CVD6smy1rAWNE2uV3x3Ra4EKiPc;-><init>(Lcom/narvii/blog/post/StoryPostActivity;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 1190
    new-instance v0, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$dpKoUl9k8Ld9pIMddzWv-dTWQvo;

    invoke-direct {v0, p1}, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$dpKoUl9k8Ld9pIMddzWv-dTWQvo;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1191
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void
.end method

.method public synthetic lambda$new$11$StoryPostActivity(Landroid/view/View;)V
    .locals 0

    .line 1194
    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->startPost()V

    return-void
.end method

.method public synthetic lambda$null$8$StoryPostActivity(Landroid/view/View;Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p3, :cond_0

    goto :goto_0

    .line 1186
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/blog/post/StoryPostActivity;->removeTopicView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$onActivityResult$0$StoryPostActivity(Lcom/narvii/scene/model/SceneDraft;)Lkotlin/Unit;
    .locals 2

    .line 395
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    move-object v1, v0

    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    iput-object p1, v1, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 396
    move-object p1, v0

    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget-object v0, v0, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneDraft;->getCoverMedia()Lcom/narvii/model/Media;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/blog/post/BlogPost;->setCoverMedia(Lcom/narvii/model/Media;)V

    .line 397
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->updateSceneView()V

    .line 398
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 399
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 400
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->saveDraft()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic lambda$onNotification$12$StoryPostActivity(Lcom/narvii/blog/post/BlogPost;Lcom/narvii/scene/model/SceneDraft;)Lkotlin/Unit;
    .locals 1

    .line 1272
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    invoke-virtual {v0}, Lcom/narvii/video/services/SceneMediaProcessor;->onPreSceneDraft()V

    .line 1273
    iput-object p2, p1, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 1274
    iget-object p2, p1, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-virtual {p2}, Lcom/narvii/scene/model/SceneDraft;->getCoverMedia()Lcom/narvii/model/Media;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/blog/post/BlogPost;->setCoverMedia(Lcom/narvii/model/Media;)V

    .line 1275
    iget-object p2, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lcom/narvii/post/DraftManager;->savePost(Ljava/lang/String;Lcom/narvii/post/PostObject;)Z

    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic lambda$onPostLoaded$2$StoryPostActivity(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 542
    invoke-virtual {p1}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    .line 543
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$showOriginFileMissingDialog$3$StoryPostActivity(Landroid/view/View;)V
    .locals 0

    .line 866
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->clearUselessClip()V

    return-void
.end method

.method public synthetic lambda$showPublishToGlobalDialog$7$StoryPostActivity(ZLcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 2

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1096
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    move-object v1, p1

    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    iput p3, v1, Lcom/narvii/blog/post/BlogPost;->publishToGlobal:I

    .line 1097
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p1, v0}, Lcom/narvii/blog/post/BlogPost;->setFansOnly(Z)V

    .line 1098
    invoke-direct {p0}, Lcom/narvii/blog/post/StoryPostActivity;->updatePublishToGlobalLayout()V

    .line 1099
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->updateInfluencerView()V

    goto :goto_0

    .line 1101
    :cond_0
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    move-object v1, p1

    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    iput v0, v1, Lcom/narvii/blog/post/BlogPost;->publishToGlobal:I

    .line 1102
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p1, p3}, Lcom/narvii/blog/post/BlogPost;->setFansOnly(Z)V

    .line 1103
    invoke-direct {p0}, Lcom/narvii/blog/post/StoryPostActivity;->updatePublishToGlobalLayout()V

    .line 1104
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->updateInfluencerView()V

    .line 1106
    :goto_0
    invoke-virtual {p2}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$showPublishToGlobalTurnOffDialog$5$StoryPostActivity(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 1

    .line 1080
    iget-object p2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast p2, Lcom/narvii/blog/post/BlogPost;

    const/4 v0, 0x0

    iput v0, p2, Lcom/narvii/blog/post/BlogPost;->publishToGlobal:I

    .line 1081
    invoke-direct {p0}, Lcom/narvii/blog/post/StoryPostActivity;->updatePublishToGlobalLayout()V

    .line 1082
    invoke-virtual {p1}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    return-void
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0b059f

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 386
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 388
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/scene/helper/SceneListHelper;->isSceneEditorResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "sceneInfo"

    .line 389
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/narvii/scene/model/SceneInfo;

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/scene/model/SceneInfo;

    .line 390
    iget-object p2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast p2, Lcom/narvii/blog/post/BlogPost;

    iget-object p2, p2, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    iget-object p3, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/narvii/scene/model/SceneDraft;->getSceneInfo(Ljava/lang/String;)Lcom/narvii/scene/model/SceneInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 392
    invoke-virtual {p2, p1}, Lcom/narvii/scene/model/SceneInfo;->copyScene(Lcom/narvii/scene/model/SceneInfo;)V

    .line 394
    :cond_0
    iget-object p1, p0, Lcom/narvii/blog/post/StoryPostActivity;->sceneDraftHelper:Lcom/narvii/scene/service/SceneDraftHelper;

    iget-object p2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast p2, Lcom/narvii/blog/post/BlogPost;

    iget-object p2, p2, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    new-instance p3, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$KX2QXLBTZQURJK18xwomE8Y_4Fc;

    invoke-direct {p3, p0}, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$KX2QXLBTZQURJK18xwomE8Y_4Fc;-><init>(Lcom/narvii/blog/post/StoryPostActivity;)V

    invoke-virtual {p1, p2, p3}, Lcom/narvii/scene/service/SceneDraftHelper;->correctCoverImage(Lcom/narvii/scene/model/SceneDraft;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    :cond_1
    const v0, 0xfd09

    const/4 v1, -0x1

    if-ne p1, v0, :cond_4

    if-ne p2, v1, :cond_3

    if-eqz p3, :cond_2

    .line 406
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    const-string p2, "sceneList"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-class p3, Lcom/narvii/model/Scene;

    invoke-static {p2, p3}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/blog/post/BlogPost;->sceneList:Ljava/util/List;

    .line 407
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->updateSceneView()V

    .line 408
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 409
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 410
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->saveDraft()V

    :cond_2
    return-void

    .line 414
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->saveDraft()V

    .line 415
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->updateSceneView()V

    goto/16 :goto_0

    :cond_4
    const v0, 0xfd10

    if-ne p1, v0, :cond_7

    if-ne p2, v1, :cond_6

    if-eqz p3, :cond_5

    const-string p1, "sceneDraft"

    .line 420
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 421
    iget-object p2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast p2, Lcom/narvii/blog/post/BlogPost;

    const-class p3, Lcom/narvii/scene/model/SceneDraft;

    invoke-static {p1, p3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/scene/model/SceneDraft;

    iput-object p1, p2, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 422
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    move-object p2, p1

    check-cast p2, Lcom/narvii/blog/post/BlogPost;

    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-virtual {p1}, Lcom/narvii/scene/model/SceneDraft;->getCoverMedia()Lcom/narvii/model/Media;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/narvii/blog/post/BlogPost;->setCoverMedia(Lcom/narvii/model/Media;)V

    .line 423
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->updateSceneView()V

    .line 424
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 425
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 426
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->saveDraft()V

    :cond_5
    return-void

    .line 430
    :cond_6
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->saveDraft()V

    .line 431
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->updateSceneView()V

    goto/16 :goto_0

    :cond_7
    if-ne p2, v1, :cond_8

    const v0, 0xfd11

    if-ne p1, v0, :cond_8

    if-eqz p3, :cond_9

    const-string p1, "topicList"

    .line 436
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 437
    iget-object p2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast p2, Lcom/narvii/blog/post/BlogPost;

    const-class p3, Lcom/narvii/model/TopicTag;

    invoke-static {p1, p3}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/model/TopicTag;->convertToStoryTopicList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p2, Lcom/narvii/blog/post/BlogPost;->userAddedTopicList:Ljava/util/List;

    .line 438
    invoke-direct {p0}, Lcom/narvii/blog/post/StoryPostActivity;->updateTopicView()V

    goto :goto_0

    :cond_8
    const v0, 0xfd12

    if-ne p1, v0, :cond_9

    if-ne p2, v1, :cond_9

    const-string p1, "coverImageInfo"

    .line 441
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 442
    const-class p2, Lcom/narvii/scene/model/SceneCoverImageInfo;

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/scene/model/SceneCoverImageInfo;

    .line 443
    new-instance p2, Lcom/narvii/model/Media;

    invoke-direct {p2}, Lcom/narvii/model/Media;-><init>()V

    const/16 p3, 0x64

    .line 444
    iput p3, p2, Lcom/narvii/model/Media;->type:I

    .line 445
    invoke-virtual {p1}, Lcom/narvii/scene/model/SceneCoverImageInfo;->getCoverImage()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 446
    iget-object p3, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast p3, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p3, p2}, Lcom/narvii/blog/post/BlogPost;->setCoverMedia(Lcom/narvii/model/Media;)V

    .line 447
    iget-object p3, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast p3, Lcom/narvii/blog/post/BlogPost;

    iget-object p3, p3, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-virtual {p2}, Lcom/narvii/model/Media;->getMediaUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/narvii/scene/model/SceneDraft;->coverImage:Ljava/lang/String;

    .line 448
    iget-object p3, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast p3, Lcom/narvii/blog/post/BlogPost;

    iget-object p3, p3, Lcom/narvii/blog/post/BlogPost;->oldSceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-virtual {p2}, Lcom/narvii/model/Media;->getMediaUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/narvii/scene/model/SceneDraft;->coverImage:Ljava/lang/String;

    .line 449
    iget-object p3, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    move-object v0, p3

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget-object v0, v0, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    iput-object p1, v0, Lcom/narvii/scene/model/SceneDraft;->coverImageInfo:Lcom/narvii/scene/model/SceneCoverImageInfo;

    .line 450
    check-cast p3, Lcom/narvii/blog/post/BlogPost;

    iget-object p3, p3, Lcom/narvii/blog/post/BlogPost;->oldSceneDraft:Lcom/narvii/scene/model/SceneDraft;

    iput-object p1, p3, Lcom/narvii/scene/model/SceneDraft;->coverImageInfo:Lcom/narvii/scene/model/SceneCoverImageInfo;

    .line 451
    iput-object p2, p0, Lcom/narvii/blog/post/StoryPostActivity;->coverImageMedia:Lcom/narvii/model/Media;

    .line 452
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->updateSceneView()V

    .line 455
    :cond_9
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 456
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1231
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 987
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "sceneDraft"

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 1036
    :sswitch_0
    const-class p1, Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 1037
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget-object v0, v0, Lcom/narvii/blog/post/BlogPost;->userAddedTopicList:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/model/TopicTag;->createList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "topicList"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0xfd11

    .line 1038
    invoke-virtual {p0, p1, v0}, Lcom/narvii/blog/post/StoryPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 996
    :sswitch_1
    const-class p1, Lcom/narvii/story/CoverImageFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 997
    iget-object v3, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v3, Lcom/narvii/blog/post/BlogPost;

    iget-object v3, v3, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-static {v3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 998
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isEdit()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isFromStoryEditor()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v0, "supportScreenshot"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 999
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    const-string v1, "draftId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0xfd12

    .line 1000
    invoke-virtual {p0, p1, v0}, Lcom/narvii/blog/post/StoryPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 1011
    :sswitch_2
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isEdit()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isFromStoryEditor()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 1024
    :cond_1
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-virtual {p1}, Lcom/narvii/scene/model/SceneDraft;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1025
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->editScene()V

    goto/16 :goto_1

    .line 1027
    :cond_2
    new-instance p1, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ndc://fragment/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/narvii/scene/ScenePreviewFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {p1, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1028
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    iget-object v1, v1, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1029
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1012
    :cond_3
    :goto_0
    new-instance p1, Lcom/narvii/model/Blog;

    invoke-direct {p1}, Lcom/narvii/model/Blog;-><init>()V

    .line 1013
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    move-object v3, v0

    check-cast v3, Lcom/narvii/blog/post/BlogPost;

    iget v3, v3, Lcom/narvii/blog/post/BlogPost;->type:I

    iput v3, p1, Lcom/narvii/model/Blog;->type:I

    .line 1014
    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget-object v0, v0, Lcom/narvii/blog/post/BlogPost;->sceneList:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/scene/helper/SceneUtils;->getAttachPreviewSceneList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    .line 1015
    new-instance v0, Lcom/narvii/story/StoryListFragment$IntentBuilder;

    invoke-direct {v0, p1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;-><init>(Lcom/narvii/model/Feed;)V

    .line 1016
    invoke-virtual {v0, v1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->autoLoadNextPage(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    .line 1017
    invoke-virtual {p1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 1018
    sget-object v0, Lcom/narvii/story/StoryListFragment;->KEY_IMMERSION_MODE:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1019
    sget-object v0, Lcom/narvii/story/StoryListFragment;->KEY_AUTO_LOAD_NEXT_PAGE:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "preview"

    .line 1020
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "backDirectly"

    .line 1021
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1022
    new-instance v0, Lcom/narvii/story/StoryHelper;

    invoke-direct {v0, p0}, Lcom/narvii/story/StoryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/narvii/story/StoryHelper;->openStoryDetailPageInAnotherActivity(Landroid/view/View;Landroid/content/Intent;)V

    goto :goto_1

    .line 1041
    :sswitch_3
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p1}, Lcom/narvii/blog/post/BlogPost;->isFansOnly()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1042
    invoke-direct {p0, v2}, Lcom/narvii/blog/post/StoryPostActivity;->showPublishToGlobalDialog(Z)V

    goto :goto_1

    .line 1043
    :cond_4
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    move-object v0, p1

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget v0, v0, Lcom/narvii/blog/post/BlogPost;->publishToGlobal:I

    if-ne v0, v2, :cond_6

    .line 1044
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isEdit()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1045
    invoke-direct {p0}, Lcom/narvii/blog/post/StoryPostActivity;->showPublishToGlobalTurnOffDialog()V

    goto :goto_1

    .line 1047
    :cond_5
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    iput v1, p1, Lcom/narvii/blog/post/BlogPost;->publishToGlobal:I

    .line 1048
    invoke-direct {p0}, Lcom/narvii/blog/post/StoryPostActivity;->updatePublishToGlobalLayout()V

    goto :goto_1

    .line 1051
    :cond_6
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    iput v2, p1, Lcom/narvii/blog/post/BlogPost;->publishToGlobal:I

    .line 1052
    invoke-direct {p0}, Lcom/narvii/blog/post/StoryPostActivity;->updatePublishToGlobalLayout()V

    goto :goto_1

    .line 1006
    :sswitch_4
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->editScene()V

    goto :goto_1

    .line 993
    :sswitch_5
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->editScene()V

    goto :goto_1

    .line 1033
    :sswitch_6
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0902ce -> :sswitch_6
        0x7f0903cc -> :sswitch_5
        0x7f0903eb -> :sswitch_4
        0x7f090774 -> :sswitch_4
        0x7f0908e0 -> :sswitch_3
        0x7f0909a6 -> :sswitch_2
        0x7f090a14 -> :sswitch_1
        0x7f090bcd -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 262
    invoke-super {p0, p1}, Lcom/narvii/post/DraftPostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 264
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->layoutId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    const-string/jumbo p1, "videoManager"

    .line 267
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/services/VideoManager;

    iput-object p1, p0, Lcom/narvii/blog/post/StoryPostActivity;->videoManager:Lcom/narvii/video/services/VideoManager;

    const-string p1, "photo"

    .line 269
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/photos/PhotoManager;

    iput-object p1, p0, Lcom/narvii/blog/post/StoryPostActivity;->photoManager:Lcom/narvii/photos/PhotoManager;

    const-string p1, "config"

    .line 270
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    iput-object p1, p0, Lcom/narvii/blog/post/StoryPostActivity;->configService:Lcom/narvii/config/ConfigService;

    const-string p1, "community"

    .line 271
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/CommunityService;

    iput-object p1, p0, Lcom/narvii/blog/post/StoryPostActivity;->communityService:Lcom/narvii/community/CommunityService;

    .line 273
    new-instance p1, Lcom/narvii/scene/service/SceneDraftHelper;

    invoke-direct {p1, p0}, Lcom/narvii/scene/service/SceneDraftHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/blog/post/StoryPostActivity;->sceneDraftHelper:Lcom/narvii/scene/service/SceneDraftHelper;

    .line 274
    new-instance p1, Lcom/narvii/scene/helper/SceneListHelper;

    invoke-direct {p1, p0}, Lcom/narvii/scene/helper/SceneListHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/blog/post/StoryPostActivity;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    .line 275
    invoke-direct {p0}, Lcom/narvii/blog/post/StoryPostActivity;->initView()V

    .line 276
    invoke-static {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    const/4 p1, 0x1

    .line 278
    invoke-static {p0, p1}, Lcom/narvii/util/statusbar/StatusBarUtils;->setSystemUiFlagLightStatusBar(Lcom/narvii/app/NVContext;Z)V

    .line 281
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0601f6

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->setBackButtonTint(I)V

    .line 282
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f080264

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 283
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0601fa

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->setActionBarTitleColor(I)V

    .line 284
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isEdit()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0f03cd

    goto :goto_0

    :cond_0
    const p1, 0x7f0f0c21

    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    .line 287
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "playListMediaPicker"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/narvii/media/MediaPickerFragment;

    iput-object p1, p0, Lcom/narvii/blog/post/StoryPostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 288
    iget-object p1, p0, Lcom/narvii/blog/post/StoryPostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-nez p1, :cond_1

    .line 289
    new-instance p1, Lcom/narvii/media/MediaPickerFragment;

    invoke-direct {p1}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    iput-object p1, p0, Lcom/narvii/blog/post/StoryPostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 290
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/blog/post/StoryPostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 292
    :cond_1
    iget-object p1, p0, Lcom/narvii/blog/post/StoryPostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {p1, p0}, Lcom/narvii/media/MediaPickerFragment;->addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 646
    invoke-super {p0}, Lcom/narvii/post/BasePostActivity;->onDestroy()V

    .line 647
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    iget-object v1, p0, Lcom/narvii/blog/post/StoryPostActivity;->videoManager:Lcom/narvii/video/services/VideoManager;

    invoke-virtual {v0, v1}, Lcom/narvii/video/services/SceneMediaProcessor;->release(Lcom/narvii/video/services/VideoManager;)V

    .line 648
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-eqz v0, :cond_0

    .line 649
    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->removeOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    :cond_0
    return-void
.end method

.method protected onDraftDeleted(Ljava/lang/String;)V
    .locals 1

    .line 1308
    invoke-super {p0, p1}, Lcom/narvii/post/DraftPostActivity;->onDraftDeleted(Ljava/lang/String;)V

    .line 1310
    new-instance v0, Lcom/narvii/blog/post/StoryPostActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/narvii/blog/post/StoryPostActivity$3;-><init>(Lcom/narvii/blog/post/StoryPostActivity;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onDraftSavedSuccess(Lcom/narvii/blog/post/BlogPost;)V
    .locals 1

    .line 1295
    invoke-super {p0, p1}, Lcom/narvii/post/DraftPostActivity;->onDraftSavedSuccess(Lcom/narvii/post/PostObject;)V

    if-eqz p1, :cond_0

    .line 1296
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isEdit()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isFromStoryEditor()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1297
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->sceneDraftHelper:Lcom/narvii/scene/service/SceneDraftHelper;

    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-virtual {v0, p1}, Lcom/narvii/scene/service/SceneDraftHelper;->deleteUselessFile(Lcom/narvii/scene/model/SceneDraft;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onDraftSavedSuccess(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 112
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/StoryPostActivity;->onDraftSavedSuccess(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 1253
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/narvii/scene/notification/SceneDraftWrapper;

    if-eqz v1, :cond_3

    .line 1254
    check-cast v0, Lcom/narvii/scene/notification/SceneDraftWrapper;

    .line 1255
    invoke-virtual {v0}, Lcom/narvii/scene/notification/SceneDraftWrapper;->id()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/narvii/scene/notification/SceneDraftWrapper;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->storyId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1256
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/post/DraftPostActivity;->isPosted:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/narvii/post/BasePostActivity;->discardDraft:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 1257
    sget-object p1, Lcom/narvii/blog/post/StoryPostActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveDraftNotification : isTemporary = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/narvii/scene/notification/SceneDraftWrapper;->isTemporary:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "   isEdit : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/narvii/scene/notification/SceneDraftWrapper;->isEdit()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    iget-boolean p1, v0, Lcom/narvii/scene/notification/SceneDraftWrapper;->isTemporary:Z

    if-eqz p1, :cond_1

    .line 1260
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1261
    const-class v1, Lcom/narvii/blog/post/BlogPost;

    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    goto :goto_0

    .line 1263
    :cond_1
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    .line 1265
    :goto_0
    invoke-virtual {v0}, Lcom/narvii/scene/notification/SceneDraftWrapper;->isEdit()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1266
    iget-object v0, v0, Lcom/narvii/scene/notification/SceneDraftWrapper;->sceneList:Ljava/util/List;

    iput-object v0, p1, Lcom/narvii/blog/post/BlogPost;->sceneList:Ljava/util/List;

    .line 1267
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/narvii/blog/post/StoryPostActivity;->savePost(Lcom/narvii/blog/post/BlogPost;)Lcom/narvii/blog/post/BlogPost;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/narvii/post/DraftManager;->savePost(Ljava/lang/String;Lcom/narvii/post/PostObject;)Z

    goto :goto_1

    .line 1269
    :cond_2
    iget-object v0, v0, Lcom/narvii/scene/notification/SceneDraftWrapper;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    iput-object v0, p1, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 1270
    invoke-direct {p0, p1}, Lcom/narvii/blog/post/StoryPostActivity;->savePost(Lcom/narvii/blog/post/BlogPost;)Lcom/narvii/blog/post/BlogPost;

    move-result-object p1

    .line 1271
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->sceneDraftHelper:Lcom/narvii/scene/service/SceneDraftHelper;

    iget-object v1, p1, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    new-instance v2, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$vFH0UXHZ5n_m7BxOPQ0UawdEtp0;

    invoke-direct {v2, p0, p1}, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$vFH0UXHZ5n_m7BxOPQ0UawdEtp0;-><init>(Lcom/narvii/blog/post/StoryPostActivity;Lcom/narvii/blog/post/BlogPost;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/scene/service/SceneDraftHelper;->correctCoverImage(Lcom/narvii/scene/model/SceneDraft;Lkotlin/jvm/functions/Function1;)V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_5

    .line 1282
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/narvii/scene/notification/StoryCheckEligible;

    if-eqz v0, :cond_5

    .line 1283
    check-cast p1, Lcom/narvii/scene/notification/StoryCheckEligible;

    .line 1284
    invoke-virtual {p1}, Lcom/narvii/scene/notification/StoryCheckEligible;->id()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 1287
    :cond_4
    iget p1, p1, Lcom/narvii/scene/notification/StoryCheckEligible;->action:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 1288
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->finish()V

    :cond_5
    :goto_1
    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 349
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 350
    invoke-static {}, Lcom/narvii/post/StoryEditSessionManager;->getInstance()Lcom/narvii/post/StoryEditSessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/narvii/post/StoryEditSessionManager;->onPageActiveChanged(Ljava/lang/String;Z)V

    :cond_0
    const/4 v0, 0x1

    .line 352
    iput-boolean v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->checkOriginFileFlag:Z

    .line 353
    invoke-super {p0}, Lcom/narvii/post/DraftPostActivity;->onPause()V

    return-void
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 6

    .line 230
    invoke-super {p0, p1, p2}, Lcom/narvii/post/DraftPostActivity;->onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V

    .line 231
    check-cast p2, Lcom/narvii/model/api/BlogResponse;

    invoke-virtual {p2}, Lcom/narvii/model/api/BlogResponse;->object()Lcom/narvii/model/Blog;

    move-result-object p1

    .line 232
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isEdit()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 233
    new-instance p2, Lcom/narvii/story/StoryListFragment$IntentBuilder;

    invoke-direct {p2, p1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;-><init>(Lcom/narvii/model/Feed;)V

    const-string v1, "community-player"

    .line 234
    invoke-virtual {p2, v1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->source(Ljava/lang/String;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p2

    .line 235
    invoke-virtual {p2, v0}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->autoLoadNextPage(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p2

    const/4 v1, 0x1

    .line 236
    invoke-virtual {p2, v1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->showCommentBar(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p2

    .line 237
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->loadRawVideo(Ljava/lang/Boolean;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p2

    .line 238
    invoke-virtual {p2, v1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->justCreated(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p2

    .line 239
    invoke-virtual {p0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 241
    :cond_0
    new-instance p2, Lcom/narvii/story/StoryTopicHistoryPrefsHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/narvii/story/StoryTopicHistoryPrefsHelper;-><init>(Landroid/content/Context;)V

    iget-object v1, p1, Lcom/narvii/model/Blog;->userAddedTopicList:Ljava/util/List;

    invoke-static {v1}, Lcom/narvii/model/TopicTag;->createList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/narvii/story/StoryTopicHistoryPrefsHelper;->addTopic(Ljava/util/List;)V

    .line 243
    iget-object p2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    check-cast p2, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p2}, Lcom/narvii/blog/post/BlogPost;->fromStoryEditor()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "storyEditor"

    goto :goto_0

    .line 245
    :cond_1
    sget p2, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v2, 0x64

    if-ne p2, v2, :cond_2

    const-string p2, "master"

    goto :goto_0

    :cond_2
    const/16 v2, 0x65

    if-ne p2, v2, :cond_3

    const-string p2, "standalone"

    goto :goto_0

    :cond_3
    move-object p2, v1

    .line 250
    :goto_0
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->containsPollOrQuiz()Z

    move-result v2

    .line 251
    sget-object v3, Lcom/narvii/logging/ActSemantic;->storySubmitted:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, v3}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    const-string v5, "storyDraftId"

    invoke-virtual {v3, v5, v4}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v3

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v4, "storyId"

    invoke-virtual {v3, v4, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    const-string v3, "EditArea"

    invoke-virtual {v1, v3}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    const-string v3, "storySource"

    invoke-virtual {v1, v3, p2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p2

    if-eqz v2, :cond_5

    const-string v1, "interactiveStory"

    goto :goto_2

    :cond_5
    const-string v1, "story"

    :goto_2
    const-string v3, "storyType"

    .line 252
    invoke-virtual {p2, v3, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p2

    if-eqz v2, :cond_6

    .line 253
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getStoryPollCount()I

    move-result v1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "pollCount"

    invoke-virtual {p2, v3, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p2

    if-eqz v2, :cond_7

    .line 254
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getStoryQuizCount()I

    move-result v0

    :cond_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "quizCount"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 255
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isEdit()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "isPublished"

    invoke-virtual {p1, v0, p2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 256
    invoke-static {}, Lcom/narvii/post/StoryEditSessionManager;->getInstance()Lcom/narvii/post/StoryEditSessionManager;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/narvii/post/StoryEditSessionManager;->getSessionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "editSessionId"

    invoke-virtual {p1, v0, p2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 257
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->toThirdParty()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method

.method protected onPostLoaded(Lcom/narvii/blog/post/BlogPost;)V
    .locals 3

    .line 537
    invoke-super {p0, p1}, Lcom/narvii/post/DraftPostActivity;->onPostLoaded(Lcom/narvii/post/PostObject;)V

    .line 538
    invoke-static {}, Lcom/narvii/editor/utils/MeisheUtils;->isSupportMeishe()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    sget-boolean v0, Lcom/narvii/editors/ffmpeg/FFmpegJni;->ffmpegInstalled:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 550
    :cond_0
    sget-object v0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->Companion:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$Companion;

    invoke-virtual {v0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$Companion;->getInstance()Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->videoGenerator:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;

    .line 552
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isEdit()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0f03cd

    goto :goto_0

    :cond_1
    const v0, 0x7f0f0c21

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 553
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 555
    iget-object v0, p1, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-nez v0, :cond_2

    .line 556
    new-instance v0, Lcom/narvii/scene/model/SceneDraft;

    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/narvii/scene/model/SceneDraft;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    goto :goto_1

    .line 557
    :cond_2
    iget-object v0, v0, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 558
    iget-object v0, p1, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/narvii/scene/model/SceneDraft;->replaceSceneId(Ljava/lang/String;)V

    .line 560
    :cond_3
    :goto_1
    iget-object v0, p1, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneDraft;->clone()Lcom/narvii/scene/model/SceneDraft;

    move-result-object v0

    iput-object v0, p1, Lcom/narvii/blog/post/BlogPost;->oldSceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 563
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isEdit()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_5

    .line 564
    iget v0, p1, Lcom/narvii/blog/post/BlogPost;->originPublishToGlobal:I

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isCommunityOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 565
    iput v2, p1, Lcom/narvii/blog/post/BlogPost;->originPublishToGlobal:I

    .line 566
    invoke-virtual {p1}, Lcom/narvii/blog/post/BlogPost;->isFansOnly()Z

    move-result v0

    xor-int/2addr v0, v2

    iput v0, p1, Lcom/narvii/blog/post/BlogPost;->publishToGlobal:I

    goto :goto_2

    .line 567
    :cond_4
    iget v0, p1, Lcom/narvii/blog/post/BlogPost;->originPublishToGlobal:I

    if-ne v0, v2, :cond_5

    iget v0, p1, Lcom/narvii/blog/post/BlogPost;->publishToGlobal:I

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isCommunityOpen()Z

    move-result v0

    if-nez v0, :cond_5

    .line 568
    iput v1, p1, Lcom/narvii/blog/post/BlogPost;->originPublishToGlobal:I

    .line 572
    :cond_5
    :goto_2
    iget v0, p1, Lcom/narvii/blog/post/BlogPost;->publishToGlobal:I

    iput v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->originPublishToGlobalValue:I

    .line 573
    iget v0, p1, Lcom/narvii/blog/post/BlogPost;->from:I

    sget v1, Lcom/narvii/blog/post/BlogPost;->FROM_STORY_EDITOR:I

    if-ne v0, v1, :cond_6

    .line 574
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->sceneDraftHelper:Lcom/narvii/scene/service/SceneDraftHelper;

    iget-object v1, p1, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-direct {p0, v1}, Lcom/narvii/blog/post/StoryPostActivity;->getEncodeScenes(Lcom/narvii/scene/model/SceneDraft;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/narvii/scene/service/SceneDraftHelper;->getSceneList(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/narvii/blog/post/BlogPost;->sceneList:Ljava/util/List;

    :cond_6
    const-string v0, "draftId"

    .line 577
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 578
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/blog/post/BlogPost;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iput-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->originPost:Lcom/narvii/blog/post/BlogPost;

    .line 581
    :cond_7
    iget-object v0, p1, Lcom/narvii/blog/post/BlogPost;->editSession:Lcom/narvii/logging/PageSession;

    if-nez v0, :cond_8

    .line 582
    new-instance v0, Lcom/narvii/logging/PageSession;

    invoke-direct {v0}, Lcom/narvii/logging/PageSession;-><init>()V

    iput-object v0, p1, Lcom/narvii/blog/post/BlogPost;->editSession:Lcom/narvii/logging/PageSession;

    .line 584
    :cond_8
    invoke-static {}, Lcom/narvii/post/StoryEditSessionManager;->getInstance()Lcom/narvii/post/StoryEditSessionManager;

    move-result-object v0

    .line 585
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/post/StoryEditSessionManager;->getSession(Ljava/lang/String;)Lcom/narvii/logging/PageSession;

    move-result-object v1

    if-nez v1, :cond_9

    .line 587
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/blog/post/BlogPost;->editSession:Lcom/narvii/logging/PageSession;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/post/StoryEditSessionManager;->putSession(Ljava/lang/String;Lcom/narvii/logging/PageSession;)V

    goto :goto_3

    .line 590
    :cond_9
    iput-object v1, p1, Lcom/narvii/blog/post/BlogPost;->editSession:Lcom/narvii/logging/PageSession;

    .line 593
    :goto_3
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isEdit()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isFromStoryEditor()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-virtual {p1}, Lcom/narvii/scene/model/SceneDraft;->originFileMissing()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 594
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->showOriginFileMissingDialog()V

    .line 597
    :cond_a
    invoke-direct {p0}, Lcom/narvii/blog/post/StoryPostActivity;->updatePublishToGlobalLayout()V

    return-void

    .line 539
    :cond_b
    :goto_4
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    invoke-direct {p1, p0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f013c

    .line 540
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v0, 0x104000a

    .line 541
    new-instance v2, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$oNQwv6yyplrEn9suQ2lpRtFE-aY;

    invoke-direct {v2, p0, p1}, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$oNQwv6yyplrEn9suQ2lpRtFE-aY;-><init>(Lcom/narvii/blog/post/StoryPostActivity;Lcom/narvii/widget/ACMAlertDialog;)V

    invoke-virtual {p1, v0, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 545
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 546
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method protected bridge synthetic onPostLoaded(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 112
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/StoryPostActivity;->onPostLoaded(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 21

    move-object/from16 v0, p0

    .line 368
    invoke-static {}, Lcom/narvii/editor/utils/MeisheUtils;->isSupportMeishe()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/narvii/editors/ffmpeg/FFmpegJni;->ffmpegInstalled:Z

    if-nez v1, :cond_0

    goto :goto_2

    .line 373
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/narvii/blog/post/StoryPostActivity;->checkSubmit()Z

    move-result v1

    const v2, 0x7f0f02e5

    move-object/from16 v3, p1

    .line 374
    invoke-interface {v3, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 375
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const v4, 0x7f0601f6

    const v5, 0x7f0f089b

    if-eqz v1, :cond_1

    .line 376
    new-instance v13, Lcom/narvii/util/ActionBarIcon;

    .line 377
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x3f59999a    # 0.85f

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    const/16 v11, 0xff

    const/4 v12, 0x0

    move-object v6, v13

    invoke-direct/range {v6 .. v12}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;Ljava/lang/String;FIIZ)V

    goto :goto_0

    :cond_1
    new-instance v6, Lcom/narvii/util/ActionBarIcon;

    .line 378
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v16

    const v17, 0x3f59999a    # 0.85f

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v18

    const/16 v19, 0x80

    const/16 v20, 0x0

    move-object v14, v6

    invoke-direct/range {v14 .. v20}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;Ljava/lang/String;FIIZ)V

    .line 376
    :goto_0
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 379
    iget-object v2, v0, Lcom/narvii/blog/post/StoryPostActivity;->submitButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 380
    iget-object v2, v0, Lcom/narvii/blog/post/StoryPostActivity;->submitButton:Landroid/widget/Button;

    if-eqz v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/high16 v1, 0x3f000000    # 0.5f

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 381
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    :cond_3
    :goto_2
    move-object/from16 v3, p1

    .line 369
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onResume()V
    .locals 3

    .line 335
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 336
    invoke-static {}, Lcom/narvii/post/StoryEditSessionManager;->getInstance()Lcom/narvii/post/StoryEditSessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/narvii/post/StoryEditSessionManager;->onPageActiveChanged(Ljava/lang/String;Z)V

    .line 338
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onResume()V

    .line 339
    iget-boolean v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->checkOriginFileFlag:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 340
    iput-boolean v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->checkOriginFileFlag:Z

    .line 341
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isEdit()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    if-eqz v0, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    iget-object v1, v1, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget-object v0, v0, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneDraft;->originFileMissing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isFromStoryEditor()Z

    move-result v0

    if-nez v0, :cond_1

    .line 342
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->showOriginFileMissingDialog()V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 298
    invoke-super {p0, p1}, Lcom/narvii/post/DraftPostActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

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

    .line 208
    const-class v0, Lcom/narvii/blog/post/BlogPost;

    return-object v0
.end method

.method protected saveDraft()V
    .locals 1

    .line 914
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    invoke-virtual {v0}, Lcom/narvii/video/services/SceneMediaProcessor;->onPreSceneDraft()V

    .line 915
    invoke-super {p0}, Lcom/narvii/post/DraftPostActivity;->saveDraft()V

    return-void
.end method

.method protected savePost()Lcom/narvii/blog/post/BlogPost;
    .locals 1

    .line 920
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    invoke-direct {p0, v0}, Lcom/narvii/blog/post/StoryPostActivity;->savePost(Lcom/narvii/blog/post/BlogPost;)Lcom/narvii/blog/post/BlogPost;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    return-object v0
.end method

.method protected bridge synthetic savePost()Lcom/narvii/post/PostObject;
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object v0

    return-object v0
.end method

.method protected saveUnpostedDraftInFinish()Z
    .locals 3

    .line 621
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 623
    invoke-virtual {v0}, Lcom/narvii/blog/post/BlogPost;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    .line 625
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/narvii/blog/post/StoryPostActivity;->deleteDraft(Ljava/lang/String;)V

    .line 626
    iput-boolean v1, p0, Lcom/narvii/post/BasePostActivity;->discardDraft:Z

    goto :goto_2

    .line 628
    :cond_2
    iget-object v2, p0, Lcom/narvii/blog/post/StoryPostActivity;->originPost:Lcom/narvii/blog/post/BlogPost;

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Lcom/narvii/blog/post/BlogPost;->isSame(Lcom/narvii/post/PostObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 629
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/narvii/blog/post/StoryPostActivity;->deleteDraft(Ljava/lang/String;)V

    .line 630
    iput-boolean v1, p0, Lcom/narvii/post/BasePostActivity;->discardDraft:Z

    :cond_3
    :goto_2
    return v1
.end method

.method protected sendNotification(Lcom/narvii/model/api/ApiResponse;Lcom/narvii/model/NVObject;)V
    .locals 5

    .line 1319
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isEdit()Z

    move-result v0

    const-string v1, "new"

    if-eqz v0, :cond_0

    const-string v0, "edit"

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1320
    :goto_0
    new-instance v2, Lcom/narvii/notification/Notification;

    invoke-direct {v2, v0, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 1321
    iput-object p1, v2, Lcom/narvii/notification/Notification;->response:Lcom/narvii/model/api/ApiResponse;

    .line 1322
    instance-of p1, p2, Lcom/narvii/model/Blog;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isEdit()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1323
    move-object v0, p2

    check-cast v0, Lcom/narvii/model/Blog;

    .line 1324
    iget v3, v0, Lcom/narvii/model/Blog;->publishToGlobal:I

    const/4 v4, 0x1

    if-nez v3, :cond_1

    iget v3, p0, Lcom/narvii/blog/post/StoryPostActivity;->originPublishToGlobalValue:I

    if-ne v3, v4, :cond_1

    .line 1326
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v2, Lcom/narvii/notification/Notification;->bundle:Landroid/os/Bundle;

    .line 1327
    iget-object v0, v2, Lcom/narvii/notification/Notification;->bundle:Landroid/os/Bundle;

    const-string v3, "publishToGlobalTurnOff"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1328
    :cond_1
    iget v0, v0, Lcom/narvii/model/Blog;->publishToGlobal:I

    if-ne v0, v4, :cond_2

    iget v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->originPublishToGlobalValue:I

    if-nez v0, :cond_2

    .line 1329
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v2, Lcom/narvii/notification/Notification;->bundle:Landroid/os/Bundle;

    .line 1330
    iget-object v0, v2, Lcom/narvii/notification/Notification;->bundle:Landroid/os/Bundle;

    const-string v3, "publishToGlobalTurnOn"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1333
    :cond_2
    :goto_1
    invoke-static {p0, v2}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;)V

    .line 1335
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    if-eqz v0, :cond_3

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget-object v0, v0, Lcom/narvii/blog/post/BlogPost;->promotedFrom:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isEdit()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 1337
    new-instance p1, Lcom/narvii/scene/notification/PromotedFromObject;

    invoke-direct {p1}, Lcom/narvii/scene/notification/PromotedFromObject;-><init>()V

    .line 1338
    check-cast p2, Lcom/narvii/model/Blog;

    iput-object p2, p1, Lcom/narvii/scene/notification/PromotedFromObject;->story:Lcom/narvii/model/Blog;

    .line 1339
    iget-object p2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast p2, Lcom/narvii/blog/post/BlogPost;

    iget-object p2, p2, Lcom/narvii/blog/post/BlogPost;->promotedFrom:Ljava/lang/String;

    iput-object p2, p1, Lcom/narvii/scene/notification/PromotedFromObject;->promotedFrom:Ljava/lang/String;

    .line 1340
    new-instance p2, Lcom/narvii/notification/Notification;

    invoke-direct {p2, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 1341
    invoke-static {p0, p2}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;)V

    :cond_3
    return-void
.end method

.method protected shouldShowFansOnlySwitchDialog()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected showFailedDialog()V
    .locals 3

    .line 853
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0257

    .line 854
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v1, 0x7f0f073e

    const/4 v2, 0x0

    .line 855
    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 856
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method protected showOriginFileMissingDialog()V
    .locals 3

    .line 860
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->fileMisssingDialog:Lcom/narvii/widget/ACMAlertDialog;

    if-nez v0, :cond_0

    .line 861
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->fileMisssingDialog:Lcom/narvii/widget/ACMAlertDialog;

    .line 862
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->fileMisssingDialog:Lcom/narvii/widget/ACMAlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 863
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->fileMisssingDialog:Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 864
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->fileMisssingDialog:Lcom/narvii/widget/ACMAlertDialog;

    const v1, 0x7f0f0d0e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 865
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->fileMisssingDialog:Lcom/narvii/widget/ACMAlertDialog;

    const v1, 0x7f0f0193

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 866
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->fileMisssingDialog:Lcom/narvii/widget/ACMAlertDialog;

    const v1, 0x7f0f119f

    new-instance v2, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$QBpsPv0_z6H4Ua56QTROw3vqmI8;

    invoke-direct {v2, p0}, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$QBpsPv0_z6H4Ua56QTROw3vqmI8;-><init>(Lcom/narvii/blog/post/StoryPostActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 868
    :cond_0
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->fileMisssingDialog:Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 869
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->fileMisssingDialog:Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    :cond_1
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 906
    iget-boolean v0, p0, Lcom/narvii/post/DraftPostActivity;->isPosted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "__noInheritance"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "__storyDraftId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 907
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 909
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public storyId()Ljava/lang/String;
    .locals 4

    .line 225
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

.method protected supportPreview()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected updateInfluencerView()V
    .locals 2

    .line 189
    invoke-super {p0}, Lcom/narvii/post/DraftPostActivity;->updateInfluencerView()V

    .line 190
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->getInfluencerLockLayout()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090598

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 191
    instance-of v1, v0, Lcom/narvii/influencer/InfluencerPostIndicator;

    if-eqz v1, :cond_0

    .line 192
    check-cast v0, Lcom/narvii/influencer/InfluencerPostIndicator;

    const v1, -0x77b5b5b6

    invoke-virtual {v0, v1}, Lcom/narvii/influencer/InfluencerPostIndicator;->setDefaultColor(I)V

    :cond_0
    return-void
.end method

.method protected updateSceneView()V
    .locals 6

    .line 709
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isEdit()Z

    move-result v0

    const v1, 0x106000c

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isFromStoryEditor()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    move-object v4, v0

    check-cast v4, Lcom/narvii/blog/post/BlogPost;

    iget-object v4, v4, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz v4, :cond_7

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget-object v0, v0, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    iget-object v0, v0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 736
    :cond_1
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->noSceneLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 737
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget-object v0, v0, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneDraft;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 739
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->emptySceneLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 740
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->sceneLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 741
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->setCoverImageButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 743
    :cond_2
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->emptySceneLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 744
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->sceneLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 745
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->editSceneView:Landroid/view/View;

    iget-object v4, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v4, Lcom/narvii/blog/post/BlogPost;

    iget v4, v4, Lcom/narvii/blog/post/BlogPost;->from:I

    sget v5, Lcom/narvii/blog/post/BlogPost;->FROM_STORY_EDITOR:I

    if-ne v4, v5, :cond_3

    const/16 v4, 0x8

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 746
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->setCoverImageButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 749
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->coverImageMedia:Lcom/narvii/model/Media;

    if-nez v0, :cond_5

    .line 750
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget-object v0, v0, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    iget-object v0, v0, Lcom/narvii/scene/model/SceneDraft;->coverImage:Ljava/lang/String;

    .line 751
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 752
    iget-object v1, p0, Lcom/narvii/blog/post/StoryPostActivity;->ivCoverImage:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    goto :goto_1

    .line 754
    :cond_4
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->ivCoverImage:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 757
    :cond_5
    iget-object v1, p0, Lcom/narvii/blog/post/StoryPostActivity;->ivCoverImage:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {v1, v0}, Lcom/narvii/widget/ThumbImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 761
    :goto_1
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->ivWarning:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    iget-object v1, v1, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-virtual {v1}, Lcom/narvii/scene/model/SceneDraft;->isError()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 728
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->noSceneLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 729
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->emptySceneLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 730
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->sceneLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 731
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->setCoverImageButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 710
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->noSceneLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 711
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->emptySceneLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 712
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->sceneLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 713
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->editSceneView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 714
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->setCoverImageButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 715
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->coverImageMedia:Lcom/narvii/model/Media;

    if-nez v0, :cond_b

    .line 716
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    move-object v2, v0

    check-cast v2, Lcom/narvii/blog/post/BlogPost;

    iget-object v2, v2, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz v2, :cond_9

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget-object v0, v0, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    iget-object v0, v0, Lcom/narvii/scene/model/SceneDraft;->coverImage:Ljava/lang/String;

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    .line 717
    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 718
    iget-object v1, p0, Lcom/narvii/blog/post/StoryPostActivity;->ivCoverImage:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    goto :goto_6

    .line 720
    :cond_a
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->ivCoverImage:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 723
    :cond_b
    iget-object v1, p0, Lcom/narvii/blog/post/StoryPostActivity;->ivCoverImage:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {v0}, Lcom/narvii/model/Media;->getMediaUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    :goto_6
    return-void
.end method

.method protected updateView(Lcom/narvii/blog/post/BlogPost;)V
    .locals 1

    .line 602
    invoke-super {p0, p1}, Lcom/narvii/post/DraftPostActivity;->updateView(Lcom/narvii/post/PostObject;)V

    .line 604
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    iget-object p1, p1, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-static {p1}, Lcom/narvii/post/StoryUtils;->getStoryCoverImageMedia(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/model/Media;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/blog/post/StoryPostActivity;->coverImageMedia:Lcom/narvii/model/Media;

    .line 607
    :cond_0
    invoke-direct {p0}, Lcom/narvii/blog/post/StoryPostActivity;->updateContentView()V

    .line 608
    invoke-direct {p0}, Lcom/narvii/blog/post/StoryPostActivity;->updateTopicView()V

    .line 609
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->updateSceneView()V

    .line 610
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->updateInfluencerView()V

    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 112
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/StoryPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method protected validateSceneCanEncode(Lcom/narvii/blog/post/BlogPost;)Z
    .locals 2

    .line 973
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isEdit()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->isFromStoryEditor()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 978
    :cond_0
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/narvii/scene/model/SceneDraft;->isError()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    return v1

    .line 974
    :cond_2
    :goto_0
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->sceneList:Ljava/util/List;

    if-nez p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method protected validateUpload(Lcom/narvii/blog/post/BlogPost;)Z
    .locals 2

    .line 933
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity;->editTitle:Landroid/widget/EditText;

    const v1, 0x7f0f0daf

    invoke-virtual {p0, v0, v1}, Lcom/narvii/post/BasePostActivity;->validateEditTextNotEmpty(Landroid/widget/EditText;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 937
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/StoryPostActivity;->validateSceneCanEncode(Lcom/narvii/blog/post/BlogPost;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 938
    invoke-virtual {p0}, Lcom/narvii/blog/post/StoryPostActivity;->showFailedDialog()V

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected bridge synthetic validateUpload(Lcom/narvii/post/PostObject;)Z
    .locals 0

    .line 112
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/StoryPostActivity;->validateUpload(Lcom/narvii/blog/post/BlogPost;)Z

    move-result p1

    return p1
.end method
