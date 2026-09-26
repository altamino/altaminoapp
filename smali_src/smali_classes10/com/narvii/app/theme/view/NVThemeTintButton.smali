.class public final Lcom/narvii/app/theme/view/NVThemeTintButton;
.super Lcom/narvii/widget/TintButton;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/app/theme/NVThemeObserver;


# instance fields
.field private darkTintColor:Landroid/content/res/ColorStateList;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lightTintColor:Landroid/content/res/ColorStateList;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/narvii/app/theme/view/NVThemeTintButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/app/theme/view/NVThemeTintButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/TintButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    sget-object p3, Lcom/narvii/lib/R$styleable;->NVDarkTheme:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget p2, Lcom/narvii/lib/R$styleable;->NVDarkTheme_nv_dark_tintColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/app/theme/view/NVThemeTintButton;->darkTintColor:Landroid/content/res/ColorStateList;

    .line 4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 5
    invoke-virtual {p0}, Lcom/narvii/widget/TintButton;->getTintColorStateList()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/app/theme/view/NVThemeTintButton;->lightTintColor:Landroid/content/res/ColorStateList;

    return-void
.end method


# virtual methods
.method public onThemeChange(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    const/4 v0, 0x2

    .line 5
    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    iget-object p1, p0, Lcom/narvii/app/theme/view/NVThemeTintButton;->darkTintColor:Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/widget/TintButton;->setTintColor(Landroid/content/res/ColorStateList;)V

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_1
    iget-object p1, p0, Lcom/narvii/app/theme/view/NVThemeTintButton;->lightTintColor:Landroid/content/res/ColorStateList;

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/narvii/widget/TintButton;->setTintColor(Landroid/content/res/ColorStateList;)V

    .line 23
    :cond_2
    :goto_0
    return-void
.end method
