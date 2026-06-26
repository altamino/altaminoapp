.class Lcom/narvii/poweruser/AdvancedOptionDialog$26;
.super Ljava/lang/Object;
.source "AdvancedOptionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/AdvancedOptionDialog;->showStrikeDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/AlertDialog;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/util/dialog/AlertDialog;)V
    .locals 0

    .line 1236
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$26;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    iput-object p2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$26;->val$dlg:Lcom/narvii/util/dialog/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1239
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$26;->val$dlg:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1240
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$26;->val$dlg:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    :cond_0
    return-void
.end method
