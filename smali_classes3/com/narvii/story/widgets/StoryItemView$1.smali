.class Lcom/narvii/story/widgets/StoryItemView$1;
.super Ljava/lang/Object;
.source "StoryItemView.java"

# interfaces
.implements Lcom/narvii/story/widgets/StoryItemInterceptLayout$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/widgets/StoryItemView;->onFinishInflate()V
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

    .line 127
    iput-object p1, p0, Lcom/narvii/story/widgets/StoryItemView$1;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleClicked(Landroid/view/MotionEvent;)V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView$1;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    iget-boolean v1, v0, Lcom/narvii/story/widgets/StoryItemView;->isImmersionModel:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/narvii/story/widgets/StoryItemView;->getDoubleClickEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView$1;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {v0}, Lcom/narvii/story/widgets/StoryItemView;->access$300(Lcom/narvii/story/widgets/StoryItemView;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/narvii/logging/ActSemantic;->like:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/narvii/logging/ActType;->doubleClick:Lcom/narvii/logging/ActType;

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->actType(Lcom/narvii/logging/ActType;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 146
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView$1;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    iget-object v0, v0, Lcom/narvii/story/widgets/StoryItemView;->storyVoteView:Lcom/narvii/story/widgets/StoryVoteView;

    invoke-virtual {v0, p1}, Lcom/narvii/story/widgets/StoryVoteView;->prepareAnimation(Landroid/view/MotionEvent;)V

    .line 147
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryItemView$1;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {p1}, Lcom/narvii/story/widgets/StoryItemView;->access$400(Lcom/narvii/story/widgets/StoryItemView;)Lcom/narvii/account/AccountService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/story/widgets/StoryItemView$1;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {p1}, Lcom/narvii/story/widgets/StoryItemView;->access$200(Lcom/narvii/story/widgets/StoryItemView;)Lcom/narvii/model/Blog;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView$1;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    iget-object v0, v0, Lcom/narvii/story/widgets/StoryItemView;->nvContext:Lcom/narvii/app/NVContext;

    invoke-static {v0}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 148
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryItemView$1;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-virtual {p1}, Lcom/narvii/story/widgets/StoryItemView;->performVote()V

    :cond_0
    return-void
.end method

.method public onLongClick()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView$1;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    iget-object v0, v0, Lcom/narvii/story/widgets/StoryItemView;->storyLongClickListener:Lcom/narvii/story/IStoryLongClickListener;

    if-eqz v0, :cond_0

    .line 156
    invoke-interface {v0}, Lcom/narvii/story/IStoryLongClickListener;->onStoryLongClicked()V

    :cond_0
    return-void
.end method

.method public onNextDirectionClicked()V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView$1;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {v0}, Lcom/narvii/story/widgets/StoryItemView;->access$000(Lcom/narvii/story/widgets/StoryItemView;)Lcom/narvii/story/widgets/StoryItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView$1;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {v0}, Lcom/narvii/story/widgets/StoryItemView;->access$000(Lcom/narvii/story/widgets/StoryItemView;)Lcom/narvii/story/widgets/StoryItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/story/widgets/StoryItemView$1;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {v1}, Lcom/narvii/story/widgets/StoryItemView;->access$100(Lcom/narvii/story/widgets/StoryItemView;)I

    move-result v1

    iget-object v2, p0, Lcom/narvii/story/widgets/StoryItemView$1;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {v2}, Lcom/narvii/story/widgets/StoryItemView;->access$200(Lcom/narvii/story/widgets/StoryItemView;)Lcom/narvii/model/Blog;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/narvii/story/widgets/StoryItemClickListener;->onNextDirectionClicked(ILcom/narvii/model/Blog;)V

    :cond_0
    return-void
.end method

.method public onPrevDirectionClicked()V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView$1;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {v0}, Lcom/narvii/story/widgets/StoryItemView;->access$000(Lcom/narvii/story/widgets/StoryItemView;)Lcom/narvii/story/widgets/StoryItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView$1;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {v0}, Lcom/narvii/story/widgets/StoryItemView;->access$000(Lcom/narvii/story/widgets/StoryItemView;)Lcom/narvii/story/widgets/StoryItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/story/widgets/StoryItemView$1;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {v1}, Lcom/narvii/story/widgets/StoryItemView;->access$100(Lcom/narvii/story/widgets/StoryItemView;)I

    move-result v1

    iget-object v2, p0, Lcom/narvii/story/widgets/StoryItemView$1;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {v2}, Lcom/narvii/story/widgets/StoryItemView;->access$200(Lcom/narvii/story/widgets/StoryItemView;)Lcom/narvii/model/Blog;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/narvii/story/widgets/StoryItemClickListener;->onPrevDirectionClicked(ILcom/narvii/model/Blog;)V

    :cond_0
    return-void
.end method
