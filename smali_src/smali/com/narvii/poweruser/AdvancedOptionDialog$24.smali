.class Lcom/narvii/poweruser/AdvancedOptionDialog$24;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$24;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$24;->val$dlg:Lcom/narvii/util/dialog/AlertDialog;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$24;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$24;->val$dlg:Lcom/narvii/util/dialog/AlertDialog;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 11
    .line 12
    new-instance p1, Lcom/narvii/poweruser/AdvanceUserUtils;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$24;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->b(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, v0}, Lcom/narvii/poweruser/AdvanceUserUtils;-><init>(Lcom/narvii/app/NVContext;)V

    .line 22
    .line 23
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$24$1;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$24$1;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog$24;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/narvii/poweruser/AdvanceUserUtils;->showStrikeWarningDialog(Lcom/narvii/util/Callback;)V

    .line 30
    return-void
.end method
