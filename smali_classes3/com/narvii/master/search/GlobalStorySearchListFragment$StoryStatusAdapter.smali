.class final Lcom/narvii/master/search/GlobalStorySearchListFragment$StoryStatusAdapter;
.super Lcom/narvii/adapter/NVPagerStatusAdapter;
.source "GlobalStorySearchListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/search/GlobalStorySearchListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StoryStatusAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/GlobalStorySearchListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/search/GlobalStorySearchListFragment;Lcom/narvii/app/NVContext;)V
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

    .line 336
    iput-object p1, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment$StoryStatusAdapter;->this$0:Lcom/narvii/master/search/GlobalStorySearchListFragment;

    invoke-direct {p0, p2}, Lcom/narvii/adapter/NVPagerStatusAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    const/4 v0, 0x0

    .line 347
    invoke-virtual {p0, v0}, Lcom/narvii/master/search/GlobalStorySearchListFragment$StoryStatusAdapter;->getItemViewType(I)I

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 339
    iget-object p1, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment$StoryStatusAdapter;->this$0:Lcom/narvii/master/search/GlobalStorySearchListFragment;

    invoke-static {p1}, Lcom/narvii/master/search/GlobalStorySearchListFragment;->access$getFeedAdapter$p(Lcom/narvii/master/search/GlobalStorySearchListFragment;)Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 340
    sget-object v1, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x2

    goto :goto_0

    .line 341
    :cond_0
    sget-object v1, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    :cond_1
    :goto_0
    return v0
.end method
