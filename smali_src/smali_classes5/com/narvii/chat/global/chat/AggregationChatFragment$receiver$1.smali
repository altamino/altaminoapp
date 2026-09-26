.class public final Lcom/narvii/chat/global/chat/AggregationChatFragment$receiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$receiver$1;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "intent"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string p1, "com.narvii.action.ACCOUNT_CHANGED"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    move-result p1

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$receiver$1;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->access$getBinding(Lcom/narvii/chat/global/chat/AggregationChatFragment;)Lcom/narvii/amino/databinding/FragmentAggrefationChatBinding;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    iget-object p1, p1, Lcom/narvii/amino/databinding/FragmentAggrefationChatBinding;->globalLayout:Lcom/narvii/amino/databinding/ItemGlobalAggregationBinding;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/narvii/amino/databinding/ItemGlobalAggregationBinding;->rootGlobalLayout:Lcom/github/mmin18/widget/FlexLayout;

    .line 33
    .line 34
    iget-object p2, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$receiver$1;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getAccountService()Lcom/narvii/account/AccountService;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 42
    move-result p2

    .line 43
    const/4 v0, 0x0

    .line 44
    .line 45
    if-eqz p2, :cond_0

    .line 46
    move p2, v0

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_0
    const/16 p2, 0x8

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    iget-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$receiver$1;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getAccountService()Lcom/narvii/account/AccountService;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 62
    move-result p1

    .line 63
    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    iget-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$receiver$1;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getChatService()Lcom/narvii/chat/core/ChatService;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    if-eqz p1, :cond_1

    .line 73
    .line 74
    iget-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$receiver$1;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getChatService()Lcom/narvii/chat/core/ChatService;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0}, Lcom/narvii/chat/core/ChatService;->addThreadCheckQueue(I)V

    .line 82
    :cond_1
    return-void
.end method
