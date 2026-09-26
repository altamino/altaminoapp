.class public final synthetic Lcom/narvii/chat/invite/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/invite/ChatInvitationFragment;

.field public final synthetic b:Lcom/narvii/model/ChatThread;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/invite/ChatInvitationFragment;Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/invite/c;->a:Lcom/narvii/chat/invite/ChatInvitationFragment;

    iput-object p2, p0, Lcom/narvii/chat/invite/c;->b:Lcom/narvii/model/ChatThread;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/invite/c;->a:Lcom/narvii/chat/invite/ChatInvitationFragment;

    iget-object v1, p0, Lcom/narvii/chat/invite/c;->b:Lcom/narvii/model/ChatThread;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1}, Lcom/narvii/chat/invite/ChatInvitationFragment;->n(Lcom/narvii/chat/invite/ChatInvitationFragment;Lcom/narvii/model/ChatThread;Ljava/lang/Boolean;)V

    return-void
.end method
