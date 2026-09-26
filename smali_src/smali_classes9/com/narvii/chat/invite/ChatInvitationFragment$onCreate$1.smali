.class public final Lcom/narvii/chat/invite/ChatInvitationFragment$onCreate$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment$onCreate$1;->this$0:Lcom/narvii/chat/invite/ChatInvitationFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment$onCreate$1;->this$0:Lcom/narvii/chat/invite/ChatInvitationFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/chat/invite/ChatInvitationFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/narvii/chat/invite/ChatInvitationFragment;->onThreadChanged(Lcom/narvii/model/ChatThread;)V

    .line 10
    return-void
.end method
