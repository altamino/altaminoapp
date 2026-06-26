.class Lcom/narvii/util/dialog/ActionSheetDialog$2;
.super Ljava/lang/Object;
.source "ActionSheetDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/dialog/ActionSheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/dialog/ActionSheetDialog;


# direct methods
.method constructor <init>(Lcom/narvii/util/dialog/ActionSheetDialog;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/narvii/util/dialog/ActionSheetDialog$2;->this$0:Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/narvii/lib/R$id;->action_sheet_cancel:I

    if-eq v0, v1, :cond_2

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/narvii/lib/R$id;->action_sheet_empty:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog$2;->this$0:Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-static {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->access$200(Lcom/narvii/util/dialog/ActionSheetDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog$2;->this$0:Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-static {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->access$200(Lcom/narvii/util/dialog/ActionSheetDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/util/dialog/ActionSheetDialog$2;->this$0:Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 172
    iget-object p1, p0, Lcom/narvii/util/dialog/ActionSheetDialog$2;->this$0:Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    :cond_1
    return-void

    .line 167
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/narvii/util/dialog/ActionSheetDialog$2;->this$0:Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    return-void
.end method
