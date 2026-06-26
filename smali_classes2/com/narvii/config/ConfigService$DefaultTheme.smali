.class Lcom/narvii/config/ConfigService$DefaultTheme;
.super Ljava/lang/Object;
.source "ConfigService.java"

# interfaces
.implements Lcom/narvii/config/ConfigTheme;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/config/ConfigService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultTheme"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/config/ConfigService$1;)V
    .locals 0

    .line 282
    invoke-direct {p0}, Lcom/narvii/config/ConfigService$DefaultTheme;-><init>()V

    return-void
.end method


# virtual methods
.method public actionbarBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 296
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/narvii/config/ConfigService$DefaultTheme;->colorPrimary()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public colorHighlight()I
    .locals 1

    const v0, -0x150e21

    return v0
.end method

.method public colorPrimary()I
    .locals 1

    const v0, -0xac5ffd

    return v0
.end method

.method public drawerImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public fakeActionbarBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 311
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/narvii/config/ConfigService$DefaultTheme;->colorPrimary()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public logoImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public pageBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
