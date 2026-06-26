.class public final Lcom/narvii/chat/invite/ChatInvitationFragment$onCreate$1;
.super Landroid/content/BroadcastReceiver;
.source "ChatInvitationFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/invite/ChatInvitationFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/invite/ChatInvitationFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/invite/ChatInvitationFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment$onCreate$1;->this$0:Lcom/narvii/chat/invite/ChatInvitationFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment$onCreate$1;->this$0:Lcom/narvii/chat/invite/ChatInvitationFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/invite/ChatInvitationFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/chat/invite/ChatInvitationFragment;->onThreadChanged(Lcom/narvii/model/ChatThread;)V

    return-void
.end method
