.class public Lcom/narvii/media/color/BackgroundColorFragment;
.super Lcom/narvii/media/color/BaseColorPickerFragment;
.source "SourceFile"


# instance fields
.field private customColorPreference:Lcom/narvii/media/color/CustomColorPreference;

.field private defaultColorRecyclerView:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/media/color/BaseColorPickerFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected doPickColor()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    .line 7
    const-string v1, "color"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/media/color/BaseColorPickerFragment;->getColor()I

    .line 11
    move-result v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15
    const/4 v1, -0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/media/color/BackgroundColorFragment;->customColorPreference:Lcom/narvii/media/color/CustomColorPreference;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/media/color/BaseColorPickerFragment;->getColor()I

    .line 24
    move-result v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/narvii/media/color/CustomColorPreference;->addColorIntoCustomList(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 38
    return-void
.end method

.method protected getDefaultColor()I
    .locals 2

    .line 1
    .line 2
    const-string v0, "color"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/media/color/BackgroundColorFragment;->customColorPreference:Lcom/narvii/media/color/CustomColorPreference;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/media/color/CustomColorPreference;->getCustomColorList()Ljava/util/List;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    move-result v1

    .line 21
    .line 22
    if-lez v1, :cond_0

    .line 23
    const/4 v1, 0x0

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    check-cast v0, Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 33
    move-result v0

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    const-string v0, "config"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 43
    .line 44
    const-string v1, "themePack"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    check-cast v1, Lcom/narvii/theme/ThemePackService;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 54
    move-result v0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v0}, Lcom/narvii/theme/ThemePackService;->getThemeColor(I)I

    .line 58
    move-result v0

    .line 59
    :cond_1
    :goto_0
    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    sget v0, Lcom/narvii/lib/R$layout;->fragment_background_color:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/media/color/BaseColorPickerFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 10
    .line 11
    sget v0, Lcom/narvii/lib/R$string;->cancel:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVActivity;->setActionBarLeftTextView(I)Landroid/widget/TextView;

    .line 15
    .line 16
    sget v0, Lcom/narvii/lib/R$string;->save:I

    .line 17
    .line 18
    new-instance v1, Lcom/narvii/media/color/BackgroundColorFragment$2;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/narvii/media/color/BackgroundColorFragment$2;-><init>(Lcom/narvii/media/color/BackgroundColorFragment;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/view/View$OnClickListener;)V

    .line 25
    const/4 p1, 0x0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 29
    return-void
.end method

.method protected onColorChanged(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/media/color/BackgroundColorFragment;->defaultColorRecyclerView:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->removeCurrentSelectColor()V

    .line 15
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/media/color/BaseColorPickerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    sget p1, Lcom/narvii/lib/R$string;->background_color:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 9
    .line 10
    new-instance p1, Lcom/narvii/media/color/CustomColorPreference;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, v0}, Lcom/narvii/media/color/CustomColorPreference;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/media/color/BackgroundColorFragment;->customColorPreference:Lcom/narvii/media/color/CustomColorPreference;

    .line 20
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/media/color/BaseColorPickerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    sget p2, Lcom/narvii/lib/R$id;->default_background_picker:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/media/color/BackgroundColorFragment;->defaultColorRecyclerView:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/media/color/BackgroundColorFragment;->customColorPreference:Lcom/narvii/media/color/CustomColorPreference;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/narvii/media/color/CustomColorPreference;->getCustomColorList()Ljava/util/List;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 25
    move-result p2

    .line 26
    .line 27
    if-lez p2, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/narvii/media/color/BaseColorPickerFragment;->getColor()I

    .line 31
    move-result p2

    .line 32
    const/4 v0, 0x0

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    check-cast p1, Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 42
    move-result p1

    .line 43
    .line 44
    if-ne p2, p1, :cond_0

    .line 45
    .line 46
    iget-object p1, p0, Lcom/narvii/media/color/BackgroundColorFragment;->defaultColorRecyclerView:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/narvii/media/color/BaseColorPickerFragment;->getColor()I

    .line 50
    move-result p2

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->setCurrentSelectColor(I)V

    .line 54
    .line 55
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/color/BackgroundColorFragment;->defaultColorRecyclerView:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;

    .line 56
    .line 57
    iget-object p2, p0, Lcom/narvii/media/color/BackgroundColorFragment;->customColorPreference:Lcom/narvii/media/color/CustomColorPreference;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Lcom/narvii/media/color/CustomColorPreference;->getCustomColorList()Ljava/util/List;

    .line 61
    move-result-object p2

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->setCustomColorList(Ljava/util/List;)V

    .line 65
    .line 66
    iget-object p1, p0, Lcom/narvii/media/color/BackgroundColorFragment;->defaultColorRecyclerView:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;

    .line 67
    .line 68
    new-instance p2, Lcom/narvii/media/color/BackgroundColorFragment$1;

    .line 69
    .line 70
    .line 71
    invoke-direct {p2, p0}, Lcom/narvii/media/color/BackgroundColorFragment$1;-><init>(Lcom/narvii/media/color/BackgroundColorFragment;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p2}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->setOnColorSelectedListener(Lcom/narvii/media/color/DefaultBackgroundRecyclerView$OnColorSelectedListener;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/narvii/media/color/BaseColorPickerFragment;->getColor()I

    .line 82
    move-result p2

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 86
    return-void
.end method
