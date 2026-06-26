.class public Lcom/narvii/theme/SwitchButtonDrawable;
.super Landroid/graphics/drawable/StateListDrawable;
.source "SwitchButtonDrawable.java"


# static fields
.field protected static final paint:Landroid/graphics/Paint;

.field protected static size:I

.field protected static final state_checked_normal:[I

.field protected static final state_checked_pressed:[I

.field protected static final state_uncheck_normal:[I

.field protected static final state_uncheck_pressed:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 16
    sput-object v1, Lcom/narvii/theme/SwitchButtonDrawable;->state_uncheck_normal:[I

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x10100a7

    aput v3, v2, v0

    .line 17
    sput-object v2, Lcom/narvii/theme/SwitchButtonDrawable;->state_uncheck_pressed:[I

    new-array v2, v1, [I

    const v3, 0x10100a0

    aput v3, v2, v0

    .line 18
    sput-object v2, Lcom/narvii/theme/SwitchButtonDrawable;->state_checked_normal:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 19
    fill-array-data v0, :array_0

    sput-object v0, Lcom/narvii/theme/SwitchButtonDrawable;->state_checked_pressed:[I

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/narvii/theme/SwitchButtonDrawable;->paint:Landroid/graphics/Paint;

    .line 26
    sget-object v0, Lcom/narvii/theme/SwitchButtonDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 27
    sget-object v0, Lcom/narvii/theme/SwitchButtonDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void

    :array_0
    .array-data 4
        0x10100a0
        0x10100a7
    .end array-data
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const-string v0, "config"

    .line 31
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 32
    invoke-virtual {p0, p1}, Lcom/narvii/theme/SwitchButtonDrawable;->buildStates(Lcom/narvii/app/NVContext;)V

    .line 33
    sget v1, Lcom/narvii/theme/SwitchButtonDrawable;->size:I

    if-nez v1, :cond_0

    .line 34
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/narvii/lib/R$dimen;->switch_button_decorator:I

    .line 35
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/narvii/theme/SwitchButtonDrawable;->size:I

    .line 38
    :cond_0
    sget-object p1, Lcom/narvii/theme/SwitchButtonDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected buildStates(Lcom/narvii/app/NVContext;)V
    .locals 2

    const-string v0, "config"

    .line 42
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 43
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result p1

    .line 44
    sget-object v0, Lcom/narvii/theme/SwitchButtonDrawable;->state_checked_pressed:[I

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 45
    sget-object v0, Lcom/narvii/theme/SwitchButtonDrawable;->state_checked_normal:[I

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 48
    sget-object p1, Lcom/narvii/theme/SwitchButtonDrawable;->state_uncheck_pressed:[I

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 49
    sget-object p1, Lcom/narvii/theme/SwitchButtonDrawable;->state_uncheck_normal:[I

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
