.class public Lcom/narvii/topic/BookmarkedTopicListFragment;
.super Lcom/narvii/topic/TopicListFragment;
.source "BookmarkedTopicListFragment.java"

# interfaces
.implements Lcom/narvii/app/FragmentOnBackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/topic/BookmarkedTopicListFragment$BookmarkedTopicItemAdapter;
    }
.end annotation


# static fields
.field public static final REQUEST_REORDER:I = 0x65


# instance fields
.field private btnEdit:Landroid/view/View;

.field private topicList:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/narvii/topic/TopicListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/topic/BookmarkedTopicListFragment;)Landroid/view/View;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/narvii/topic/BookmarkedTopicListFragment;->btnEdit:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 101
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p1

    .line 102
    new-instance v0, Lcom/narvii/list/DivideColumnAdapter;

    invoke-direct {v0, p0, p1, p1}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;II)V

    .line 103
    new-instance p1, Lcom/narvii/topic/BookmarkedTopicListFragment$BookmarkedTopicItemAdapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/topic/BookmarkedTopicListFragment$BookmarkedTopicItemAdapter;-><init>(Lcom/narvii/topic/BookmarkedTopicListFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/topic/TopicListFragment;->adapter:Lcom/narvii/topic/TopicListFragment$TopicItemAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    return-object v0
.end method

.method protected getFrameDarkBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 158
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->getFrameDarkBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_0
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "BookmarkedTopics"

    return-object v0
.end method

.method public synthetic lambda$onViewCreated$0$BookmarkedTopicListFragment(Landroid/view/View;)V
    .locals 1

    .line 55
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "ManageIcon"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 56
    const-class p1, Lcom/narvii/topic/BookmarkedTopicOrderListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x65

    .line 57
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public synthetic lambda$onViewCreated$1$BookmarkedTopicListFragment(Landroid/view/View;)V
    .locals 2

    .line 61
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "ExploreTopics"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 62
    const-class p1, Lcom/narvii/master/search/GlobalSearchBaseFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "section_type"

    const/4 v1, 0x4

    .line 63
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/narvii/topic/TopicListFragment;->adapter:Lcom/narvii/topic/TopicListFragment$TopicItemAdapter;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    const-string v0, "topicList"

    .line 81
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/topic/BookmarkedTopicListFragment;->topicList:Ljava/lang/String;

    .line 84
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 2

    .line 89
    iget-object p1, p0, Lcom/narvii/topic/BookmarkedTopicListFragment;->topicList:Ljava/lang/String;

    invoke-static {p1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 90
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 91
    iget-object v0, p0, Lcom/narvii/topic/BookmarkedTopicListFragment;->topicList:Ljava/lang/String;

    const-string v1, "topicList"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 92
    invoke-virtual {p0, v0, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 93
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lcom/narvii/topic/TopicListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 41
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0283

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 51
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0903bb

    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/BookmarkedTopicListFragment;->btnEdit:Landroid/view/View;

    .line 54
    iget-object p1, p0, Lcom/narvii/topic/BookmarkedTopicListFragment;->btnEdit:Landroid/view/View;

    new-instance p2, Lcom/narvii/topic/-$$Lambda$BookmarkedTopicListFragment$j9RTjioIevsTOv17p1eyqAH_Tes;

    invoke-direct {p2, p0}, Lcom/narvii/topic/-$$Lambda$BookmarkedTopicListFragment$j9RTjioIevsTOv17p1eyqAH_Tes;-><init>(Lcom/narvii/topic/BookmarkedTopicListFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0b0674

    .line 59
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09040d

    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/narvii/topic/-$$Lambda$BookmarkedTopicListFragment$vJHaoVK-OznDsX55mX7G9ZDhuyk;

    invoke-direct {p2, p0}, Lcom/narvii/topic/-$$Lambda$BookmarkedTopicListFragment$vJHaoVK-OznDsX55mX7G9ZDhuyk;-><init>(Lcom/narvii/topic/BookmarkedTopicListFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
