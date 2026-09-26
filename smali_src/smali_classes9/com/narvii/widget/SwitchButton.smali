.class public Lcom/narvii/widget/SwitchButton;
.super Landroid/widget/RadioButton;
.source "SourceFile"


# instance fields
.field darkTheme:Z

.field private switchButtonDrawable:Lcom/narvii/theme/SwitchButtonDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance p2, Lcom/narvii/theme/SwitchButtonDrawable;

    .line 12
    .line 13
    .line 14
    invoke-direct {p2, p1}, Lcom/narvii/theme/SwitchButtonDrawable;-><init>(Lcom/narvii/app/NVContext;)V

    .line 15
    .line 16
    iput-object p2, p0, Lcom/narvii/widget/SwitchButton;->switchButtonDrawable:Lcom/narvii/theme/SwitchButtonDrawable;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/narvii/widget/SwitchButton;->darkTheme:Z

    .line 13
    const/4 v1, -0x1

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    if-eqz p1, :cond_1

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    sget v0, Lcom/narvii/lib/R$color;->tab_default_text:I

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 33
    move-result v1

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 2

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/widget/SwitchButton;->darkTheme:Z

    .line 3
    const/4 v0, -0x1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    sget v1, Lcom/narvii/lib/R$color;->tab_default_text:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 27
    move-result v0

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    sget v0, Lcom/narvii/lib/R$drawable;->switch_button_bg_dark:I

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 42
    move-result-object p1

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_2
    iget-object p1, p0, Lcom/narvii/widget/SwitchButton;->switchButtonDrawable:Lcom/narvii/theme/SwitchButtonDrawable;

    .line 46
    .line 47
    .line 48
    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    return-void
.end method
