.class public Lcom/narvii/story/TopicStoryListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "TopicStoryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;,
        Lcom/narvii/story/TopicStoryListFragment$TopicStoryListAdapter;
    }
.end annotation


# instance fields
.field private headerLayout:Landroid/view/ViewGroup;

.field private storyListAdapter:Lcom/narvii/story/StoryListAdapter;

.field private storyTopic:Lcom/narvii/model/story/StoryTopic;

.field private topperAdapter:Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/story/TopicStoryListFragment;)Lcom/narvii/model/story/StoryTopic;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/narvii/story/TopicStoryListFragment;->storyTopic:Lcom/narvii/model/story/StoryTopic;

    return-object p0
.end method

.method static synthetic access$002(Lcom/narvii/story/TopicStoryListFragment;Lcom/narvii/model/story/StoryTopic;)Lcom/narvii/model/story/StoryTopic;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/narvii/story/TopicStoryListFragment;->storyTopic:Lcom/narvii/model/story/StoryTopic;

    return-object p1
.end method

.method static synthetic access$100(Lcom/narvii/story/TopicStoryListFragment;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/narvii/story/TopicStoryListFragment;->updateHeaderView()V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/story/TopicStoryListFragment;)Lcom/narvii/story/StoryListAdapter;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/narvii/story/TopicStoryListFragment;->storyListAdapter:Lcom/narvii/story/StoryListAdapter;

    return-object p0
.end method

.method private updateHeaderView()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/narvii/story/TopicStoryListFragment;->storyTopic:Lcom/narvii/model/story/StoryTopic;

    if-nez v0, :cond_0

    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/TopicStoryListFragment;->headerLayout:Landroid/view/ViewGroup;

    const v1, 0x7f090bcf

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 173
    iget-object v1, p0, Lcom/narvii/story/TopicStoryListFragment;->storyTopic:Lcom/narvii/model/story/StoryTopic;

    invoke-virtual {v1}, Lcom/narvii/model/story/StoryTopic;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/narvii/story/TopicStoryListFragment;->topperAdapter:Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 8

    .line 126
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 127
    new-instance v0, Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;-><init>(Lcom/narvii/story/TopicStoryListFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/story/TopicStoryListFragment;->topperAdapter:Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v7

    .line 129
    new-instance v0, Lcom/narvii/list/DivideColumnAdapter;

    move-object v2, v0

    move-object v3, p0

    move v4, v7

    move v5, v7

    move v6, v7

    invoke-direct/range {v2 .. v7}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 130
    new-instance v1, Lcom/narvii/story/TopicStoryListFragment$TopicStoryListAdapter;

    iget-object v2, p0, Lcom/narvii/story/TopicStoryListFragment;->storyTopic:Lcom/narvii/model/story/StoryTopic;

    if-eqz v2, :cond_0

    iget v2, v2, Lcom/narvii/model/story/StoryTopic;->topicId:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v1, p0, p0, v2}, Lcom/narvii/story/TopicStoryListFragment$TopicStoryListAdapter;-><init>(Lcom/narvii/story/TopicStoryListFragment;Lcom/narvii/app/NVContext;I)V

    iput-object v1, p0, Lcom/narvii/story/TopicStoryListFragment;->storyListAdapter:Lcom/narvii/story/StoryListAdapter;

    .line 131
    iget-object v1, p0, Lcom/narvii/story/TopicStoryListFragment;->storyListAdapter:Lcom/narvii/story/StoryListAdapter;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 132
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 133
    new-instance v0, Lcom/narvii/adapter/MarginAdapter;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42780000    # 62.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/narvii/adapter/MarginAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    return-object p1
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 144
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "TopicView"

    return-object v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 103
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "topic"

    .line 61
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/story/StoryTopic;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/story/StoryTopic;

    iput-object p1, p0, Lcom/narvii/story/TopicStoryListFragment;->storyTopic:Lcom/narvii/model/story/StoryTopic;

    .line 62
    iget-object p1, p0, Lcom/narvii/story/TopicStoryListFragment;->storyTopic:Lcom/narvii/model/story/StoryTopic;

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    if-nez p1, :cond_1

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "topic0problem : TopicStoryListFragment open with error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/narvii/story/TopicStoryListFragment;->storyTopic:Lcom/narvii/model/story/StoryTopic;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0302

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 113
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 114
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 115
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 121
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 75
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f09080a

    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/list/overlay/OverlayLayout;

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVListView;

    invoke-virtual {p1, p2}, Lcom/narvii/list/overlay/OverlayLayout;->attach(Lcom/narvii/widget/NVListView;)V

    const/4 p2, 0x0

    .line 79
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const p2, 0x7f0b06a4

    .line 80
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, p2, v0}, Lcom/narvii/list/overlay/OverlayLayout;->setLayout(II)V

    .line 81
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result p2

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/narvii/list/overlay/OverlayLayout;->setHeight1(I)V

    const p2, 0x7f0904f4

    .line 83
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/narvii/story/TopicStoryListFragment;->headerLayout:Landroid/view/ViewGroup;

    :cond_0
    const/4 p1, 0x0

    .line 86
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected sendPageViewEventToThirdParty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
