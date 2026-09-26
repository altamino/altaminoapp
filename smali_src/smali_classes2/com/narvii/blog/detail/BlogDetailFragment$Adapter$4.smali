.class Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$4;
.super Lcom/narvii/blog/detail/FeedRelatedAminosAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$4;->this$1:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Lcom/narvii/blog/detail/FeedRelatedAminosAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected onItemClick(Lcom/narvii/model/Community;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$4;->this$1:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/detail/FeedDetailFragment;->blockPass:Lcom/narvii/util/statistics/TmpValue;

    .line 7
    .line 8
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-super {p0, p1}, Lcom/narvii/community/CommunityRecycleAdapter;->onItemClick(Lcom/narvii/model/Community;)V

    .line 15
    return-void
.end method
