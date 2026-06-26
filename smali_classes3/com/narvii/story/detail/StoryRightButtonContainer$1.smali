.class Lcom/narvii/story/detail/StoryRightButtonContainer$1;
.super Ljava/lang/Object;
.source "StoryRightButtonContainer.java"

# interfaces
.implements Lcom/narvii/story/detail/VoteHelper$OnVoteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/detail/StoryRightButtonContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/detail/StoryRightButtonContainer;


# direct methods
.method constructor <init>(Lcom/narvii/story/detail/StoryRightButtonContainer;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer$1;->this$0:Lcom/narvii/story/detail/StoryRightButtonContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoteEnd(Z)V
    .locals 1

    .line 157
    iget-object p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer$1;->this$0:Lcom/narvii/story/detail/StoryRightButtonContainer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/story/detail/StoryRightButtonContainer;->access$002(Lcom/narvii/story/detail/StoryRightButtonContainer;Z)Z

    .line 158
    iget-object p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer$1;->this$0:Lcom/narvii/story/detail/StoryRightButtonContainer;

    invoke-static {p1}, Lcom/narvii/story/detail/StoryRightButtonContainer;->access$100(Lcom/narvii/story/detail/StoryRightButtonContainer;)V

    return-void
.end method

.method public onVoteStart()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/narvii/story/detail/StoryRightButtonContainer$1;->this$0:Lcom/narvii/story/detail/StoryRightButtonContainer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/narvii/story/detail/StoryRightButtonContainer;->access$002(Lcom/narvii/story/detail/StoryRightButtonContainer;Z)Z

    .line 152
    iget-object v0, p0, Lcom/narvii/story/detail/StoryRightButtonContainer$1;->this$0:Lcom/narvii/story/detail/StoryRightButtonContainer;

    invoke-static {v0}, Lcom/narvii/story/detail/StoryRightButtonContainer;->access$100(Lcom/narvii/story/detail/StoryRightButtonContainer;)V

    return-void
.end method
