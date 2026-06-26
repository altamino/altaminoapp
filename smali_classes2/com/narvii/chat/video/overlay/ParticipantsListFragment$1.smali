.class Lcom/narvii/chat/video/overlay/ParticipantsListFragment$1;
.super Ljava/lang/Object;
.source "ParticipantsListFragment.java"

# interfaces
.implements Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/video/overlay/ParticipantsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)V
    .locals 0

    .line 749
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$1;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartChat(Lcom/narvii/model/User;)V
    .locals 2

    .line 752
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$1;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    const-string v1, "account"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 753
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$1;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "chatInvite"

    .line 755
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/invite/ChatInviteFragment;

    if-eqz v0, :cond_1

    .line 757
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/chat/invite/ChatInviteFragment;->startChat(Ljava/lang/String;)V

    goto :goto_0

    .line 760
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "chat"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 761
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 762
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$1;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method
