.class public abstract Lcom/narvii/media/color/BaseColorPickerFragment;
.super Lcom/narvii/app/NVFragment;
.source "BaseColorPickerFragment.java"


# instance fields
.field protected colorInput:Landroid/widget/EditText;

.field protected confirmIcon:Landroid/view/MenuItem;

.field private mColor:I

.field protected mColorPickerView:Lcom/narvii/widget/HSVColorPickerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->mColor:I

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/media/color/BaseColorPickerFragment;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->mColor:I

    return p0
.end method

.method static synthetic access$002(Lcom/narvii/media/color/BaseColorPickerFragment;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->mColor:I

    return p1
.end method

.method static synthetic access$100(Lcom/narvii/media/color/BaseColorPickerFragment;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/narvii/media/color/BaseColorPickerFragment;->setHexColorText(I)V

    return-void
.end method

.method private setHexColorText(I)V
    .locals 2

    const v0, 0xffffff

    and-int/2addr p1, v0

    .line 193
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 194
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->colorInput:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected doPickColor()V
    .locals 0

    .line 174
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method public getColor()I
    .locals 1

    .line 178
    iget v0, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->mColor:I

    return v0
.end method

.method public getCustomTheme()I
    .locals 1

    .line 50
    sget v0, Lcom/narvii/lib/R$style;->AminoTheme_Overlay:I

    return v0
.end method

.method protected abstract getDefaultColor()I
.end method

.method protected abstract getLayoutId()I
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$id;->actionbar_back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 57
    sget v0, Lcom/narvii/lib/R$drawable;->ic_back_cross:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method protected onColorChanged(I)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 36
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 62
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 63
    sget p2, Lcom/narvii/lib/R$string;->save:I

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->confirmIcon:Landroid/view/MenuItem;

    .line 64
    iget-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->confirmIcon:Landroid/view/MenuItem;

    new-instance p2, Lcom/narvii/util/ActionBarIcon;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$string;->fa_check:I

    invoke-direct {p2, v0, v1}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;I)V

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    .line 65
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/narvii/media/color/BaseColorPickerFragment;->getLayoutId()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 70
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/narvii/lib/R$string;->save:I

    if-ne v0, v1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/narvii/media/color/BaseColorPickerFragment;->startPickColor()V

    const/4 p1, 0x1

    return p1

    .line 74
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 41
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 42
    iget v0, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->mColor:I

    const-string v1, "color"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 86
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p2, :cond_0

    const-string v0, "color"

    .line 88
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->mColor:I

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/media/color/BaseColorPickerFragment;->getDefaultColor()I

    move-result p2

    iput p2, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->mColor:I

    .line 93
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/narvii/lib/R$layout;->color_picker_actionbar_layout:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 94
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->setActionBarTitleView(Landroid/view/View;)V

    .line 95
    sget v0, Lcom/narvii/lib/R$id;->color_input:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->colorInput:Landroid/widget/EditText;

    .line 97
    sget p2, Lcom/narvii/lib/R$id;->hsv_color_picker:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/HSVColorPickerView;

    iput-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->mColorPickerView:Lcom/narvii/widget/HSVColorPickerView;

    .line 99
    iget-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->colorInput:Landroid/widget/EditText;

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/text/InputFilter;

    const/4 v0, 0x0

    new-instance v1, Lcom/narvii/media/color/HexadecimalInputFilter;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/narvii/media/color/HexadecimalInputFilter;-><init>(Z)V

    aput-object v1, p2, v0

    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v0, p2, v2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 100
    iget-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->colorInput:Landroid/widget/EditText;

    new-instance p2, Lcom/narvii/media/color/BaseColorPickerFragment$1;

    invoke-direct {p2, p0}, Lcom/narvii/media/color/BaseColorPickerFragment$1;-><init>(Lcom/narvii/media/color/BaseColorPickerFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 115
    iget-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->colorInput:Landroid/widget/EditText;

    new-instance p2, Lcom/narvii/media/color/BaseColorPickerFragment$2;

    invoke-direct {p2, p0}, Lcom/narvii/media/color/BaseColorPickerFragment$2;-><init>(Lcom/narvii/media/color/BaseColorPickerFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 136
    iget-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->mColorPickerView:Lcom/narvii/widget/HSVColorPickerView;

    iget p2, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->mColor:I

    invoke-virtual {p1, p2}, Lcom/narvii/widget/HSVColorPickerView;->setColor(I)V

    .line 137
    iget-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->mColorPickerView:Lcom/narvii/widget/HSVColorPickerView;

    new-instance p2, Lcom/narvii/media/color/BaseColorPickerFragment$3;

    invoke-direct {p2, p0}, Lcom/narvii/media/color/BaseColorPickerFragment$3;-><init>(Lcom/narvii/media/color/BaseColorPickerFragment;)V

    invoke-virtual {p1, p2}, Lcom/narvii/widget/HSVColorPickerView;->setColorChangedListener(Lcom/narvii/widget/HSVColorPickerView$OnColorChangedListener;)V

    .line 151
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/narvii/media/color/BaseColorPickerFragment$4;

    invoke-direct {p2, p0}, Lcom/narvii/media/color/BaseColorPickerFragment$4;-><init>(Lcom/narvii/media/color/BaseColorPickerFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->mColor:I

    invoke-direct {p0, p1}, Lcom/narvii/media/color/BaseColorPickerFragment;->setHexColorText(I)V

    return-void
.end method

.method protected setColor(I)V
    .locals 1

    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    .line 183
    iget v0, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->mColor:I

    if-ne p1, v0, :cond_0

    return-void

    .line 186
    :cond_0
    iput p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->mColor:I

    .line 187
    iget p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->mColor:I

    invoke-virtual {p0, p1}, Lcom/narvii/media/color/BaseColorPickerFragment;->onColorChanged(I)V

    .line 188
    iget-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->mColorPickerView:Lcom/narvii/widget/HSVColorPickerView;

    iget v0, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->mColor:I

    invoke-virtual {p1, v0}, Lcom/narvii/widget/HSVColorPickerView;->setColor(I)V

    .line 189
    iget p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->mColor:I

    invoke-direct {p0, p1}, Lcom/narvii/media/color/BaseColorPickerFragment;->setHexColorText(I)V

    return-void
.end method

.method protected startPickColor()V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/narvii/media/color/BaseColorPickerFragment;->colorInput:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/media/color/BaseColorPickerFragment;->doPickColor()V

    return-void

    .line 167
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$string;->invalid_color_code:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method
