.class Lcom/narvii/poweruser/AdvancedOptionDialog$3;
.super Ljava/lang/Object;
.source "AdvancedOptionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/poweruser/AdvancedOptionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/AdvancedOptionDialog;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$3;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1200(Lcom/narvii/poweruser/AdvancedOptionDialog$3;Lcom/narvii/widget/FlagItemLayout;)V
    .locals 0

    .line 475
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$3;->showBanUserChoiceDialog(Lcom/narvii/widget/FlagItemLayout;)V

    return-void
.end method

.method private showBanUserChoiceDialog(Lcom/narvii/widget/FlagItemLayout;)V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 517
    fill-array-data v0, :array_0

    .line 520
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$3;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    const v2, 0x7f0f0099

    invoke-static {v1, p1, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$000(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 521
    new-instance p1, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;

    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$3;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$200(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 522
    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->addItems([I)Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 523
    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->setShowIndicator(Z)Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$3;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 524
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0e91

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$3;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 525
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->setTitleColor(I)Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;

    move-result-object p1

    const v1, 0x7f0f0193

    new-instance v2, Lcom/narvii/poweruser/AdvancedOptionDialog$3$3;

    invoke-direct {v2, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$3$3;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog$3;)V

    .line 526
    invoke-virtual {p1, v1, v0, v2}, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->addButton(IILandroid/view/View$OnClickListener;)Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$3$2;

    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$3$2;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog$3;)V

    .line 532
    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->setSingleChoiceCallBack(Lcom/narvii/util/dialog/SingleChoiceDialog$SingleChoiceDialogCallBack;)Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;

    move-result-object p1

    .line 542
    invoke-virtual {p1}, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->builder()Lcom/narvii/util/dialog/SingleChoiceDialog;

    move-result-object p1

    .line 543
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x7f0f06e3
        0x7f0f06c7
        0x7f0f06f3
        0x7f0f06da
        0x7f0f06ff
        0x7f0f06f7
        0x7f0f06e4
    .end array-data
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 478
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$3;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$3;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 481
    :cond_0
    instance-of v0, p1, Lcom/narvii/widget/FlagItemLayout;

    if-nez v0, :cond_1

    return-void

    .line 482
    :cond_1
    new-instance v0, Lcom/narvii/poweruser/AdvanceUserUtils;

    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$3;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$200(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/poweruser/AdvanceUserUtils;-><init>(Lcom/narvii/app/NVContext;)V

    .line 483
    new-instance v1, Lcom/narvii/poweruser/AdvancedOptionDialog$3$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$3$1;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog$3;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/narvii/poweruser/AdvanceUserUtils;->showBanUserWarningDialog(Lcom/narvii/util/Callback;)V

    return-void
.end method
