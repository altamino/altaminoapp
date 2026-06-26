.class Lcom/narvii/chat/input/ChatInputFragment$2;
.super Ljava/lang/Object;
.source "ChatInputFragment.java"

# interfaces
.implements Lcom/narvii/chat/ChatReplyLayout$OnClickListener;


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

    .line 352
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$2;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/view/View;Lcom/narvii/model/ChatMessage;)V
    .locals 0

    .line 360
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$2;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->access$100(Lcom/narvii/chat/input/ChatInputFragment;)V

    return-void
.end method

.method public onItemClick(Landroid/view/View;Lcom/narvii/model/ChatMessage;)V
    .locals 0

    return-void
.end method
