.class public Lcom/narvii/scene/SceneManageFragment;
.super Lcom/narvii/list/DragSortListFragment;
.source "SceneManageFragment.java"

# interfaces
.implements Lcom/narvii/app/FragmentWillFinishListener;
.implements Lcom/narvii/media/MediaPickerFragment$OnResultListener;
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/SceneManageFragment$Adapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/narvii/scene/SceneManageFragment$Adapter;

.field private draftManager:Lcom/narvii/post/DraftManager;

.field private editSceneInfo:Lcom/narvii/scene/model/SceneInfo;

.field private footerView:Landroid/view/View;

.field private mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

.field private photoManager:Lcom/narvii/photos/PhotoManager;

.field private sceneDraft:Lcom/narvii/scene/model/SceneDraft;

.field private sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

.field private sceneMediaPickerHelper:Lcom/narvii/scene/helper/SceneMediaPickerHelper;

.field private singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field private videoManager:Lcom/narvii/video/services/VideoManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/narvii/list/DragSortListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/model/SceneDraft;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/narvii/scene/SceneManageFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/SceneManageFragment$Adapter;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/narvii/scene/SceneManageFragment;->adapter:Lcom/narvii/scene/SceneManageFragment$Adapter;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/video/services/VideoManager;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/narvii/scene/SceneManageFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/scene/SceneManageFragment;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/narvii/scene/SceneManageFragment;->updateFooterView()V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/model/SceneInfo;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/narvii/scene/SceneManageFragment;->editSceneInfo:Lcom/narvii/scene/model/SceneInfo;

    return-object p0
.end method

.method static synthetic access$302(Lcom/narvii/scene/SceneManageFragment;Lcom/narvii/scene/model/SceneInfo;)Lcom/narvii/scene/model/SceneInfo;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment;->editSceneInfo:Lcom/narvii/scene/model/SceneInfo;

    return-object p1
.end method

