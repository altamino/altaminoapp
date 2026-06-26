.class Lcom/narvii/app/incubator/IncubatorConfigService$DefaultTheme;
.super Ljava/lang/Object;
.source "IncubatorConfigService.java"

# interfaces
.implements Lcom/narvii/config/ConfigTheme;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/app/incubator/IncubatorConfigService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultTheme"
.end annotation


# instance fields
.field colorHighlight:I

.field colorPrimary:I

.field final synthetic this$0:Lcom/narvii/app/incubator/IncubatorConfigService;


# direct methods
.method constructor <init>(Lcom/narvii/app/incubator/IncubatorConfigService;)V
    .locals 2

    .line 80
    iput-object p1, p0, Lcom/narvii/app/incubator/IncubatorConfigService$DefaultTheme;->this$0:Lcom/narvii/app/incubator/IncubatorConfigService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {p1}, Lcom/narvii/app/incubator/IncubatorConfigService;->access$000(Lcom/narvii/app/incubator/IncubatorConfigService;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/narvii/app/incubator/IncubatorConfigService$DefaultTheme;->colorPrimary:I

    .line 82
    invoke-static {p1}, Lcom/narvii/app/incubator/IncubatorConfigService;->access$000(Lcom/narvii/app/incubator/IncubatorConfigService;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06007e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/app/incubator/IncubatorConfigService$DefaultTheme;->colorHighlight:I

    return-void
.end method


# virtual methods
.method public actionbarBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 97
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/narvii/app/incubator/IncubatorConfigService$DefaultTheme;->colorPrimary()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public colorHighlight()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/narvii/app/incubator/IncubatorConfigService$DefaultTheme;->colorHighlight:I

    return v0
.end method

.method public colorPrimary()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/narvii/app/incubator/IncubatorConfigService$DefaultTheme;->colorPrimary:I

    return v0
.end method

.method public drawerImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public fakeActionbarBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 112
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/narvii/app/incubator/IncubatorConfigService$DefaultTheme;->colorPrimary()I

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
