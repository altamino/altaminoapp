.class Lcom/narvii/poweruser/AdvancedOptionDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$3;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/poweruser/AdvancedOptionDialog$3;Lcom/narvii/widget/FlagItemLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$3;->showBanUserChoiceDialog(Lcom/narvii/widget/FlagItemLayout;)V

    return-void
.end method

.method private showBanUserChoiceDialog(Lcom/narvii/widget/FlagItemLayout;)V
    .locals 3

    .line 1
    const/4 v0, 0x7

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    .line 6
    fill-array-data v0, :array_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$3;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 9
    .line 10
    .line 11
    const v2, 0x7f1200a2

    .line 12
    .line 13
    .line 14
    invoke-static {v1, p1, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->p(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    .line 15
    move-result p1

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    new-instance p1, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$3;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->b(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, v1}, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->addItems([I)Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;

    .line 32
    move-result-object p1

    .line 33
    const/4 v0, 0x0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->setShowIndicator(Z)Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$3;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    const v2, 0x7f120fb4

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v1}, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$3;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    .line 71
    const v2, 0x7f06009e

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 75
    move-result v1

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v1}, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->setTitleColor(I)Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    new-instance v1, Lcom/narvii/poweruser/AdvancedOptionDialog$3$3;

    .line 82
    .line 83
    .line 84
    invoke-direct {v1, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$3$3;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog$3;)V

    .line 85
    .line 86
    .line 87
    const v2, 0x7f1201e2

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v2, v0, v1}, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->addButton(IILandroid/view/View$OnClickListener;)Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$3$2;

    .line 94
    .line 95
    .line 96
    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$3$2;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog$3;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->setSingleChoiceCallBack(Lcom/narvii/util/dialog/SingleChoiceDialog$SingleChoiceDialogCallBack;)Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->builder()Lcom/narvii/util/dialog/SingleChoiceDialog;

    .line 104
    move-result-object p1

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 108
    :cond_0
    return-void

    .line 109
    .line 110
    :array_0
    .array-data 4
        0x7f12078c
        0x7f120773
        0x7f12079c
        0x7f120786
        0x7f1207a8
        0x7f1207a0
        0x7f12078d
    .end array-data
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$3;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$3;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 14
    .line 15
    :cond_0
    instance-of v0, p1, Lcom/narvii/widget/FlagItemLayout;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    return-void

    .line 19
    .line 20
    :cond_1
    new-instance v0, Lcom/narvii/poweruser/AdvanceUserUtils;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$3;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->b(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Lcom/narvii/poweruser/AdvanceUserUtils;-><init>(Lcom/narvii/app/NVContext;)V

    .line 30
    .line 31
    new-instance v1, Lcom/narvii/poweruser/AdvancedOptionDialog$3$1;

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$3$1;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog$3;Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/narvii/poweruser/AdvanceUserUtils;->showBanUserWarningDialog(Lcom/narvii/util/Callback;)V

    .line 38
    return-void
.end method
