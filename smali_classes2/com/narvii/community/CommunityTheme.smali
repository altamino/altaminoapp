.class public Lcom/narvii/community/CommunityTheme;
.super Ljava/lang/Object;
.source "CommunityTheme.java"

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

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 22
    iput-object v0, p0, Lcom/narvii/community/CommunityTheme;->hsv:[F

    .line 25
    iput-object p1, p0, Lcom/narvii/community/CommunityTheme;->context:Lcom/narvii/app/NVContext;

    .line 26
    iput p2, p0, Lcom/narvii/community/CommunityTheme;->communityId:I

    const-string p2, "themePack"

    .line 27
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/theme/ThemePackService;

    iput-object p1, p0, Lcom/narvii/community/CommunityTheme;->themePack:Lcom/narvii/theme/ThemePackService;

    return-void
.end method


# virtual methods
.method public actionbarBackground()Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 47
    iget-object v0, p0, Lcom/narvii/community/CommunityTheme;->themePack:Lcom/narvii/theme/ThemePackService;

    iget v1, p0, Lcom/narvii/community/CommunityTheme;->communityId:I

    invoke-virtual {v0, v1}, Lcom/narvii/theme/ThemePackService;->getThemeInfo(I)Lcom/narvii/theme/ThemeInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/narvii/community/CommunityTheme;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 50
    iget-object v1, p0, Lcom/narvii/community/CommunityTheme;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Utils;->getActionBarHeight(Landroid/content/Context;)I

    move-result v7

    .line 51
    iget-object v1, p0, Lcom/narvii/community/CommunityTheme;->themePack:Lcom/narvii/theme/ThemePackService;

    iget v2, p0, Lcom/narvii/community/CommunityTheme;->communityId:I

    sget-object v3, Lcom/narvii/theme/ThemePackService$ThemeObject;->TITLEBAR:Lcom/narvii/theme/ThemePackService$ThemeObject;

    const/4 v6, 0x1

    move v4, v0

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Lcom/narvii/theme/ThemePackService;->getDrawable(ILcom/narvii/theme/ThemePackService$ThemeObject;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/narvii/community/CommunityTheme;->themePack:Lcom/narvii/theme/ThemePackService;

    iget v2, p0, Lcom/narvii/community/CommunityTheme;->communityId:I

    sget-object v3, Lcom/narvii/theme/ThemePackService$ThemeObject;->OLDTITLEBAR:Lcom/narvii/theme/ThemePackService$ThemeObject;

    invoke-virtual {v1, v2, v3, v0, v7}, Lcom/narvii/theme/ThemePackService;->getDrawable(ILcom/narvii/theme/ThemePackService$ThemeObject;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 60
    :cond_1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/narvii/community/CommunityTheme;->colorPrimary()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public colorHighlight()I
    .locals 5

    .line 38
    invoke-virtual {p0}, Lcom/narvii/community/CommunityTheme;->colorPrimary()I

    move-result v0

    .line 39
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    iget-object v4, p0, Lcom/narvii/community/CommunityTheme;->hsv:[F

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    .line 40
    iget-object v1, p0, Lcom/narvii/community/CommunityTheme;->hsv:[F

    const/4 v2, 0x1

    const v3, 0x3e23d70a    # 0.16f

    aput v3, v1, v2

    const/4 v2, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 41
    aput v3, v1, v2

    .line 42
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iget-object v1, p0, Lcom/narvii/community/CommunityTheme;->hsv:[F

    invoke-static {v0, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    return v0
.end method

.method public colorPrimary()I
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/narvii/community/CommunityTheme;->themePack:Lcom/narvii/theme/ThemePackService;

    iget v1, p0, Lcom/narvii/community/CommunityTheme;->communityId:I

    invoke-virtual {v0, v1}, Lcom/narvii/theme/ThemePackService;->getThemeInfo(I)Lcom/narvii/theme/ThemeInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/narvii/community/CommunityTheme;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/narvii/theme/ThemeInfo;->themeColor:I

    :goto_0
    return v0
.end method

.method public drawerImage()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 78
    iget-object v0, p0, Lcom/narvii/community/CommunityTheme;->themePack:Lcom/narvii/theme/ThemePackService;

    iget v1, p0, Lcom/narvii/community/CommunityTheme;->communityId:I

    invoke-virtual {v0, v1}, Lcom/narvii/theme/ThemePackService;->getThemeInfo(I)Lcom/narvii/theme/ThemeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/narvii/community/CommunityTheme;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07012c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 81
    iget-object v1, p0, Lcom/narvii/community/CommunityTheme;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070135

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 82
    iget-object v2, p0, Lcom/narvii/community/CommunityTheme;->themePack:Lcom/narvii/theme/ThemePackService;

    iget v3, p0, Lcom/narvii/community/CommunityTheme;->communityId:I

    sget-object v4, Lcom/narvii/theme/ThemePackService$ThemeObject;->BACKGROUND:Lcom/narvii/theme/ThemePackService$ThemeObject;

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/narvii/theme/ThemePackService;->getDrawable(ILcom/narvii/theme/ThemePackService$ThemeObject;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 87
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/narvii/community/CommunityTheme;->colorPrimary()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public fakeActionbarBackground()Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 92
    iget-object v0, p0, Lcom/narvii/community/CommunityTheme;->themePack:Lcom/narvii/theme/ThemePackService;

    iget v1, p0, Lcom/narvii/community/CommunityTheme;->communityId:I

    invoke-virtual {v0, v1}, Lcom/narvii/theme/ThemePackService;->getThemeInfo(I)Lcom/narvii/theme/ThemeInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/narvii/community/CommunityTheme;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 95
    iget-object v1, p0, Lcom/narvii/community/CommunityTheme;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Utils;->getActionBarHeight(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/narvii/community/CommunityTheme;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    add-int v7, v1, v2

    .line 96
    iget-object v1, p0, Lcom/narvii/community/CommunityTheme;->themePack:Lcom/narvii/theme/ThemePackService;

    iget v2, p0, Lcom/narvii/community/CommunityTheme;->communityId:I

    sget-object v3, Lcom/narvii/theme/ThemePackService$ThemeObject;->TITLEBAR:Lcom/narvii/theme/ThemePackService$ThemeObject;

    const/4 v6, 0x1

    move v4, v0

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Lcom/narvii/theme/ThemePackService;->getDrawable(ILcom/narvii/theme/ThemePackService$ThemeObject;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/narvii/community/CommunityTheme;->themePack:Lcom/narvii/theme/ThemePackService;

    iget v2, p0, Lcom/narvii/community/CommunityTheme;->communityId:I

    sget-object v3, Lcom/narvii/theme/ThemePackService$ThemeObject;->OLDTITLEBAR:Lcom/narvii/theme/ThemePackService$ThemeObject;

    invoke-virtual {v1, v2, v3, v0, v7}, Lcom/narvii/theme/ThemePackService;->getDrawable(ILcom/narvii/theme/ThemePackService$ThemeObject;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 105
    :cond_1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/narvii/community/CommunityTheme;->colorPrimary()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public logoImage()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 65
    iget-object v0, p0, Lcom/narvii/community/CommunityTheme;->themePack:Lcom/narvii/theme/ThemePackService;

    iget v1, p0, Lcom/narvii/community/CommunityTheme;->communityId:I

    invoke-virtual {v0, v1}, Lcom/narvii/theme/ThemePackService;->getThemeInfo(I)Lcom/narvii/theme/ThemeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/narvii/community/CommunityTheme;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070133

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 68
    iget-object v1, p0, Lcom/narvii/community/CommunityTheme;->themePack:Lcom/narvii/theme/ThemePackService;

    iget v2, p0, Lcom/narvii/community/CommunityTheme;->communityId:I

    sget-object v3, Lcom/narvii/theme/ThemePackService$ThemeObject;->LOGO:Lcom/narvii/theme/ThemePackService$ThemeObject;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/narvii/theme/ThemePackService;->getDrawable(ILcom/narvii/theme/ThemePackService$ThemeObject;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public pageBackground()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 110
    iget-object v0, p0, Lcom/narvii/community/CommunityTheme;->themePack:Lcom/narvii/theme/ThemePackService;

    iget v1, p0, Lcom/narvii/community/CommunityTheme;->communityId:I

    invoke-virtual {v0, v1}, Lcom/narvii/theme/ThemePackService;->getThemeInfo(I)Lcom/narvii/theme/ThemeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/narvii/community/CommunityTheme;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 113
    iget-object v1, p0, Lcom/narvii/community/CommunityTheme;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 114
    iget-object v2, p0, Lcom/narvii/community/CommunityTheme;->themePack:Lcom/narvii/theme/ThemePackService;

    iget v3, p0, Lcom/narvii/community/CommunityTheme;->communityId:I

    sget-object v4, Lcom/narvii/theme/ThemePackService$ThemeObject;->TITLEBAR:Lcom/narvii/theme/ThemePackService$ThemeObject;

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/narvii/theme/ThemePackService;->getDrawable(ILcom/narvii/theme/ThemePackService$ThemeObject;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
