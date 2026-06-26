.class public Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;
.super Ljava/lang/Object;
.source "SingleChoiceDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/dialog/SingleChoiceDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private callBack:Lcom/narvii/util/dialog/SingleChoiceDialog$SingleChoiceDialogCallBack;

.field dialog:Lcom/narvii/util/dialog/SingleChoiceDialog;

.field private itemLayoutId:I

.field private itemNames:[I

.field private parentLayoutId:I

.field private showIndicator:Z

.field private title:Ljava/lang/String;

.field private titleColor:I


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lcom/narvii/util/dialog/SingleChoiceDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/narvii/util/dialog/SingleChoiceDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/util/dialog/SingleChoiceDialog$1;)V

    iput-object v0, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->dialog:Lcom/narvii/util/dialog/SingleChoiceDialog;

    return-void
.end method


# virtual methods
.method public addButton(IILandroid/view/View$OnClickListener;)Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->dialog:Lcom/narvii/util/dialog/SingleChoiceDialog;

    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    return-object p0
.end method

.method public addItems([I)Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->itemNames:[I

    return-object p0
.end method

.method public builder()Lcom/narvii/util/dialog/SingleChoiceDialog;
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->dialog:Lcom/narvii/util/dialog/SingleChoiceDialog;

    iget-object v1, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->dialog:Lcom/narvii/util/dialog/SingleChoiceDialog;

    iget v1, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->titleColor:I

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setTitleColor(I)V

    .line 148
    iget-object v0, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->dialog:Lcom/narvii/util/dialog/SingleChoiceDialog;

    iget v1, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->parentLayoutId:I

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/SingleChoiceDialog;->setContentView(I)V

    .line 149
    iget-object v0, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->dialog:Lcom/narvii/util/dialog/SingleChoiceDialog;

    iget v1, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->itemLayoutId:I

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/SingleChoiceDialog;->setItemLayoutId(I)V

    .line 150
    iget-object v0, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->dialog:Lcom/narvii/util/dialog/SingleChoiceDialog;

    iget-object v1, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->itemNames:[I

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/SingleChoiceDialog;->addItems([I)V

    .line 151
    iget-object v0, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->dialog:Lcom/narvii/util/dialog/SingleChoiceDialog;

    iget-boolean v1, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->showIndicator:Z

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/SingleChoiceDialog;->setShowIndicator(Z)V

    .line 152
    iget-object v0, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->dialog:Lcom/narvii/util/dialog/SingleChoiceDialog;

    iget-object v1, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->callBack:Lcom/narvii/util/dialog/SingleChoiceDialog$SingleChoiceDialogCallBack;

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/SingleChoiceDialog;->setSingleChoiceDialogCallBack(Lcom/narvii/util/dialog/SingleChoiceDialog$SingleChoiceDialogCallBack;)V

    .line 153
    iget-object v0, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->dialog:Lcom/narvii/util/dialog/SingleChoiceDialog;

    return-object v0
.end method

.method public setContainerLayoutId(I)Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;
    .locals 0

    .line 106
    iput p1, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->parentLayoutId:I

    return-object p0
.end method

.method public setItemLayoutId(I)Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;
    .locals 0

    .line 116
    iput p1, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->itemLayoutId:I

    return-object p0
.end method

.method public setShowIndicator(Z)Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;
    .locals 0

    .line 126
    iput-boolean p1, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->showIndicator:Z

    return-object p0
.end method

.method public setSingleChoiceCallBack(Lcom/narvii/util/dialog/SingleChoiceDialog$SingleChoiceDialogCallBack;)Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->callBack:Lcom/narvii/util/dialog/SingleChoiceDialog$SingleChoiceDialogCallBack;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setTitleColor(I)Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;
    .locals 0

    .line 141
    iput p1, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->titleColor:I

    return-object p0
.end method
