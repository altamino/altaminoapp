.class Lcom/narvii/chat/input/ChatInputFragment$10;
.super Ljava/lang/Object;
.source "ChatInputFragment.java"

# interfaces
.implements Lcom/narvii/chat/RecordFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/input/ChatInputFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/input/ChatInputFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/input/ChatInputFragment;)V
    .locals 0

    .line 604
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$10;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordFinish(Landroid/net/Uri;JI)V
    .locals 1

    .line 608
    new-instance v0, Lcom/narvii/model/Media;

    invoke-direct {v0}, Lcom/narvii/model/Media;-><init>()V

    .line 609
    iput p4, v0, Lcom/narvii/model/Media;->type:I

    .line 610
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 611
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$10;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->access$1900(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatInputMessageSenderHelper;

    move-result-object p1

    iget-object p4, p0, Lcom/narvii/chat/input/ChatInputFragment$10;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {p4}, Lcom/narvii/chat/input/ChatInputFragment;->access$1800(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p4

    invoke-virtual {p1, v0, p2, p3, p4}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->sendVoiceMessage(Lcom/narvii/model/Media;JLcom/fasterxml/jackson/databind/node/ObjectNode;)Z

    .line 612
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$10;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    const-string/jumbo p2, "voice"

    invoke-static {p1, p2}, Lcom/narvii/chat/input/ChatInputFragment;->access$2000(Lcom/narvii/chat/input/ChatInputFragment;Ljava/lang/String;)V

    return-void
.end method
