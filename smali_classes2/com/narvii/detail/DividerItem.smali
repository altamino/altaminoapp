.class public Lcom/narvii/detail/DividerItem;
.super Landroid/widget/LinearLayout;
.source "DividerItem.java"


# static fields
.field static final ids:[I


# instance fields
.field t1:Landroid/widget/TextView;

.field t2:Landroid/widget/TextView;

.field t3:Landroid/widget/TextView;

.field t4:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x17

    new-array v0, v0, [I

    .line 14
    fill-array-data v0, :array_0

    sput-object v0, Lcom/narvii/detail/DividerItem;->ids:[I

    return-void

    :array_0
    .array-data 4
        0x7f0f0437
        0x7f0f05fb
        0x7f0f0419
        0x7f0f0446
        0x7f0f0449
        0x7f0f0481
        0x7f0f0490
        0x7f0f04a2
        0x7f0f04e3
        0x7f0f04f4
        0x7f0f04f7
        0x7f0f0509
        0x7f0f0510
        0x7f0f0517
        0x7f0f052f
        0x7f0f0553
        0x7f0f058a
        0x7f0f0598
        0x7f0f059f
        0x7f0f062e
        0x7f0f063b
        0x7f0f063e
        0x7f0f0647
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/narvii/detail/DividerItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static getRandomDividerStringId(Ljava/lang/String;)I
    .locals 3

    .line 56
    new-instance v0, Ljava/util/Random;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    int-to-long v1, p0

    :goto_0
    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 58
    sget-object p0, Lcom/narvii/detail/DividerItem;->ids:[I

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget p0, p0, v0

    return p0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 39
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f090b03

    .line 41
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/detail/DividerItem;->t1:Landroid/widget/TextView;

    const v0, 0x7f090b04

    .line 42
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/detail/DividerItem;->t2:Landroid/widget/TextView;

    const v0, 0x7f090b05

    .line 43
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/detail/DividerItem;->t3:Landroid/widget/TextView;

    const v0, 0x7f090b06

    .line 44
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/detail/DividerItem;->t4:Landroid/widget/TextView;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1

    .line 48
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/narvii/detail/DividerItem;->getRandomDividerStringId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 49
    iget-object v0, p0, Lcom/narvii/detail/DividerItem;->t1:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcom/narvii/detail/DividerItem;->t2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lcom/narvii/detail/DividerItem;->t3:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/narvii/detail/DividerItem;->t4:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
