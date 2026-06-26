.class public Lcom/narvii/story/quiz/StoryQuizResultFragment;
.super Lcom/narvii/list/NVListFragment;
.source "StoryQuizResultFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;,
        Lcom/narvii/story/quiz/StoryQuizResultFragment$QuizResultListener;
    }
.end annotation


# instance fields
.field private adapter:Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;

.field private haxNext:Z

.field private listener:Lcom/narvii/story/quiz/StoryQuizResultFragment$QuizResultListener;

.field private localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private resultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/scene/quiz/QuizQuestionResult;",
            ">;"
        }
    .end annotation
.end field

.field private story:Lcom/narvii/model/Blog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 42
    new-instance v0, Lcom/narvii/story/quiz/StoryQuizResultFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/story/quiz/StoryQuizResultFragment$1;-><init>(Lcom/narvii/story/quiz/StoryQuizResultFragment;)V

    iput-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/story/quiz/StoryQuizResultFragment;)Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment;->adapter:Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/story/quiz/StoryQuizResultFragment;)Lcom/narvii/model/Blog;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment;->story:Lcom/narvii/model/Blog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/story/quiz/StoryQuizResultFragment;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment;->resultList:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 1

    const-string p1, "story"

    .line 65
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/Blog;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Blog;

    iput-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment;->story:Lcom/narvii/model/Blog;

    const-string p1, "resultList"

    .line 66
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/scene/quiz/QuizQuestionResult;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment;->resultList:Ljava/util/List;

    const-string p1, "hasNext"

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment;->haxNext:Z

    .line 69
    new-instance p1, Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;-><init>(Lcom/narvii/story/quiz/StoryQuizResultFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment;->adapter:Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;

    .line 70
    iget-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment;->adapter:Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;

    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment;->story:Lcom/narvii/model/Blog;

    invoke-virtual {p1, v0}, Lcom/narvii/story/quiz/StoryQuizResultAdapter;->setData(Lcom/narvii/model/Blog;)V

    .line 71
    iget-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment;->adapter:Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;

    invoke-virtual {p1}, Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;->uploadQuizResult()V

    .line 72
    iget-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment;->adapter:Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;

    return-object p1
.end method

.method public getCustomTheme()I
    .locals 1

    .line 81
    invoke-static {}, Lcom/narvii/util/Utils;->isAndroidVersion8()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f10000c

    goto :goto_0

    :cond_0
    const v0, 0x7f10000f

    :goto_0
    return v0
.end method

.method public initNVTheme()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09075c

    if-eq p1, v0, :cond_1

    const v0, 0x7f090959

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment;->listener:Lcom/narvii/story/quiz/StoryQuizResultFragment$QuizResultListener;

    if-eqz p1, :cond_2

    .line 108
    invoke-interface {p1}, Lcom/narvii/story/quiz/StoryQuizResultFragment$QuizResultListener;->replayStory()V

    goto :goto_0

    .line 113
    :cond_1
    iget-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment;->listener:Lcom/narvii/story/quiz/StoryQuizResultFragment$QuizResultListener;

    if-eqz p1, :cond_2

    .line 114
    invoke-interface {p1}, Lcom/narvii/story/quiz/StoryQuizResultFragment$QuizResultListener;->playNextStory()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 52
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 54
    iget-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 59
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 60
    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 92
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setQuizResultListener(Lcom/narvii/story/quiz/StoryQuizResultFragment$QuizResultListener;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment;->listener:Lcom/narvii/story/quiz/StoryQuizResultFragment$QuizResultListener;

    return-void
.end method
