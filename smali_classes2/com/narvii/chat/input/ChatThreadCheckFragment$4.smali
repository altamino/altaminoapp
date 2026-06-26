.class Lcom/narvii/chat/input/ChatThreadCheckFragment$4;
.super Ljava/lang/Object;
.source "ChatThreadCheckFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

.field final synthetic val$thread:Lcom/narvii/model/ChatThread;


# direct methods
.method constructor <init>(Lcom/narvii/chat/input/ChatThreadCheckFragment;Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$4;->this$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

    iput-object p2, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$4;->val$thread:Lcom/narvii/model/ChatThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1

    .line 238
    iget-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$4;->this$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

    iget-object v0, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$4;->val$thread:Lcom/narvii/model/ChatThread;

    iget v0, v0, Lcom/narvii/model/ChatThread;->ndcId:I

    invoke-static {p1, v0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->access$400(Lcom/narvii/chat/input/ChatThreadCheckFragment;I)V

    return-void
.end method
