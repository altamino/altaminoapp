.class public Lcom/narvii/media/color/BackgroundColorFragment;
.super Lcom/narvii/media/color/BaseColorPickerFragment;
.source "BackgroundColorFragment.java"


# instance fields
.field private customColorPreference:Lcom/narvii/media/color/CustomColorPreference;

.field private defaultColorRecyclerView:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/narvii/media/color/BaseColorPickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected doPickColor()V
    .locals 3

    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 91
    invoke-virtual {p0}, Lcom/narvii/media/color/BaseColorPickerFragment;->getColor()I

    move-result v1

    const-string v2, "color"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 92
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 93
    iget-object v0, p0, Lcom/narvii/media/color/BackgroundColorFragment;->customColorPreference:Lcom/narvii/media/color/CustomColorPreference;

    invoke-virtual {p0}, Lcom/narvii/media/color/BaseColorPickerFragment;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/media/color/CustomColorPreference;->addColorIntoCustomList(I)V

    .line 94
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 95
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method protected getDefaultColor()I
    .locals 2

    const-string v0, "color"

    .line 33
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/narvii/media/color/BackgroundColorFragment;->customColorPreference:Lcom/narvii/media/color/CustomColorPreference;

    invoke-virtual {v0}, Lcom/narvii/media/color/CustomColorPreference;->getCustomColorList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 37
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const-string v0, "config"

    .line 39
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    const-string v1, "themePack"

    .line 40
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/theme/ThemePackService;

    .line 41
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/narvii/theme/ThemePackService;->getThemeColor(I)I

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .line 50
    sget v0, Lcom/narvii/lib/R$layout;->fragment_background_color:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 76
    invoke-super {p0, p1}, Lcom/narvii/media/color/BaseColorPickerFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 78
    sget v0, Lcom/narvii/lib/R$string;->cancel:I

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVActivity;->setActionBarLeftTextView(I)Landroid/widget/TextView;

    .line 79
    sget v0, Lcom/narvii/lib/R$string;->save:I

    new-instance v1, Lcom/narvii/media/color/BackgroundColorFragment$2;

    invoke-direct {v1, p0}, Lcom/narvii/media/color/BackgroundColorFragment$2;-><init>(Lcom/narvii/media/color/BackgroundColorFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 85
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method protected onColorChanged(I)V
    .locals 1

    .line 100
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 102
    iget-object p1, p0, Lcom/narvii/media/color/BackgroundColorFragment;->defaultColorRecyclerView:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p1}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->removeCurrentSelectColor()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 26
    invoke-super {p0, p1}, Lcom/narvii/media/color/BaseColorPickerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 27
    sget p1, Lcom/narvii/lib/R$string;->background_color:I

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 28
    new-instance p1, Lcom/narvii/media/color/CustomColorPreference;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/media/color/CustomColorPreference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/media/color/BackgroundColorFragment;->customColorPreference:Lcom/narvii/media/color/CustomColorPreference;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 55
    invoke-super {p0, p1, p2}, Lcom/narvii/media/color/BaseColorPickerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 57
    sget p2, Lcom/narvii/lib/R$id;->default_background_picker:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;

    iput-object p1, p0, Lcom/narvii/media/color/BackgroundColorFragment;->defaultColorRecyclerView:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;

    .line 58
    iget-object p1, p0, Lcom/narvii/media/color/BackgroundColorFragment;->customColorPreference:Lcom/narvii/media/color/CustomColorPreference;

    invoke-virtual {p1}, Lcom/narvii/media/color/CustomColorPreference;->getCustomColorList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 59
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    invoke-virtual {p0}, Lcom/narvii/media/color/BaseColorPickerFragment;->getColor()I

    move-result p2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p2, p1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/narvii/media/color/BackgroundColorFragment;->defaultColorRecyclerView:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;

    invoke-virtual {p0}, Lcom/narvii/media/color/BaseColorPickerFragment;->getColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->setCurrentSelectColor(I)V

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/color/BackgroundColorFragment;->defaultColorRecyclerView:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;

    iget-object p2, p0, Lcom/narvii/media/color/BackgroundColorFragment;->customColorPreference:Lcom/narvii/media/color/CustomColorPreference;

    invoke-virtual {p2}, Lcom/narvii/media/color/CustomColorPreference;->getCustomColorList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->setCustomColorList(Ljava/util/List;)V

    .line 64
    iget-object p1, p0, Lcom/narvii/media/color/BackgroundColorFragment;->defaultColorRecyclerView:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;

    new-instance p2, Lcom/narvii/media/color/BackgroundColorFragment$1;

    invoke-direct {p2, p0}, Lcom/narvii/media/color/BackgroundColorFragment$1;-><init>(Lcom/narvii/media/color/BackgroundColorFragment;)V

    invoke-virtual {p1, p2}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->setOnColorSelectedListener(Lcom/narvii/media/color/DefaultBackgroundRecyclerView$OnColorSelectedListener;)V

    .line 71
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/media/color/BaseColorPickerFragment;->getColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
