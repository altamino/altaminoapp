.class final Lcom/narvii/chat/invite/ChatInvitationFragment$doRequestToJoinChat$1;
.super Ljava/lang/Object;
.source "ChatInvitationFragment.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/invite/ChatInvitationFragment;->doRequestToJoinChat(Lcom/narvii/model/ChatThread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $chatThread:Lcom/narvii/model/ChatThread;

.field final synthetic this$0:Lcom/narvii/chat/invite/ChatInvitationFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/invite/ChatInvitationFragment;Lcom/narvii/model/ChatThread;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment$doRequestToJoinChat$1;->this$0:Lcom/narvii/chat/invite/ChatInvitationFragment;

    iput-object p2, p0, Lcom/narvii/chat/invite/ChatInvitationFragment$doRequestToJoinChat$1;->$chatThread:Lcom/narvii/model/ChatThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 219
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 220
    iget-object p1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment$doRequestToJoinChat$1;->this$0:Lcom/narvii/chat/invite/ChatInvitationFragment;

    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInvitationFragment$doRequestToJoinChat$1;->$chatThread:Lcom/narvii/model/ChatThread;

    invoke-static {p1, v0}, Lcom/narvii/chat/invite/ChatInvitationFragment;->access$onChatJoined(Lcom/narvii/chat/invite/ChatInvitationFragment;Lcom/narvii/model/ChatThread;)V

    goto :goto_0

    .line 222
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment$doRequestToJoinChat$1;->this$0:Lcom/narvii/chat/invite/ChatInvitationFragment;

    invoke-static {p1}, Lcom/narvii/chat/invite/ChatInvitationFragment;->access$getInvitationContainer$p(Lcom/narvii/chat/invite/ChatInvitationFragment;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const v0, 0x7f09002c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 223
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment$doRequestToJoinChat$1;->this$0:Lcom/narvii/chat/invite/ChatInvitationFragment;

    invoke-static {p1}, Lcom/narvii/chat/invite/ChatInvitationFragment;->access$getInvitationContainer$p(Lcom/narvii/chat/invite/ChatInvitationFragment;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    const v0, 0x7f0908cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 50
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/invite/ChatInvitationFragment$doRequestToJoinChat$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
