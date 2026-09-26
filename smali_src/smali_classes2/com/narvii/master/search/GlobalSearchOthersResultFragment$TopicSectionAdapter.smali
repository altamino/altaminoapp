.class final Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;
.super Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter;
.source "SourceFile"


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
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter;-><init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Lcom/narvii/app/NVContext;)V

    .line 11
    return-void
.end method

.method private static final createMoreButton$lambda$0(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    const-string p2, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p2, "this$1"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    sget-object p2, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->logClickEvent(Lcom/narvii/logging/ActSemantic;)V

    .line 16
    .line 17
    const-class p2, Lcom/narvii/master/search/GlobalSearchBaseFragment;

    .line 18
    .line 19
    .line 20
    invoke-static {p2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    const-string v0, "section_type"

    .line 24
    const/4 v1, 0x3

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 28
    .line 29
    const-string v0, "search_key"

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$getCurKey$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    invoke-static {p0, p2}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 40
    return-void
.end method

.method public static synthetic g(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;->createMoreButton$lambda$0(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Landroid/view/View;)V

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
.method protected createMoreButton(Lcom/narvii/util/layouts/NVFlowLayout;)Landroid/view/View;
    .locals 3
    .param p1    # Lcom/narvii/util/layouts/NVFlowLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "flowLayout"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    const v1, 0x7f0d0358

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    .line 24
    .line 25
    new-instance v1, Lcom/narvii/master/search/l;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, p0, v0}, Lcom/narvii/master/search/l;-><init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    return-object p1
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "TopicsSearchResult"

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

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
    invoke-super {p0}, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->getCount()I

    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method protected hasMoreButton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final setSection(Lcom/narvii/master/search/model/GlobalSearchResultSection;)V
    .locals 0
    .param p1    # Lcom/narvii/master/search/model/GlobalSearchResultSection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/master/search/model/GlobalSearchResultSection;->resultList:Ljava/util/ArrayList;

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p1, 0x0

    .line 7
    .line 8
    :goto_0
    if-nez p1, :cond_1

    .line 9
    .line 10
    new-instance p1, Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->setList(Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 20
    return-void
.end method
