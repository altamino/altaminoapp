.class public final Lcom/narvii/chat/video/overlay/ChatGuestListFragment$vvProfileClickListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$vvProfileClickListener$1;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onStartChat(Lcom/narvii/model/User;)V
    .locals 2
    .param p1    # Lcom/narvii/model/User;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string/jumbo v0, "user"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$vvProfileClickListener$1;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    .line 8
    .line 9
    const-string v1, "account"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$vvProfileClickListener$1;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 34
    .line 35
    const-string v1, "chatInvite"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    instance-of v1, v0, Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 42
    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    check-cast v0, Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 v0, 0x0

    .line 48
    .line 49
    :goto_0
    if-eqz v0, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1}, Lcom/narvii/chat/invite/ChatInviteFragment;->startChat(Ljava/lang/String;)V

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 60
    .line 61
    const-string v1, "chat"

    .line 62
    .line 63
    .line 64
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    const-string/jumbo v1, "uid"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    .line 75
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$vvProfileClickListener$1;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    .line 79
    :cond_2
    :goto_1
    return-void
.end method
