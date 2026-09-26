.class public Lcom/narvii/user/title/UserTitleColorHelper;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/user/title/UserTitleColorHelper;->context:Landroid/content/Context;

    .line 6
    return-void
.end method

.method private getRandomIndex(Ljava/lang/String;[I)I
    .locals 0

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 8
    move-result p1

    .line 9
    array-length p2, p2

    .line 10
    rem-int/2addr p1, p2

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 14
    move-result p1

    .line 15
    return p1
.end method


# virtual methods
.method public getBackgroundDrawable(Lcom/narvii/model/api/UserTitle;)Landroid/graphics/drawable/GradientDrawable;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/title/UserTitleColorHelper;->context:Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    const v1, 0x7f080a14

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/user/title/UserTitleColorHelper;->context:Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    const v2, 0x7f07053a

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 28
    move-result v1

    .line 29
    int-to-float v1, v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/narvii/user/title/UserTitleColorHelper;->getTitleColor(Lcom/narvii/model/api/UserTitle;)I

    .line 36
    move-result p1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 40
    return-object v0
.end method

.method public getBackgroundStateDrawable(Lcom/narvii/model/api/UserTitle;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/user/title/UserTitleColorHelper;->context:Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    const v2, 0x7f080a14

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/narvii/user/title/UserTitleColorHelper;->context:Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    .line 29
    const v4, 0x7f07053a

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 33
    move-result v3

    .line 34
    int-to-float v3, v3

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/narvii/user/title/UserTitleColorHelper;->getTitleColor(Lcom/narvii/model/api/UserTitle;)I

    .line 41
    move-result v3

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 45
    .line 46
    iget-object v3, p0, Lcom/narvii/user/title/UserTitleColorHelper;->context:Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    invoke-static {v3, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 57
    .line 58
    iget-object v3, p0, Lcom/narvii/user/title/UserTitleColorHelper;->context:Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 62
    move-result-object v3

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 66
    move-result v3

    .line 67
    int-to-float v3, v3

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1}, Lcom/narvii/user/title/UserTitleColorHelper;->getTitleColor(Lcom/narvii/model/api/UserTitle;)I

    .line 74
    move-result p1

    .line 75
    .line 76
    const/high16 v3, 0x3f000000    # 0.5f

    .line 77
    .line 78
    .line 79
    invoke-static {p1, v3}, Lcom/narvii/util/Utils;->getColor(IF)I

    .line 80
    move-result p1

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 84
    .line 85
    .line 86
    const p1, 0x10100a7

    .line 87
    .line 88
    .line 89
    filled-new-array {p1}, [I

    .line 90
    move-result-object p1

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 94
    .line 95
    .line 96
    const p1, 0x10100a1

    .line 97
    .line 98
    .line 99
    filled-new-array {p1}, [I

    .line 100
    move-result-object p1

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 104
    const/4 p1, 0x0

    .line 105
    .line 106
    new-array p1, p1, [I

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 110
    return-object v0
.end method

.method public getTitleColor(Lcom/narvii/model/api/UserTitle;)I
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget v0, p1, Lcom/narvii/model/api/UserTitle;->color:I

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return v0

    .line 8
    .line 9
    :cond_0
    sget-object v0, Lcom/narvii/user/title/UserTitleColorHelper;->titleColors:[I

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    const/4 p1, 0x0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_1
    iget-object p1, p1, Lcom/narvii/model/api/UserTitle;->title:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/narvii/user/title/UserTitleColorHelper;->getRandomIndex(Ljava/lang/String;[I)I

    .line 19
    move-result p1

    .line 20
    .line 21
    aget p1, v0, p1

    .line 22
    return p1
.end method
