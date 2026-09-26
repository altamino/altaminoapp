.class Lcom/narvii/chat/invite/ChatInviteFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/invite/ChatInviteFragment$2;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/invite/ChatInviteFragment$2;->val$req:Lcom/narvii/util/http/ApiRequest;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/invite/ChatInviteFragment$2;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 3
    .line 4
    const-string v0, "api"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInviteFragment$2;->val$req:Lcom/narvii/util/http/ApiRequest;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 16
    return-void
.end method
