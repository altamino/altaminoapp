.class Lcom/narvii/chat/input/ChatThreadCheckFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/input/ChatThreadCheckFragment;->requestToSpeak(Lcom/narvii/chat/signalling/SignallingChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

.field final synthetic val$thread:Lcom/narvii/model/ChatThread;


# direct methods
.method constructor <init>(Lcom/narvii/chat/input/ChatThreadCheckFragment;Lcom/narvii/model/ChatThread;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$4;->this$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$4;->val$thread:Lcom/narvii/model/ChatThread;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$4;->this$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$4;->val$thread:Lcom/narvii/model/ChatThread;

    .line 5
    .line 6
    iget v0, v0, Lcom/narvii/model/ChatThread;->ndcId:I

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->v(Lcom/narvii/chat/input/ChatThreadCheckFragment;I)V

    .line 10
    return-void
.end method
