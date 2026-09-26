.class public Lcom/narvii/suggest/interest/NumberPickerDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "SourceFile"


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
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    new-instance p1, Landroid/util/SparseArray;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/suggest/interest/NumberPickerDialog;->specialDisplays:Landroid/util/SparseArray;

    .line 11
    .line 12
    .line 13
    const p1, 0x7f0d0607

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 17
    .line 18
    .line 19
    const p1, 0x7f0a0a37

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Landroid/widget/NumberPicker;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/narvii/suggest/interest/NumberPickerDialog;->picker:Landroid/widget/NumberPicker;

    .line 28
    const/4 v0, 0x0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 32
    .line 33
    new-instance v1, Lcom/narvii/suggest/interest/j;

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/narvii/suggest/interest/j;-><init>(Lcom/narvii/suggest/interest/NumberPickerDialog;)V

    .line 37
    .line 38
    .line 39
    const v2, 0x7f120402

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v2, v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 43
    .line 44
    const/high16 v0, 0x60000

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 48
    return-void
.end method

.method public static synthetic a(Lcom/narvii/suggest/interest/NumberPickerDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/suggest/interest/NumberPickerDialog;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method private getDisplayedValues()[Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/suggest/interest/NumberPickerDialog;->picker:Landroid/widget/NumberPicker;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getMinValue()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/suggest/interest/NumberPickerDialog;->picker:Landroid/widget/NumberPicker;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMaxValue()I

    .line 12
    move-result v1

    .line 13
    .line 14
    new-instance v2, Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    :goto_0
    if-gt v0, v1, :cond_1

    .line 20
    .line 21
    iget-object v3, p0, Lcom/narvii/suggest/interest/NumberPickerDialog;->specialDisplays:Landroid/util/SparseArray;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    check-cast v3, Ljava/lang/String;

    .line 28
    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    goto :goto_1

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v0, 0x0

    .line 45
    .line 46
    new-array v0, v0, [Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    check-cast v0, [Ljava/lang/String;

    .line 53
    return-object v0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/suggest/interest/NumberPickerDialog;->doneCallback:Lcom/narvii/util/Callback;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/suggest/interest/NumberPickerDialog;->picker:Landroid/widget/NumberPicker;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 21
    return-void
.end method


# virtual methods
.method public addSpecialValues(ILjava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/suggest/interest/NumberPickerDialog;->picker:Landroid/widget/NumberPicker;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getMinValue()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-lt p1, v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/suggest/interest/NumberPickerDialog;->picker:Landroid/widget/NumberPicker;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getMaxValue()I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-le p1, v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/narvii/suggest/interest/NumberPickerDialog;->specialDisplays:Landroid/util/SparseArray;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    :cond_1
    :goto_0
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

    iput-object p1, p0, Lcom/narvii/suggest/interest/NumberPickerDialog;->doneCallback:Lcom/narvii/util/Callback;

    return-void
.end method

.method public setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/suggest/interest/NumberPickerDialog;->picker:Landroid/widget/NumberPicker;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 6
    return-void
.end method

.method public setValue(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/suggest/interest/NumberPickerDialog;->picker:Landroid/widget/NumberPicker;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 6
    return-void
.end method

.method public setValueRange(II)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/suggest/interest/NumberPickerDialog;->picker:Landroid/widget/NumberPicker;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 6
    .line 7
    iget-object p2, p0, Lcom/narvii/suggest/interest/NumberPickerDialog;->picker:Landroid/widget/NumberPicker;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 11
    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/suggest/interest/NumberPickerDialog;->picker:Landroid/widget/NumberPicker;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/suggest/interest/NumberPickerDialog;->getDisplayedValues()[Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    .line 13
    return-void
.end method
