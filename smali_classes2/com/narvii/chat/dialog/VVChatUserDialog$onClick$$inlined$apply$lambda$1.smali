.class final Lcom/narvii/chat/dialog/VVChatUserDialog$onClick$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "VVChatUserDialog.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/dialog/VVChatUserDialog;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVVChatUserDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VVChatUserDialog.kt\ncom/narvii/chat/dialog/VVChatUserDialog$onClick$1$1\n*L\n1#1,459:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $this_apply:Lcom/narvii/widget/ACMAlertDialog;

.field final synthetic this$0:Lcom/narvii/chat/dialog/VVChatUserDialog;


# direct methods
.method constructor <init>(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/chat/dialog/VVChatUserDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$onClick$$inlined$apply$lambda$1;->$this_apply:Lcom/narvii/widget/ACMAlertDialog;

    iput-object p2, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$onClick$$inlined$apply$lambda$1;->this$0:Lcom/narvii/chat/dialog/VVChatUserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 217
    iget-object p1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$onClick$$inlined$apply$lambda$1;->this$0:Lcom/narvii/chat/dialog/VVChatUserDialog;

    invoke-static {p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->access$isThreadFansOnly(Lcom/narvii/chat/dialog/VVChatUserDialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 218
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$onClick$$inlined$apply$lambda$1;->$this_apply:Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f0c50

    .line 219
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v0, 0x7f0f073e

    const/4 v1, 0x0

    .line 220
    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 221
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 223
    :cond_0
    const-class p1, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 224
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$onClick$$inlined$apply$lambda$1;->this$0:Lcom/narvii/chat/dialog/VVChatUserDialog;

    invoke-static {v0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->access$getChatThread$p(Lcom/narvii/chat/dialog/VVChatUserDialog;)Lcom/narvii/model/ChatThread;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "thread"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$onClick$$inlined$apply$lambda$1;->this$0:Lcom/narvii/chat/dialog/VVChatUserDialog;

    invoke-static {v0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->access$getNvContext$p(Lcom/narvii/chat/dialog/VVChatUserDialog;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
