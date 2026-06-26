.class Lcom/narvii/poweruser/AdvanceUserUtils$2;
.super Ljava/lang/Object;
.source "AdvanceUserUtils.java"

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

    .line 52
    iput-object p1, p0, Lcom/narvii/poweruser/AdvanceUserUtils$2;->this$0:Lcom/narvii/poweruser/AdvanceUserUtils;

    iput-object p2, p0, Lcom/narvii/poweruser/AdvanceUserUtils$2;->val$warningDlg:Lcom/narvii/util/dialog/AlertDialog;

    iput-object p3, p0, Lcom/narvii/poweruser/AdvanceUserUtils$2;->val$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 55
    iget-object p1, p0, Lcom/narvii/poweruser/AdvanceUserUtils$2;->val$warningDlg:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 56
    iget-object p1, p0, Lcom/narvii/poweruser/AdvanceUserUtils$2;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
