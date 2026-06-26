.class Lcom/narvii/poweruser/AdvancedOptionDialog$22;
.super Ljava/lang/Object;
.source "AdvancedOptionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/AdvancedOptionDialog;->deleteChatMessage(Lcom/narvii/model/ChatMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

.field final synthetic val$dialog:Lcom/narvii/util/dialog/AlertDialog;

.field final synthetic val$message:Lcom/narvii/model/ChatMessage;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/util/dialog/AlertDialog;Lcom/narvii/model/ChatMessage;)V
    .locals 0

    .line 1131
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$22;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    iput-object p2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$22;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    iput-object p3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$22;->val$message:Lcom/narvii/model/ChatMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1134
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$22;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1135
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$22;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 1137
    :cond_0
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$22;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$22$1;

    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$22$1;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog$22;)V

    invoke-static {p1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$2000(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/util/Callback;)V

    return-void
.end method
