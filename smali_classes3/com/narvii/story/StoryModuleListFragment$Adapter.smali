.class final Lcom/narvii/story/StoryModuleListFragment$Adapter;
.super Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;
.source "StoryModuleListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/StoryModuleListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/story/StoryModuleListFragment$Adapter$DataSource;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStoryModuleListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StoryModuleListFragment.kt\ncom/narvii/story/StoryModuleListFragment$Adapter\n*L\n1#1,198:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/StoryModuleListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/story/StoryModuleListFragment;Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/topic/model/discover/ContentModule;",
            "Lcom/narvii/topic/ModuleDisplayConfig;",
            ")V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moduleDisplayConfig"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iput-object p1, p0, Lcom/narvii/story/StoryModuleListFragment$Adapter;->this$0:Lcom/narvii/story/StoryModuleListFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p4, p1}, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;Z)V

    return-void
.end method


# virtual methods
.method protected autoLoadInitData()Z
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/narvii/story/StoryModuleListFragment$Adapter;->this$0:Lcom/narvii/story/StoryModuleListFragment;

    const-string v1, "KEY_DATA_SOURCE_ID"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    sget-object v1, Lcom/narvii/story/StoryModuleListFragment;->Companion:Lcom/narvii/story/StoryModuleListFragment$Companion;

    invoke-virtual {v1}, Lcom/narvii/story/StoryModuleListFragment$Companion;->getInitBlogListMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 148
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public createPageDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/PageDataSource;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")",
            "Lcom/narvii/paging/source/PageDataSource<",
            "Lcom/narvii/model/Blog;",
            "Lcom/narvii/model/api/BlogListResponse;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/narvii/story/StoryModuleListFragment$Adapter;->this$0:Lcom/narvii/story/StoryModuleListFragment;

    const-string v1, "KEY_DATA_SOURCE_ID"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    sget-object v1, Lcom/narvii/story/StoryModuleListFragment;->Companion:Lcom/narvii/story/StoryModuleListFragment$Companion;

    invoke-virtual {v1}, Lcom/narvii/story/StoryModuleListFragment$Companion;->getInitBlogListMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 136
    sget-object v2, Lcom/narvii/story/StoryModuleListFragment;->Companion:Lcom/narvii/story/StoryModuleListFragment$Companion;

    invoke-virtual {v2}, Lcom/narvii/story/StoryModuleListFragment$Companion;->getTokenMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    new-instance v2, Lcom/narvii/story/StoryModuleListFragment$Adapter$DataSource;

    invoke-direct {v2, p0, p1, v1}, Lcom/narvii/story/StoryModuleListFragment$Adapter$DataSource;-><init>(Lcom/narvii/story/StoryModuleListFragment$Adapter;Lcom/narvii/app/NVContext;Ljava/util/List;)V

    .line 138
    iget-object p1, p0, Lcom/narvii/story/StoryModuleListFragment$Adapter;->this$0:Lcom/narvii/story/StoryModuleListFragment;

    const-string v1, "key_is_end"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 139
    invoke-virtual {v2, p1}, Lcom/narvii/paging/source/PageDataSource;->set_isEnd(Z)V

    .line 140
    invoke-virtual {v2}, Lcom/narvii/paging/source/DataSource;->getPageLoadState()Lcom/narvii/paging/state/PageLoadState;

    move-result-object v0

    iput p1, v0, Lcom/narvii/paging/state/PageLoadState;->status:I

    :cond_0
    return-object v2
.end method

.method public forceShowLoading()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public itemCellLayoutId()I
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/narvii/story/StoryModuleListFragment$Adapter;->this$0:Lcom/narvii/story/StoryModuleListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryModuleListFragment;->access$getModule$p(Lcom/narvii/story/StoryModuleListFragment;)Lcom/narvii/topic/model/discover/ContentModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/ContentModule;->getDisplayStyle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x64329b7a

    if-eq v1, v2, :cond_2

    const v2, 0x55d062b0

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "QuizStoryCard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_2
    const-string v1, "PollStoryCard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    const v0, 0x7f0b0393

    goto :goto_2

    :cond_3
    :goto_1
    const v0, 0x7f0b0392

    :goto_2
    return v0
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    instance-of v1, v0, Lcom/narvii/story/StoryModuleListFragment$Adapter$DataSource;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 157
    check-cast v0, Lcom/narvii/story/StoryModuleListFragment$Adapter$DataSource;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/story/StoryModuleListFragment$Adapter$DataSource;->setFirstResponse(Z)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.narvii.story.StoryModuleListFragment.Adapter.DataSource"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    or-int/lit8 p1, p1, 0x1

    or-int/lit8 p1, p1, 0x2

    .line 160
    invoke-super {p0, p1, p2}, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    return-void
.end method
