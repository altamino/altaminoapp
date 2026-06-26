.class public Lcom/narvii/user/title/UserTitleColorHelper;
.super Ljava/lang/Object;
.source "UserTitleColorHelper.java"


# static fields
.field public static final titleColors:[I


# instance fields
.field private context:Landroid/content/Context;

.field public drawable:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 19
    fill-array-data v0, :array_0

    sput-object v0, Lcom/narvii/user/title/UserTitleColorHelper;->titleColors:[I

    return-void

    :array_0
    .array-data 4
        -0xff2921
        -0xfd6b01
        -0x88ff01
        -0x59ff01
        -0x2fff18
        -0x2af8d
        -0x5900
        -0x3eb4
        -0xa22900
        -0xf94bb1
        -0xff207e
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/narvii/user/title/UserTitleColorHelper;->context:Landroid/content/Context;

    return-void
.end method

.method private getRandomIndex(Ljava/lang/String;[I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 63
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    array-length p2, p2

    rem-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    return p1
.end method


# virtual methods
.method public getBackgroundDrawable(Lcom/narvii/model/api/UserTitle;)Landroid/graphics/drawable/GradientDrawable;
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/narvii/user/title/UserTitleColorHelper;->context:Landroid/content/Context;

    const v1, 0x7f0807f2

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 37
    iget-object v1, p0, Lcom/narvii/user/title/UserTitleColorHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/narvii/user/title/UserTitleColorHelper;->getTitleColor(Lcom/narvii/model/api/UserTitle;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method public getBackgroundStateDrawable(Lcom/narvii/model/api/UserTitle;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 43
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/narvii/user/title/UserTitleColorHelper;->context:Landroid/content/Context;

    const v2, 0x7f0807f2

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 45
    iget-object v3, p0, Lcom/narvii/user/title/UserTitleColorHelper;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0702f7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 46
    invoke-virtual {p0, p1}, Lcom/narvii/user/title/UserTitleColorHelper;->getTitleColor(Lcom/narvii/model/api/UserTitle;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 48
    iget-object v3, p0, Lcom/narvii/user/title/UserTitleColorHelper;->context:Landroid/content/Context;

    invoke-static {v3, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 49
    iget-object v3, p0, Lcom/narvii/user/title/UserTitleColorHelper;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 50
    invoke-virtual {p0, p1}, Lcom/narvii/user/title/UserTitleColorHelper;->getTitleColor(Lcom/narvii/model/api/UserTitle;)I

    move-result p1

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {p1, v3}, Lcom/narvii/util/Utils;->getColor(IF)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 p1, 0x1

    new-array v3, p1, [I

    const/4 v4, 0x0

    const v5, 0x10100a7

    aput v5, v3, v4

    .line 52
    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array p1, p1, [I

    const v3, 0x10100a1

    aput v3, p1, v4

    .line 53
    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array p1, v4, [I

    .line 54
    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public getTitleColor(Lcom/narvii/model/api/UserTitle;)I
    .locals 2

    if-eqz p1, :cond_0

    .line 29
    iget v0, p1, Lcom/narvii/model/api/UserTitle;->color:I

    if-eqz v0, :cond_0

    return v0

    .line 32
    :cond_0
    sget-object v0, Lcom/narvii/user/title/UserTitleColorHelper;->titleColors:[I

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/narvii/model/api/UserTitle;->title:Ljava/lang/String;

    :goto_0
    sget-object v1, Lcom/narvii/user/title/UserTitleColorHelper;->titleColors:[I

    invoke-direct {p0, p1, v1}, Lcom/narvii/user/title/UserTitleColorHelper;->getRandomIndex(Ljava/lang/String;[I)I

    move-result p1

    aget p1, v0, p1

    return p1
.end method
