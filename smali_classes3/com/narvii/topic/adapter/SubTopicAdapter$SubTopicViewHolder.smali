.class public final Lcom/narvii/topic/adapter/SubTopicAdapter$SubTopicViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SubTopicAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/topic/adapter/SubTopicAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SubTopicViewHolder"
.end annotation


# instance fields
.field private storyTopicView:Lcom/narvii/story/widgets/StoryTopicView;

.field final synthetic this$0:Lcom/narvii/topic/adapter/SubTopicAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/topic/adapter/SubTopicAdapter;Landroid/view/View;)V
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

    .line 62
    iput-object p1, p0, Lcom/narvii/topic/adapter/SubTopicAdapter$SubTopicViewHolder;->this$0:Lcom/narvii/topic/adapter/SubTopicAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090af1

    .line 67
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.findViewById(R.id.story_topic_layout)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/story/widgets/StoryTopicView;

    iput-object p1, p0, Lcom/narvii/topic/adapter/SubTopicAdapter$SubTopicViewHolder;->storyTopicView:Lcom/narvii/story/widgets/StoryTopicView;

    return-void
.end method


# virtual methods
.method public final bindStoryTopic(Lcom/narvii/model/story/StoryTopic;)V
    .locals 1

    const-string v0, "storyTopic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/narvii/topic/adapter/SubTopicAdapter$SubTopicViewHolder;->storyTopicView:Lcom/narvii/story/widgets/StoryTopicView;

    invoke-virtual {v0, p1}, Lcom/narvii/story/widgets/StoryTopicView;->setTopic(Lcom/narvii/model/story/StoryTopic;)V

    .line 72
    iget-object p1, p0, Lcom/narvii/topic/adapter/SubTopicAdapter$SubTopicViewHolder;->storyTopicView:Lcom/narvii/story/widgets/StoryTopicView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 73
    iget-object p1, p0, Lcom/narvii/topic/adapter/SubTopicAdapter$SubTopicViewHolder;->storyTopicView:Lcom/narvii/story/widgets/StoryTopicView;

    iget-object v0, p0, Lcom/narvii/topic/adapter/SubTopicAdapter$SubTopicViewHolder;->this$0:Lcom/narvii/topic/adapter/SubTopicAdapter;

    invoke-virtual {v0}, Lcom/narvii/topic/adapter/SubTopicAdapter;->getTopicPreClickListener()Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/story/widgets/StoryTopicView;->setOnPreClickListener(Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;)V

    return-void
.end method

.method public final getStoryTopicView()Lcom/narvii/story/widgets/StoryTopicView;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/narvii/topic/adapter/SubTopicAdapter$SubTopicViewHolder;->storyTopicView:Lcom/narvii/story/widgets/StoryTopicView;

    return-object v0
.end method

.method public final setStoryTopicView(Lcom/narvii/story/widgets/StoryTopicView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lcom/narvii/topic/adapter/SubTopicAdapter$SubTopicViewHolder;->storyTopicView:Lcom/narvii/story/widgets/StoryTopicView;

    return-void
.end method
