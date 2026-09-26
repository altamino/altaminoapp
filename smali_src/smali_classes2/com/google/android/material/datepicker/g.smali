.class public final Lcom/google/android/material/datepicker/g;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/fragment/app/DialogFragment;"
    }
.end annotation


# static fields
.field private static final CALENDAR_CONSTRAINTS_KEY:Ljava/lang/String; = "CALENDAR_CONSTRAINTS_KEY"

.field static final CANCEL_BUTTON_TAG:Ljava/lang/Object;

.field static final CONFIRM_BUTTON_TAG:Ljava/lang/Object;

.field private static final DATE_SELECTOR_KEY:Ljava/lang/String; = "DATE_SELECTOR_KEY"

.field public static final INPUT_MODE_CALENDAR:I = 0x0

.field private static final INPUT_MODE_KEY:Ljava/lang/String; = "INPUT_MODE_KEY"

.field public static final INPUT_MODE_TEXT:I = 0x1

.field private static final NEGATIVE_BUTTON_TEXT_KEY:Ljava/lang/String; = "NEGATIVE_BUTTON_TEXT_KEY"

.field private static final NEGATIVE_BUTTON_TEXT_RES_ID_KEY:Ljava/lang/String; = "NEGATIVE_BUTTON_TEXT_RES_ID_KEY"

.field private static final OVERRIDE_THEME_RES_ID:Ljava/lang/String; = "OVERRIDE_THEME_RES_ID"

.field private static final POSITIVE_BUTTON_TEXT_KEY:Ljava/lang/String; = "POSITIVE_BUTTON_TEXT_KEY"

.field private static final POSITIVE_BUTTON_TEXT_RES_ID_KEY:Ljava/lang/String; = "POSITIVE_BUTTON_TEXT_RES_ID_KEY"

.field private static final TITLE_TEXT_KEY:Ljava/lang/String; = "TITLE_TEXT_KEY"

.field private static final TITLE_TEXT_RES_ID_KEY:Ljava/lang/String; = "TITLE_TEXT_RES_ID_KEY"

.field static final TOGGLE_BUTTON_TAG:Ljava/lang/Object;


# instance fields
.field private background:Lcom/google/android/material/shape/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private calendar:Lcom/google/android/material/datepicker/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/f<",
            "TS;>;"
        }
    .end annotation
.end field

.field private calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private confirmButton:Landroid/widget/Button;

.field private dateSelector:Lcom/google/android/material/datepicker/DateSelector;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/DateSelector<",
            "TS;>;"
        }
    .end annotation
.end field

.field private edgeToEdgeEnabled:Z

.field private fullscreen:Z

.field private headerSelectionText:Landroid/widget/TextView;

.field private headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

.field private inputMode:I

.field private negativeButtonText:Ljava/lang/CharSequence;

.field private negativeButtonTextResId:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private final onCancelListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Landroid/content/DialogInterface$OnCancelListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onDismissListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Landroid/content/DialogInterface$OnDismissListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onNegativeButtonClickListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onPositiveButtonClickListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/android/material/datepicker/h<",
            "-TS;>;>;"
        }
    .end annotation
.end field

.field private overrideThemeResId:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field

.field private pickerFragment:Lcom/google/android/material/datepicker/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/m<",
            "TS;>;"
        }
    .end annotation
.end field

.field private positiveButtonText:Ljava/lang/CharSequence;

.field private positiveButtonTextResId:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private titleText:Ljava/lang/CharSequence;

.field private titleTextResId:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CONFIRM_BUTTON_TAG"

    sput-object v0, Lcom/google/android/material/datepicker/g;->CONFIRM_BUTTON_TAG:Ljava/lang/Object;

    const-string v0, "CANCEL_BUTTON_TAG"

    sput-object v0, Lcom/google/android/material/datepicker/g;->CANCEL_BUTTON_TAG:Ljava/lang/Object;

    const-string v0, "TOGGLE_BUTTON_TAG"

    sput-object v0, Lcom/google/android/material/datepicker/g;->TOGGLE_BUTTON_TAG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/material/datepicker/g;->onPositiveButtonClickListeners:Ljava/util/LinkedHashSet;

    .line 11
    .line 12
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/android/material/datepicker/g;->onNegativeButtonClickListeners:Ljava/util/LinkedHashSet;

    .line 18
    .line 19
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/google/android/material/datepicker/g;->onCancelListeners:Ljava/util/LinkedHashSet;

    .line 25
    .line 26
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 30
    .line 31
    iput-object v0, p0, Lcom/google/android/material/datepicker/g;->onDismissListeners:Ljava/util/LinkedHashSet;

    .line 32
    return-void
