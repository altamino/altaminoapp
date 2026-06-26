.class public final Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "GlobalSearchOthersResultFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/search/GlobalSearchOthersResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SimpleSearchSectionAdapter"
.end annotation


# instance fields
.field private host:Lcom/narvii/list/NVAdapter;

.field private final sectionType:I

.field private final showBottomDivider:Z

.field private final showTopDivider:Z

.field final synthetic this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)V"
        }
    .end annotation

    .line 659
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    .line 661
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput p2, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->sectionType:I

    iput-boolean p3, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->showTopDivider:Z

    iput-boolean p4, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->showBottomDivider:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;IZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 661
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;-><init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;IZZ)V

    return-void
.end method


# virtual methods
.method public getAreaName()Ljava/lang/String;
    .locals 2

    .line 684
    iget v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->sectionType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "PostSearchResult"

    goto :goto_0

    :cond_1
    const-string v0, "TopicSearchResult"

    goto :goto_0

    :cond_2
    const-string v0, "StoriesSearchResult"

    :goto_0
    return-object v0
.end method

.method public getCount()I
    .locals 3

    .line 723
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$getCurKey$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->host:Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_4

    instance-of v2, v0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MoreSearchResultHost;

    if-eqz v2, :cond_4

    if-eqz v0, :cond_3

    .line 727
    check-cast v0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MoreSearchResultHost;

    invoke-interface {v0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MoreSearchResultHost;->hasMoreResult()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->host:Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.narvii.master.search.GlobalSearchOthersResultFragment.MoreSearchResultHost"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 729
    :cond_4
    invoke-super {p0}, Lcom/narvii/list/AdriftAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public final getHost$Amino_bundle()Lcom/narvii/list/NVAdapter;
    .locals 1

    .line 662
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->host:Lcom/narvii/list/NVAdapter;

    return-object v0
.end method

.method public final getSectionTitle(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 716
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    const v0, 0x7f0f0bd3

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.more_posts)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 715
    :cond_1
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    const v0, 0x7f0f0bd8

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.more_topics)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 714
    :cond_2
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    const v0, 0x7f0f0bd7

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.more_stories)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getShowBottomDivider()Z
    .locals 1

    .line 661
    iget-boolean v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->showBottomDivider:Z

    return v0
.end method

.method public final getShowTopDivider()Z
    .locals 1

    .line 660
    iget-boolean v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->showTopDivider:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const p1, 0x7f0b0430

    .line 665
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090b9a

    .line 666
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string p3, "tvTitle"

    .line 667
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget p3, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->sectionType:I

    invoke-virtual {p0, p3}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->getSectionTitle(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0909d9

    .line 668
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string p3, "tvKey"

    .line 669
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    invoke-static {p3}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$getCurKey$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    const-string p3, ""

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    invoke-static {p3}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$getCurKey$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    iget-object p3, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->host:Lcom/narvii/list/NVAdapter;

    const/4 v0, 0x0

    if-nez p3, :cond_1

    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    const/4 p3, 0x4

    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    const p2, 0x7f090bba

    .line 671
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "topDivider"

    .line 672
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->showTopDivider:Z

    const/16 v1, 0x8

    if-eqz p3, :cond_2

    const/4 p3, 0x0

    goto :goto_2

    :cond_2
    const/16 p3, 0x8

    :goto_2
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f09014f

    .line 673
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "bottmDivider"

    .line 674
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->showBottomDivider:Z

    if-eqz p3, :cond_3

    goto :goto_3

    :cond_3
    const/16 v0, 0x8

    :goto_3
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const-string p2, "cell"

    .line 675
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 5

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cell"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 693
    iget v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->sectionType:I

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eq v0, v1, :cond_2

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    :goto_0
    if-eq v0, v2, :cond_3

    .line 699
    iget-object v1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lcom/narvii/master/search/GlobalSearchTabFragment;

    if-eqz v1, :cond_3

    .line 700
    sget-object p1, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Lcom/narvii/logging/ActSemantic;)V

    .line 701
    const-class p1, Lcom/narvii/master/search/GlobalSearchBaseFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "section_type"

    .line 702
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 703
    iget-object p2, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    invoke-static {p2}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$getCurKey$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "search_key"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 704
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    .line 708
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public final setAttachHost(Lcom/narvii/list/NVAdapter;)V
    .locals 1

    const-string v0, "attachHost"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 680
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->host:Lcom/narvii/list/NVAdapter;

    return-void
.end method

.method public final setHost$Amino_bundle(Lcom/narvii/list/NVAdapter;)V
    .locals 0

    .line 662
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->host:Lcom/narvii/list/NVAdapter;

    return-void
.end method
