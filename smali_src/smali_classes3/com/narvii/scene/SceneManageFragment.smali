.class public Lcom/narvii/scene/SceneManageFragment;
.super Lcom/narvii/list/DragSortListFragment;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/DragSortListFragment;-><init>()V

    .line 4
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/model/SceneDraft;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/scene/SceneManageFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/SceneManageFragment$Adapter;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/scene/SceneManageFragment;->adapter:Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 3
    return-object p0
.end method

.method static synthetic access$1000(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/video/services/VideoManager;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/scene/SceneManageFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/scene/SceneManageFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/SceneManageFragment;->updateFooterView()V

    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/model/SceneInfo;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/scene/SceneManageFragment;->editSceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 3
    return-object p0
.end method

.method static synthetic access$302(Lcom/narvii/scene/SceneManageFragment;Lcom/narvii/scene/model/SceneInfo;)Lcom/narvii/scene/model/SceneInfo;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment;->editSceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 3
    return-object p1
.end method

.method static synthetic access$400(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/helper/SceneListHelper;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/scene/SceneManageFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/post/DraftManager;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/scene/SceneManageFragment;->draftManager:Lcom/narvii/post/DraftManager;

    .line 3
    return-object p0
.end method

.method static synthetic access$700(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/helper/SceneMediaPickerHelper;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/scene/SceneManageFragment;->sceneMediaPickerHelper:Lcom/narvii/scene/helper/SceneMediaPickerHelper;

    .line 3
    return-object p0
.end method

.method static synthetic access$800(Lcom/narvii/scene/SceneManageFragment;Lcom/narvii/scene/SceneWrapper;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/scene/SceneManageFragment;->copyScene(Lcom/narvii/scene/SceneWrapper;I)V

    .line 4
    return-void
.end method

.method private copyScene(Lcom/narvii/scene/SceneWrapper;I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment;->adapter:Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/list/NVArrayAdapter;->getCount()I

    .line 6
    move-result v0

    .line 7
    .line 8
    const/16 v1, 0xa

    .line 9
    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    sget v0, Lcom/narvii/mediaeditor/R$string;->reached_maximum_number_of_scenes:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    return-void

    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    new-instance v1, Lcom/narvii/scene/SceneManageFragment$5;

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/scene/SceneManageFragment$5;-><init>(Lcom/narvii/scene/SceneManageFragment;Lcom/narvii/scene/SceneWrapper;I)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 41
    :cond_1
    return-void
.end method

.method private updateFooterView()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment;->adapter:Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    move-result v0

    .line 13
    .line 14
    const/16 v1, 0xa

    .line 15
    .line 16
    if-lt v0, v1, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment;->footerView:Landroid/view/View;

    .line 19
    .line 20
    const/16 v1, 0x8

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment;->footerView:Landroid/view/View;

    .line 27
    const/4 v1, 0x0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    :goto_0
    return-void
.end method

.method private updateView()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment;->adapter:Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 9
    return-void
.end method


# virtual methods
.method protected advanceSortListView(Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 5
    return-void
.end method

.method protected bridge synthetic createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/narvii/scene/SceneManageFragment;->createAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVArrayAdapter;

    move-result-object p1

    return-object p1
.end method

.method protected createAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVArrayAdapter;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment;->adapter:Lcom/narvii/scene/SceneManageFragment$Adapter;

    return-object p1
.end method

.method protected getActionBarLayoutId()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/SceneManageFragment;->isDarkTheme()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget v0, Lcom/narvii/mediaeditor/R$layout;->actionbar_layout:I

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    sget v0, Lcom/narvii/mediaeditor/R$layout;->actionbar_layout_no_shadow:I

    .line 12
    :goto_0
    return v0
.end method

.method public getCustomTheme()I
    .locals 1

    sget v0, Lcom/narvii/mediaeditor/R$style;->AminoTheme_Overlay:I

    return v0
.end method

.method protected getDraftAbsolutePath()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment;->draftManager:Lcom/narvii/post/DraftManager;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/scene/SceneManageFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "scene_manage"

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/scene/SceneManageFragment;->isDarkTheme()Z

    .line 7
    move-result p1

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    sget v0, Lcom/narvii/mediaeditor/R$color;->story_theme_action_bar_view:I

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 19
    move-result p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setBackButtonTint(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    sget v0, Lcom/narvii/mediaeditor/R$color;->story_theme_text_color:I

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 32
    move-result p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setActionBarTitleColor(I)V

    .line 36
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/scene/helper/SceneListHelper;->isSceneQuizResult(IILandroid/content/Intent;)Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string p1, "sceneId"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    const-string p2, "question"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    const-class p3, Lcom/narvii/model/QuizQuestion;

    .line 26
    .line 27
    .line 28
    invoke-static {p2, p3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    move-result-object p2

    .line 30
    .line 31
    check-cast p2, Lcom/narvii/model/QuizQuestion;

    .line 32
    .line 33
    iget-object p3, p0, Lcom/narvii/scene/SceneManageFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, p1}, Lcom/narvii/scene/model/SceneDraft;->getSceneInfo(Ljava/lang/String;)Lcom/narvii/scene/model/SceneInfo;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    if-eqz p1, :cond_6

    .line 40
    .line 41
    iput-object p2, p1, Lcom/narvii/scene/model/SceneInfo;->question:Lcom/narvii/model/QuizQuestion;

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/narvii/scene/SceneManageFragment;->updateView()V

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/scene/helper/SceneListHelper;->isScenePollResult(IILandroid/content/Intent;)Z

    .line 51
    move-result v0

    .line 52
    .line 53
    const-class v1, Lcom/narvii/scene/model/SceneInfo;

    .line 54
    .line 55
    const-string v2, "sceneInfo"

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    .line 64
    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    check-cast p1, Lcom/narvii/scene/model/SceneInfo;

    .line 68
    .line 69
    iget-object p2, p0, Lcom/narvii/scene/SceneManageFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 70
    .line 71
    if-eqz p1, :cond_1

    .line 72
    .line 73
    iget-object p3, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    const/4 p3, 0x0

    .line 76
    .line 77
    .line 78
    :goto_0
    invoke-virtual {p2, p3}, Lcom/narvii/scene/model/SceneDraft;->getSceneInfo(Ljava/lang/String;)Lcom/narvii/scene/model/SceneInfo;

    .line 79
    move-result-object p2

    .line 80
    .line 81
    if-eqz p2, :cond_2

    .line 82
    .line 83
    if-eqz p1, :cond_2

    .line 84
    .line 85
    iget-object p1, p1, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 86
    .line 87
    iput-object p1, p2, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 88
    .line 89
    .line 90
    :cond_2
    invoke-direct {p0}, Lcom/narvii/scene/SceneManageFragment;->updateView()V

    .line 91
    goto :goto_1

    .line 92
    .line 93
    :cond_3
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/scene/helper/SceneListHelper;->isSceneEditorResult(IILandroid/content/Intent;)Z

    .line 97
    move-result v0

    .line 98
    .line 99
    if-eqz v0, :cond_5

    .line 100
    .line 101
    .line 102
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    .line 106
    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 107
    move-result-object p1

    .line 108
    .line 109
    check-cast p1, Lcom/narvii/scene/model/SceneInfo;

    .line 110
    .line 111
    iget-object p2, p0, Lcom/narvii/scene/SceneManageFragment;->editSceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 112
    .line 113
    if-eqz p2, :cond_4

    .line 114
    .line 115
    if-eqz p1, :cond_4

    .line 116
    .line 117
    iget-object p3, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 118
    .line 119
    iget-object p2, p2, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    invoke-static {p3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 123
    move-result p2

    .line 124
    .line 125
    if-eqz p2, :cond_4

    .line 126
    .line 127
    iget-object p2, p0, Lcom/narvii/scene/SceneManageFragment;->editSceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2, p1}, Lcom/narvii/scene/model/SceneInfo;->copyScene(Lcom/narvii/scene/model/SceneInfo;)V

    .line 131
    .line 132
    .line 133
    :cond_4
    invoke-direct {p0}, Lcom/narvii/scene/SceneManageFragment;->updateView()V

    .line 134
    goto :goto_1

    .line 135
    .line 136
    :cond_5
    new-instance v0, Lcom/narvii/scene/SceneManageFragment$2;

    .line 137
    .line 138
    .line 139
    invoke-direct {v0, p0}, Lcom/narvii/scene/SceneManageFragment$2;-><init>(Lcom/narvii/scene/SceneManageFragment;)V

    .line 140
    .line 141
    .line 142
    invoke-static {p1, p2, p3, v0}, Lcom/narvii/pre_editing/MediaPreEditingActivityKt;->handlePreEditActivityResult(IILandroid/content/Intent;Le8/p;)V

    .line 143
    :cond_6
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    sget v0, Lcom/narvii/mediaeditor/R$string;->manage_scenes:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 13
    const/4 v0, 0x1

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Lcom/narvii/util/statusbar/StatusBarUtils;->setSystemUiFlagLightStatusBar(Lcom/narvii/app/NVContext;Z)V

    .line 17
    .line 18
    const-class v0, Lcom/narvii/scene/model/SceneDraft;

    .line 19
    .line 20
    const-string v1, "sceneDraft"

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    check-cast p1, Lcom/narvii/scene/model/SceneDraft;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    check-cast p1, Lcom/narvii/scene/model/SceneDraft;

    .line 46
    .line 47
    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 48
    .line 49
    :goto_0
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 50
    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    new-instance p1, Lcom/narvii/scene/model/SceneDraft;

    .line 54
    .line 55
    .line 56
    invoke-direct {p1}, Lcom/narvii/scene/model/SceneDraft;-><init>()V

    .line 57
    .line 58
    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 59
    .line 60
    :cond_1
    new-instance p1, Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 61
    .line 62
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Lcom/narvii/scene/SceneWrapper;->createWrappers(Lcom/narvii/scene/model/SceneDraft;)Ljava/util/List;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    .line 69
    invoke-direct {p1, p0, v0}, Lcom/narvii/scene/SceneManageFragment$Adapter;-><init>(Lcom/narvii/scene/SceneManageFragment;Ljava/util/List;)V

    .line 70
    .line 71
    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment;->adapter:Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 72
    .line 73
    const-string p1, "draft"

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    check-cast p1, Lcom/narvii/post/DraftManager;

    .line 80
    .line 81
    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment;->draftManager:Lcom/narvii/post/DraftManager;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    const-string v0, "playListMediaPicker"

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    check-cast p1, Lcom/narvii/media/MediaPickerFragment;

    .line 94
    .line 95
    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 96
    .line 97
    if-nez p1, :cond_2

    .line 98
    .line 99
    new-instance p1, Lcom/narvii/media/MediaPickerFragment;

    .line 100
    .line 101
    .line 102
    invoke-direct {p1}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    .line 103
    .line 104
    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 108
    move-result-object p1

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 112
    move-result-object p1

    .line 113
    .line 114
    iget-object v1, p0, Lcom/narvii/scene/SceneManageFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 118
    move-result-object p1

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 122
    .line 123
    :cond_2
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, p0}, Lcom/narvii/media/MediaPickerFragment;->addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 127
    .line 128
    new-instance p1, Lcom/narvii/scene/helper/SceneMediaPickerHelper;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/narvii/scene/SceneManageFragment;->getDraftAbsolutePath()Ljava/lang/String;

    .line 132
    move-result-object v0

    .line 133
    .line 134
    iget-object v1, p0, Lcom/narvii/scene/SceneManageFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 135
    .line 136
    .line 137
    invoke-direct {p1, p0, v0, v1}, Lcom/narvii/scene/helper/SceneMediaPickerHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;Lcom/narvii/media/MediaPickerFragment;)V

    .line 138
    .line 139
    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment;->sceneMediaPickerHelper:Lcom/narvii/scene/helper/SceneMediaPickerHelper;

    .line 140
    .line 141
    .line 142
    const-string/jumbo p1, "videoManager"

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 146
    move-result-object p1

    .line 147
    .line 148
    check-cast p1, Lcom/narvii/video/services/VideoManager;

    .line 149
    .line 150
    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    .line 151
    .line 152
    const-string p1, "photo"

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 156
    move-result-object p1

    .line 157
    .line 158
    check-cast p1, Lcom/narvii/photos/PhotoManager;

    .line 159
    .line 160
    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment;->photoManager:Lcom/narvii/photos/PhotoManager;

    .line 161
    .line 162
    .line 163
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 164
    move-result-object p1

    .line 165
    .line 166
    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 167
    .line 168
    new-instance p1, Lcom/narvii/scene/helper/SceneListHelper;

    .line 169
    .line 170
    .line 171
    invoke-direct {p1, p0}, Lcom/narvii/scene/helper/SceneListHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 172
    .line 173
    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    .line 174
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    sget p3, Lcom/narvii/mediaeditor/R$layout;->drag_manage_scene_layout:I

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public onDeletePoll(Lcom/narvii/scene/model/SceneInfo;)V
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/narvii/scene/model/SceneDraft;->getSceneInfo(Ljava/lang/String;)Lcom/narvii/scene/model/SceneInfo;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    iput-object v0, p1, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 17
    .line 18
    :cond_1
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment;->adapter:Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 22
    return-void
.end method

.method public onDeleteQuiz(Lcom/narvii/scene/model/SceneInfo;)V
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/narvii/scene/model/SceneDraft;->getSceneInfo(Ljava/lang/String;)Lcom/narvii/scene/model/SceneInfo;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    iput-object v0, p1, Lcom/narvii/scene/model/SceneInfo;->question:Lcom/narvii/model/QuizQuestion;

    .line 17
    .line 18
    :cond_1
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment;->adapter:Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 22
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->removeOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 11
    :cond_0
    return-void
.end method

.method public onEditPoll(Lcom/narvii/scene/model/SceneInfo;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/scene/SceneManageFragment;->getDraftAbsolutePath()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, v1}, Lcom/narvii/scene/helper/SceneListHelper;->launchEditPoll(Lcom/narvii/scene/model/SceneInfo;Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public onEditQuiz(Lcom/narvii/scene/model/SceneInfo;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/scene/SceneManageFragment;->getDraftAbsolutePath()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, v1}, Lcom/narvii/scene/helper/SceneListHelper;->launchEditQuiz(Lcom/narvii/scene/model/SceneInfo;Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    sget v0, Lcom/narvii/mediaeditor/R$layout;->item_add_more_scene_item:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    iput-object p2, p0, Lcom/narvii/scene/SceneManageFragment;->footerView:Landroid/view/View;

    .line 25
    .line 26
    new-instance v0, Lcom/narvii/scene/SceneManageFragment$1;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/narvii/scene/SceneManageFragment$1;-><init>(Lcom/narvii/scene/SceneManageFragment;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    .line 34
    iget-object p2, p0, Lcom/narvii/scene/SceneManageFragment;->footerView:Landroid/view/View;

    .line 35
    const/4 v0, 0x0

    .line 36
    const/4 v1, 0x1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/narvii/scene/SceneManageFragment;->updateFooterView()V

    .line 43
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 5
    .line 6
    instance-of v0, p1, Lcom/narvii/scene/notification/CloseSceneTemplateObject;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment;->sceneMediaPickerHelper:Lcom/narvii/scene/helper/SceneMediaPickerHelper;

    .line 11
    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->dismissTemplate()V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    instance-of v0, p1, Lcom/narvii/scene/notification/SceneInfoObject;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    check-cast p1, Lcom/narvii/scene/notification/SceneInfoObject;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/narvii/scene/notification/SceneInfoObject;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment;->editSceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget-object v1, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 38
    move-result v0

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment;->editSceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Lcom/narvii/scene/model/SceneInfo;->copyScene(Lcom/narvii/scene/model/SceneInfo;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-direct {p0}, Lcom/narvii/scene/SceneManageFragment;->updateView()V

    .line 49
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

    .line 1
    const/4 v3, 0x1

    .line 2
    .line 3
    new-instance v4, Lcom/narvii/scene/SceneManageFragment$3;

    .line 4
    .line 5
    .line 6
    invoke-direct {v4, p0}, Lcom/narvii/scene/SceneManageFragment$3;-><init>(Lcom/narvii/scene/SceneManageFragment;)V

    .line 7
    .line 8
    new-instance v5, Lcom/narvii/scene/SceneManageFragment$4;

    .line 9
    .line 10
    .line 11
    invoke-direct {v5, p0, p1}, Lcom/narvii/scene/SceneManageFragment$4;-><init>(Lcom/narvii/scene/SceneManageFragment;Ljava/util/List;)V

    .line 12
    move-object v0, p0

    .line 13
    move-object v1, p1

    .line 14
    move-object v2, p2

    .line 15
    .line 16
    .line 17
    invoke-static/range {v0 .. v5}, Lcom/narvii/pre_editing/MediaPreEditingActivityKt;->handlePickerMediaResult(Lcom/narvii/app/NVFragment;Ljava/util/List;Landroid/os/Bundle;ZLe8/a;Le8/p;)V

    .line 18
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "sceneDraft"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method protected toSceneEditor(Lcom/narvii/scene/model/SceneInfo;Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/scene/SceneManageFragment;->getDraftAbsolutePath()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, v1}, Lcom/narvii/scene/helper/SceneListHelper;->launchSceneEditor(Lcom/narvii/scene/model/SceneInfo;ZLjava/lang/String;)V

    .line 10
    return-void
.end method

.method public willFinish(Lcom/narvii/app/NVActivity;)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/scene/SceneManageFragment;->adapter:Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lcom/narvii/scene/SceneWrapper;->getSceneInfos(Ljava/util/List;)Ljava/util/List;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    iget-object v2, p0, Lcom/narvii/scene/SceneManageFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v1}, Lcom/narvii/scene/model/SceneDraft;->setSceneInfos(Ljava/util/List;)V

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/scene/SceneManageFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    const-string v2, "scene_list"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/narvii/scene/SceneManageFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 36
    .line 37
    iget v1, v1, Lcom/narvii/scene/model/SceneDraft;->serialNo:I

    .line 38
    .line 39
    const-string v2, "draft_serial_no"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43
    const/4 v1, -0x1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 47
    return-void
.end method
