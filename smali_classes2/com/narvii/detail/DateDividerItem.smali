.class public Lcom/narvii/detail/DateDividerItem;
.super Landroid/widget/LinearLayout;
.source "DateDividerItem.java"


# instance fields
.field dateFormat:Ljava/text/DateFormat;

.field datetime:Landroid/widget/TextView;

.field t1:Landroid/widget/TextView;

.field t2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/narvii/detail/DateDividerItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 25
    invoke-static {p1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/detail/DateDividerItem;->dateFormat:Ljava/text/DateFormat;

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 30
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f09032e

    .line 31
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/detail/DateDividerItem;->datetime:Landroid/widget/TextView;

    const v0, 0x7f090b03

    .line 32
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/detail/DateDividerItem;->t1:Landroid/widget/TextView;

    const v0, 0x7f090b04

    .line 33
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/detail/DateDividerItem;->t2:Landroid/widget/TextView;

    return-void
.end method

.method public setDateDivider(Lcom/narvii/detail/DateDivider;)V
    .locals 6

    if-eqz p1, :cond_1

    .line 37
    iget-object v0, p1, Lcom/narvii/detail/DateDivider;->date:Ljava/util/Date;

    if-nez v0, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/narvii/detail/DateDividerItem;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/narvii/detail/DateDividerItem;->datetime:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f0ab6

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lcom/narvii/detail/DateDivider;->id:Ljava/lang/String;

    invoke-static {p1}, Lcom/narvii/detail/DividerItem;->getRandomDividerStringId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 43
    iget-object v0, p0, Lcom/narvii/detail/DateDividerItem;->t1:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p0, Lcom/narvii/detail/DateDividerItem;->t2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
