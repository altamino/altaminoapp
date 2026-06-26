.class Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$6;
.super Lcom/narvii/blog/detail/FeedRelatedAminosAdapter;
.source "BlogDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;


# direct methods
.method constructor <init>(Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;Lcom/narvii/app/NVContext;Ljava/util/List;)V
    .locals 0

    .line 1590
    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$6;->this$1:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    invoke-direct {p0, p2, p3}, Lcom/narvii/blog/detail/FeedRelatedAminosAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected onItemClick(Lcom/narvii/model/Community;)V
    .locals 2

    .line 1593
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$6;->this$1:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iget-object v0, v0, Lcom/narvii/detail/FeedDetailFragment;->blockPass:Lcom/narvii/util/statistics/TmpValue;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 1594
    invoke-super {p0, p1}, Lcom/narvii/community/CommunityRecycleAdapter;->onItemClick(Lcom/narvii/model/Community;)V

    return-void
.end method
