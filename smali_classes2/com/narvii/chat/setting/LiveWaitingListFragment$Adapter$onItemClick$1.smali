.class public final Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter$onItemClick$1;
.super Ljava/lang/Object;
.source "LiveWaitingListFragment.kt"

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
    value = "SMAP\nLiveWaitingListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LiveWaitingListFragment.kt\ncom/narvii/chat/setting/LiveWaitingListFragment$Adapter$onItemClick$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,428:1\n1587#2,2:429\n*E\n*S KotlinDebug\n*F\n+ 1 LiveWaitingListFragment.kt\ncom/narvii/chat/setting/LiveWaitingListFragment$Adapter$onItemClick$1\n*L\n332#1,2:429\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;


# direct methods
.method constructor <init>(Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 327
    iput-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter$onItemClick$1;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartChat(Lcom/narvii/model/User;)V
    .locals 4

    const-string/jumbo v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter$onItemClick$1;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;

    const-string v1, "account"

    invoke-virtual {v0, v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 330
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 331
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter$onItemClick$1;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_4

    .line 429
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 333
    instance-of v3, v2, Lcom/narvii/chat/ChatFragment;

    if-eqz v3, :cond_1

    .line 334
    check-cast v2, Lcom/narvii/chat/ChatFragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "chatInvite"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    instance-of v3, v2, Lcom/narvii/chat/invite/ChatInviteFragment;

    if-nez v3, :cond_2

    move-object v2, v1

    :cond_2
    check-cast v2, Lcom/narvii/chat/invite/ChatInviteFragment;

    if-eqz v2, :cond_1

    .line 335
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/narvii/chat/invite/ChatInviteFragment;->startChat(Ljava/lang/String;)V

    goto :goto_1

    .line 340
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "chat"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    iget-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter$onItemClick$1;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    :cond_4
    return-void

    .line 330
    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method
