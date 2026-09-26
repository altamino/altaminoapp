.class public final Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter$onItemClick$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLiveWaitingListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LiveWaitingListFragment.kt\ncom/narvii/chat/setting/LiveWaitingListFragment$Adapter$onItemClick$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,483:1\n1855#2,2:484\n*S KotlinDebug\n*F\n+ 1 LiveWaitingListFragment.kt\ncom/narvii/chat/setting/LiveWaitingListFragment$Adapter$onItemClick$1\n*L\n375#1:484,2\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;

.field final synthetic this$1:Lcom/narvii/chat/setting/LiveWaitingListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;Lcom/narvii/chat/setting/LiveWaitingListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter$onItemClick$1;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter$onItemClick$1;->this$1:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onStartChat(Lcom/narvii/model/User;)V
    .locals 4
    .param p1    # Lcom/narvii/model/User;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "user"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter$onItemClick$1;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;

    .line 8
    .line 9
    const-string v1, "account"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

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
    if-eqz v0, :cond_3

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter$onItemClick$1;->this$1:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x0

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->B0()Ljava/util/List;

    .line 43
    move-result-object v0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move-object v0, v1

    .line 46
    .line 47
    :goto_0
    if-eqz v0, :cond_4

    .line 48
    .line 49
    check-cast v0, Ljava/lang/Iterable;

    .line 50
    .line 51
    .line 52
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result v2

    .line 58
    .line 59
    if-eqz v2, :cond_4

    .line 60
    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 66
    .line 67
    instance-of v3, v2, Lcom/narvii/chat/ChatFragment;

    .line 68
    .line 69
    if-eqz v3, :cond_1

    .line 70
    .line 71
    check-cast v2, Lcom/narvii/chat/ChatFragment;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 75
    move-result-object v2

    .line 76
    .line 77
    const-string v3, "chatInvite"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 81
    move-result-object v2

    .line 82
    .line 83
    instance-of v3, v2, Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 84
    .line 85
    if-eqz v3, :cond_2

    .line 86
    .line 87
    check-cast v2, Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 88
    goto :goto_2

    .line 89
    :cond_2
    move-object v2, v1

    .line 90
    .line 91
    :goto_2
    if-eqz v2, :cond_1

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 95
    move-result-object v3

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v3}, Lcom/narvii/chat/invite/ChatInviteFragment;->startChat(Ljava/lang/String;)V

    .line 99
    goto :goto_1

    .line 100
    .line 101
    :cond_3
    new-instance v0, Landroid/content/Intent;

    .line 102
    .line 103
    const-string v1, "chat"

    .line 104
    .line 105
    .line 106
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    const-string v1, "uid"

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 112
    move-result-object p1

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    .line 117
    iget-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter$onItemClick$1;->this$1:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    .line 121
    :cond_4
    return-void
.end method
