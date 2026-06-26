.class final Lcom/narvii/chat/detail/ThreadAnnouncementFragment$sendRequest$1;
.super Ljava/lang/Object;
.source "ThreadAnnouncementFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->sendRequest(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/detail/ThreadAnnouncementFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$sendRequest$1;->this$0:Lcom/narvii/chat/detail/ThreadAnnouncementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 126
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$sendRequest$1;->this$0:Lcom/narvii/chat/detail/ThreadAnnouncementFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->getRequest()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$sendRequest$1;->this$0:Lcom/narvii/chat/detail/ThreadAnnouncementFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->getApi()Lcom/narvii/util/http/ApiService;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$sendRequest$1;->this$0:Lcom/narvii/chat/detail/ThreadAnnouncementFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->getRequest()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    :cond_0
    return-void
.end method
