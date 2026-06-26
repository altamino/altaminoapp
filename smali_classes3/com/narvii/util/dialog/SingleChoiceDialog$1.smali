.class Lcom/narvii/util/dialog/SingleChoiceDialog$1;
.super Ljava/lang/Object;
.source "SingleChoiceDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/dialog/SingleChoiceDialog;->addItems([I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/dialog/SingleChoiceDialog;

.field final synthetic val$str:Ljava/lang/String;

.field final synthetic val$typeStrId:I


# direct methods
.method constructor <init>(Lcom/narvii/util/dialog/SingleChoiceDialog;ILjava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$1;->this$0:Lcom/narvii/util/dialog/SingleChoiceDialog;

    iput p2, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$1;->val$typeStrId:I

    iput-object p3, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$1;->val$str:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$1;->this$0:Lcom/narvii/util/dialog/SingleChoiceDialog;

    iget-object v1, v0, Lcom/narvii/util/dialog/SingleChoiceDialog;->singleChoiceDialogCallBack:Lcom/narvii/util/dialog/SingleChoiceDialog$SingleChoiceDialogCallBack;

    if-eqz v1, :cond_0

    .line 83
    iget v2, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$1;->val$typeStrId:I

    iget-object v3, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$1;->val$str:Ljava/lang/String;

    invoke-interface {v1, v0, p1, v2, v3}, Lcom/narvii/util/dialog/SingleChoiceDialog$SingleChoiceDialogCallBack;->onItemSelected(Lcom/narvii/util/dialog/SingleChoiceDialog;Landroid/view/View;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
