.class Lcom/narvii/monetization/utils/SetBubbleHintDialog$1;
.super Ljava/lang/Object;
.source "SetBubbleHintDialog.java"

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

    .line 108
    iput-object p1, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog$1;->this$0:Lcom/narvii/monetization/utils/SetBubbleHintDialog;

    iput-boolean p2, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog$1;->val$applyToAllChats:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 2

    .line 111
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 112
    iget-object p1, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog$1;->this$0:Lcom/narvii/monetization/utils/SetBubbleHintDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 113
    iget-object p1, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog$1;->this$0:Lcom/narvii/monetization/utils/SetBubbleHintDialog;

    iget-object p1, p1, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    nop

    goto :goto_0

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog$1;->this$0:Lcom/narvii/monetization/utils/SetBubbleHintDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0f1083

    invoke-static {p1, v1, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 125
    :goto_0
    iget-boolean p1, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog$1;->val$applyToAllChats:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog$1;->this$0:Lcom/narvii/monetization/utils/SetBubbleHintDialog;

    iget-object v0, p1, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->listener:Lcom/narvii/monetization/utils/SetBubbleHintDialog$ApplyAllChatListener;

    if-eqz v0, :cond_1

    .line 126
    invoke-static {p1}, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->access$000(Lcom/narvii/monetization/utils/SetBubbleHintDialog;)Lcom/narvii/model/ChatBubble;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/narvii/monetization/utils/SetBubbleHintDialog$ApplyAllChatListener;->onAppliedBubble(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 108
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/utils/SetBubbleHintDialog$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
