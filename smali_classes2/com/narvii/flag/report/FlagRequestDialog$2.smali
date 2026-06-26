.class Lcom/narvii/flag/report/FlagRequestDialog$2;
.super Ljava/lang/Object;
.source "FlagRequestDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/flag/report/FlagRequestDialog;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/flag/report/FlagRequestDialog;


# direct methods
.method constructor <init>(Lcom/narvii/flag/report/FlagRequestDialog;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/narvii/flag/report/FlagRequestDialog$2;->this$0:Lcom/narvii/flag/report/FlagRequestDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 83
    iget-object p1, p0, Lcom/narvii/flag/report/FlagRequestDialog$2;->this$0:Lcom/narvii/flag/report/FlagRequestDialog;

    iget-object p1, p1, Lcom/narvii/flag/report/FlagRequestDialog;->edtRequest:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 84
    iget-object p1, p0, Lcom/narvii/flag/report/FlagRequestDialog$2;->this$0:Lcom/narvii/flag/report/FlagRequestDialog;

    iget-object p1, p1, Lcom/narvii/flag/report/FlagRequestDialog;->edtRequest:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 85
    iget-object p1, p0, Lcom/narvii/flag/report/FlagRequestDialog$2;->this$0:Lcom/narvii/flag/report/FlagRequestDialog;

    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagRequestDialog;->isStatusOk()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 89
    :cond_0
    new-instance p1, Lcom/narvii/flag/report/FlagRequestDialog$2$1;

    invoke-direct {p1, p0}, Lcom/narvii/flag/report/FlagRequestDialog$2$1;-><init>(Lcom/narvii/flag/report/FlagRequestDialog$2;)V

    const-wide/16 v0, 0x64

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
