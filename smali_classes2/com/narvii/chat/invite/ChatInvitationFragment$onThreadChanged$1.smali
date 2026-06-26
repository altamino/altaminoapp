.class final Lcom/narvii/chat/invite/ChatInvitationFragment$onThreadChanged$1;
.super Ljava/lang/Object;
.source "ChatInvitationFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/invite/ChatInvitationFragment;->onThreadChanged(Lcom/narvii/model/ChatThread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/invite/ChatInvitationFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/invite/ChatInvitationFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment$onThreadChanged$1;->this$0:Lcom/narvii/chat/invite/ChatInvitationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInvitationFragment$onThreadChanged$1;->this$0:Lcom/narvii/chat/invite/ChatInvitationFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/invite/ChatInvitationFragment;->show()V

    return-void
.end method
