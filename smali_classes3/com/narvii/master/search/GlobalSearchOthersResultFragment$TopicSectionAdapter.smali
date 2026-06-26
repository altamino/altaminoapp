.class final Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;
.super Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter;
.source "GlobalSearchOthersResultFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/search/GlobalSearchOthersResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TopicSectionAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 455
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    invoke-direct {p0, p1, p2}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter;-><init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected createMoreButton(Lcom/narvii/util/layouts/NVFlowLayout;)Landroid/view/View;
    .locals 3

    const-string v0, "flowLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0326

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 470
    new-instance v0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter$createMoreButton$1;

    invoke-direct {v0, p0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter$createMoreButton$1;-><init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "TopicsSearchResult"

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$getCurKey$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 484
    :cond_0
    invoke-super {p0}, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method protected hasMoreButton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final setSection(Lcom/narvii/master/search/model/GlobalSearchResultSection;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 458
    iget-object p1, p1, Lcom/narvii/master/search/model/GlobalSearchResultSection;->resultList:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->setList(Ljava/util/List;)V

    .line 459
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    .line 458
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.ArrayList<com.narvii.model.story.StoryTopic> /* = java.util.ArrayList<com.narvii.model.story.StoryTopic> */"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
