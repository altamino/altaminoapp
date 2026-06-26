.class final Lcom/narvii/chat/dialog/VVChatUserDialog$showRemoveAsSpeakerConfirmDialog$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "VVChatUserDialog.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/dialog/VVChatUserDialog;->showRemoveAsSpeakerConfirmDialog(Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $callback$inlined:Lcom/narvii/util/Callback;

.field final synthetic $this_apply:Lcom/narvii/widget/ACMAlertDialog;

.field final synthetic this$0:Lcom/narvii/chat/dialog/VVChatUserDialog;


# direct methods
.method constructor <init>(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/chat/dialog/VVChatUserDialog;Lcom/narvii/util/Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$showRemoveAsSpeakerConfirmDialog$$inlined$apply$lambda$1;->$this_apply:Lcom/narvii/widget/ACMAlertDialog;

    iput-object p2, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$showRemoveAsSpeakerConfirmDialog$$inlined$apply$lambda$1;->this$0:Lcom/narvii/chat/dialog/VVChatUserDialog;

    iput-object p3, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$showRemoveAsSpeakerConfirmDialog$$inlined$apply$lambda$1;->$callback$inlined:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 379
    iget-object p1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$showRemoveAsSpeakerConfirmDialog$$inlined$apply$lambda$1;->$this_apply:Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p1}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    .line 380
    iget-object p1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$showRemoveAsSpeakerConfirmDialog$$inlined$apply$lambda$1;->$callback$inlined:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
