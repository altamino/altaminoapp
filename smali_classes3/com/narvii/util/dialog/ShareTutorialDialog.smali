.class public Lcom/narvii/util/dialog/ShareTutorialDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "ShareTutorialDialog.java"


# instance fields
.field element:Lcom/narvii/share/elements/BaseElement;

.field imgTargetIcon:Landroid/widget/ImageView;

.field layoutInflater:Landroid/view/LayoutInflater;

.field targetLayout:Landroid/view/View;

.field tutorialItemLayout:Landroid/widget/LinearLayout;

.field tvTargetName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 32
    sget p1, Lcom/narvii/lib/R$id;->tutorial_items:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/narvii/util/dialog/ShareTutorialDialog;->tutorialItemLayout:Landroid/widget/LinearLayout;

    .line 33
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/util/dialog/ShareTutorialDialog;->layoutInflater:Landroid/view/LayoutInflater;

    .line 34
    sget p1, Lcom/narvii/lib/R$id;->share_target_icon:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/util/dialog/ShareTutorialDialog;->imgTargetIcon:Landroid/widget/ImageView;

    .line 35
    sget p1, Lcom/narvii/lib/R$id;->share_target_name:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/util/dialog/ShareTutorialDialog;->tvTargetName:Landroid/widget/TextView;

    .line 36
    sget p1, Lcom/narvii/lib/R$id;->share_target_layout:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/util/dialog/ShareTutorialDialog;->targetLayout:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public addTutorialItem(Ljava/lang/String;)V
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/narvii/util/dialog/ShareTutorialDialog;->layoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/narvii/lib/R$layout;->item_share_tutorial_layout:I

    iget-object v2, p0, Lcom/narvii/util/dialog/ShareTutorialDialog;->tutorialItemLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 62
    sget v1, Lcom/narvii/lib/R$id;->hint:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 63
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object p1, p0, Lcom/narvii/util/dialog/ShareTutorialDialog;->tutorialItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected baseLayoutId()I
    .locals 1

    .line 41
    sget v0, Lcom/narvii/lib/R$layout;->dialog_share_turtorial_layout:I

    return v0
.end method

.method public getBackgroundDrawable(Lcom/narvii/share/elements/BaseElement;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 68
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 69
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 70
    invoke-virtual {p1}, Lcom/narvii/share/elements/BaseElement;->color()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method public setElement(Lcom/narvii/share/elements/BaseElement;)V
    .locals 2

    .line 46
    iput-object p1, p0, Lcom/narvii/util/dialog/ShareTutorialDialog;->element:Lcom/narvii/share/elements/BaseElement;

    .line 47
    iget-object v0, p0, Lcom/narvii/util/dialog/ShareTutorialDialog;->imgTargetIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p1}, Lcom/narvii/share/elements/BaseElement;->icon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/dialog/ShareTutorialDialog;->tvTargetName:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {p1}, Lcom/narvii/share/elements/BaseElement;->label()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/narvii/util/dialog/ShareTutorialDialog;->tvTargetName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/narvii/share/elements/BaseElement;->textColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/narvii/util/dialog/ShareTutorialDialog;->targetLayout:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 56
    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/ShareTutorialDialog;->getBackgroundDrawable(Lcom/narvii/share/elements/BaseElement;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method
