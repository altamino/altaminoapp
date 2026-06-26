.class public Lcom/narvii/feed/SubTypeFeedListFragment;
.super Lcom/narvii/feed/FeedListFragment;
.source "SubTypeFeedListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/feed/ExternalChannelFilterFragment$FilterChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/feed/SubTypeFeedListFragment$FeedAdapter;
    }
.end annotation


# static fields
.field public static final TYPE_BLOGS_RECENT:Ljava/lang/String; = "blogs-recent"

.field public static final TYPE_EXTERNAL_POST:Ljava/lang/String; = "external-posts-recent"

.field public static final TYPE_IMAGES_RECENT:Ljava/lang/String; = "images-recent"

.field public static final TYPE_LINK_RECENT:Ljava/lang/String; = "links-recent"

.field public static final TYPE_POLLS_RECENT:Ljava/lang/String; = "polls-recent"

.field public static final TYPE_QUESTIONS_RECENT:Ljava/lang/String; = "questions-recent"

.field public static final TYPE_QUIZZES_RECENT:Ljava/lang/String; = "quizzes-recent"

.field public static final TYPE_STORIES_RECENT:Ljava/lang/String; = "stories-recent"


# instance fields
.field private attachFragmentView:Landroid/view/View;

.field private externaleSourceCount:I

.field private feedAdapter:Lcom/narvii/feed/SubTypeFeedListFragment$FeedAdapter;

.field private menuListener:Landroid/view/View$OnClickListener;

.field private selectedExternalSource:Lcom/narvii/model/ExternalSource;

.field private selectedFilterChannelId:Ljava/lang/String;

.field private sourceName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/narvii/feed/FeedListFragment;-><init>()V

    .line 162
    new-instance v0, Lcom/narvii/feed/SubTypeFeedListFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/feed/SubTypeFeedListFragment$1;-><init>(Lcom/narvii/feed/SubTypeFeedListFragment;)V

    iput-object v0, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->menuListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/feed/SubTypeFeedListFragment;)Landroid/view/View;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->attachFragmentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/feed/SubTypeFeedListFragment;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/narvii/feed/SubTypeFeedListFragment;->showChannelFilter()V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/feed/SubTypeFeedListFragment;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->sourceName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/feed/SubTypeFeedListFragment;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->selectedFilterChannelId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/narvii/feed/SubTypeFeedListFragment;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->externaleSourceCount:I

    return p1
.end method

.method private showChannelFilter()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->attachFragmentView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public collapse(Landroid/view/View;)V
    .locals 4

    .line 315
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 317
    new-instance v1, Lcom/narvii/feed/SubTypeFeedListFragment$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/narvii/feed/SubTypeFeedListFragment$3;-><init>(Lcom/narvii/feed/SubTypeFeedListFragment;Landroid/view/View;I)V

    const-wide/16 v2, 0xc8

    .line 333
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 334
    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected createFeedAdapter(Landroid/os/Bundle;)Lcom/narvii/feed/FeedListAdapter;
    .locals 0

    .line 196
    new-instance p1, Lcom/narvii/feed/SubTypeFeedListFragment$FeedAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/feed/SubTypeFeedListFragment$FeedAdapter;-><init>(Lcom/narvii/feed/SubTypeFeedListFragment;)V

    iput-object p1, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->feedAdapter:Lcom/narvii/feed/SubTypeFeedListFragment$FeedAdapter;

    return-object p1
.end method

