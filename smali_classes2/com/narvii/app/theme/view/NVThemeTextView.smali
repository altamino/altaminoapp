.class public final Lcom/narvii/app/theme/view/NVThemeTextView;
.super Landroid/widget/TextView;
.source "NVThemeTextView.kt"

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


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private darkBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private darkTextColor:Landroid/content/res/ColorStateList;

.field private lightBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private lightTextColor:Landroid/content/res/ColorStateList;

.field private nvThemeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/app/theme/view/NVThemeTextView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/app/theme/view/NVThemeTextView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/app/theme/view/NVThemeTextView;->Companion:Lcom/narvii/app/theme/view/NVThemeTextView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/narvii/app/theme/view/NVThemeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/narvii/app/theme/view/NVThemeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 15
    iput p3, p0, Lcom/narvii/app/theme/view/NVThemeTextView;->nvThemeValue:I

    .line 30
    sget-object p3, Lcom/narvii/lib/R$styleable;->NVDarkTheme:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 31
    sget-object p3, Lcom/narvii/app/theme/view/NVThemeTextView;->Companion:Lcom/narvii/app/theme/view/NVThemeTextView$Companion;

    const-string v0, "a"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p2, p1}, Lcom/narvii/app/theme/view/NVThemeTextView$Companion;->getDarkTextColor(Landroid/content/res/TypedArray;Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/narvii/app/theme/view/NVThemeTextView;->darkTextColor:Landroid/content/res/ColorStateList;

    .line 32
    sget-object p3, Lcom/narvii/app/theme/view/NVThemeView;->Companion:Lcom/narvii/app/theme/view/NVThemeView$Companion;

    invoke-virtual {p3, p2, p1}, Lcom/narvii/app/theme/view/NVThemeView$Companion;->getDarkBackgroundDrawable(Landroid/content/res/TypedArray;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/app/theme/view/NVThemeTextView;->darkBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 33
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/app/theme/view/NVThemeTextView;->lightTextColor:Landroid/content/res/ColorStateList;

    .line 35
    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/app/theme/view/NVThemeTextView;->lightBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 13
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/app/theme/view/NVThemeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final isDarkNvTheme()Z
    .locals 2

    .line 67
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
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/app/theme/view/NVThemeTextView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/app/theme/view/NVThemeTextView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/theme/view/NVThemeTextView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/app/theme/view/NVThemeTextView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/app/theme/view/NVThemeTextView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public onThemeChange(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/narvii/app/theme/view/NVThemeTextView;->darkTextColor:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_1

    .line 50
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 52
    :cond_1
    iget-object p1, p0, Lcom/narvii/app/theme/view/NVThemeTextView;->darkBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    .line 53
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 41
    :cond_2
    iget-object p1, p0, Lcom/narvii/app/theme/view/NVThemeTextView;->lightTextColor:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_3

    .line 42
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 44
    :cond_3
    iget-object p1, p0, Lcom/narvii/app/theme/view/NVThemeTextView;->lightBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    .line 45
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setDarkBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/narvii/app/theme/view/NVThemeTextView;->darkBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 61
    invoke-direct {p0}, Lcom/narvii/app/theme/view/NVThemeTextView;->isDarkNvTheme()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/narvii/app/theme/view/NVThemeTextView;->darkBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
