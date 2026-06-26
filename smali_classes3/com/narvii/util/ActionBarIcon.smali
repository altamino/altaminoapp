.class public Lcom/narvii/util/ActionBarIcon;
.super Lcom/narvii/util/FontAwesomeDrawable;
.source "ActionBarIcon.java"


# static fields
.field static COLOR:I

.field static SIZE:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;Ljava/lang/String;FI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;FI)V
    .locals 6

    const/16 v5, 0xff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 18
    invoke-direct/range {v0 .. v5}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;Ljava/lang/String;FII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;FII)V
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 22
    invoke-direct/range {v0 .. v6}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;Ljava/lang/String;FIIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;FIIZ)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Lcom/narvii/util/FontAwesomeDrawable;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-virtual {p0, p2}, Lcom/narvii/util/FontAwesomeDrawable;->setKeyString(Ljava/lang/String;)V

    .line 28
    sget p2, Lcom/narvii/util/ActionBarIcon;->SIZE:I

    if-nez p2, :cond_0

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/narvii/lib/R$dimen;->actionbar_icon_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sput p2, Lcom/narvii/util/ActionBarIcon;->SIZE:I

    .line 31
    :cond_0
    sget p2, Lcom/narvii/util/ActionBarIcon;->SIZE:I

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Lcom/narvii/util/FontAwesomeDrawable;->setIntrinsicSize(F)V

    if-nez p4, :cond_2

    .line 33
    sget p2, Lcom/narvii/util/ActionBarIcon;->COLOR:I

    if-nez p2, :cond_1

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$color;->actionbar_icon:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    sput p1, Lcom/narvii/util/ActionBarIcon;->COLOR:I

    .line 36
    :cond_1
    sget p4, Lcom/narvii/util/ActionBarIcon;->COLOR:I

    .line 38
    :cond_2
    invoke-virtual {p0, p3}, Lcom/narvii/util/FontAwesomeDrawable;->setFocalArea(F)V

    .line 39
    invoke-virtual {p0, p4}, Lcom/narvii/util/FontAwesomeDrawable;->setColor(I)V

    if-eqz p6, :cond_3

    const/high16 p1, 0x40400000    # 3.0f

    const/4 p2, 0x0

    const/high16 p3, 0x3f800000    # 1.0f

    const/high16 p4, -0x56000000

    .line 41
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/util/FontAwesomeDrawable;->setShadow(FFFI)V

    .line 43
    :cond_3
    invoke-virtual {p0, p5}, Lcom/narvii/util/FontAwesomeDrawable;->setAlpha(I)V

    return-void
.end method
