.class public Lcom/narvii/widget/SwitchButton;
.super Landroid/widget/RadioButton;
.source "SwitchButton.java"


# instance fields
.field darkTheme:Z

.field private switchButtonDrawable:Lcom/narvii/theme/SwitchButtonDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 31
    new-instance p2, Lcom/narvii/theme/SwitchButtonDrawable;

    invoke-direct {p2, p1}, Lcom/narvii/theme/SwitchButtonDrawable;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/widget/SwitchButton;->switchButtonDrawable:Lcom/narvii/theme/SwitchButtonDrawable;

    .line 32
    iget-object p1, p0, Lcom/narvii/widget/SwitchButton;->switchButtonDrawable:Lcom/narvii/theme/SwitchButtonDrawable;

    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 2

    .line 38
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 40
    invoke-static {p1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 42
    iget-boolean v0, p0, Lcom/narvii/widget/SwitchButton;->darkTheme:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/RadioButton;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$color;->tab_default_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 2

    .line 21
    iput-boolean p1, p0, Lcom/narvii/widget/SwitchButton;->darkTheme:Z

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/RadioButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$color;->tab_default_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/RadioButton;->setTextColor(I)V

    if-eqz p1, :cond_2

    .line 23
    invoke-virtual {p0}, Landroid/widget/RadioButton;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$drawable;->switch_button_bg_dark:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/narvii/widget/SwitchButton;->switchButtonDrawable:Lcom/narvii/theme/SwitchButtonDrawable;

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
