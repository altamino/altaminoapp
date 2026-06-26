.class Lcom/narvii/poll/PollOptionListLayout$1;
.super Ljava/lang/Object;
.source "PollOptionListLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/poll/PollOptionListLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poll/PollOptionListLayout;


# direct methods
.method constructor <init>(Lcom/narvii/poll/PollOptionListLayout;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/narvii/poll/PollOptionListLayout$1;->this$0:Lcom/narvii/poll/PollOptionListLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/narvii/poll/PollOptionListLayout$1;->this$0:Lcom/narvii/poll/PollOptionListLayout;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/narvii/poll/PollOptionListLayout;->pendingAnim:Z

    .line 179
    iget-object v2, v0, Lcom/narvii/poll/PollOptionListLayout;->pendingPoll:Lcom/narvii/model/Blog;

    if-eqz v2, :cond_0

    .line 180
    iput-object v2, v0, Lcom/narvii/poll/PollOptionListLayout;->poll:Lcom/narvii/model/Blog;

    const/4 v2, 0x0

    .line 181
    iput-object v2, v0, Lcom/narvii/poll/PollOptionListLayout;->pendingPoll:Lcom/narvii/model/Blog;

    .line 182
    invoke-virtual {v0, v1}, Lcom/narvii/poll/PollOptionListLayout;->updateView(Z)V

    :cond_0
    return-void
.end method
