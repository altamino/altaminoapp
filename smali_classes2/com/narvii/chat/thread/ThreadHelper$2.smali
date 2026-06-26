.class Lcom/narvii/chat/thread/ThreadHelper$2;
.super Ljava/lang/Object;
.source "ThreadHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/thread/ThreadHelper;->showCreateChatDialog(Ljava/lang/String;Lcom/narvii/model/ChatBubble;Ljava/lang/String;ZLcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/thread/ThreadHelper;

.field final synthetic val$bubble:Lcom/narvii/model/ChatBubble;

.field final synthetic val$callback:Lcom/narvii/util/Callback;

.field final synthetic val$checkDraft:Z

.field final synthetic val$source:Ljava/lang/String;

.field final synthetic val$stickerCollectionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/chat/thread/ThreadHelper;Ljava/lang/String;Lcom/narvii/model/ChatBubble;Ljava/lang/String;Lcom/narvii/util/Callback;Z)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->this$0:Lcom/narvii/chat/thread/ThreadHelper;

    iput-object p2, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$source:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$bubble:Lcom/narvii/model/ChatBubble;

    iput-object p4, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$stickerCollectionId:Ljava/lang/String;

    iput-object p5, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$callback:Lcom/narvii/util/Callback;

    iput-boolean p6, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$checkDraft:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onClick$0$ThreadHelper$2(Landroid/view/View;)V
    .locals 2

    .line 112
    const-class p1, Lcom/narvii/post/draft/DraftListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "draftType"

    const-string v1, "thread"

    .line 113
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    iget-object v0, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->this$0:Lcom/narvii/chat/thread/ThreadHelper;

    invoke-static {v0}, Lcom/narvii/chat/thread/ThreadHelper;->access$000(Lcom/narvii/chat/thread/ThreadHelper;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$onClick$1$ThreadHelper$2(Ljava/lang/String;Lcom/narvii/model/ChatBubble;Ljava/lang/String;Lcom/narvii/util/Callback;Landroid/view/View;)V
    .locals 0

    .line 116
    iget-object p5, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->this$0:Lcom/narvii/chat/thread/ThreadHelper;

    invoke-static {p5, p1, p2, p3, p4}, Lcom/narvii/chat/thread/ThreadHelper;->access$100(Lcom/narvii/chat/thread/ThreadHelper;Ljava/lang/String;Lcom/narvii/model/ChatBubble;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    if-nez p2, :cond_2

    .line 85
    const-class p1, Lcom/narvii/chat/invite/StartGroupChatFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x64

    const-string v0, "maxMember"

    .line 86
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    iget-object p2, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$source:Ljava/lang/String;

    const-string v0, "Source"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    iget-object p2, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$bubble:Lcom/narvii/model/ChatBubble;

    if-eqz p2, :cond_0

    .line 89
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "bubble"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    :cond_0
    iget-object p2, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$stickerCollectionId:Ljava/lang/String;

    if-eqz p2, :cond_1

    const-string v0, "stickerCollectionId"

    .line 93
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    :cond_1
    iget-object p2, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->this$0:Lcom/narvii/chat/thread/ThreadHelper;

    invoke-static {p2}, Lcom/narvii/chat/thread/ThreadHelper;->access$000(Lcom/narvii/chat/thread/ThreadHelper;)Lcom/narvii/app/NVContext;

    move-result-object p2

    const-string v0, "PrivateChat"

    invoke-static {p2, v0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 98
    iget-object p2, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->this$0:Lcom/narvii/chat/thread/ThreadHelper;

    invoke-static {p2}, Lcom/narvii/chat/thread/ThreadHelper;->access$000(Lcom/narvii/chat/thread/ThreadHelper;)Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 99
    iget-object p1, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_5

    .line 100
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    const/4 p1, 0x1

    if-ne p2, p1, :cond_5

    .line 103
    iget-object p1, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->this$0:Lcom/narvii/chat/thread/ThreadHelper;

    invoke-static {p1}, Lcom/narvii/chat/thread/ThreadHelper;->access$000(Lcom/narvii/chat/thread/ThreadHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "PublicChatroom"

    invoke-static {p1, p2}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 105
    iget-boolean p1, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$checkDraft:Z

    if-eqz p1, :cond_4

    .line 106
    iget-object p1, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->this$0:Lcom/narvii/chat/thread/ThreadHelper;

    invoke-static {p1}, Lcom/narvii/chat/thread/ThreadHelper;->access$000(Lcom/narvii/chat/thread/ThreadHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "draft"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/post/DraftManager;

    const-string p2, "thread"

    .line 107
    invoke-virtual {p1, p2}, Lcom/narvii/post/DraftManager;->hasDraft(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 108
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object p2, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->this$0:Lcom/narvii/chat/thread/ThreadHelper;

    invoke-static {p2}, Lcom/narvii/chat/thread/ThreadHelper;->access$000(Lcom/narvii/chat/thread/ThreadHelper;)Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0f0302

    .line 109
    invoke-virtual {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 110
    invoke-virtual {p1}, Lcom/narvii/widget/ACMAlertDialog;->setVerticalButtons()V

    const p2, 0x7f0f1167

    .line 111
    new-instance v0, Lcom/narvii/chat/thread/-$$Lambda$ThreadHelper$2$-X2GWQAYaL_KyAqL9EWqLA-hbgY;

    invoke-direct {v0, p0}, Lcom/narvii/chat/thread/-$$Lambda$ThreadHelper$2$-X2GWQAYaL_KyAqL9EWqLA-hbgY;-><init>(Lcom/narvii/chat/thread/ThreadHelper$2;)V

    invoke-virtual {p1, p2, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const p2, 0x7f0f030a

    .line 116
    iget-object v2, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$source:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$bubble:Lcom/narvii/model/ChatBubble;

    iget-object v4, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$stickerCollectionId:Ljava/lang/String;

    iget-object v5, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$callback:Lcom/narvii/util/Callback;

    new-instance v6, Lcom/narvii/chat/thread/-$$Lambda$ThreadHelper$2$MSRcMYyjg-6mCYCQlmVsvTeHrT4;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/narvii/chat/thread/-$$Lambda$ThreadHelper$2$MSRcMYyjg-6mCYCQlmVsvTeHrT4;-><init>(Lcom/narvii/chat/thread/ThreadHelper$2;Ljava/lang/String;Lcom/narvii/model/ChatBubble;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    invoke-virtual {p1, p2, v6}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const p2, 0x7f0f0193

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p1, p2, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 118
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 120
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->this$0:Lcom/narvii/chat/thread/ThreadHelper;

    iget-object p2, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$source:Ljava/lang/String;

    iget-object v0, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$bubble:Lcom/narvii/model/ChatBubble;

    iget-object v1, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$stickerCollectionId:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$callback:Lcom/narvii/util/Callback;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/narvii/chat/thread/ThreadHelper;->access$100(Lcom/narvii/chat/thread/ThreadHelper;Ljava/lang/String;Lcom/narvii/model/ChatBubble;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    goto :goto_0

    .line 123
    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->this$0:Lcom/narvii/chat/thread/ThreadHelper;

    iget-object p2, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$source:Ljava/lang/String;

    iget-object v0, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$bubble:Lcom/narvii/model/ChatBubble;

    iget-object v1, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$stickerCollectionId:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/chat/thread/ThreadHelper$2;->val$callback:Lcom/narvii/util/Callback;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/narvii/chat/thread/ThreadHelper;->access$100(Lcom/narvii/chat/thread/ThreadHelper;Ljava/lang/String;Lcom/narvii/model/ChatBubble;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    :cond_5
    :goto_0
    return-void
.end method
