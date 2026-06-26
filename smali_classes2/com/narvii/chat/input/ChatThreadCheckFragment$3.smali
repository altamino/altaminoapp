.class Lcom/narvii/chat/input/ChatThreadCheckFragment$3;
.super Ljava/lang/Object;
.source "ChatThreadCheckFragment.java"

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

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

.field final synthetic val$finalSignallingChannel:Lcom/narvii/chat/signalling/SignallingChannel;


# direct methods
.method constructor <init>(Lcom/narvii/chat/input/ChatThreadCheckFragment;Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$3;->this$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

    iput-object p2, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$3;->val$finalSignallingChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 1

    .line 213
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 214
    iget-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$3;->this$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

    invoke-static {p1}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->access$000(Lcom/narvii/chat/input/ChatThreadCheckFragment;)Lcom/narvii/chat/input/ChatInputMessageSenderHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->recordChatActivity()V

    .line 215
    iget-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$3;->this$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

    iget-object v0, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$3;->val$finalSignallingChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    invoke-virtual {p1, v0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->requestToSpeak(Lcom/narvii/chat/signalling/SignallingChannel;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 210
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/input/ChatThreadCheckFragment$3;->call(Ljava/lang/Boolean;)V

    return-void
.end method
