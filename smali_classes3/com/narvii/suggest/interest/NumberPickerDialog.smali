.class public Lcom/narvii/suggest/interest/NumberPickerDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "NumberPickerDialog.java"


# instance fields
.field private doneCallback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final picker:Landroid/widget/NumberPicker;

.field private specialDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 19
    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/narvii/suggest/interest/NumberPickerDialog;->specialDisplays:Landroid/util/SparseArray;

    const p1, 0x7f0b0560

    .line 21
    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    const p1, 0x7f09079f

    .line 22
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/NumberPicker;

    iput-object p1, p0, Lcom/narvii/suggest/interest/NumberPickerDialog;->picker:Landroid/widget/NumberPicker;

    .line 23
    iget-object p1, p0, Lcom/narvii/suggest/interest/NumberPickerDialog;->picker:Landroid/widget/NumberPicker;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 24
    new-instance p1, Lcom/narvii/suggest/interest/-$$Lambda$NumberPickerDialog$oZSDX9bWagOE3m2oUvP4qbDsjM8;

    invoke-direct {p1, p0}, Lcom/narvii/suggest/interest/-$$Lambda$NumberPickerDialog$oZSDX9bWagOE3m2oUvP4qbDsjM8;-><init>(Lcom/narvii/suggest/interest/NumberPickerDialog;)V

    const v1, 0x7f0f03aa

    invoke-virtual {p0, v1, v0, p1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 31
    iget-object p1, p0, Lcom/narvii/suggest/interest/NumberPickerDialog;->picker:Landroid/widget/NumberPicker;

    const/high16 v0, 0x60000

    invoke-virtual {p1, v0}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    return-void
.end method

.method private getDisplayedValues()[Ljava/lang/String;
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/narvii/suggest/interest/NumberPickerDialog;->picker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v0

    .line 49
    iget-object v1, p0, Lcom/narvii/suggest/interest/NumberPickerDialog;->picker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v1

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-gt v0, v1, :cond_1

    .line 52
    iget-object v3, p0, Lcom/narvii/suggest/interest/NumberPickerDialog;->specialDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    .line 54
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 56
    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 59
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addSpecialValues(ILjava/lang/String;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/narvii/suggest/interest/NumberPickerDialog;->picker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/narvii/suggest/interest/NumberPickerDialog;->picker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/narvii/suggest/interest/NumberPickerDialog;->specialDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$new$0$NumberPickerDialog(Landroid/view/View;)V
    .locals 1

    .line 25
    iget-object p1, p0, Lcom/narvii/suggest/interest/NumberPickerDialog;->doneCallback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    .line 26
    iget-object v0, p0, Lcom/narvii/suggest/interest/NumberPickerDialog;->picker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method

.method public setDoneListener(Lcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/narvii/suggest/interest/NumberPickerDialog;->doneCallback:Lcom/narvii/util/Callback;

    return-void
.end method

.method public setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/narvii/suggest/interest/NumberPickerDialog;->picker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    return-void
.end method

.method public setValue(I)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/narvii/suggest/interest/NumberPickerDialog;->picker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setValue(I)V

    return-void
.end method

.method public setValueRange(II)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/narvii/suggest/interest/NumberPickerDialog;->picker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 37
    iget-object p2, p0, Lcom/narvii/suggest/interest/NumberPickerDialog;->picker:Landroid/widget/NumberPicker;

    invoke-virtual {p2, p1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/narvii/suggest/interest/NumberPickerDialog;->picker:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Lcom/narvii/suggest/interest/NumberPickerDialog;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 65
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method
