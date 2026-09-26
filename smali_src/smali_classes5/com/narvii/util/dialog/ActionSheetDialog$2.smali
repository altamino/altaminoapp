.class Lcom/narvii/util/dialog/ActionSheetDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/dialog/ActionSheetDialog$2;->this$0:Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    sget v1, Lcom/narvii/lib/R$id;->action_sheet_cancel:I

    .line 7
    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 12
    move-result v0

    .line 13
    .line 14
    sget v1, Lcom/narvii/lib/R$id;->action_sheet_empty:I

    .line 15
    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog$2;->this$0:Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->c(Lcom/narvii/util/dialog/ActionSheetDialog;)Landroid/content/DialogInterface$OnClickListener;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog$2;->this$0:Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->c(Lcom/narvii/util/dialog/ActionSheetDialog;)Landroid/content/DialogInterface$OnClickListener;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/util/dialog/ActionSheetDialog$2;->this$0:Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 37
    move-result p1

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, v1, p1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/util/dialog/ActionSheetDialog$2;->this$0:Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 46
    :cond_1
    return-void

    .line 47
    .line 48
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/narvii/util/dialog/ActionSheetDialog$2;->this$0:Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    .line 52
    return-void
.end method
