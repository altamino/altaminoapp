.class Lcom/narvii/poweruser/AdvancedOptionDialog$3$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$3$2;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$3;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/narvii/util/dialog/SingleChoiceDialog;Landroid/view/View;ILjava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 4
    .line 5
    .line 6
    invoke-static {p3}, Lcom/narvii/master/CommunityHelper;->getDisableUserNoteType(I)I

    .line 7
    move-result p1

    .line 8
    .line 9
    iget-object p2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$3$2;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$3;

    .line 10
    .line 11
    iget-object p2, p2, Lcom/narvii/poweruser/AdvancedOptionDialog$3;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 12
    .line 13
    .line 14
    invoke-static {p2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->c(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    instance-of p2, p2, Lcom/narvii/model/User;

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    iget-object p2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$3$2;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$3;

    .line 22
    .line 23
    iget-object p2, p2, Lcom/narvii/poweruser/AdvancedOptionDialog$3;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 24
    .line 25
    .line 26
    invoke-static {p2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->c(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    .line 27
    move-result-object p3

    .line 28
    .line 29
    check-cast p3, Lcom/narvii/model/User;

    .line 30
    .line 31
    .line 32
    invoke-static {p2, p3, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->f(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/User;I)V

    .line 33
    :cond_0
    return-void
.end method
