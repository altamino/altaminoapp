.class public Lcom/narvii/util/NavigaionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/NavigaionUtils$OnNavigationChangedListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;)I
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    const-string v1, "dimen"

    .line 11
    .line 12
    const-string v2, "android"

    .line 13
    .line 14
    const-string v3, "navigation_bar_height"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    move-result v1

    .line 19
    .line 20
    if-lez v1, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 24
    move-result v0

    .line 25
    :cond_1
    return v0
.end method

.method public static isNavigationBarShowing(Landroid/app/Activity;)Z
    .locals 5
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    new-instance v1, Landroid/graphics/Point;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 18
    .line 19
    new-instance v2, Landroid/graphics/Point;

    .line 20
    .line 21
    .line 22
    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    .line 32
    move-result v3

    .line 33
    const/4 v4, 0x1

    .line 34
    .line 35
    if-eq v3, v4, :cond_3

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    .line 39
    move-result p0

    .line 40
    const/4 v3, 0x3

    .line 41
    .line 42
    if-ne p0, v3, :cond_1

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_1
    iget p0, v2, Landroid/graphics/Point;->y:I

    .line 46
    .line 47
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 48
    .line 49
    if-eq p0, v1, :cond_2

    .line 50
    move v0, v4

    .line 51
    :cond_2
    return v0

    .line 52
    .line 53
    :cond_3
    :goto_0
    iget p0, v2, Landroid/graphics/Point;->x:I

    .line 54
    .line 55
    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 56
    .line 57
    if-eq p0, v1, :cond_4

    .line 58
    move v0, v4

    .line 59
    :cond_4
    return v0
.end method

.method public static setOnNavigationChangedListener(Landroid/app/Activity;Lcom/narvii/util/NavigaionUtils$OnNavigationChangedListener;)V
    .locals 3
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-static {p0}, Lcom/narvii/util/NavigaionUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    .line 7
    move-result v0

    .line 8
    .line 9
    .line 10
    const v1, 0x1020002

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    return-void

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    new-instance v2, Lcom/narvii/util/NavigaionUtils$1;

    .line 24
    .line 25
    .line 26
    invoke-direct {v2, p0, v0, p1}, Lcom/narvii/util/NavigaionUtils$1;-><init>(Landroid/app/Activity;ILcom/narvii/util/NavigaionUtils$OnNavigationChangedListener;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 30
    return-void
.end method
