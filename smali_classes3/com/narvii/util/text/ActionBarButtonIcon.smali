.class public Lcom/narvii/util/text/ActionBarButtonIcon;
.super Landroid/graphics/drawable/Drawable;
.source "ActionBarButtonIcon.java"


# static fields
.field static COLOR:I

.field static SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$dimen;->actionbar_icon_size:I

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/narvii/util/text/ActionBarButtonIcon;->SIZE:I

    .line 20
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$color;->actionbar_icon:I

    .line 21
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/narvii/util/text/ActionBarButtonIcon;->COLOR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 27
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    const/4 v0, -0x1

    .line 28
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 51
    sget v0, Lcom/narvii/util/text/ActionBarButtonIcon;->SIZE:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 46
    sget v0, Lcom/narvii/util/text/ActionBarButtonIcon;->SIZE:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
