.class public abstract Lcom/narvii/media/color/BaseColorPickerFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"


# instance fields
.field protected colorInput:Landroid/widget/EditText;

.field protected confirmIcon:Landroid/view/MenuItem;

.field private mColor:I

.field protected mColorPickerView:Lcom/narvii/widget/HSVColorPickerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->mColor:I

    .line 7
    return-void
.end method

.method static bridge synthetic n(Lcom/narvii/media/color/BaseColorPickerFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->mColor:I

    return p0
.end method

.method static bridge synthetic o(Lcom/narvii/media/color/BaseColorPickerFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->mColor:I

    return-void
.end method

.method static bridge synthetic p(Lcom/narvii/media/color/BaseColorPickerFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/media/color/BaseColorPickerFragment;->setHexColorText(I)V

    return-void
.end method

.method private setHexColorText(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    const v0, 0xffffff

    .line 4
    and-int/2addr p1, v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x6

    .line 14
    .line 15
    if-ge v0, v1, :cond_0

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    const-string v1, "0"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->colorInput:Landroid/widget/EditText;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected doPickColor()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 4
    return-void
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->mColor:I

    return v0
.end method

.method public getCustomTheme()I
    .locals 1

    sget v0, Lcom/narvii/lib/R$style;->AminoTheme_Overlay:I

    return v0
.end method

.method protected abstract getDefaultColor()I
.end method

.method protected abstract getLayoutId()I
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    sget v0, Lcom/narvii/lib/R$id;->actionbar_back:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    check-cast p1, Landroid/widget/ImageView;

    .line 24
    .line 25
    sget v0, Lcom/narvii/lib/R$drawable;->ic_back_cross:I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 29
    return-void
.end method

.method protected onColorChanged(I)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 8
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    sget v0, Lcom/narvii/lib/R$string;->save:I

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, p2, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->confirmIcon:Landroid/view/MenuItem;

    .line 13
    .line 14
    new-instance p2, Lcom/narvii/util/ActionBarIcon;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    sget v1, Lcom/narvii/lib/R$string;->fa_check:I

    .line 21
    .line 22
    .line 23
    invoke-direct {p2, v0, v1}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;I)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x2

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 32
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/media/color/BaseColorPickerFragment;->getLayoutId()I

    .line 4
    move-result p3

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    sget v1, Lcom/narvii/lib/R$string;->save:I

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/media/color/BaseColorPickerFragment;->startPickColor()V

    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "color"

    .line 6
    .line 7
    iget v1, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->mColor:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 11
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const-string v0, "color"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 11
    move-result p2

    .line 12
    .line 13
    iput p2, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->mColor:I

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/media/color/BaseColorPickerFragment;->getDefaultColor()I

    .line 18
    move-result p2

    .line 19
    .line 20
    iput p2, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->mColor:I

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    sget v0, Lcom/narvii/lib/R$layout;->color_picker_actionbar_layout:I

    .line 27
    const/4 v1, 0x0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->setActionBarTitleView(Landroid/view/View;)V

    .line 35
    .line 36
    sget v0, Lcom/narvii/lib/R$id;->color_input:I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    move-result-object p2

    .line 41
    .line 42
    check-cast p2, Landroid/widget/EditText;

    .line 43
    .line 44
    iput-object p2, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->colorInput:Landroid/widget/EditText;

    .line 45
    .line 46
    sget p2, Lcom/narvii/lib/R$id;->hsv_color_picker:I

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    check-cast p1, Lcom/narvii/widget/HSVColorPickerView;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->mColorPickerView:Lcom/narvii/widget/HSVColorPickerView;

    .line 55
    .line 56
    iget-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->colorInput:Landroid/widget/EditText;

    .line 57
    const/4 p2, 0x2

    .line 58
    .line 59
    new-array p2, p2, [Landroid/text/InputFilter;

    .line 60
    .line 61
    new-instance v0, Lcom/narvii/media/color/HexadecimalInputFilter;

    .line 62
    const/4 v1, 0x1

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, v1}, Lcom/narvii/media/color/HexadecimalInputFilter;-><init>(Z)V

    .line 66
    const/4 v2, 0x0

    .line 67
    .line 68
    aput-object v0, p2, v2

    .line 69
    .line 70
    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    .line 71
    const/4 v2, 0x6

    .line 72
    .line 73
    .line 74
    invoke-direct {v0, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 75
    .line 76
    aput-object v0, p2, v1

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 80
    .line 81
    iget-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->colorInput:Landroid/widget/EditText;

    .line 82
    .line 83
    new-instance p2, Lcom/narvii/media/color/BaseColorPickerFragment$1;

    .line 84
    .line 85
    .line 86
    invoke-direct {p2, p0}, Lcom/narvii/media/color/BaseColorPickerFragment$1;-><init>(Lcom/narvii/media/color/BaseColorPickerFragment;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 90
    .line 91
    iget-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->colorInput:Landroid/widget/EditText;

    .line 92
    .line 93
    new-instance p2, Lcom/narvii/media/color/BaseColorPickerFragment$2;

    .line 94
    .line 95
    .line 96
    invoke-direct {p2, p0}, Lcom/narvii/media/color/BaseColorPickerFragment$2;-><init>(Lcom/narvii/media/color/BaseColorPickerFragment;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 100
    .line 101
    iget-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->mColorPickerView:Lcom/narvii/widget/HSVColorPickerView;

    .line 102
    .line 103
    iget p2, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->mColor:I

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2}, Lcom/narvii/widget/HSVColorPickerView;->setColor(I)V

    .line 107
    .line 108
    iget-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->mColorPickerView:Lcom/narvii/widget/HSVColorPickerView;

    .line 109
    .line 110
    new-instance p2, Lcom/narvii/media/color/BaseColorPickerFragment$3;

    .line 111
    .line 112
    .line 113
    invoke-direct {p2, p0}, Lcom/narvii/media/color/BaseColorPickerFragment$3;-><init>(Lcom/narvii/media/color/BaseColorPickerFragment;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, p2}, Lcom/narvii/widget/HSVColorPickerView;->setColorChangedListener(Lcom/narvii/widget/HSVColorPickerView$OnColorChangedListener;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 120
    move-result-object p1

    .line 121
    .line 122
    new-instance p2, Lcom/narvii/media/color/BaseColorPickerFragment$4;

    .line 123
    .line 124
    .line 125
    invoke-direct {p2, p0}, Lcom/narvii/media/color/BaseColorPickerFragment$4;-><init>(Lcom/narvii/media/color/BaseColorPickerFragment;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    .line 130
    iget p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->mColor:I

    .line 131
    .line 132
    .line 133
    invoke-direct {p0, p1}, Lcom/narvii/media/color/BaseColorPickerFragment;->setHexColorText(I)V

    .line 134
    return-void
.end method

.method protected setColor(I)V
    .locals 1

    .line 1
    .line 2
    const/high16 v0, -0x1000000

    .line 3
    or-int/2addr p1, v0

    .line 4
    .line 5
    iget v0, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->mColor:I

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    return-void

    .line 9
    .line 10
    :cond_0
    iput p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->mColor:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/narvii/media/color/BaseColorPickerFragment;->onColorChanged(I)V

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->mColorPickerView:Lcom/narvii/widget/HSVColorPickerView;

    .line 16
    .line 17
    iget v0, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->mColor:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/narvii/widget/HSVColorPickerView;->setColor(I)V

    .line 21
    .line 22
    iget p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->mColor:I

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1}, Lcom/narvii/media/color/BaseColorPickerFragment;->setHexColorText(I)V

    .line 26
    return-void
.end method

.method protected startPickColor()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->colorInput:Landroid/widget/EditText;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x6

    .line 14
    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/media/color/BaseColorPickerFragment;->doPickColor()V

    .line 20
    return-void

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    sget v1, Lcom/narvii/lib/R$string;->invalid_color_code:I

    .line 27
    const/4 v2, 0x0

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 35
    return-void
.end method
