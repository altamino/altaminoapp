.class public Lcom/narvii/widget/FlagItemLayout;
.super Lcom/narvii/widget/CheckableLinearLayout;
.source "FlagItemLayout.java"


# instance fields
.field private checkView1:Lcom/narvii/widget/FontAwesomeView;

.field private checkView2:Landroid/widget/CheckBox;

.field private divder:Landroid/view/View;

.field private leftText:Ljava/lang/String;

.field private rightType:I

.field private showDivider:Z

.field private tvFlag:Landroid/widget/TextView;

.field private tvHint:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/FlagItemLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/FlagItemLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/widget/CheckableLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    sget-object v0, Lcom/narvii/amino/R$styleable;->FlagItemLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p3, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 49
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/narvii/widget/FlagItemLayout;->leftText:Ljava/lang/String;

    const/4 p3, 0x1

    .line 50
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/FlagItemLayout;->rightType:I

    const/4 v0, 0x2

    .line 51
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/narvii/widget/FlagItemLayout;->showDivider:Z

    .line 53
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0b0194

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f090482

    .line 56
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/widget/FlagItemLayout;->tvFlag:Landroid/widget/TextView;

    const p1, 0x7f090483

    .line 57
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/widget/FlagItemLayout;->tvHint:Landroid/widget/TextView;

    const p1, 0x7f09048b

    .line 58
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/FontAwesomeView;

    iput-object p1, p0, Lcom/narvii/widget/FlagItemLayout;->checkView1:Lcom/narvii/widget/FontAwesomeView;

    const p1, 0x7f09048c

    .line 59
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/narvii/widget/FlagItemLayout;->checkView2:Landroid/widget/CheckBox;

    const p1, 0x7f090481

    .line 60
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/FlagItemLayout;->divder:Landroid/view/View;

    .line 62
    iget-object p1, p0, Lcom/narvii/widget/FlagItemLayout;->tvFlag:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 63
    iget-object p2, p0, Lcom/narvii/widget/FlagItemLayout;->leftText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/FlagItemLayout;->divder:Landroid/view/View;

    iget-boolean p2, p0, Lcom/narvii/widget/FlagItemLayout;->showDivider:Z

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getLeftText()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/narvii/widget/FlagItemLayout;->tvFlag:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideDivider()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/narvii/widget/FlagItemLayout;->divder:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideRight()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/narvii/widget/FlagItemLayout;->checkView1:Lcom/narvii/widget/FontAwesomeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/narvii/widget/FlagItemLayout;->checkView2:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    return-void
.end method

.method public setHintText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/widget/FlagItemLayout;->tvHint:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 84
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/narvii/widget/FlagItemLayout;->tvHint:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setLeftText(Ljava/lang/String;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/narvii/widget/FlagItemLayout;->tvFlag:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLeftTextColor(I)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/narvii/widget/FlagItemLayout;->tvFlag:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
