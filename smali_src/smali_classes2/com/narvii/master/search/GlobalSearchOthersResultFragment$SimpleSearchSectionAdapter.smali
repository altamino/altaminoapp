.class public final Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "SourceFile"


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
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

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

    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    .line 2
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput p2, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->sectionType:I

    iput-boolean p3, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->showTopDivider:Z

    iput-boolean p4, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->showBottomDivider:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;IZZILkotlin/jvm/internal/k;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    move p4, v0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;-><init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;IZZ)V

    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getAreaName()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->sectionType:I

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

    :goto_0
    return-object v0
.end method

.method public getCount()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$getCurKey$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    return v1

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->host:Lcom/narvii/list/NVAdapter;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    instance-of v2, v0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MoreSearchResultHost;

    .line 21
    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    const-string v2, "null cannot be cast to non-null type com.narvii.master.search.GlobalSearchOthersResultFragment.MoreSearchResultHost"

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    check-cast v0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MoreSearchResultHost;

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MoreSearchResultHost;->hasMoreResult()Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->host:Lcom/narvii/list/NVAdapter;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 43
    move-result v0

    .line 44
    .line 45
    if-lez v0, :cond_1

    .line 46
    const/4 v1, 0x1

    .line 47
    :cond_1
    return v1

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-super {p0}, Lcom/narvii/list/AdriftAdapter;->getCount()I

    .line 51
    move-result v0

    .line 52
    return v0
.end method

.method public final getHost$Amino_bundle()Lcom/narvii/list/NVAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->host:Lcom/narvii/list/NVAdapter;

    return-object v0
.end method

.method public final getSectionTitle(I)Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    .line 3
    const-string v1, "getString(...)"

    .line 4
    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    const/4 v0, 0x4

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    const-string p1, ""

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    .line 14
    .line 15
    .line 16
    const v0, 0x7f120cd9

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    .line 27
    .line 28
    .line 29
    const v0, 0x7f120cde

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    :goto_0
    return-object p1
.end method

.method public final getShowBottomDivider()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->showBottomDivider:Z

    return v0
.end method

.method public final getShowTopDivider()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->showTopDivider:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d0466

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    const p2, 0x7f0a0e9e

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    check-cast p2, Landroid/widget/TextView;

    .line 17
    .line 18
    iget p3, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->sectionType:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p3}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->getSectionTitle(I)Ljava/lang/String;

    .line 22
    move-result-object p3

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    const p2, 0x7f0a0ca1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    check-cast p2, Landroid/widget/TextView;

    .line 35
    .line 36
    iget-object p3, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    .line 37
    .line 38
    .line 39
    invoke-static {p3}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$getCurKey$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Ljava/lang/String;

    .line 40
    move-result-object p3

    .line 41
    .line 42
    if-nez p3, :cond_0

    .line 43
    .line 44
    const-string p3, ""

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_0
    iget-object p3, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    .line 48
    .line 49
    .line 50
    invoke-static {p3}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$getCurKey$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Ljava/lang/String;

    .line 51
    move-result-object p3

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    iget-object p3, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->host:Lcom/narvii/list/NVAdapter;

    .line 57
    const/4 v0, 0x0

    .line 58
    .line 59
    if-nez p3, :cond_1

    .line 60
    move p3, v0

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    const/4 p3, 0x4

    .line 63
    .line 64
    .line 65
    :goto_1
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    const p2, 0x7f0a0ed7

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object p2

    .line 73
    .line 74
    iget-boolean p3, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->showTopDivider:Z

    .line 75
    .line 76
    const/16 v1, 0x8

    .line 77
    .line 78
    if-eqz p3, :cond_2

    .line 79
    move p3, v0

    .line 80
    goto :goto_2

    .line 81
    :cond_2
    move p3, v1

    .line 82
    .line 83
    .line 84
    :goto_2
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    const p2, 0x7f0a01ec

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    move-result-object p2

    .line 92
    .line 93
    iget-boolean p3, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->showBottomDivider:Z

    .line 94
    .line 95
    if-eqz p3, :cond_3

    .line 96
    goto :goto_3

    .line 97
    :cond_3
    move v0, v1

    .line 98
    .line 99
    .line 100
    :goto_3
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 104
    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p1    # Landroid/widget/ListAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "adapter"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "item"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "cell"

    .line 13
    .line 14
    .line 15
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    iget v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->sectionType:I

    .line 18
    const/4 v1, -0x1

    .line 19
    const/4 v2, 0x3

    .line 20
    .line 21
    if-eq v0, v2, :cond_0

    .line 22
    const/4 v2, 0x4

    .line 23
    .line 24
    if-eq v0, v2, :cond_0

    .line 25
    move v2, v1

    .line 26
    .line 27
    :cond_0
    if-eq v2, v1, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    instance-of v0, v0, Lcom/narvii/master/search/GlobalSearchTabFragment;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    sget-object p1, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Lcom/narvii/logging/ActSemantic;)V

    .line 43
    .line 44
    const-class p1, Lcom/narvii/master/search/GlobalSearchBaseFragment;

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    const-string p2, "section_type"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    .line 55
    iget-object p2, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    .line 56
    .line 57
    .line 58
    invoke-static {p2}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$getCurKey$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Ljava/lang/String;

    .line 59
    move-result-object p2

    .line 60
    .line 61
    const-string p3, "search_key"

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    invoke-static {p0, p1}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 68
    const/4 p1, 0x1

    .line 69
    return p1

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 73
    move-result p1

    .line 74
    return p1
.end method

.method public final setAttachHost(Lcom/narvii/list/NVAdapter;)V
    .locals 1
    .param p1    # Lcom/narvii/list/NVAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "attachHost"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->host:Lcom/narvii/list/NVAdapter;

    return-void
.end method

.method public final setHost$Amino_bundle(Lcom/narvii/list/NVAdapter;)V
    .locals 0
    .param p1    # Lcom/narvii/list/NVAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$SimpleSearchSectionAdapter;->host:Lcom/narvii/list/NVAdapter;

    return-void
.end method
