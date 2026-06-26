.class Lcom/narvii/chat/input/ChatInputFragment$4;
.super Ljava/lang/Object;
.source "ChatInputFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    .line 419
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$4;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 423
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$4;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/input/ChatInputFragment;->scrollChatListToBottom()V

    :cond_0
    return-void
.end method
