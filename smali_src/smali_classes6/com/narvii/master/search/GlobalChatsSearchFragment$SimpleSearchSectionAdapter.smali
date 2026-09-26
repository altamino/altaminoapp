.class public final Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/search/GlobalChatsSearchFragment;
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

.field private final showBottomDivider:Z

.field private final showTopDivider:Z

.field final synthetic this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/search/GlobalChatsSearchFragment;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    .line 2
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-boolean p2, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;->showTopDivider:Z

    iput-boolean p3, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;->showBottomDivider:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/narvii/master/search/GlobalChatsSearchFragment;ZZILkotlin/jvm/internal/k;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    move p3, v0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;-><init>(Lcom/narvii/master/search/GlobalChatsSearchFragment;ZZ)V

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
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "MoreFromMyChats"

    return-object v0
.end method

.method public getCount()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$getCurKey$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Ljava/lang/String;

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
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;->host:Lcom/narvii/list/NVAdapter;

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
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;->host:Lcom/narvii/list/NVAdapter;

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

    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;->host:Lcom/narvii/list/NVAdapter;

    return-object v0
.end method

.method public final getShowBottomDivider()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;->showBottomDivider:Z

    return v0
.end method

.method public final getShowTopDivider()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;->showTopDivider:Z

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
    iget-object p3, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    .line 19
    .line 20
    .line 21
    const v0, 0x7f120cd8

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 25
    move-result-object p3

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    const p2, 0x7f0a0ca1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object p2

    .line 36
    .line 37
    check-cast p2, Landroid/widget/TextView;

    .line 38
    .line 39
    iget-object p3, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    .line 40
    .line 41
    .line 42
    invoke-static {p3}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$getCurKey$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Ljava/lang/String;

    .line 43
    move-result-object p3

    .line 44
    .line 45
    if-nez p3, :cond_0

    .line 46
    .line 47
    const-string p3, ""

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_0
    iget-object p3, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    .line 51
    .line 52
    .line 53
    invoke-static {p3}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$getCurKey$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Ljava/lang/String;

    .line 54
    move-result-object p3

    .line 55
    .line 56
    .line 57
    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    iget-object p3, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;->host:Lcom/narvii/list/NVAdapter;

    .line 60
    const/4 v0, 0x0

    .line 61
    .line 62
    if-nez p3, :cond_1

    .line 63
    move p3, v0

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    const/4 p3, 0x4

    .line 66
    .line 67
    .line 68
    :goto_1
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    const p2, 0x7f0a0ed7

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    move-result-object p2

    .line 76
    .line 77
    iget-boolean p3, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;->showTopDivider:Z

    .line 78
    .line 79
    const/16 v1, 0x8

    .line 80
    .line 81
    if-eqz p3, :cond_2

    .line 82
    move p3, v0

    .line 83
    goto :goto_2

    .line 84
    :cond_2
    move p3, v1

    .line 85
    .line 86
    .line 87
    :goto_2
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    const p2, 0x7f0a01ec

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    move-result-object p2

    .line 95
    .line 96
    iget-boolean p3, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;->showBottomDivider:Z

    .line 97
    .line 98
    if-eqz p3, :cond_3

    .line 99
    goto :goto_3

    .line 100
    :cond_3
    move v0, v1

    .line 101
    .line 102
    .line 103
    :goto_3
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 104
    .line 105
    .line 106
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 107
    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0
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
    const-string p2, "adapter"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "item"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string p1, "cell"

    .line 13
    .line 14
    .line 15
    invoke-static {p4, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    sget-object p1, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Lcom/narvii/logging/ActSemantic;)V

    .line 21
    .line 22
    const-class p1, Lcom/narvii/master/search/GlobalSearchBaseFragment;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    const-string p2, "section_type"

    .line 29
    const/4 p3, 0x6

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 33
    .line 34
    iget-object p2, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    .line 35
    .line 36
    .line 37
    invoke-static {p2}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$getCurKey$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Ljava/lang/String;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    const-string p3, "search_key"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    invoke-static {p0, p1}, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 47
    const/4 p1, 0x1

    .line 48
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

    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;->host:Lcom/narvii/list/NVAdapter;

    return-void
.end method

.method public final setHost$Amino_bundle(Lcom/narvii/list/NVAdapter;)V
    .locals 0
    .param p1    # Lcom/narvii/list/NVAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;->host:Lcom/narvii/list/NVAdapter;

    return-void
.end method
