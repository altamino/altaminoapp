.class final Lcom/narvii/chat/invite/ChatInvitationFragment$onClick$2;
.super Ljava/lang/Object;
.source "ChatInvitationFragment.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/invite/ChatInvitationFragment;->onClick(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment$onClick$2;->this$0:Lcom/narvii/chat/invite/ChatInvitationFragment;

    iput-object p2, p0, Lcom/narvii/chat/invite/ChatInvitationFragment$onClick$2;->$chatThread:Lcom/narvii/model/ChatThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Boolean;)V
    .locals 1

    const/4 v0, 0x1

    .line 198
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 199
    iget-object p1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment$onClick$2;->this$0:Lcom/narvii/chat/invite/ChatInvitationFragment;

    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInvitationFragment$onClick$2;->$chatThread:Lcom/narvii/model/ChatThread;

    invoke-virtual {p1, v0}, Lcom/narvii/chat/invite/ChatInvitationFragment;->doRequestToJoinChat(Lcom/narvii/model/ChatThread;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 50
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/invite/ChatInvitationFragment$onClick$2;->call(Ljava/lang/Boolean;)V

    return-void
.end method