.method public expand(Landroid/view/View;)V
    .locals 4

    const/4 v0, -0x1

    .line 286
    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 287
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getScreenSize(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object v0

    .line 288
    iget v0, v0, Landroid/graphics/Point;->y:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 289
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    int-to-float v0, v0

    const v2, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 294
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, 0x1

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 295
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    new-instance v1, Lcom/narvii/feed/SubTypeFeedListFragment$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/narvii/feed/SubTypeFeedListFragment$2;-><init>(Lcom/narvii/feed/SubTypeFeedListFragment;Landroid/view/View;I)V

    const-wide/16 v2, 0xc8

    .line 310
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 311
    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public getPostEntryLift()I
    .locals 1

    const/16 v0, 0x10

    .line 125
    invoke-static {p0, v0}, Lcom/narvii/util/ViewUtils;->getBannerLift(Lcom/narvii/app/NVContext;I)I

    move-result v0

    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 1

    .line 235
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onActiveChanged(Z)V

    if-nez p1, :cond_0

    .line 237
    iget-object p1, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->attachFragmentView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 238
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 201
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900c5

    if-ne p1, v0, :cond_0

    .line 202
    iget-object p1, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->attachFragmentView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 203
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 58
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "title"

    .line 59
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    const-string v0, "external-posts-recent"

    const-string/jumbo v1, "type"

    if-nez p1, :cond_8

    const/4 v2, 0x0

    .line 64
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "blogs-recent"

    .line 65
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v2, "Blogs"

    goto :goto_0

    :cond_1
    const-string v4, "polls-recent"

    .line 67
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v2, "Polls"

    goto :goto_0

    :cond_2
    const-string v4, "questions-recent"

    .line 69
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v2, "Questions"

    goto :goto_0

    :cond_3
    const-string v4, "images-recent"

    .line 71
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v2, "Image Posts"

    goto :goto_0

    :cond_4
    const-string v4, "links-recent"

    .line 73
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v2, "Link Posts"

    goto :goto_0

    .line 75
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v2, "External Content"

    goto :goto_0

    :cond_6
    const-string v4, "stories-recent"

    .line 77
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v2, "Stories"

    :cond_7
    :goto_0
    if-eqz v2, :cond_8

    .line 81
    iput-object v2, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->sourceName:Ljava/lang/String;

    :cond_8
    if-eqz p1, :cond_9

    const-string v2, "selectedFilterChannelId"

    .line 89
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->selectedFilterChannelId:Ljava/lang/String;

    const-string v2, "selectedSource"

    .line 90
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/narvii/model/ExternalSource;

    invoke-static {v2, v3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/ExternalSource;

    iput-object v2, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->selectedExternalSource:Lcom/narvii/model/ExternalSource;

    .line 93
    :cond_9
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-nez p1, :cond_a

    .line 95
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 96
    new-instance v0, Lcom/narvii/feed/ExternalChannelFilterFragment;

    invoke-direct {v0}, Lcom/narvii/feed/ExternalChannelFilterFragment;-><init>()V

    .line 97
    invoke-virtual {v0, p0}, Lcom/narvii/feed/ExternalChannelFilterFragment;->setFilterChangeListener(Lcom/narvii/feed/ExternalChannelFilterFragment$FilterChangeListener;)V

    .line 98
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v1, 0x7f0900c5

    const-string v2, "channelFilter"

    .line 99
    invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_a
    const/4 p1, 0x1

    .line 102
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    :cond_b
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 142
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p2, 0x7f0b05ef

    const/4 v0, 0x0

    const v1, 0x7f0f0f03

    .line 143
    invoke-interface {p1, v0, p2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 144
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x7f0b05f0

    :goto_0
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    .line 145
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 146
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0903db

    const v1, 0x3f59999a    # 0.85f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 147
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result p2

    if-nez p2, :cond_1

    .line 148
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    .line 149
    iget-object p2, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->menuListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b02fb

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onFilterChanged(Lcom/narvii/model/ExternalSource;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->selectedFilterChannelId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/narvii/model/ExternalSource;->id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 214
    iget-object p1, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->attachFragmentView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 217
    :cond_1
    iput-object p1, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->selectedExternalSource:Lcom/narvii/model/ExternalSource;

    .line 218
    invoke-virtual {p1}, Lcom/narvii/model/ExternalSource;->id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->selectedFilterChannelId:Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->feedAdapter:Lcom/narvii/feed/SubTypeFeedListFragment$FeedAdapter;

    if-eqz v0, :cond_2

    .line 220
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 222
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 223
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    goto :goto_1

    .line 225
    :cond_3
    iget-object v0, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->selectedExternalSource:Lcom/narvii/model/ExternalSource;

    if-nez v0, :cond_4

    const p1, 0x7f0f0d1a

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    iget-object p1, p1, Lcom/narvii/model/ExternalSource;->title:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 227
    :goto_1
    iget-object p1, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->attachFragmentView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 130
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 156
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b05ef

    if-ne v0, v1, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/narvii/feed/SubTypeFeedListFragment;->showChannelFilter()V

    .line 159
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5

    .line 186
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const v0, 0x7f0b05ef

    .line 187
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget v2, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->externaleSourceCount:I

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 188
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    .line 189
    iget-object v0, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->selectedExternalSource:Lcom/narvii/model/ExternalSource;

    if-nez v0, :cond_1

    const v0, 0x7f0f0f03

    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcom/narvii/model/ExternalSource;->title:Ljava/lang/String;

    :goto_1
    const v1, 0x7f090b5b

    .line 190
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const/16 v3, 0x8

    :goto_3
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 135
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 136
    iget-object v0, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->selectedFilterChannelId:Ljava/lang/String;

    const-string v1, "selectedFilterChannelId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->selectedExternalSource:Lcom/narvii/model/ExternalSource;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "selectedSource"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 114
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0900c5

    .line 116
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->attachFragmentView:Landroid/view/View;

    .line 117
    iget-object p1, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->attachFragmentView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070180

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 119
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 120
    :goto_0
    iget-object v0, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->attachFragmentView:Landroid/view/View;

    invoke-virtual {v0, p2, p1, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method protected optinAds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
