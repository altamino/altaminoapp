.class Lcom/narvii/monetization/utils/SetBubbleHintDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/utils/SetBubbleHintDialog;->sendSetBubbleRequest(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/utils/SetBubbleHintDialog;

.field final synthetic val$applyToAllChats:Z


# direct methods
.method constructor <init>(Lcom/narvii/monetization/utils/SetBubbleHintDialog;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog$1;->this$0:Lcom/narvii/monetization/utils/SetBubbleHintDialog;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog$1;->val$applyToAllChats:Z

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog$1;->this$0:Lcom/narvii/monetization/utils/SetBubbleHintDialog;

    .line 3
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    iget-object p1, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog$1;->this$0:Lcom/narvii/monetization/utils/SetBubbleHintDialog;

    .line 4
    iget-object p1, p1, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog$1;->this$0:Lcom/narvii/monetization/utils/SetBubbleHintDialog;

    .line 5
    iget-object p1, p1, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    const-string v1, "statistics"

    invoke-virtual {p1, v1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    const-string v1, "Picks a chat bubble"

    .line 6
    invoke-interface {p1, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    const-string v1, "Picks a chat bubble Total"

    invoke-virtual {p1, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog$1;->this$0:Lcom/narvii/monetization/utils/SetBubbleHintDialog;

    invoke-static {v1}, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->a(Lcom/narvii/monetization/utils/SetBubbleHintDialog;)Lcom/narvii/model/ChatBubble;

    move-result-object v1

    iget v1, v1, Lcom/narvii/model/ChatBubble;->type:I

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Customized"

    .line 7
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog$1;->val$applyToAllChats:Z

    if-eqz v0, :cond_1

    const-string v0, "All Chats"

    goto :goto_1

    :cond_1
    const-string v0, "Current Chat"

    :goto_1
    const-string v1, "Chat"

    .line 8
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    const-string v0, "Source"

    const-string v1, "Store Product Detail Page"

    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog$1;->this$0:Lcom/narvii/monetization/utils/SetBubbleHintDialog;

    .line 10
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f121182

    invoke-static {p1, v1, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :goto_2
    iget-boolean p1, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog$1;->val$applyToAllChats:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog$1;->this$0:Lcom/narvii/monetization/utils/SetBubbleHintDialog;

    .line 11
    iget-object v0, p1, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->listener:Lcom/narvii/monetization/utils/SetBubbleHintDialog$ApplyAllChatListener;

    if-eqz v0, :cond_3

    .line 12
    invoke-static {p1}, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->a(Lcom/narvii/monetization/utils/SetBubbleHintDialog;)Lcom/narvii/model/ChatBubble;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/narvii/monetization/utils/SetBubbleHintDialog$ApplyAllChatListener;->onAppliedBubble(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/utils/SetBubbleHintDialog$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
