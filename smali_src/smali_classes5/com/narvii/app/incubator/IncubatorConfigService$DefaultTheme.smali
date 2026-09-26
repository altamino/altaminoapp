.class Lcom/narvii/app/incubator/IncubatorConfigService$DefaultTheme;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/app/incubator/IncubatorConfigService$DefaultTheme;->this$0:Lcom/narvii/app/incubator/IncubatorConfigService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/app/incubator/IncubatorConfigService;->f(Lcom/narvii/app/incubator/IncubatorConfigService;)Lcom/narvii/app/NVContext;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    const v1, 0x7f0600a1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 24
    move-result v0

    .line 25
    .line 26
    iput v0, p0, Lcom/narvii/app/incubator/IncubatorConfigService$DefaultTheme;->colorPrimary:I

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lcom/narvii/app/incubator/IncubatorConfigService;->f(Lcom/narvii/app/incubator/IncubatorConfigService;)Lcom/narvii/app/NVContext;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    const v0, 0x7f0600a2

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 45
    move-result p1

    .line 46
    .line 47
    iput p1, p0, Lcom/narvii/app/incubator/IncubatorConfigService$DefaultTheme;->colorHighlight:I

    .line 48
    return-void
.end method


# virtual methods
.method public actionbarBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/incubator/IncubatorConfigService$DefaultTheme;->colorPrimary()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 10
    return-object v0
.end method

.method public colorHighlight()I
    .locals 1

    iget v0, p0, Lcom/narvii/app/incubator/IncubatorConfigService$DefaultTheme;->colorHighlight:I

    return v0
.end method

.method public colorPrimary()I
    .locals 1

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

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/incubator/IncubatorConfigService$DefaultTheme;->colorPrimary()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 10
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
