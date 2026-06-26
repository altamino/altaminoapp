.class Lcom/narvii/nvplayer/delegate/StoryFeedListVideoDelegate$1;
.super Ljava/lang/Object;
.source "StoryFeedListVideoDelegate.java"

# interfaces
.implements Lcom/narvii/nvplayerview/listener/VideoViewClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/nvplayer/delegate/StoryFeedListVideoDelegate;-><init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/nvplayer/delegate/StoryFeedListVideoDelegate;


# direct methods
.method constructor <init>(Lcom/narvii/nvplayer/delegate/StoryFeedListVideoDelegate;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/narvii/nvplayer/delegate/StoryFeedListVideoDelegate$1;->this$0:Lcom/narvii/nvplayer/delegate/StoryFeedListVideoDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public interceptClickEvent(Lcom/narvii/model/NVObject;)Z
    .locals 1

    .line 53
    instance-of v0, p1, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/narvii/model/Blog;

    iget p1, p1, Lcom/narvii/model/Blog;->type:I

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onVideoViewClicked(Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;)V
    .locals 1

    .line 46
    iget-object p1, p0, Lcom/narvii/nvplayer/delegate/StoryFeedListVideoDelegate$1;->this$0:Lcom/narvii/nvplayer/delegate/StoryFeedListVideoDelegate;

    check-cast p2, Lcom/narvii/model/Blog;

    invoke-virtual {p1, p2}, Lcom/narvii/nvplayer/delegate/StoryFeedListVideoDelegate;->getStoryDetailPageIntent(Lcom/narvii/model/Blog;)Landroid/content/Intent;

    move-result-object p1

    .line 47
    new-instance p2, Lcom/narvii/story/StoryHelper;

    iget-object v0, p0, Lcom/narvii/nvplayer/delegate/StoryFeedListVideoDelegate$1;->this$0:Lcom/narvii/nvplayer/delegate/StoryFeedListVideoDelegate;

    invoke-static {v0}, Lcom/narvii/nvplayer/delegate/StoryFeedListVideoDelegate;->access$000(Lcom/narvii/nvplayer/delegate/StoryFeedListVideoDelegate;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/narvii/story/StoryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 48
    iget-object v0, p0, Lcom/narvii/nvplayer/delegate/StoryFeedListVideoDelegate$1;->this$0:Lcom/narvii/nvplayer/delegate/StoryFeedListVideoDelegate;

    invoke-static {v0}, Lcom/narvii/nvplayer/delegate/StoryFeedListVideoDelegate;->access$100(Lcom/narvii/nvplayer/delegate/StoryFeedListVideoDelegate;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/narvii/story/StoryHelper;->openStoryDetailPageInAnotherActivity(Landroid/view/View;Landroid/content/Intent;)V

    return-void
.end method
