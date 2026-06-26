.class final Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$1;
.super Ljava/lang/Object;
.source "EditThreadAnnouncementFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->sendRequest(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$1;->this$0:Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 99
    iget-object p1, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$1;->this$0:Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->getRequest()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 100
    iget-object p1, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$1;->this$0:Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->getApi()Lcom/narvii/util/http/ApiService;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$1;->this$0:Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;

    invoke-virtual {v0}, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->getRequest()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    :cond_0
    return-void
.end method
