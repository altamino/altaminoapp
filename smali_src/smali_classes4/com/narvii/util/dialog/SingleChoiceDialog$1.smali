.class Lcom/narvii/util/dialog/SingleChoiceDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$1;->this$0:Lcom/narvii/util/dialog/SingleChoiceDialog;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$1;->val$typeStrId:I

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$1;->val$str:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$1;->this$0:Lcom/narvii/util/dialog/SingleChoiceDialog;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/util/dialog/SingleChoiceDialog;->singleChoiceDialogCallBack:Lcom/narvii/util/dialog/SingleChoiceDialog$SingleChoiceDialogCallBack;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget v2, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$1;->val$typeStrId:I

    .line 9
    .line 10
    iget-object v3, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$1;->val$str:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v0, p1, v2, v3}, Lcom/narvii/util/dialog/SingleChoiceDialog$SingleChoiceDialogCallBack;->onItemSelected(Lcom/narvii/util/dialog/SingleChoiceDialog;Landroid/view/View;ILjava/lang/String;)V

    .line 14
    :cond_0
    return-void
.end method
