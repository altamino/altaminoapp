.class Lcom/narvii/poweruser/AdvanceUserUtils$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/AdvanceUserUtils;->showBanUserWarningDialog(Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/AdvanceUserUtils;

.field final synthetic val$callback:Lcom/narvii/util/Callback;

.field final synthetic val$warningDlg:Lcom/narvii/util/dialog/AlertDialog;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/AdvanceUserUtils;Lcom/narvii/util/dialog/AlertDialog;Lcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/AdvanceUserUtils$2;->this$0:Lcom/narvii/poweruser/AdvanceUserUtils;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/poweruser/AdvanceUserUtils$2;->val$warningDlg:Lcom/narvii/util/dialog/AlertDialog;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/poweruser/AdvanceUserUtils$2;->val$callback:Lcom/narvii/util/Callback;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/poweruser/AdvanceUserUtils$2;->val$warningDlg:Lcom/narvii/util/dialog/AlertDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/poweruser/AdvanceUserUtils$2;->val$callback:Lcom/narvii/util/Callback;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 18
    :cond_0
    return-void
.end method
