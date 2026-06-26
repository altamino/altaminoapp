.class Lcom/narvii/poweruser/AdvancedOptionDialog$3$2;
.super Ljava/lang/Object;
.source "AdvancedOptionDialog.java"

# interfaces
.implements Lcom/narvii/util/dialog/SingleChoiceDialog$SingleChoiceDialogCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/AdvancedOptionDialog$3;->showBanUserChoiceDialog(Lcom/narvii/widget/FlagItemLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$3;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/AdvancedOptionDialog$3;)V
    .locals 0

    .line 532
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$3$2;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/narvii/util/dialog/SingleChoiceDialog;Landroid/view/View;ILjava/lang/String;)V
    .locals 0

    .line 535
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 536
    invoke-static {p3}, Lcom/narvii/master/CommunityHelper;->getDisableUserNoteType(I)I

    move-result p1

    .line 537
    iget-object p2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$3$2;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$3;

    iget-object p2, p2, Lcom/narvii/poweruser/AdvancedOptionDialog$3;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {p2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$100(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object p2

    instance-of p2, p2, Lcom/narvii/model/User;

    if-eqz p2, :cond_0

    .line 538
    iget-object p2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$3$2;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$3;

    iget-object p2, p2, Lcom/narvii/poweruser/AdvancedOptionDialog$3;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {p2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$100(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/User;

    invoke-static {p2, p3, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$1300(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/User;I)V

    :cond_0
    return-void
.end method