.end method

.method static synthetic f(Lcom/google/android/material/datepicker/g;)Ljava/util/LinkedHashSet;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/datepicker/g;->onPositiveButtonClickListeners:Ljava/util/LinkedHashSet;

    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/google/android/material/datepicker/g;)Ljava/util/LinkedHashSet;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/datepicker/g;->onNegativeButtonClickListeners:Ljava/util/LinkedHashSet;

    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/google/android/material/datepicker/g;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/datepicker/g;->updateHeader()V

    .line 4
    return-void
.end method

.method static synthetic i(Lcom/google/android/material/datepicker/g;)Lcom/google/android/material/datepicker/DateSelector;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/datepicker/g;->p()Lcom/google/android/material/datepicker/DateSelector;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic j(Lcom/google/android/material/datepicker/g;)Landroid/widget/Button;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/datepicker/g;->confirmButton:Landroid/widget/Button;

    .line 3
    return-object p0
.end method

.method static synthetic k(Lcom/google/android/material/datepicker/g;)Lcom/google/android/material/internal/CheckableImageButton;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/datepicker/g;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    .line 3
    return-object p0
.end method

.method static synthetic l(Lcom/google/android/material/datepicker/g;Lcom/google/android/material/internal/CheckableImageButton;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/material/datepicker/g;->z(Lcom/google/android/material/internal/CheckableImageButton;)V

    .line 4
    return-void
.end method

.method static synthetic m(Lcom/google/android/material/datepicker/g;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/datepicker/g;->y()V

    .line 4
    return-void
.end method

.method private static n(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 6
    .line 7
    .line 8
    const v1, 0x10100a0

    .line 9
    .line 10
    .line 11
    filled-new-array {v1}, [I

    .line 12
    move-result-object v1

    .line 13
    .line 14
    sget v2, Ld3/e;->material_ic_calendar_black_24dp:I

    .line 15
    .line 16
    .line 17
    invoke-static {p0, v2}, Landroidx/appcompat/content/res/AppCompatResources;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 22
    const/4 v1, 0x0

    .line 23
    .line 24
    new-array v1, v1, [I

    .line 25
    .line 26
    sget v2, Ld3/e;->material_ic_edit_black_24dp:I

    .line 27
    .line 28
    .line 29
    invoke-static {p0, v2}, Landroidx/appcompat/content/res/AppCompatResources;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 30
    move-result-object p0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 34
    return-object v0
.end method

.method private o(Landroid/view/Window;)V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/datepicker/g;->edgeToEdgeEnabled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sget v1, Ld3/f;->fullscreen_header:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/google/android/material/internal/u;->e(Landroid/view/View;)Ljava/lang/Integer;

    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x1

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/material/internal/e;->a(Landroid/view/Window;ZLjava/lang/Integer;Ljava/lang/Integer;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 28
    move-result p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 35
    .line 36
    new-instance v2, Lcom/google/android/material/datepicker/g$c;

    .line 37
    .line 38
    .line 39
    invoke-direct {v2, p0, v1, v0, p1}, Lcom/google/android/material/datepicker/g$c;-><init>(Lcom/google/android/material/datepicker/g;ILandroid/view/View;I)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->L0(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 43
    .line 44
    iput-boolean v3, p0, Lcom/google/android/material/datepicker/g;->edgeToEdgeEnabled:Z

    .line 45
    return-void
.end method

.method private p()Lcom/google/android/material/datepicker/DateSelector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/datepicker/DateSelector<",
            "TS;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "DATE_SELECTOR_KEY"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lcom/google/android/material/datepicker/DateSelector;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/android/material/datepicker/g;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    .line 21
    return-object v0
.end method

.method private static r(Landroid/content/Context;)I
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    sget v0, Ld3/d;->mtrl_calendar_content_padding:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/google/android/material/datepicker/Month;->h()Lcom/google/android/material/datepicker/Month;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    iget v1, v1, Lcom/google/android/material/datepicker/Month;->daysInWeek:I

    .line 17
    .line 18
    sget v2, Ld3/d;->mtrl_calendar_day_width:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 22
    move-result v2

    .line 23
    .line 24
    sget v3, Ld3/d;->mtrl_calendar_month_horizontal_padding:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 28
    move-result p0

    .line 29
    .line 30
    mul-int/lit8 v0, v0, 0x2

    .line 31
    mul-int/2addr v2, v1

    .line 32
    add-int/2addr v0, v2

    .line 33
    .line 34
    add-int/lit8 v1, v1, -0x1

    .line 35
    mul-int/2addr v1, p0

    .line 36
    add-int/2addr v0, v1

    .line 37
    return v0
.end method

.method private t(Landroid/content/Context;)I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/material/datepicker/g;->overrideThemeResId:I

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return v0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/datepicker/g;->p()Lcom/google/android/material/datepicker/DateSelector;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, p1}, Lcom/google/android/material/datepicker/DateSelector;->d(Landroid/content/Context;)I

    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method private u(Landroid/content/Context;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    .line 3
    .line 4
    sget-object v1, Lcom/google/android/material/datepicker/g;->TOGGLE_BUTTON_TAG:Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/google/android/material/datepicker/g;->n(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17
    .line 18
    iget-object p1, p0, Lcom/google/android/material/datepicker/g;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    .line 19
    .line 20
    iget v0, p0, Lcom/google/android/material/datepicker/g;->inputMode:I

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    .line 29
    .line 30
    iget-object p1, p0, Lcom/google/android/material/datepicker/g;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    .line 31
    const/4 v0, 0x0

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->u0(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 35
    .line 36
    iget-object p1, p0, Lcom/google/android/material/datepicker/g;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/material/datepicker/g;->z(Lcom/google/android/material/internal/CheckableImageButton;)V

    .line 40
    .line 41
    iget-object p1, p0, Lcom/google/android/material/datepicker/g;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    .line 42
    .line 43
    new-instance v0, Lcom/google/android/material/datepicker/g$e;

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, p0}, Lcom/google/android/material/datepicker/g$e;-><init>(Lcom/google/android/material/datepicker/g;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method

.method private updateHeader()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/g;->q()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/material/datepicker/g;->headerSelectionText:Landroid/widget/TextView;

    .line 7
    .line 8
    sget v2, Ld3/j;->mtrl_picker_announce_current_selection:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x1

    .line 14
    .line 15
    new-array v3, v3, [Ljava/lang/Object;

    .line 16
    const/4 v4, 0x0

    .line 17
    .line 18
    aput-object v0, v3, v4

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    iget-object v1, p0, Lcom/google/android/material/datepicker/g;->headerSelectionText:Landroid/widget/TextView;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    return-void
.end method

.method static v(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const v0, 0x101020d

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lcom/google/android/material/datepicker/g;->x(Landroid/content/Context;I)Z

    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method static w(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    sget v0, Ld3/b;->nestedScrollable:I

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/google/android/material/datepicker/g;->x(Landroid/content/Context;I)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method static x(Landroid/content/Context;I)Z
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    sget v0, Ld3/b;->materialCalendarStyle:I

    .line 3
    .line 4
    const-class v1, Lcom/google/android/material/datepicker/f;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0, v1}, Lcom/google/android/material/resources/b;->d(Landroid/content/Context;ILjava/lang/String;)I

    .line 12
    move-result v0

    .line 13
    .line 14
    .line 15
    filled-new-array {p1}, [I

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 20
    move-result-object p0

    .line 21
    const/4 p1, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 25
    move-result p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    return p1
.end method

.method private y()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/google/android/material/datepicker/g;->t(Landroid/content/Context;)I

    .line 8
    move-result v0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/google/android/material/datepicker/g;->p()Lcom/google/android/material/datepicker/DateSelector;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/android/material/datepicker/g;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v0, v2}, Lcom/google/android/material/datepicker/f;->x(Lcom/google/android/material/datepicker/DateSelector;ILcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/f;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    iput-object v1, p0, Lcom/google/android/material/datepicker/g;->calendar:Lcom/google/android/material/datepicker/f;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/android/material/datepicker/g;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/google/android/material/datepicker/g;->p()Lcom/google/android/material/datepicker/DateSelector;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    iget-object v2, p0, Lcom/google/android/material/datepicker/g;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v0, v2}, Lcom/google/android/material/datepicker/i;->h(Lcom/google/android/material/datepicker/DateSelector;ILcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/i;

    .line 38
    move-result-object v0

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->calendar:Lcom/google/android/material/datepicker/f;

    .line 42
    .line 43
    :goto_0
    iput-object v0, p0, Lcom/google/android/material/datepicker/g;->pickerFragment:Lcom/google/android/material/datepicker/m;

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/google/android/material/datepicker/g;->updateHeader()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    sget v1, Ld3/f;->mtrl_calendar_frame:I

    .line 57
    .line 58
    iget-object v2, p0, Lcom/google/android/material/datepicker/g;->pickerFragment:Lcom/google/android/material/datepicker/m;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->u(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->l()V

    .line 65
    .line 66
    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->pickerFragment:Lcom/google/android/material/datepicker/m;

    .line 67
    .line 68
    new-instance v1, Lcom/google/android/material/datepicker/g$d;

    .line 69
    .line 70
    .line 71
    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/g$d;-><init>(Lcom/google/android/material/datepicker/g;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/m;->f(Lcom/google/android/material/datepicker/l;)Z

    .line 75
    return-void
.end method

.method private z(Lcom/google/android/material/internal/CheckableImageButton;)V
    .locals 1
    .param p1    # Lcom/google/android/material/internal/CheckableImageButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    sget v0, Ld3/j;->mtrl_picker_toggle_to_calendar_input_mode:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    sget v0, Ld3/j;->mtrl_picker_toggle_to_text_input_mode:I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 35
    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->onCancelListeners:Ljava/util/LinkedHashSet;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Landroid/content/DialogInterface$OnCancelListener;

    .line 19
    .line 20
    .line 21
    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 26
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    :cond_0
    const-string v0, "OVERRIDE_THEME_RES_ID"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 15
    move-result v0

    .line 16
    .line 17
    iput v0, p0, Lcom/google/android/material/datepicker/g;->overrideThemeResId:I

    .line 18
    .line 19
    const-string v0, "DATE_SELECTOR_KEY"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    check-cast v0, Lcom/google/android/material/datepicker/DateSelector;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/google/android/material/datepicker/g;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    .line 28
    .line 29
    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    check-cast v0, Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/google/android/material/datepicker/g;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 38
    .line 39
    const-string v0, "TITLE_TEXT_RES_ID_KEY"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 43
    move-result v0

    .line 44
    .line 45
    iput v0, p0, Lcom/google/android/material/datepicker/g;->titleTextResId:I

    .line 46
    .line 47
    const-string v0, "TITLE_TEXT_KEY"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    iput-object v0, p0, Lcom/google/android/material/datepicker/g;->titleText:Ljava/lang/CharSequence;

    .line 54
    .line 55
    const-string v0, "INPUT_MODE_KEY"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 59
    move-result v0

    .line 60
    .line 61
    iput v0, p0, Lcom/google/android/material/datepicker/g;->inputMode:I

    .line 62
    .line 63
    const-string v0, "POSITIVE_BUTTON_TEXT_RES_ID_KEY"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 67
    move-result v0

    .line 68
    .line 69
    iput v0, p0, Lcom/google/android/material/datepicker/g;->positiveButtonTextResId:I

    .line 70
    .line 71
    const-string v0, "POSITIVE_BUTTON_TEXT_KEY"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    iput-object v0, p0, Lcom/google/android/material/datepicker/g;->positiveButtonText:Ljava/lang/CharSequence;

    .line 78
    .line 79
    const-string v0, "NEGATIVE_BUTTON_TEXT_RES_ID_KEY"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 83
    move-result v0

    .line 84
    .line 85
    iput v0, p0, Lcom/google/android/material/datepicker/g;->negativeButtonTextResId:I

    .line 86
    .line 87
    const-string v0, "NEGATIVE_BUTTON_TEXT_KEY"

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    iput-object p1, p0, Lcom/google/android/material/datepicker/g;->negativeButtonText:Ljava/lang/CharSequence;

    .line 94
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance p1, Landroid/app/Dialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v1}, Lcom/google/android/material/datepicker/g;->t(Landroid/content/Context;)I

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/google/android/material/datepicker/g;->v(Landroid/content/Context;)Z

    .line 25
    move-result v1

    .line 26
    .line 27
    iput-boolean v1, p0, Lcom/google/android/material/datepicker/g;->fullscreen:Z

    .line 28
    .line 29
    sget v1, Ld3/b;->colorSurface:I

    .line 30
    .line 31
    const-class v2, Lcom/google/android/material/datepicker/g;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1, v2}, Lcom/google/android/material/resources/b;->d(Landroid/content/Context;ILjava/lang/String;)I

    .line 39
    move-result v1

    .line 40
    .line 41
    new-instance v2, Lcom/google/android/material/shape/g;

    .line 42
    .line 43
    sget v3, Ld3/b;->materialCalendarStyle:I

    .line 44
    .line 45
    sget v4, Ld3/k;->Widget_MaterialComponents_MaterialCalendar:I

    .line 46
    const/4 v5, 0x0

    .line 47
    .line 48
    .line 49
    invoke-direct {v2, v0, v5, v3, v4}, Lcom/google/android/material/shape/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    .line 51
    iput-object v2, p0, Lcom/google/android/material/datepicker/g;->background:Lcom/google/android/material/shape/g;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v0}, Lcom/google/android/material/shape/g;->O(Landroid/content/Context;)V

    .line 55
    .line 56
    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->background:Lcom/google/android/material/shape/g;

    .line 57
    .line 58
    .line 59
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/g;->Z(Landroid/content/res/ColorStateList;)V

    .line 64
    .line 65
    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->background:Lcom/google/android/material/shape/g;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    .line 76
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->y(Landroid/view/View;)F

    .line 77
    move-result v1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/g;->Y(F)V

    .line 81
    return-object p1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-boolean p3, p0, Lcom/google/android/material/datepicker/g;->fullscreen:Z

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    sget p3, Ld3/h;->mtrl_picker_fullscreen:I

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    sget p3, Ld3/h;->mtrl_picker_dialog:I

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    iget-boolean p3, p0, Lcom/google/android/material/datepicker/g;->fullscreen:Z

    .line 20
    .line 21
    if-eqz p3, :cond_1

    .line 22
    .line 23
    sget p3, Ld3/f;->mtrl_calendar_frame:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object p3

    .line 28
    .line 29
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 30
    .line 31
    .line 32
    invoke-static {p2}, Lcom/google/android/material/datepicker/g;->r(Landroid/content/Context;)I

    .line 33
    move-result v1

    .line 34
    const/4 v2, -0x2

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_1
    sget p3, Ld3/f;->mtrl_calendar_main_pane:I

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object p3

    .line 48
    .line 49
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 50
    .line 51
    .line 52
    invoke-static {p2}, Lcom/google/android/material/datepicker/g;->r(Landroid/content/Context;)I

    .line 53
    move-result v1

    .line 54
    const/4 v2, -0x1

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    .line 62
    :goto_1
    sget p3, Ld3/f;->mtrl_picker_header_selection_text:I

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    move-result-object p3

    .line 67
    .line 68
    check-cast p3, Landroid/widget/TextView;

    .line 69
    .line 70
    iput-object p3, p0, Lcom/google/android/material/datepicker/g;->headerSelectionText:Landroid/widget/TextView;

    .line 71
    const/4 v0, 0x1

    .line 72
    .line 73
    .line 74
    invoke-static {p3, v0}, Landroidx/core/view/ViewCompat;->w0(Landroid/view/View;I)V

    .line 75
    .line 76
    sget p3, Ld3/f;->mtrl_picker_header_toggle:I

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    move-result-object p3

    .line 81
    .line 82
    check-cast p3, Lcom/google/android/material/internal/CheckableImageButton;

    .line 83
    .line 84
    iput-object p3, p0, Lcom/google/android/material/datepicker/g;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    .line 85
    .line 86
    sget p3, Ld3/f;->mtrl_picker_title_text:I

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    move-result-object p3

    .line 91
    .line 92
    check-cast p3, Landroid/widget/TextView;

    .line 93
    .line 94
    iget-object v1, p0, Lcom/google/android/material/datepicker/g;->titleText:Ljava/lang/CharSequence;

    .line 95
    .line 96
    if-eqz v1, :cond_2

    .line 97
    .line 98
    .line 99
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    goto :goto_2

    .line 101
    .line 102
    :cond_2
    iget v1, p0, Lcom/google/android/material/datepicker/g;->titleTextResId:I

    .line 103
    .line 104
    .line 105
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 106
    .line 107
    .line 108
    :goto_2
    invoke-direct {p0, p2}, Lcom/google/android/material/datepicker/g;->u(Landroid/content/Context;)V

    .line 109
    .line 110
    sget p2, Ld3/f;->confirm_button:I

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    move-result-object p2

    .line 115
    .line 116
    check-cast p2, Landroid/widget/Button;

    .line 117
    .line 118
    iput-object p2, p0, Lcom/google/android/material/datepicker/g;->confirmButton:Landroid/widget/Button;

    .line 119
    .line 120
    .line 121
    invoke-direct {p0}, Lcom/google/android/material/datepicker/g;->p()Lcom/google/android/material/datepicker/DateSelector;

    .line 122
    move-result-object p2

    .line 123
    .line 124
    .line 125
    invoke-interface {p2}, Lcom/google/android/material/datepicker/DateSelector;->L()Z

    .line 126
    move-result p2

    .line 127
    .line 128
    if-eqz p2, :cond_3

    .line 129
    .line 130
    iget-object p2, p0, Lcom/google/android/material/datepicker/g;->confirmButton:Landroid/widget/Button;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 134
    goto :goto_3

    .line 135
    .line 136
    :cond_3
    iget-object p2, p0, Lcom/google/android/material/datepicker/g;->confirmButton:Landroid/widget/Button;

    .line 137
    const/4 p3, 0x0

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2, p3}, Landroid/view/View;->setEnabled(Z)V

    .line 141
    .line 142
    :goto_3
    iget-object p2, p0, Lcom/google/android/material/datepicker/g;->confirmButton:Landroid/widget/Button;

    .line 143
    .line 144
    sget-object p3, Lcom/google/android/material/datepicker/g;->CONFIRM_BUTTON_TAG:Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 148
    .line 149
    iget-object p2, p0, Lcom/google/android/material/datepicker/g;->positiveButtonText:Ljava/lang/CharSequence;

    .line 150
    .line 151
    if-eqz p2, :cond_4

    .line 152
    .line 153
    iget-object p3, p0, Lcom/google/android/material/datepicker/g;->confirmButton:Landroid/widget/Button;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    goto :goto_4

    .line 158
    .line 159
    :cond_4
    iget p2, p0, Lcom/google/android/material/datepicker/g;->positiveButtonTextResId:I

    .line 160
    .line 161
    if-eqz p2, :cond_5

    .line 162
    .line 163
    iget-object p3, p0, Lcom/google/android/material/datepicker/g;->confirmButton:Landroid/widget/Button;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(I)V

    .line 167
    .line 168
    :cond_5
    :goto_4
    iget-object p2, p0, Lcom/google/android/material/datepicker/g;->confirmButton:Landroid/widget/Button;

    .line 169
    .line 170
    new-instance p3, Lcom/google/android/material/datepicker/g$a;

    .line 171
    .line 172
    .line 173
    invoke-direct {p3, p0}, Lcom/google/android/material/datepicker/g$a;-><init>(Lcom/google/android/material/datepicker/g;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    .line 178
    sget p2, Ld3/f;->cancel_button:I

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 182
    move-result-object p2

    .line 183
    .line 184
    check-cast p2, Landroid/widget/Button;

    .line 185
    .line 186
    sget-object p3, Lcom/google/android/material/datepicker/g;->CANCEL_BUTTON_TAG:Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 190
    .line 191
    iget-object p3, p0, Lcom/google/android/material/datepicker/g;->negativeButtonText:Ljava/lang/CharSequence;

    .line 192
    .line 193
    if-eqz p3, :cond_6

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    goto :goto_5

    .line 198
    .line 199
    :cond_6
    iget p3, p0, Lcom/google/android/material/datepicker/g;->negativeButtonTextResId:I

    .line 200
    .line 201
    if-eqz p3, :cond_7

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 205
    .line 206
    :cond_7
    :goto_5
    new-instance p3, Lcom/google/android/material/datepicker/g$b;

    .line 207
    .line 208
    .line 209
    invoke-direct {p3, p0}, Lcom/google/android/material/datepicker/g$b;-><init>(Lcom/google/android/material/datepicker/g;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    return-object p1
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->onDismissListeners:Ljava/util/LinkedHashSet;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Landroid/content/DialogInterface$OnDismissListener;

    .line 19
    .line 20
    .line 21
    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Landroid/view/ViewGroup;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 37
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "OVERRIDE_THEME_RES_ID"

    .line 6
    .line 7
    iget v1, p0, Lcom/google/android/material/datepicker/g;->overrideThemeResId:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 11
    .line 12
    const-string v0, "DATE_SELECTOR_KEY"

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/material/datepicker/g;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 18
    .line 19
    new-instance v0, Lcom/google/android/material/datepicker/CalendarConstraints$b;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/material/datepicker/g;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Lcom/google/android/material/datepicker/CalendarConstraints$b;-><init>(Lcom/google/android/material/datepicker/CalendarConstraints;)V

    .line 25
    .line 26
    iget-object v1, p0, Lcom/google/android/material/datepicker/g;->calendar:Lcom/google/android/material/datepicker/f;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/f;->s()Lcom/google/android/material/datepicker/Month;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    iget-object v1, p0, Lcom/google/android/material/datepicker/g;->calendar:Lcom/google/android/material/datepicker/f;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/f;->s()Lcom/google/android/material/datepicker/Month;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    iget-wide v1, v1, Lcom/google/android/material/datepicker/Month;->timeInMillis:J

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/datepicker/CalendarConstraints$b;->b(J)Lcom/google/android/material/datepicker/CalendarConstraints$b;

    .line 44
    .line 45
    :cond_0
    const-string v1, "CALENDAR_CONSTRAINTS_KEY"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints$b;->a()Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 53
    .line 54
    const-string v0, "TITLE_TEXT_RES_ID_KEY"

    .line 55
    .line 56
    iget v1, p0, Lcom/google/android/material/datepicker/g;->titleTextResId:I

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 60
    .line 61
    const-string v0, "TITLE_TEXT_KEY"

    .line 62
    .line 63
    iget-object v1, p0, Lcom/google/android/material/datepicker/g;->titleText:Ljava/lang/CharSequence;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    const-string v0, "POSITIVE_BUTTON_TEXT_RES_ID_KEY"

    .line 69
    .line 70
    iget v1, p0, Lcom/google/android/material/datepicker/g;->positiveButtonTextResId:I

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 74
    .line 75
    const-string v0, "POSITIVE_BUTTON_TEXT_KEY"

    .line 76
    .line 77
    iget-object v1, p0, Lcom/google/android/material/datepicker/g;->positiveButtonText:Ljava/lang/CharSequence;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    const-string v0, "NEGATIVE_BUTTON_TEXT_RES_ID_KEY"

    .line 83
    .line 84
    iget v1, p0, Lcom/google/android/material/datepicker/g;->negativeButtonTextResId:I

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 88
    .line 89
    const-string v0, "NEGATIVE_BUTTON_TEXT_KEY"

    .line 90
    .line 91
    iget-object v1, p0, Lcom/google/android/material/datepicker/g;->negativeButtonText:Ljava/lang/CharSequence;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 95
    return-void
.end method

.method public onStart()V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->requireDialog()Landroid/app/Dialog;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/google/android/material/datepicker/g;->fullscreen:Z

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    const/4 v1, -0x1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/material/datepicker/g;->background:Lcom/google/android/material/shape/g;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0}, Lcom/google/android/material/datepicker/g;->o(Landroid/view/Window;)V

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v1, -0x2

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    sget v2, Ld3/d;->mtrl_calendar_dialog_background_inset:I

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 42
    move-result v8

    .line 43
    .line 44
    new-instance v1, Landroid/graphics/Rect;

    .line 45
    .line 46
    .line 47
    invoke-direct {v1, v8, v8, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 48
    .line 49
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    .line 50
    .line 51
    iget-object v4, p0, Lcom/google/android/material/datepicker/g;->background:Lcom/google/android/material/shape/g;

    .line 52
    move-object v3, v2

    .line 53
    move v5, v8

    .line 54
    move v6, v8

    .line 55
    move v7, v8

    .line 56
    .line 57
    .line 58
    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    new-instance v2, Lj3/a;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->requireDialog()Landroid/app/Dialog;

    .line 71
    move-result-object v3

    .line 72
    .line 73
    .line 74
    invoke-direct {v2, v3, v1}, Lj3/a;-><init>(Landroid/app/Dialog;Landroid/graphics/Rect;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/datepicker/g;->y()V

    .line 81
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->pickerFragment:Lcom/google/android/material/datepicker/m;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/m;->g()V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStop()V

    .line 9
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/datepicker/g;->p()Lcom/google/android/material/datepicker/DateSelector;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Lcom/google/android/material/datepicker/DateSelector;->b0(Landroid/content/Context;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final s()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/datepicker/g;->p()Lcom/google/android/material/datepicker/DateSelector;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/google/android/material/datepicker/DateSelector;->Q()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
