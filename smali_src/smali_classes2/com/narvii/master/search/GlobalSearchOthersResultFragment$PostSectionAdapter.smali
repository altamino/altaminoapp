.class public final Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;
.super Lcom/narvii/headlines/feed/HeadLinesListAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MoreSearchResultHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/search/GlobalSearchOthersResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PostSectionAdapter"
.end annotation


# instance fields
.field private storySection:Lcom/narvii/master/search/model/GlobalSearchResultSection;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/master/search/GlobalSearchOthersResultFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 11
    return-void
.end method

.method private static final onItemClick$lambda$0(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;Ljava/lang/Object;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    .line 2
    const-string p2, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p2, "$item"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    move-object p2, p1

    .line 12
    .line 13
    check-cast p2, Lcom/narvii/model/Feed;

    .line 14
    .line 15
    iget p2, p2, Lcom/narvii/model/Feed;->ndcId:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p2}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->shouldShowDownloadMasterDialog(I)Z

    .line 19
    move-result p2

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    return-void

    .line 23
    .line 24
    :cond_0
    new-instance p2, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 27
    .line 28
    .line 29
    invoke-direct {p2, p0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 30
    .line 31
    check-cast p1, Lcom/narvii/model/NVObject;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 35
    move-result-object p0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 39
    move-result-object p0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    .line 43
    return-void
.end method

.method public static synthetic p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;Ljava/lang/Object;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;->onItemClick$lambda$0(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;Ljava/lang/Object;Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "PostSearchResult"

    return-object v0
.end method

.method protected getCommunityTimestamp(I)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->getResponseTime()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

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
    .line 12
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x0

    .line 14
    return v0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public final getStorySection()Lcom/narvii/master/search/model/GlobalSearchResultSection;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;->storySection:Lcom/narvii/master/search/model/GlobalSearchResultSection;

    return-object v0
.end method

.method public hasMoreResult()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;->storySection:Lcom/narvii/master/search/model/GlobalSearchResultSection;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, v0, Lcom/narvii/master/search/model/GlobalSearchResultSection;->hitsTotal:I

    .line 7
    const/4 v1, 0x4

    .line 8
    .line 9
    if-le v0, v1, :cond_0

    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method

.method public onAttach()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->onAttach()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->notifyDataSetChanged()V

    .line 10
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2
    .param p1    # Landroid/widget/ListAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "item"

    .line 3
    .line 4
    .line 5
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-eqz p5, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 11
    move-result v0

    .line 12
    .line 13
    .line 14
    const v1, 0x7f0a0653

    .line 15
    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    .line 25
    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    const-string p2, "affiliations"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    const-string p4, "getService(...)"

    .line 34
    .line 35
    .line 36
    invoke-static {p2, p4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    check-cast p2, Lcom/narvii/community/AffiliationsService;

    .line 39
    move-object p4, p3

    .line 40
    .line 41
    check-cast p4, Lcom/narvii/model/Feed;

    .line 42
    .line 43
    iget p4, p4, Lcom/narvii/model/Feed;->ndcId:I

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p4}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 47
    .line 48
    .line 49
    const p2, 0x7f120781

    .line 50
    const/4 p4, 0x0

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2, p4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 54
    .line 55
    new-instance p2, Lcom/narvii/master/search/k;

    .line 56
    .line 57
    .line 58
    invoke-direct {p2, p0, p3}, Lcom/narvii/master/search/k;-><init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 65
    const/4 p1, 0x1

    .line 66
    return p1

    .line 67
    .line 68
    .line 69
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 70
    move-result p1

    .line 71
    return p1
.end method

.method public final setSection(Lcom/narvii/master/search/model/GlobalSearchResultSection;)V
    .locals 2
    .param p1    # Lcom/narvii/master/search/model/GlobalSearchResultSection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;->storySection:Lcom/narvii/master/search/model/GlobalSearchResultSection;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p1, Lcom/narvii/master/search/model/GlobalSearchResultSection;->resultList:Ljava/util/ArrayList;

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p1, v0

    .line 10
    .line 11
    :goto_0
    if-nez p1, :cond_1

    .line 12
    .line 13
    new-instance p1, Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    :cond_1
    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;->storySection:Lcom/narvii/master/search/model/GlobalSearchResultSection;

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    iget-object p1, p1, Lcom/narvii/master/search/model/GlobalSearchResultSection;->communityInfoMapping:Ljava/util/HashMap;

    .line 25
    goto :goto_1

    .line 26
    :cond_2
    move-object p1, v0

    .line 27
    .line 28
    .line 29
    :goto_1
    invoke-virtual {p0, p1}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->setFeedRelatedCommunityList(Ljava/util/HashMap;)V

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;->storySection:Lcom/narvii/master/search/model/GlobalSearchResultSection;

    .line 32
    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    iget-object p1, p1, Lcom/narvii/master/search/model/GlobalSearchResultSection;->userProfileMapping:Ljava/util/HashMap;

    .line 36
    goto :goto_2

    .line 37
    :cond_3
    move-object p1, v0

    .line 38
    .line 39
    .line 40
    :goto_2
    invoke-virtual {p0, p1}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->setUserProgfileMapping(Ljava/util/HashMap;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->launchHelper()Lcom/narvii/headlines/HeadlineLaunchHelper;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    if-eqz p1, :cond_5

    .line 47
    .line 48
    iget-object v1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;->storySection:Lcom/narvii/master/search/model/GlobalSearchResultSection;

    .line 49
    .line 50
    if-eqz v1, :cond_4

    .line 51
    .line 52
    iget-object v0, v1, Lcom/narvii/master/search/model/GlobalSearchResultSection;->communityInfoMapping:Ljava/util/HashMap;

    .line 53
    .line 54
    :cond_4
    iget-object v1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->getResponseTime()Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0, v1}, Lcom/narvii/headlines/HeadlineLaunchHelper;->setCommunityMap(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 62
    :cond_5
    const/4 p1, 0x1

    .line 63
    .line 64
    iput-boolean p1, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->notifyDataSetChanged()V

    .line 68
    return-void
.end method

.method public final setStorySection(Lcom/narvii/master/search/model/GlobalSearchResultSection;)V
    .locals 0
    .param p1    # Lcom/narvii/master/search/model/GlobalSearchResultSection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;->storySection:Lcom/narvii/master/search/model/GlobalSearchResultSection;

    return-void
.end method

.method protected showAllLike()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
