.class public final Lcom/narvii/app/theme/view/NVThemeTextView;
.super Landroid/widget/TextView;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/app/theme/NVThemeObserver;
.implements Lcom/narvii/app/theme/view/NVDarkBackground;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/app/theme/view/NVThemeTextView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/app/theme/view/NVThemeTextView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private darkBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private darkTextColor:Landroid/content/res/ColorStateList;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lightBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lightTextColor:Landroid/content/res/ColorStateList;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private nvThemeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/app/theme/view/NVThemeTextView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/app/theme/view/NVThemeTextView$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/app/theme/view/NVThemeTextView;->Companion:Lcom/narvii/app/theme/view/NVThemeTextView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/narvii/app/theme/view/NVThemeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/narvii/app/theme/view/NVThemeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    iput p3, p0, Lcom/narvii/app/theme/view/NVThemeTextView;->nvThemeValue:I

    .line 4
    sget-object p3, Lcom/narvii/lib/R$styleable;->NVDarkTheme:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string p3, "obtainStyledAttributes(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p3, Lcom/narvii/app/theme/view/NVThemeTextView;->Companion:Lcom/narvii/app/theme/view/NVThemeTextView$Companion;

    .line 5
    invoke-virtual {p3, p2, p1}, Lcom/narvii/app/theme/view/NVThemeTextView$Companion;->getDarkTextColor(Landroid/content/res/TypedArray;Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/narvii/app/theme/view/NVThemeTextView;->darkTextColor:Landroid/content/res/ColorStateList;

    .line 6
    sget-object p3, Lcom/narvii/app/theme/view/NVThemeView;->Companion:Lcom/narvii/app/theme/view/NVThemeView$Companion;

    invoke-virtual {p3, p2, p1}, Lcom/narvii/app/theme/view/NVThemeView$Companion;->getDarkBackgroundDrawable(Landroid/content/res/TypedArray;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/app/theme/view/NVThemeTextView;->darkBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 7
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/app/theme/view/NVThemeTextView;->lightTextColor:Landroid/content/res/ColorStateList;

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/app/theme/view/NVThemeTextView;->lightBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 10
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/app/theme/view/NVThemeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final isDarkNvTheme()Z
    .locals 2

    iget v0, p0, Lcom/narvii/app/theme/view/NVThemeTextView;->nvThemeValue:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public onThemeChange(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-eq p1, v0, :cond_2

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
    iget-object p1, p0, Lcom/narvii/app/theme/view/NVThemeTextView;->darkTextColor:Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 15
    .line 16
    :cond_1
    iget-object p1, p0, Lcom/narvii/app/theme/view/NVThemeTextView;->darkBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    if-eqz p1, :cond_4

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_2
    iget-object p1, p0, Lcom/narvii/app/theme/view/NVThemeTextView;->lightTextColor:Landroid/content/res/ColorStateList;

    .line 25
    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 30
    .line 31
    :cond_3
    iget-object p1, p0, Lcom/narvii/app/theme/view/NVThemeTextView;->lightBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    if-eqz p1, :cond_4

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 37
    :cond_4
    :goto_0
    return-void
.end method

.method public setDarkBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/app/theme/view/NVThemeTextView;->darkBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/app/theme/view/NVThemeTextView;->isDarkNvTheme()Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/app/theme/view/NVThemeTextView;->darkBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 14
    :cond_0
    return-void
.end method
