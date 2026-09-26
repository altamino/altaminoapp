.class public Lcom/narvii/util/dialog/ShareTutorialDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    sget p1, Lcom/narvii/lib/R$id;->tutorial_items:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Landroid/widget/LinearLayout;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/util/dialog/ShareTutorialDialog;->tutorialItemLayout:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    iput-object p1, p0, Lcom/narvii/util/dialog/ShareTutorialDialog;->layoutInflater:Landroid/view/LayoutInflater;

    .line 24
    .line 25
    sget p1, Lcom/narvii/lib/R$id;->share_target_icon:I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    check-cast p1, Landroid/widget/ImageView;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/narvii/util/dialog/ShareTutorialDialog;->imgTargetIcon:Landroid/widget/ImageView;

    .line 34
    .line 35
    sget p1, Lcom/narvii/lib/R$id;->share_target_name:I

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    check-cast p1, Landroid/widget/TextView;

    .line 42
    .line 43
    iput-object p1, p0, Lcom/narvii/util/dialog/ShareTutorialDialog;->tvTargetName:Landroid/widget/TextView;

    .line 44
    .line 45
    sget p1, Lcom/narvii/lib/R$id;->share_target_layout:I

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    iput-object p1, p0, Lcom/narvii/util/dialog/ShareTutorialDialog;->targetLayout:Landroid/view/View;

    .line 52
    return-void
.end method


# virtual methods
.method public addTutorialItem(Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/dialog/ShareTutorialDialog;->layoutInflater:Landroid/view/LayoutInflater;

    .line 3
    .line 4
    sget v1, Lcom/narvii/lib/R$layout;->item_share_tutorial_layout:I

    .line 5
    .line 6
    iget-object v2, p0, Lcom/narvii/util/dialog/ShareTutorialDialog;->tutorialItemLayout:Landroid/widget/LinearLayout;

    .line 7
    const/4 v3, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    sget v1, Lcom/narvii/lib/R$id;->hint:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    check-cast v1, Landroid/widget/TextView;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/util/dialog/ShareTutorialDialog;->tutorialItemLayout:Landroid/widget/LinearLayout;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 28
    return-void
.end method

.method protected baseLayoutId()I
    .locals 1

    sget v0, Lcom/narvii/lib/R$layout;->dialog_share_turtorial_layout:I

    return v0
.end method

.method public getBackgroundDrawable(Lcom/narvii/share/elements/BaseElement;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    const/high16 v2, 0x40800000    # 4.0f

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 15
    move-result v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/share/elements/BaseElement;->color()I

    .line 22
    move-result p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 26
    return-object v0
.end method

.method public setElement(Lcom/narvii/share/elements/BaseElement;)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/dialog/ShareTutorialDialog;->element:Lcom/narvii/share/elements/BaseElement;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/util/dialog/ShareTutorialDialog;->imgTargetIcon:Landroid/widget/ImageView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/share/elements/BaseElement;->icon()Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/dialog/ShareTutorialDialog;->tvTargetName:Landroid/widget/TextView;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/share/elements/BaseElement;->label()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/util/dialog/ShareTutorialDialog;->tvTargetName:Landroid/widget/TextView;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/share/elements/BaseElement;->textColor()I

    .line 30
    move-result v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lcom/narvii/util/dialog/ShareTutorialDialog;->targetLayout:Landroid/view/View;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/ShareTutorialDialog;->getBackgroundDrawable(Lcom/narvii/share/elements/BaseElement;)Landroid/graphics/drawable/Drawable;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    :cond_2
    return-void
.end method
