.class public final synthetic Lcom/narvii/chat/invite/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/invite/ChatInvitationFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/invite/ChatInvitationFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/invite/a;->a:Lcom/narvii/chat/invite/ChatInvitationFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/invite/a;->a:Lcom/narvii/chat/invite/ChatInvitationFragment;

    invoke-static {v0}, Lcom/narvii/chat/invite/ChatInvitationFragment;->o(Lcom/narvii/chat/invite/ChatInvitationFragment;)V

    return-void
.end method
