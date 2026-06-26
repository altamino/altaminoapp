.class Lcom/narvii/poweruser/AdvanceUserUtils$3;
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

.field final synthetic val$warningDlg:Lcom/narvii/util/dialog/AlertDialog;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/AdvanceUserUtils;Lcom/narvii/util/dialog/AlertDialog;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/narvii/poweruser/AdvanceUserUtils$3;->this$0:Lcom/narvii/poweruser/AdvanceUserUtils;

    iput-object p2, p0, Lcom/narvii/poweruser/AdvanceUserUtils$3;->val$warningDlg:Lcom/narvii/util/dialog/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/narvii/poweruser/AdvanceUserUtils$3;->val$warningDlg:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method
