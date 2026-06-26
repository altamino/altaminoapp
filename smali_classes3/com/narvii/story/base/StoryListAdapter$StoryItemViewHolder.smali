.class public final Lcom/narvii/story/base/StoryListAdapter$StoryItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "StoryListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/base/StoryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StoryItemViewHolder"
.end annotation


# instance fields
.field private storyCardView:Lcom/narvii/story/widgets/StoryCardView;

.field final synthetic this$0:Lcom/narvii/story/base/StoryListAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/story/base/StoryListAdapter;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    iput-object p1, p0, Lcom/narvii/story/base/StoryListAdapter$StoryItemViewHolder;->this$0:Lcom/narvii/story/base/StoryListAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090ae4

    .line 230
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/story/widgets/StoryCardView;

    iput-object p1, p0, Lcom/narvii/story/base/StoryListAdapter$StoryItemViewHolder;->storyCardView:Lcom/narvii/story/widgets/StoryCardView;

    return-void
.end method


# virtual methods
.method public final bindStory(Lcom/narvii/model/Blog;)V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/narvii/story/base/StoryListAdapter$StoryItemViewHolder;->storyCardView:Lcom/narvii/story/widgets/StoryCardView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/narvii/story/widgets/StoryCardView;->setStory(Lcom/narvii/model/Blog;)V

    :cond_0
    return-void
.end method

.method public final getStoryCardView()Lcom/narvii/story/widgets/StoryCardView;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/narvii/story/base/StoryListAdapter$StoryItemViewHolder;->storyCardView:Lcom/narvii/story/widgets/StoryCardView;

    return-object v0
.end method

.method public final setStoryCardView(Lcom/narvii/story/widgets/StoryCardView;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/narvii/story/base/StoryListAdapter$StoryItemViewHolder;->storyCardView:Lcom/narvii/story/widgets/StoryCardView;

    return-void
.end method
