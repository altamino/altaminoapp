.class Lcom/narvii/story/widgets/StoryItemView$5;
.super Ljava/lang/Object;
.source "StoryItemView.java"

# interfaces
.implements Lcom/narvii/story/widgets/StoryReplayNextView$IStoryReplayNextClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/widgets/StoryItemView;->initInterstitialPage(Landroid/support/v4/app/Fragment;Lcom/narvii/model/Blog;Lcom/narvii/model/Community;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/widgets/StoryItemView;


# direct methods
.method constructor <init>(Lcom/narvii/story/widgets/StoryItemView;)V
    .locals 0

    .line 510
    iput-object p1, p0, Lcom/narvii/story/widgets/StoryItemView$5;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNext(Z)V
    .locals 4

    .line 521
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView$5;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {v0}, Lcom/narvii/story/widgets/StoryItemView;->access$700(Lcom/narvii/story/widgets/StoryItemView;)Lcom/narvii/story/widgets/StoryItemPlayControlListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView$5;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {v0}, Lcom/narvii/story/widgets/StoryItemView;->access$700(Lcom/narvii/story/widgets/StoryItemView;)Lcom/narvii/story/widgets/StoryItemPlayControlListener;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/story/widgets/StoryItemView$5;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {v1}, Lcom/narvii/story/widgets/StoryItemView;->access$100(Lcom/narvii/story/widgets/StoryItemView;)I

    move-result v1

    iget-object v2, p0, Lcom/narvii/story/widgets/StoryItemView$5;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {v2}, Lcom/narvii/story/widgets/StoryItemView;->access$200(Lcom/narvii/story/widgets/StoryItemView;)Lcom/narvii/model/Blog;

    move-result-object v2

    const-string v3, "StoryEnd"

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/narvii/story/widgets/StoryItemPlayControlListener;->onPlayNextStory(ILcom/narvii/model/Blog;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onReplay()V
    .locals 3

    .line 513
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView$5;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {v0}, Lcom/narvii/story/widgets/StoryItemView;->access$300(Lcom/narvii/story/widgets/StoryItemView;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/narvii/logging/ActSemantic;->replay:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "StoryEnd"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 514
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView$5;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {v0}, Lcom/narvii/story/widgets/StoryItemView;->access$700(Lcom/narvii/story/widgets/StoryItemView;)Lcom/narvii/story/widgets/StoryItemPlayControlListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView$5;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {v0}, Lcom/narvii/story/widgets/StoryItemView;->access$700(Lcom/narvii/story/widgets/StoryItemView;)Lcom/narvii/story/widgets/StoryItemPlayControlListener;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/story/widgets/StoryItemView$5;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {v1}, Lcom/narvii/story/widgets/StoryItemView;->access$100(Lcom/narvii/story/widgets/StoryItemView;)I

    move-result v1

    iget-object v2, p0, Lcom/narvii/story/widgets/StoryItemView$5;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {v2}, Lcom/narvii/story/widgets/StoryItemView;->access$200(Lcom/narvii/story/widgets/StoryItemView;)Lcom/narvii/model/Blog;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/narvii/story/widgets/StoryItemPlayControlListener;->onReplayStory(ILcom/narvii/model/Blog;)V

    :cond_0
    return-void
.end method
