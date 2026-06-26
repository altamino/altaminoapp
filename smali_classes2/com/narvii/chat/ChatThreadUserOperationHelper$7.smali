.class Lcom/narvii/chat/ChatThreadUserOperationHelper$7;
.super Ljava/lang/Object;
.source "ChatThreadUserOperationHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChatThreadUserOperationHelper;->showRemoveFromChatConfirmDialog(ZZLcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChatThreadUserOperationHelper;

.field final synthetic val$callback:Lcom/narvii/util/Callback;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/AlertDialog;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatThreadUserOperationHelper;Lcom/narvii/util/dialog/AlertDialog;Lcom/narvii/util/Callback;Landroid/widget/CheckBox;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper$7;->this$0:Lcom/narvii/chat/ChatThreadUserOperationHelper;

    iput-object p2, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper$7;->val$dlg:Lcom/narvii/util/dialog/AlertDialog;

    iput-object p3, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper$7;->val$callback:Lcom/narvii/util/Callback;

    iput-object p4, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper$7;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 196
    iget-object p1, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper$7;->val$dlg:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 197
    iget-object p1, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper$7;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper$7;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
