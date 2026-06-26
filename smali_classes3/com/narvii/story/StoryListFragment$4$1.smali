.class Lcom/narvii/story/StoryListFragment$4$1;
.super Ljava/lang/Object;
.source "StoryListFragment.java"

# interfaces
.implements Lcom/narvii/story/widgets/GuideViewHelper$OnGuideEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/StoryListFragment$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/story/StoryListFragment$4;


# direct methods
.method constructor <init>(Lcom/narvii/story/StoryListFragment$4;)V
    .locals 0

    .line 667
    iput-object p1, p0, Lcom/narvii/story/StoryListFragment$4$1;->this$1:Lcom/narvii/story/StoryListFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGuideDismiss(Ljava/lang/String;)V
    .locals 1

    const-string v0, "has_story_guide_click_shown"

    .line 670
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 671
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment$4$1;->this$1:Lcom/narvii/story/StoryListFragment$4;

    iget-object p1, p1, Lcom/narvii/story/StoryListFragment$4;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryListFragment;->access$600(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/model/Blog;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/story/StoryListFragment;->access$700(Lcom/narvii/story/StoryListFragment;Lcom/narvii/model/Feed;)V

    :cond_0
    return-void
.end method
