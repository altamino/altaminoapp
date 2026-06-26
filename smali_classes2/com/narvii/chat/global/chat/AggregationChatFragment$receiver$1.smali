.class public final Lcom/narvii/chat/global/chat/AggregationChatFragment$receiver$1;
.super Landroid/content/BroadcastReceiver;
.source "AggregationChatFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/global/chat/AggregationChatFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/global/chat/AggregationChatFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$receiver$1;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 70
    iget-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$receiver$1;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    sget p2, Lcom/narvii/amino/R$id;->global_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 71
    iget-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$receiver$1;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    sget v0, Lcom/narvii/amino/R$id;->global_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$receiver$1;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getAccountService()Lcom/narvii/account/AccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 73
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$receiver$1;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getAccountService()Lcom/narvii/account/AccountService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$receiver$1;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getChatService()Lcom/narvii/chat/core/ChatService;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 74
    iget-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$receiver$1;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getChatService()Lcom/narvii/chat/core/ChatService;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/narvii/chat/core/ChatService;->addThreadCheckQueue(I)V

    :cond_3
    return-void
.end method
