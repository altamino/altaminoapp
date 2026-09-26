.class Lcom/narvii/flag/report/FlagRequestDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/flag/report/FlagRequestDialog$2;->this$0:Lcom/narvii/flag/report/FlagRequestDialog;

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
    iget-object p1, p0, Lcom/narvii/flag/report/FlagRequestDialog$2;->this$0:Lcom/narvii/flag/report/FlagRequestDialog;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/flag/report/FlagRequestDialog;->edtRequest:Landroid/widget/EditText;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/flag/report/FlagRequestDialog$2;->this$0:Lcom/narvii/flag/report/FlagRequestDialog;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/narvii/flag/report/FlagRequestDialog;->edtRequest:Landroid/widget/EditText;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/flag/report/FlagRequestDialog$2;->this$0:Lcom/narvii/flag/report/FlagRequestDialog;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagRequestDialog;->isStatusOk()Z

    .line 20
    move-result p1

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    return-void

    .line 24
    .line 25
    :cond_0
    new-instance p1, Lcom/narvii/flag/report/FlagRequestDialog$2$1;

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, p0}, Lcom/narvii/flag/report/FlagRequestDialog$2$1;-><init>(Lcom/narvii/flag/report/FlagRequestDialog$2;)V

    .line 29
    .line 30
    const-wide/16 v0, 0x64

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 34
    return-void
.end method