.method static synthetic access$400(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/helper/SceneListHelper;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/narvii/scene/SceneManageFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/post/DraftManager;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/narvii/scene/SceneManageFragment;->draftManager:Lcom/narvii/post/DraftManager;

    return-object p0
.end method

.method static synthetic access$700(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/helper/SceneMediaPickerHelper;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/narvii/scene/SceneManageFragment;->sceneMediaPickerHelper:Lcom/narvii/scene/helper/SceneMediaPickerHelper;

    return-object p0
.end method

.method static synthetic access$800(Lcom/narvii/scene/SceneManageFragment;Lcom/narvii/scene/SceneWrapper;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/narvii/scene/SceneManageFragment;->copyScene(Lcom/narvii/scene/SceneWrapper;I)V

    return-void
.end method

.method private copyScene(Lcom/narvii/scene/SceneWrapper;I)V
    .locals 2

    .line 502
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment;->adapter:Lcom/narvii/scene/SceneManageFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVArrayAdapter;->getCount()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 504
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/narvii/mediaeditor/R$string;->reached_maximum_number_of_scenes:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    .line 508
    new-instance v1, Lcom/narvii/scene/SceneManageFragment$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/scene/SceneManageFragment$5;-><init>(Lcom/narvii/scene/SceneManageFragment;Lcom/narvii/scene/SceneWrapper;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private updateFooterView()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment;->adapter:Lcom/narvii/scene/SceneManageFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment;->footerView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment;->footerView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateView()V
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment;->adapter:Lcom/narvii/scene/SceneManageFragment$Adapter;

    if-nez v0, :cond_0

    return-void

    .line 572
    :cond_0
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method protected advanceSortListView(Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    return-void
.end method

.method protected bridge synthetic createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lcom/narvii/scene/SceneManageFragment;->createAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVArrayAdapter;

    move-result-object p1

    return-object p1
.end method

.method protected createAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVArrayAdapter;
    .locals 0

    .line 238
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment;->adapter:Lcom/narvii/scene/SceneManageFragment$Adapter;

    return-object p1
.end method

.method protected getActionBarLayoutId()I
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/narvii/scene/SceneManageFragment;->isDarkTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/narvii/mediaeditor/R$layout;->actionbar_layout:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/narvii/mediaeditor/R$layout;->actionbar_layout_no_shadow:I

    :goto_0
    return v0
.end method

.method public getCustomTheme()I
    .locals 1

    .line 83
    sget v0, Lcom/narvii/mediaeditor/R$style;->AminoTheme_Overlay:I

    return v0
.end method

.method protected getDraftAbsolutePath()Ljava/lang/String;
    .locals 2

    .line 565
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object v1, p0, Lcom/narvii/scene/SceneManageFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    iget-object v1, v1, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "SceneManage"

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    .line 181
    invoke-static {}, Lcom/narvii/app/NVApplication;->isStoryEditorApp()Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 144
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 146
    invoke-virtual {p0}, Lcom/narvii/scene/SceneManageFragment;->isDarkTheme()Z

    move-result p1

    if-nez p1, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/narvii/mediaeditor/R$color;->story_theme_action_bar_view:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setBackButtonTint(I)V

    .line 148
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/narvii/mediaeditor/R$color;->story_theme_text_color:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setActionBarTitleColor(I)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 186
    const-class v0, Lcom/narvii/scene/model/SceneInfo;

    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 188
    iget-object v1, p0, Lcom/narvii/scene/SceneManageFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/narvii/scene/helper/SceneListHelper;->isSceneQuizResult(IILandroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "sceneId"

    .line 189
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "question"

    .line 190
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-class p3, Lcom/narvii/model/QuizQuestion;

    invoke-static {p2, p3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/QuizQuestion;

    .line 191
    iget-object p3, p0, Lcom/narvii/scene/SceneManageFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-virtual {p3, p1}, Lcom/narvii/scene/model/SceneDraft;->getSceneInfo(Ljava/lang/String;)Lcom/narvii/scene/model/SceneInfo;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 193
    iput-object p2, p1, Lcom/narvii/scene/model/SceneInfo;->question:Lcom/narvii/model/QuizQuestion;

    .line 194
    invoke-direct {p0}, Lcom/narvii/scene/SceneManageFragment;->updateView()V

    goto :goto_1

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/narvii/scene/SceneManageFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/narvii/scene/helper/SceneListHelper;->isScenePollResult(IILandroid/content/Intent;)Z

    move-result v1

    const-string v2, "sceneInfo"

    if-eqz v1, :cond_3

    .line 198
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/scene/model/SceneInfo;

    .line 199
    iget-object p2, p0, Lcom/narvii/scene/SceneManageFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz p1, :cond_1

    iget-object p3, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p2, p3}, Lcom/narvii/scene/model/SceneDraft;->getSceneInfo(Ljava/lang/String;)Lcom/narvii/scene/model/SceneInfo;

    move-result-object p2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 201
    iget-object p1, p1, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    iput-object p1, p2, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 203
    :cond_2
    invoke-direct {p0}, Lcom/narvii/scene/SceneManageFragment;->updateView()V

    goto :goto_1

    .line 205
    :cond_3
    iget-object v1, p0, Lcom/narvii/scene/SceneManageFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/narvii/scene/helper/SceneListHelper;->isSceneEditorResult(IILandroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 206
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/scene/model/SceneInfo;

    .line 207
    iget-object p2, p0, Lcom/narvii/scene/SceneManageFragment;->editSceneInfo:Lcom/narvii/scene/model/SceneInfo;

    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    iget-object p3, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    iget-object p2, p2, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-static {p3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 208
    iget-object p2, p0, Lcom/narvii/scene/SceneManageFragment;->editSceneInfo:Lcom/narvii/scene/model/SceneInfo;

    invoke-virtual {p2, p1}, Lcom/narvii/scene/model/SceneInfo;->copyScene(Lcom/narvii/scene/model/SceneInfo;)V

    .line 210
    :cond_4
    invoke-direct {p0}, Lcom/narvii/scene/SceneManageFragment;->updateView()V

    goto :goto_1

    .line 213
    :cond_5
    new-instance v0, Lcom/narvii/scene/SceneManageFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/scene/SceneManageFragment$2;-><init>(Lcom/narvii/scene/SceneManageFragment;)V

    invoke-static {p1, p2, p3, v0}, Lcom/narvii/pre_editing/MediaPreEditingActivityKt;->handlePreEditActivityResult(IILandroid/content/Intent;Lkotlin/jvm/functions/Function2;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 93
    const-class v0, Lcom/narvii/scene/model/SceneDraft;

    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    sget v1, Lcom/narvii/mediaeditor/R$string;->manage_scenes:I

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 95
    invoke-static {p0, v1}, Lcom/narvii/util/statusbar/StatusBarUtils;->setSystemUiFlagLightStatusBar(Lcom/narvii/app/NVContext;Z)V

    const-string v1, "sceneDraft"

    if-nez p1, :cond_0

    .line 98
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/scene/model/SceneDraft;

    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/scene/model/SceneDraft;

    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 104
    :goto_0
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-nez p1, :cond_1

    .line 105
    new-instance p1, Lcom/narvii/scene/model/SceneDraft;

    invoke-direct {p1}, Lcom/narvii/scene/model/SceneDraft;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 108
    :cond_1
    new-instance p1, Lcom/narvii/scene/SceneManageFragment$Adapter;

    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-static {v0}, Lcom/narvii/scene/SceneWrapper;->createWrappers(Lcom/narvii/scene/model/SceneDraft;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/narvii/scene/SceneManageFragment$Adapter;-><init>(Lcom/narvii/scene/SceneManageFragment;Ljava/util/List;)V

    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment;->adapter:Lcom/narvii/scene/SceneManageFragment$Adapter;

    const-string p1, "draft"

    .line 110
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/post/DraftManager;

    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment;->draftManager:Lcom/narvii/post/DraftManager;

    .line 112
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "playListMediaPicker"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/narvii/media/MediaPickerFragment;

    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 113
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-nez p1, :cond_2

    .line 114
    new-instance p1, Lcom/narvii/media/MediaPickerFragment;

    invoke-direct {p1}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 115
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/scene/SceneManageFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 117
    :cond_2
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {p1, p0}, Lcom/narvii/media/MediaPickerFragment;->addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 118
    new-instance p1, Lcom/narvii/scene/helper/SceneMediaPickerHelper;

    invoke-virtual {p0}, Lcom/narvii/scene/SceneManageFragment;->getDraftAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/scene/SceneManageFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    invoke-direct {p1, p0, v0, v1}, Lcom/narvii/scene/helper/SceneMediaPickerHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;Lcom/narvii/media/MediaPickerFragment;)V

    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment;->sceneMediaPickerHelper:Lcom/narvii/scene/helper/SceneMediaPickerHelper;

    const-string p1, "videoManager"

    .line 121
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/services/VideoManager;

    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    const-string p1, "photo"

    .line 122
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/photos/PhotoManager;

    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment;->photoManager:Lcom/narvii/photos/PhotoManager;

    .line 124
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 126
    new-instance p1, Lcom/narvii/scene/helper/SceneListHelper;

    invoke-direct {p1, p0}, Lcom/narvii/scene/helper/SceneListHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 160
    sget p3, Lcom/narvii/mediaeditor/R$layout;->drag_manage_scene_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDeletePoll(Lcom/narvii/scene/model/SceneInfo;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    iget-object p1, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/narvii/scene/model/SceneDraft;->getSceneInfo(Ljava/lang/String;)Lcom/narvii/scene/model/SceneInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 547
    iput-object v0, p1, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 549
    :cond_1
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment;->adapter:Lcom/narvii/scene/SceneManageFragment$Adapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onDeleteQuiz(Lcom/narvii/scene/model/SceneInfo;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    iget-object p1, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/narvii/scene/model/SceneDraft;->getSceneInfo(Ljava/lang/String;)Lcom/narvii/scene/model/SceneInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 558
    iput-object v0, p1, Lcom/narvii/scene/model/SceneInfo;->question:Lcom/narvii/model/QuizQuestion;

    .line 560
    :cond_1
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment;->adapter:Lcom/narvii/scene/SceneManageFragment$Adapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 136
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 137
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->removeOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    :cond_0
    return-void
.end method

.method public onEditPoll(Lcom/narvii/scene/model/SceneInfo;)V
    .locals 2

    .line 538
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    invoke-virtual {p0}, Lcom/narvii/scene/SceneManageFragment;->getDraftAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/narvii/scene/helper/SceneListHelper;->launchEditPoll(Lcom/narvii/scene/model/SceneInfo;Ljava/lang/String;)V

    return-void
.end method

.method public onEditQuiz(Lcom/narvii/scene/model/SceneInfo;)V
    .locals 2

    .line 534
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    invoke-virtual {p0}, Lcom/narvii/scene/SceneManageFragment;->getDraftAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/narvii/scene/helper/SceneListHelper;->launchEditQuiz(Lcom/narvii/scene/model/SceneInfo;Ljava/lang/String;)V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 3

    .line 165
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 166
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/narvii/mediaeditor/R$layout;->item_add_more_scene_item:I

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/scene/SceneManageFragment;->footerView:Landroid/view/View;

    .line 167
    iget-object p2, p0, Lcom/narvii/scene/SceneManageFragment;->footerView:Landroid/view/View;

    new-instance v0, Lcom/narvii/scene/SceneManageFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/scene/SceneManageFragment$1;-><init>(Lcom/narvii/scene/SceneManageFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object p2, p0, Lcom/narvii/scene/SceneManageFragment;->footerView:Landroid/view/View;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 176
    invoke-direct {p0}, Lcom/narvii/scene/SceneManageFragment;->updateFooterView()V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 280
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/narvii/scene/notification/CloseSceneTemplateObject;

    if-eqz v0, :cond_0

    .line 281
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment;->sceneMediaPickerHelper:Lcom/narvii/scene/helper/SceneMediaPickerHelper;

    if-eqz p1, :cond_2

    .line 282
    invoke-virtual {p1}, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->dismissTemplate()V

    goto :goto_0

    .line 284
    :cond_0
    instance-of v0, p1, Lcom/narvii/scene/notification/SceneInfoObject;

    if-eqz v0, :cond_2

    .line 285
    check-cast p1, Lcom/narvii/scene/notification/SceneInfoObject;

    iget-object p1, p1, Lcom/narvii/scene/notification/SceneInfoObject;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 286
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment;->editSceneInfo:Lcom/narvii/scene/model/SceneInfo;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    iget-object v0, v0, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment;->editSceneInfo:Lcom/narvii/scene/model/SceneInfo;

    invoke-virtual {v0, p1}, Lcom/narvii/scene/model/SceneInfo;->copyScene(Lcom/narvii/scene/model/SceneInfo;)V

    .line 289
    :cond_1
    invoke-direct {p0}, Lcom/narvii/scene/SceneManageFragment;->updateView()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 6
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

    .line 255
    new-instance v4, Lcom/narvii/scene/SceneManageFragment$3;

    invoke-direct {v4, p0}, Lcom/narvii/scene/SceneManageFragment$3;-><init>(Lcom/narvii/scene/SceneManageFragment;)V

    new-instance v5, Lcom/narvii/scene/SceneManageFragment$4;

    invoke-direct {v5, p0, p1}, Lcom/narvii/scene/SceneManageFragment$4;-><init>(Lcom/narvii/scene/SceneManageFragment;Ljava/util/List;)V

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/narvii/pre_editing/MediaPreEditingActivityKt;->handlePickerMediaResult(Lcom/narvii/app/NVFragment;Ljava/util/List;Landroid/os/Bundle;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 154
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 155
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sceneDraft"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected toSceneEditor(Lcom/narvii/scene/model/SceneInfo;Z)V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    invoke-virtual {p0}, Lcom/narvii/scene/SceneManageFragment;->getDraftAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/narvii/scene/helper/SceneListHelper;->launchSceneEditor(Lcom/narvii/scene/model/SceneInfo;ZLjava/lang/String;)V

    return-void
.end method

.method public willFinish(Lcom/narvii/app/NVActivity;)V
    .locals 3

    .line 243
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 244
    iget-object v1, p0, Lcom/narvii/scene/SceneManageFragment;->adapter:Lcom/narvii/scene/SceneManageFragment$Adapter;

    invoke-virtual {v1}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/scene/SceneWrapper;->getSceneInfos(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 245
    iget-object v2, p0, Lcom/narvii/scene/SceneManageFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-virtual {v2, v1}, Lcom/narvii/scene/model/SceneDraft;->setSceneInfos(Ljava/util/List;)V

    .line 247
    iget-object v1, p0, Lcom/narvii/scene/SceneManageFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    iget-object v1, v1, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "scene_list"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    iget-object v1, p0, Lcom/narvii/scene/SceneManageFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    iget v1, v1, Lcom/narvii/scene/model/SceneDraft;->serialNo:I

    const-string v2, "draft_serial_no"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 250
    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method
