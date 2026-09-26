.class public Lcom/narvii/community/CommunityTheme;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/config/ConfigTheme;


# instance fields
.field private communityId:I

.field private context:Lcom/narvii/app/NVContext;

.field private final hsv:[F

.field private themePack:Lcom/narvii/theme/ThemePackService;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x3

    .line 5
    .line 6
    new-array v0, v0, [F

    .line 7
    .line 8
    iput-object v0, p0, Lcom/narvii/community/CommunityTheme;->hsv:[F

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/community/CommunityTheme;->context:Lcom/narvii/app/NVContext;

    .line 11
    .line 12
    iput p2, p0, Lcom/narvii/community/CommunityTheme;->communityId:I

    .line 13
    .line 14
    const-string p2, "themePack"

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    check-cast p1, Lcom/narvii/theme/ThemePackService;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/narvii/community/CommunityTheme;->themePack:Lcom/narvii/theme/ThemePackService;

    .line 23
    return-void
.end method


# virtual methods
.method public actionbarBackground()Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/CommunityTheme;->themePack:Lcom/narvii/theme/ThemePackService;

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/community/CommunityTheme;->communityId:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/theme/ThemePackService;->getThemeInfo(I)Lcom/narvii/theme/ThemeInfo;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/community/CommunityTheme;->context:Lcom/narvii/app/NVContext;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/community/CommunityTheme;->context:Lcom/narvii/app/NVContext;

    .line 29
    .line 30
    .line 31
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Lcom/narvii/util/Utils;->getActionBarHeight(Landroid/content/Context;)I

    .line 36
    move-result v7

    .line 37
    .line 38
    iget-object v1, p0, Lcom/narvii/community/CommunityTheme;->themePack:Lcom/narvii/theme/ThemePackService;

    .line 39
    .line 40
    iget v2, p0, Lcom/narvii/community/CommunityTheme;->communityId:I

    .line 41
    .line 42
    sget-object v3, Lcom/narvii/theme/ThemePackService$ThemeObject;->TITLEBAR:Lcom/narvii/theme/ThemePackService$ThemeObject;

    .line 43
    const/4 v6, 0x1

    .line 44
    move v4, v0

    .line 45
    move v5, v7

    .line 46
    .line 47
    .line 48
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/theme/ThemePackService;->getDrawable(ILcom/narvii/theme/ThemePackService$ThemeObject;IIZ)Landroid/graphics/drawable/Drawable;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    if-eqz v1, :cond_0

    .line 52
    return-object v1

    .line 53
    .line 54
    :cond_0
    iget-object v1, p0, Lcom/narvii/community/CommunityTheme;->themePack:Lcom/narvii/theme/ThemePackService;

    .line 55
    .line 56
    iget v2, p0, Lcom/narvii/community/CommunityTheme;->communityId:I

    .line 57
    .line 58
    sget-object v3, Lcom/narvii/theme/ThemePackService$ThemeObject;->OLDTITLEBAR:Lcom/narvii/theme/ThemePackService$ThemeObject;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2, v3, v0, v7}, Lcom/narvii/theme/ThemePackService;->getDrawable(ILcom/narvii/theme/ThemePackService$ThemeObject;II)Landroid/graphics/drawable/Drawable;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    return-object v0

    .line 66
    .line 67
    :cond_1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/narvii/community/CommunityTheme;->colorPrimary()I

    .line 71
    move-result v1

    .line 72
    .line 73
    .line 74
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 75
    return-object v0
.end method

.method public colorHighlight()I
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/community/CommunityTheme;->colorPrimary()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    .line 12
    move-result v2

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    .line 16
    move-result v3

    .line 17
    .line 18
    iget-object v4, p0, Lcom/narvii/community/CommunityTheme;->hsv:[F

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/community/CommunityTheme;->hsv:[F

    .line 24
    const/4 v2, 0x1

    .line 25
    .line 26
    .line 27
    const v3, 0x3e23d70a    # 0.16f

    .line 28
    .line 29
    aput v3, v1, v2

    .line 30
    const/4 v2, 0x2

    .line 31
    .line 32
    const/high16 v3, 0x3f800000    # 1.0f

    .line 33
    .line 34
    aput v3, v1, v2

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 38
    move-result v0

    .line 39
    .line 40
    iget-object v1, p0, Lcom/narvii/community/CommunityTheme;->hsv:[F

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    .line 44
    move-result v0

    .line 45
    return v0
.end method

.method public colorPrimary()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/CommunityTheme;->themePack:Lcom/narvii/theme/ThemePackService;

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/community/CommunityTheme;->communityId:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/theme/ThemePackService;->getThemeInfo(I)Lcom/narvii/theme/ThemeInfo;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/community/CommunityTheme;->context:Lcom/narvii/app/NVContext;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    const v1, 0x7f06009e

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 27
    move-result v0

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    iget v0, v0, Lcom/narvii/theme/ThemeInfo;->themeColor:I

    .line 31
    :goto_0
    return v0
.end method

.method public drawerImage()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/CommunityTheme;->themePack:Lcom/narvii/theme/ThemePackService;

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/community/CommunityTheme;->communityId:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/theme/ThemePackService;->getThemeInfo(I)Lcom/narvii/theme/ThemeInfo;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/community/CommunityTheme;->context:Lcom/narvii/app/NVContext;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    const v1, 0x7f070176

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 27
    move-result v0

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/community/CommunityTheme;->context:Lcom/narvii/app/NVContext;

    .line 30
    .line 31
    .line 32
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    const v2, 0x7f07017f

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 44
    move-result v1

    .line 45
    .line 46
    iget-object v2, p0, Lcom/narvii/community/CommunityTheme;->themePack:Lcom/narvii/theme/ThemePackService;

    .line 47
    .line 48
    iget v3, p0, Lcom/narvii/community/CommunityTheme;->communityId:I

    .line 49
    .line 50
    sget-object v4, Lcom/narvii/theme/ThemePackService$ThemeObject;->BACKGROUND:Lcom/narvii/theme/ThemePackService$ThemeObject;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/narvii/theme/ThemePackService;->getDrawable(ILcom/narvii/theme/ThemePackService$ThemeObject;II)Landroid/graphics/drawable/Drawable;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    if-eqz v0, :cond_0

    .line 57
    return-object v0

    .line 58
    .line 59
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/narvii/community/CommunityTheme;->colorPrimary()I

    .line 63
    move-result v1

    .line 64
    .line 65
    .line 66
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 67
    return-object v0
.end method

.method public fakeActionbarBackground()Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/CommunityTheme;->themePack:Lcom/narvii/theme/ThemePackService;

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/community/CommunityTheme;->communityId:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/theme/ThemePackService;->getThemeInfo(I)Lcom/narvii/theme/ThemeInfo;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/community/CommunityTheme;->context:Lcom/narvii/app/NVContext;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/community/CommunityTheme;->context:Lcom/narvii/app/NVContext;

    .line 29
    .line 30
    .line 31
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Lcom/narvii/util/Utils;->getActionBarHeight(Landroid/content/Context;)I

    .line 36
    move-result v1

    .line 37
    .line 38
    iget-object v2, p0, Lcom/narvii/community/CommunityTheme;->context:Lcom/narvii/app/NVContext;

    .line 39
    .line 40
    .line 41
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    .line 45
    invoke-static {v2}, Lcom/narvii/util/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 46
    move-result v2

    .line 47
    .line 48
    add-int v7, v1, v2

    .line 49
    .line 50
    iget-object v1, p0, Lcom/narvii/community/CommunityTheme;->themePack:Lcom/narvii/theme/ThemePackService;

    .line 51
    .line 52
    iget v2, p0, Lcom/narvii/community/CommunityTheme;->communityId:I

    .line 53
    .line 54
    sget-object v3, Lcom/narvii/theme/ThemePackService$ThemeObject;->TITLEBAR:Lcom/narvii/theme/ThemePackService$ThemeObject;

    .line 55
    const/4 v6, 0x1

    .line 56
    move v4, v0

    .line 57
    move v5, v7

    .line 58
    .line 59
    .line 60
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/theme/ThemePackService;->getDrawable(ILcom/narvii/theme/ThemePackService$ThemeObject;IIZ)Landroid/graphics/drawable/Drawable;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    if-eqz v1, :cond_0

    .line 64
    return-object v1

    .line 65
    .line 66
    :cond_0
    iget-object v1, p0, Lcom/narvii/community/CommunityTheme;->themePack:Lcom/narvii/theme/ThemePackService;

    .line 67
    .line 68
    iget v2, p0, Lcom/narvii/community/CommunityTheme;->communityId:I

    .line 69
    .line 70
    sget-object v3, Lcom/narvii/theme/ThemePackService$ThemeObject;->OLDTITLEBAR:Lcom/narvii/theme/ThemePackService$ThemeObject;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2, v3, v0, v7}, Lcom/narvii/theme/ThemePackService;->getDrawable(ILcom/narvii/theme/ThemePackService$ThemeObject;II)Landroid/graphics/drawable/Drawable;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    if-eqz v0, :cond_1

    .line 77
    return-object v0

    .line 78
    .line 79
    :cond_1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/narvii/community/CommunityTheme;->colorPrimary()I

    .line 83
    move-result v1

    .line 84
    .line 85
    .line 86
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 87
    return-object v0
.end method

.method public logoImage()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/CommunityTheme;->themePack:Lcom/narvii/theme/ThemePackService;

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/community/CommunityTheme;->communityId:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/theme/ThemePackService;->getThemeInfo(I)Lcom/narvii/theme/ThemeInfo;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/community/CommunityTheme;->context:Lcom/narvii/app/NVContext;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    const v1, 0x7f07017d

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 27
    move-result v0

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/community/CommunityTheme;->themePack:Lcom/narvii/theme/ThemePackService;

    .line 30
    .line 31
    iget v2, p0, Lcom/narvii/community/CommunityTheme;->communityId:I

    .line 32
    .line 33
    sget-object v3, Lcom/narvii/theme/ThemePackService$ThemeObject;->LOGO:Lcom/narvii/theme/ThemePackService$ThemeObject;

    .line 34
    const/4 v4, 0x0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/narvii/theme/ThemePackService;->getDrawable(ILcom/narvii/theme/ThemePackService$ThemeObject;II)Landroid/graphics/drawable/Drawable;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    return-object v0

    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 43
    return-object v0
.end method

.method public pageBackground()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/CommunityTheme;->themePack:Lcom/narvii/theme/ThemePackService;

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/community/CommunityTheme;->communityId:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/theme/ThemePackService;->getThemeInfo(I)Lcom/narvii/theme/ThemeInfo;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/community/CommunityTheme;->context:Lcom/narvii/app/NVContext;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/community/CommunityTheme;->context:Lcom/narvii/app/NVContext;

    .line 29
    .line 30
    .line 31
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 43
    .line 44
    iget-object v2, p0, Lcom/narvii/community/CommunityTheme;->themePack:Lcom/narvii/theme/ThemePackService;

    .line 45
    .line 46
    iget v3, p0, Lcom/narvii/community/CommunityTheme;->communityId:I

    .line 47
    .line 48
    sget-object v4, Lcom/narvii/theme/ThemePackService$ThemeObject;->TITLEBAR:Lcom/narvii/theme/ThemePackService$ThemeObject;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/narvii/theme/ThemePackService;->getDrawable(ILcom/narvii/theme/ThemePackService$ThemeObject;II)Landroid/graphics/drawable/Drawable;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    if-eqz v0, :cond_0

    .line 55
    return-object v0

    .line 56
    :cond_0
    const/4 v0, 0x0

    .line 57
    return-object v0
.end method
