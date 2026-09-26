.class public Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/util/dialog/SingleChoiceDialog;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1, v1}, Lcom/narvii/util/dialog/SingleChoiceDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/util/dialog/a;)V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->dialog:Lcom/narvii/util/dialog/SingleChoiceDialog;

    .line 12
    return-void
.end method


# virtual methods
.method public addButton(IILandroid/view/View$OnClickListener;)Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->dialog:Lcom/narvii/util/dialog/SingleChoiceDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 6
    return-object p0
.end method

.method public addItems([I)Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;
    .locals 0

    iput-object p1, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->itemNames:[I

    return-object p0
.end method

.method public builder()Lcom/narvii/util/dialog/SingleChoiceDialog;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->dialog:Lcom/narvii/util/dialog/SingleChoiceDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->title:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->dialog:Lcom/narvii/util/dialog/SingleChoiceDialog;

    .line 10
    .line 11
    iget v1, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->titleColor:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setTitleColor(I)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->dialog:Lcom/narvii/util/dialog/SingleChoiceDialog;

    .line 17
    .line 18
    iget v1, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->parentLayoutId:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/SingleChoiceDialog;->setContentView(I)V

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->dialog:Lcom/narvii/util/dialog/SingleChoiceDialog;

    .line 24
    .line 25
    iget v1, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->itemLayoutId:I

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/SingleChoiceDialog;->setItemLayoutId(I)V

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->dialog:Lcom/narvii/util/dialog/SingleChoiceDialog;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->itemNames:[I

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/SingleChoiceDialog;->addItems([I)V

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->dialog:Lcom/narvii/util/dialog/SingleChoiceDialog;

    .line 38
    .line 39
    iget-boolean v1, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->showIndicator:Z

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/SingleChoiceDialog;->setShowIndicator(Z)V

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->dialog:Lcom/narvii/util/dialog/SingleChoiceDialog;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->callBack:Lcom/narvii/util/dialog/SingleChoiceDialog$SingleChoiceDialogCallBack;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/SingleChoiceDialog;->setSingleChoiceDialogCallBack(Lcom/narvii/util/dialog/SingleChoiceDialog$SingleChoiceDialogCallBack;)V

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->dialog:Lcom/narvii/util/dialog/SingleChoiceDialog;

    .line 52
    return-object v0
.end method

.method public setContainerLayoutId(I)Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;
    .locals 0

    iput p1, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->parentLayoutId:I

    return-object p0
.end method

.method public setItemLayoutId(I)Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;
    .locals 0

    iput p1, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->itemLayoutId:I

    return-object p0
.end method

.method public setShowIndicator(Z)Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->showIndicator:Z

    return-object p0
.end method

.method public setSingleChoiceCallBack(Lcom/narvii/util/dialog/SingleChoiceDialog$SingleChoiceDialogCallBack;)Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;
    .locals 0

    iput-object p1, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->callBack:Lcom/narvii/util/dialog/SingleChoiceDialog$SingleChoiceDialogCallBack;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;
    .locals 0

    iput-object p1, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setTitleColor(I)Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;
    .locals 0

    iput p1, p0, Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;->titleColor:I

    return-object p0
.end method
