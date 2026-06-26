.class public final Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "GlobalChatsSearchFragment.kt"


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

    .line 336
    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    .line 337
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-boolean p2, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;->showTopDivider:Z

    iput-boolean p3, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;->showBottomDivider:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/narvii/master/search/GlobalChatsSearchFragment;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 337
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;-><init>(Lcom/narvii/master/search/GlobalChatsSearchFragment;ZZ)V

    return-void
.end method


# virtual methods
.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "MoreFromMyChats"

    return-object v0
.end method

.method public getCount()I
    .locals 3

    .line 372
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$getCurKey$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;->host:Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_4

    instance-of v2, v0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MoreSearchResultHost;

    if-eqz v2, :cond_4

    if-eqz v0, :cond_3

    .line 376
    check-cast v0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MoreSearchResultHost;

    invoke-interface {v0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MoreSearchResultHost;->hasMoreResult()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;->host:Lcom/narvii/list/NVAdapter;

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

    .line 378
    :cond_4
    invoke-super {p0}, Lcom/narvii/list/AdriftAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public final getHost$Amino_bundle()Lcom/narvii/list/NVAdapter;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;->host:Lcom/narvii/list/NVAdapter;

    return-object v0
.end method

.method public final getShowBottomDivider()Z
    .locals 1

    .line 337
    iget-boolean v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;->showBottomDivider:Z

    return v0
.end method

.method public final getShowTopDivider()Z
    .locals 1

    .line 336
    iget-boolean v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;->showTopDivider:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const p1, 0x7f0b0430

    .line 341
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090b9a

    .line 342
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string p3, "tvTitle"

    .line 343
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    const v0, 0x7f0f0bd2

    invoke-virtual {p3, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0909d9

    .line 344
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string p3, "tvKey"

    .line 345
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    invoke-static {p3}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$getCurKey$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    const-string p3, ""

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    invoke-static {p3}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$getCurKey$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object p3, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;->host:Lcom/narvii/list/NVAdapter;

    const/4 v0, 0x0

    if-nez p3, :cond_1

    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    const/4 p3, 0x4

    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    const p2, 0x7f090bba

    .line 347
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "topDivider"

    .line 348
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;->showTopDivider:Z

    const/16 v1, 0x8

    if-eqz p3, :cond_2

    const/4 p3, 0x0

    goto :goto_2

    :cond_2
    const/16 p3, 0x8

    :goto_2
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f09014f

    .line 349
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "bottmDivider"

    .line 350
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;->showBottomDivider:Z

    if-eqz p3, :cond_3

    goto :goto_3

    :cond_3
    const/16 v0, 0x8

    :goto_3
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const-string p2, "cell"

    .line 351
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    const-string p2, "adapter"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "item"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "cell"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    sget-object p1, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Lcom/narvii/logging/ActSemantic;)V

    .line 364
    const-class p1, Lcom/narvii/master/search/GlobalSearchBaseFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "section_type"

    const/4 p3, 0x7

    .line 365
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 366
    iget-object p2, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    invoke-static {p2}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$getCurKey$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "search_key"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final setAttachHost(Lcom/narvii/list/NVAdapter;)V
    .locals 1

    const-string v0, "attachHost"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;->host:Lcom/narvii/list/NVAdapter;

    return-void
.end method

.method public final setHost$Amino_bundle(Lcom/narvii/list/NVAdapter;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$SimpleSearchSectionAdapter;->host:Lcom/narvii/list/NVAdapter;

    return-void
.end method
