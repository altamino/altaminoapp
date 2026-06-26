.class Lcom/narvii/chat/input/ChatThreadCheckFragment$7;
.super Ljava/lang/Object;
.source "ChatThreadCheckFragment.java"

# interfaces
.implements Lcom/narvii/video/model/ChannelActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/input/ChatThreadCheckFragment;->requestToBePresenter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/video/model/ChannelActionCallback<",
        "Lcom/narvii/video/model/ChannelActionResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/input/ChatThreadCheckFragment;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$7;->this$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/video/model/ChannelActionResult;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 441
    iget-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$7;->this$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

    invoke-static {p1}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->access$300(Lcom/narvii/chat/input/ChatThreadCheckFragment;)Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatJoinEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 442
    iget-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$7;->this$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

    invoke-static {p1}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->access$300(Lcom/narvii/chat/input/ChatThreadCheckFragment;)Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatJoinEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatJoinEventListener;->onJoinEnd()V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 437
    check-cast p1, Lcom/narvii/video/model/ChannelActionResult;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/input/ChatThreadCheckFragment$7;->call(Lcom/narvii/video/model/ChannelActionResult;)V

    return-void
.end method
