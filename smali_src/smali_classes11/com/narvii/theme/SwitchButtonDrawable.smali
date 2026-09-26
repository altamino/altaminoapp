.class public Lcom/narvii/theme/SwitchButtonDrawable;
.super Landroid/graphics/drawable/StateListDrawable;
.source "SourceFile"


# static fields
.field protected static final paint:Landroid/graphics/Paint;

.field protected static size:I

.field protected static final state_checked_normal:[I

.field protected static final state_checked_pressed:[I

.field protected static final state_uncheck_normal:[I

.field protected static final state_uncheck_pressed:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    sput-object v0, Lcom/narvii/theme/SwitchButtonDrawable;->state_uncheck_normal:[I

    .line 6
    .line 7
    .line 8
    const v0, 0x10100a7

    .line 9
    .line 10
    .line 11
    filled-new-array {v0}, [I

    .line 12
    move-result-object v1

    .line 13
    .line 14
    sput-object v1, Lcom/narvii/theme/SwitchButtonDrawable;->state_uncheck_pressed:[I

    .line 15
    .line 16
    .line 17
    const v1, 0x10100a0

    .line 18
    .line 19
    .line 20
    filled-new-array {v1}, [I

    .line 21
    move-result-object v2

    .line 22
    .line 23
    sput-object v2, Lcom/narvii/theme/SwitchButtonDrawable;->state_checked_normal:[I

    .line 24
    .line 25
    .line 26
    filled-new-array {v1, v0}, [I

    .line 27
    move-result-object v0

    .line 28
    .line 29
    sput-object v0, Lcom/narvii/theme/SwitchButtonDrawable;->state_checked_pressed:[I

    .line 30
    .line 31
    new-instance v0, Landroid/graphics/Paint;

    .line 32
    .line 33
    .line 34
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 35
    .line 36
    sput-object v0, Lcom/narvii/theme/SwitchButtonDrawable;->paint:Landroid/graphics/Paint;

    .line 37
    const/4 v1, 0x1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 41
    .line 42
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 4
    .line 5
    const-string v0, "config"

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/theme/SwitchButtonDrawable;->buildStates(Lcom/narvii/app/NVContext;)V

    .line 15
    .line 16
    sget v1, Lcom/narvii/theme/SwitchButtonDrawable;->size:I

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    sget v1, Lcom/narvii/lib/R$dimen;->switch_button_decorator:I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 32
    move-result p1

    .line 33
    .line 34
    sput p1, Lcom/narvii/theme/SwitchButtonDrawable;->size:I

    .line 35
    .line 36
    :cond_0
    sget-object p1, Lcom/narvii/theme/SwitchButtonDrawable;->paint:Landroid/graphics/Paint;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 44
    move-result v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    return-void
.end method


# virtual methods
.method protected buildStates(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "config"

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 16
    move-result p1

    .line 17
    .line 18
    sget-object v0, Lcom/narvii/theme/SwitchButtonDrawable;->state_checked_pressed:[I

    .line 19
    .line 20
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 27
    .line 28
    sget-object v0, Lcom/narvii/theme/SwitchButtonDrawable;->state_checked_normal:[I

    .line 29
    .line 30
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 37
    .line 38
    sget-object p1, Lcom/narvii/theme/SwitchButtonDrawable;->state_uncheck_pressed:[I

    .line 39
    .line 40
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 41
    const/4 v1, -0x1

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 48
    .line 49
    sget-object p1, Lcom/narvii/theme/SwitchButtonDrawable;->state_uncheck_normal:[I

    .line 50
    .line 51
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 58
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 4
    return-void
.end method
