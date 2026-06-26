.class public final Lcom/narvii/chat/video/overlay/ChatGuestListFragment$vvProfileClickListener$1;
.super Ljava/lang/Object;
.source "ChatGuestListFragment.kt"

# interfaces
.implements Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/overlay/ChatGuestListFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/overlay/ChatGuestListFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 284
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$vvProfileClickListener$1;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartChat(Lcom/narvii/model/User;)V
    .locals 3

    const-string/jumbo v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$vvProfileClickListener$1;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    const-string v1, "account"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 287
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$vvProfileClickListener$1;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "chatInvite"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v2, v0, Lcom/narvii/chat/invite/ChatInviteFragment;

    if-nez v2, :cond_0

    move-object v0, v1

    :cond_0
    check-cast v0, Lcom/narvii/chat/invite/ChatInviteFragment;

    if-eqz v0, :cond_3

    .line 289
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/chat/invite/ChatInviteFragment;->startChat(Ljava/lang/String;)V

    goto :goto_0

    .line 288
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 291
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "chat"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$vvProfileClickListener$1;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void

    .line 287
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1
.end method
