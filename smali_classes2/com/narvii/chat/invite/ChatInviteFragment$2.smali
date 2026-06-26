.class Lcom/narvii/chat/invite/ChatInviteFragment$2;
.super Ljava/lang/Object;
.source "ChatInviteFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/invite/ChatInviteFragment;->startChat(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

.field final synthetic val$req:Lcom/narvii/util/http/ApiRequest;


# direct methods
.method constructor <init>(Lcom/narvii/chat/invite/ChatInviteFragment;Lcom/narvii/util/http/ApiRequest;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/narvii/chat/invite/ChatInviteFragment$2;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    iput-object p2, p0, Lcom/narvii/chat/invite/ChatInviteFragment$2;->val$req:Lcom/narvii/util/http/ApiRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 123
    iget-object p1, p0, Lcom/narvii/chat/invite/ChatInviteFragment$2;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    const-string v0, "api"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 124
    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInviteFragment$2;->val$req:Lcom/narvii/util/http/ApiRequest;

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    return-void
.end method
