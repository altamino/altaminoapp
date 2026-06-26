.class Lcom/narvii/flag/report/FlagRequestDialog$1;
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

    .line 73
    iput-object p1, p0, Lcom/narvii/flag/report/FlagRequestDialog$1;->this$0:Lcom/narvii/flag/report/FlagRequestDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 76
    iget-object p1, p0, Lcom/narvii/flag/report/FlagRequestDialog$1;->this$0:Lcom/narvii/flag/report/FlagRequestDialog;

    iget-object p1, p1, Lcom/narvii/flag/report/FlagRequestDialog;->edtRequest:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 77
    iget-object p1, p0, Lcom/narvii/flag/report/FlagRequestDialog$1;->this$0:Lcom/narvii/flag/report/FlagRequestDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method
