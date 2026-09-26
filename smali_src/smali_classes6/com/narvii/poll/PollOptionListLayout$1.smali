.class Lcom/narvii/poll/PollOptionListLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poll/PollOptionListLayout$1;->this$0:Lcom/narvii/poll/PollOptionListLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poll/PollOptionListLayout$1;->this$0:Lcom/narvii/poll/PollOptionListLayout;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    iput-boolean v1, v0, Lcom/narvii/poll/PollOptionListLayout;->pendingAnim:Z

    .line 6
    .line 7
    iget-object v2, v0, Lcom/narvii/poll/PollOptionListLayout;->pendingPoll:Lcom/narvii/model/Blog;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iput-object v2, v0, Lcom/narvii/poll/PollOptionListLayout;->poll:Lcom/narvii/model/Blog;

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    iput-object v2, v0, Lcom/narvii/poll/PollOptionListLayout;->pendingPoll:Lcom/narvii/model/Blog;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/poll/PollOptionListLayout;->updateView(Z)V

    .line 18
    :cond_0
    return-void
.end method
