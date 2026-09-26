.class Lcom/narvii/chat/ChatThreadUserOperationHelper$7;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper$7;->this$0:Lcom/narvii/chat/ChatThreadUserOperationHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper$7;->val$dlg:Lcom/narvii/util/dialog/AlertDialog;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper$7;->val$callback:Lcom/narvii/util/Callback;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper$7;->val$checkBox:Landroid/widget/CheckBox;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper$7;->val$dlg:Lcom/narvii/util/dialog/AlertDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper$7;->val$callback:Lcom/narvii/util/Callback;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper$7;->val$checkBox:Landroid/widget/CheckBox;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 23
    :cond_0
    return-void
.end method
