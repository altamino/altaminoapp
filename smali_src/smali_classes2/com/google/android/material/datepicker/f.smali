.class public final Lcom/google/android/material/datepicker/f;
.super Lcom/google/android/material/datepicker/m;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/datepicker/f$l;,
        Lcom/google/android/material/datepicker/f$k;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/material/datepicker/m<",
        "TS;>;"
    }
.end annotation


# static fields
.field private static final CALENDAR_CONSTRAINTS_KEY:Ljava/lang/String; = "CALENDAR_CONSTRAINTS_KEY"

.field private static final CURRENT_MONTH_KEY:Ljava/lang/String; = "CURRENT_MONTH_KEY"

.field private static final GRID_SELECTOR_KEY:Ljava/lang/String; = "GRID_SELECTOR_KEY"

.field static final MONTHS_VIEW_GROUP_TAG:Ljava/lang/Object;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final NAVIGATION_NEXT_TAG:Ljava/lang/Object;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final NAVIGATION_PREV_TAG:Ljava/lang/Object;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final SELECTOR_TOGGLE_TAG:Ljava/lang/Object;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final SMOOTH_SCROLL_MAX:I = 0x3

.field private static final THEME_RES_ID_KEY:Ljava/lang/String; = "THEME_RES_ID_KEY"


# instance fields
.field private calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private calendarSelector:Lcom/google/android/material/datepicker/f$k;

.field private calendarStyle:Lcom/google/android/material/datepicker/b;

.field private current:Lcom/google/android/material/datepicker/Month;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

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

.field private dayFrame:Landroid/view/View;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private themeResId:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field

.field private yearFrame:Landroid/view/View;

.field private yearSelector:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MONTHS_VIEW_GROUP_TAG"

    sput-object v0, Lcom/google/android/material/datepicker/f;->MONTHS_VIEW_GROUP_TAG:Ljava/lang/Object;

    const-string v0, "NAVIGATION_PREV_TAG"

    sput-object v0, Lcom/google/android/material/datepicker/f;->NAVIGATION_PREV_TAG:Ljava/lang/Object;

    const-string v0, "NAVIGATION_NEXT_TAG"

    sput-object v0, Lcom/google/android/material/datepicker/f;->NAVIGATION_NEXT_TAG:Ljava/lang/Object;

    const-string v0, "SELECTOR_TOGGLE_TAG"

    sput-object v0, Lcom/google/android/material/datepicker/f;->SELECTOR_TOGGLE_TAG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/datepicker/m;-><init>()V

    .line 4
    return-void
.end method

.method static synthetic h(Lcom/google/android/material/datepicker/f;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/datepicker/f;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    return-object p0
.end method

.method static synthetic i(Lcom/google/android/material/datepicker/f;)Lcom/google/android/material/datepicker/CalendarConstraints;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/datepicker/f;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 3
    return-object p0
.end method

.method static synthetic j(Lcom/google/android/material/datepicker/f;)Lcom/google/android/material/datepicker/DateSelector;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/datepicker/f;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    .line 3
    return-object p0
.end method

.method static synthetic k(Lcom/google/android/material/datepicker/f;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/datepicker/f;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    return-object p0
.end method

.method static synthetic l(Lcom/google/android/material/datepicker/f;)Lcom/google/android/material/datepicker/b;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/datepicker/f;->calendarStyle:Lcom/google/android/material/datepicker/b;

    .line 3
    return-object p0
.end method

.method static synthetic m(Lcom/google/android/material/datepicker/f;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/datepicker/f;->dayFrame:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method static synthetic n(Lcom/google/android/material/datepicker/f;Lcom/google/android/material/datepicker/Month;)Lcom/google/android/material/datepicker/Month;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/datepicker/f;->current:Lcom/google/android/material/datepicker/Month;

    .line 3
    return-object p1
.end method

.method private o(Landroid/view/View;Lcom/google/android/material/datepicker/k;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/datepicker/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    sget v0, Ld3/f;->month_navigation_fragment_toggle:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 9
    .line 10
    sget-object v1, Lcom/google/android/material/datepicker/f;->SELECTOR_TOGGLE_TAG:Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 14
    .line 15
    new-instance v1, Lcom/google/android/material/datepicker/f$f;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/f$f;-><init>(Lcom/google/android/material/datepicker/f;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->u0(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 22
    .line 23
    sget v1, Ld3/f;->month_navigation_previous:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    .line 30
    .line 31
    sget-object v2, Lcom/google/android/material/datepicker/f;->NAVIGATION_PREV_TAG:Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 35
    .line 36
    sget v2, Ld3/f;->month_navigation_next:I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    .line 43
    .line 44
    sget-object v3, Lcom/google/android/material/datepicker/f;->NAVIGATION_NEXT_TAG:Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 48
    .line 49
    sget v3, Ld3/f;->mtrl_calendar_year_selector_frame:I

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object v3

    .line 54
    .line 55
    iput-object v3, p0, Lcom/google/android/material/datepicker/f;->yearFrame:Landroid/view/View;

    .line 56
    .line 57
    sget v3, Ld3/f;->mtrl_calendar_day_selector_frame:I

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    iput-object p1, p0, Lcom/google/android/material/datepicker/f;->dayFrame:Landroid/view/View;

    .line 64
    .line 65
    sget-object p1, Lcom/google/android/material/datepicker/f$k;->DAY:Lcom/google/android/material/datepicker/f$k;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/f;->A(Lcom/google/android/material/datepicker/f$k;)V

    .line 69
    .line 70
    iget-object p1, p0, Lcom/google/android/material/datepicker/f;->current:Lcom/google/android/material/datepicker/Month;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/Month;->n()Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    iget-object p1, p0, Lcom/google/android/material/datepicker/f;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 80
    .line 81
    new-instance v3, Lcom/google/android/material/datepicker/f$g;

    .line 82
    .line 83
    .line 84
    invoke-direct {v3, p0, p2, v0}, Lcom/google/android/material/datepicker/f$g;-><init>(Lcom/google/android/material/datepicker/f;Lcom/google/android/material/datepicker/k;Lcom/google/android/material/button/MaterialButton;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 88
    .line 89
    new-instance p1, Lcom/google/android/material/datepicker/f$h;

    .line 90
    .line 91
    .line 92
    invoke-direct {p1, p0}, Lcom/google/android/material/datepicker/f$h;-><init>(Lcom/google/android/material/datepicker/f;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    .line 97
    new-instance p1, Lcom/google/android/material/datepicker/f$i;

    .line 98
    .line 99
    .line 100
    invoke-direct {p1, p0, p2}, Lcom/google/android/material/datepicker/f$i;-><init>(Lcom/google/android/material/datepicker/f;Lcom/google/android/material/datepicker/k;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    .line 105
    new-instance p1, Lcom/google/android/material/datepicker/f$j;

    .line 106
    .line 107
    .line 108
    invoke-direct {p1, p0, p2}, Lcom/google/android/material/datepicker/f$j;-><init>(Lcom/google/android/material/datepicker/f;Lcom/google/android/material/datepicker/k;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    return-void
.end method

.method private p()Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/material/datepicker/f$e;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/google/android/material/datepicker/f$e;-><init>(Lcom/google/android/material/datepicker/f;)V

    .line 6
    return-object v0
.end method

.method static u(Landroid/content/Context;)I
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    sget v0, Ld3/d;->mtrl_calendar_day_height:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static v(Landroid/content/Context;)I
    .locals 5
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
    sget v0, Ld3/d;->mtrl_calendar_navigation_height:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 10
    move-result v0

    .line 11
    .line 12
    sget v1, Ld3/d;->mtrl_calendar_navigation_top_padding:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 16
    move-result v1

    .line 17
    add-int/2addr v0, v1

    .line 18
    .line 19
    sget v1, Ld3/d;->mtrl_calendar_navigation_bottom_padding:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    .line 26
    sget v1, Ld3/d;->mtrl_calendar_days_of_week_height:I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 30
    move-result v1

    .line 31
    .line 32
    sget v2, Lcom/google/android/material/datepicker/j;->MAXIMUM_WEEKS:I

    .line 33
    .line 34
    sget v3, Ld3/d;->mtrl_calendar_day_height:I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 38
    move-result v3

    .line 39
    mul-int/2addr v3, v2

    .line 40
    .line 41
    add-int/lit8 v2, v2, -0x1

    .line 42
    .line 43
    sget v4, Ld3/d;->mtrl_calendar_month_vertical_padding:I

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 47
    move-result v4

    .line 48
    mul-int/2addr v2, v4

    .line 49
    add-int/2addr v3, v2

    .line 50
    .line 51
    sget v2, Ld3/d;->mtrl_calendar_bottom_padding:I

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 55
    move-result p0

    .line 56
    add-int/2addr v0, v1

    .line 57
    add-int/2addr v0, v3

    .line 58
    add-int/2addr v0, p0

    .line 59
    return v0
.end method

.method public static x(Lcom/google/android/material/datepicker/DateSelector;ILcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/f;
    .locals 3
    .param p0    # Lcom/google/android/material/datepicker/DateSelector;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/datepicker/CalendarConstraints;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/material/datepicker/DateSelector<",
            "TT;>;I",
            "Lcom/google/android/material/datepicker/CalendarConstraints;",
            ")",
            "Lcom/google/android/material/datepicker/f<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/material/datepicker/f;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/material/datepicker/f;-><init>()V

    .line 6
    .line 7
    new-instance v1, Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    const-string v2, "THEME_RES_ID_KEY"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 16
    .line 17
    const-string p1, "GRID_SELECTOR_KEY"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 21
    .line 22
    const-string p0, "CALENDAR_CONSTRAINTS_KEY"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 26
    .line 27
    const-string p0, "CURRENT_MONTH_KEY"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/google/android/material/datepicker/CalendarConstraints;->m()Lcom/google/android/material/datepicker/Month;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 38
    return-object v0
.end method

.method private y(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/datepicker/f;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    .line 4
    new-instance v1, Lcom/google/android/material/datepicker/f$a;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/google/android/material/datepicker/f$a;-><init>(Lcom/google/android/material/datepicker/f;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 11
    return-void
.end method


# virtual methods
.method A(Lcom/google/android/material/datepicker/f$k;)V
    .locals 4

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/datepicker/f;->calendarSelector:Lcom/google/android/material/datepicker/f$k;

    .line 3
    .line 4
    sget-object v0, Lcom/google/android/material/datepicker/f$k;->YEAR:Lcom/google/android/material/datepicker/f$k;

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/android/material/datepicker/f;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/material/datepicker/f;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/google/android/material/datepicker/t;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/google/android/material/datepicker/f;->current:Lcom/google/android/material/datepicker/Month;

    .line 26
    .line 27
    iget v3, v3, Lcom/google/android/material/datepicker/Month;->year:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v3}, Lcom/google/android/material/datepicker/t;->i(I)I

    .line 31
    move-result v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 35
    .line 36
    iget-object p1, p0, Lcom/google/android/material/datepicker/f;->yearFrame:Landroid/view/View;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    iget-object p1, p0, Lcom/google/android/material/datepicker/f;->dayFrame:Landroid/view/View;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_0
    sget-object v0, Lcom/google/android/material/datepicker/f$k;->DAY:Lcom/google/android/material/datepicker/f$k;

    .line 48
    .line 49
    if-ne p1, v0, :cond_1

    .line 50
    .line 51
    iget-object p1, p0, Lcom/google/android/material/datepicker/f;->yearFrame:Landroid/view/View;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    iget-object p1, p0, Lcom/google/android/material/datepicker/f;->dayFrame:Landroid/view/View;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    iget-object p1, p0, Lcom/google/android/material/datepicker/f;->current:Lcom/google/android/material/datepicker/Month;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/f;->z(Lcom/google/android/material/datepicker/Month;)V

    .line 65
    :cond_1
    :goto_0
    return-void
.end method

.method B()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/datepicker/f;->calendarSelector:Lcom/google/android/material/datepicker/f$k;

    .line 3
    .line 4
    sget-object v1, Lcom/google/android/material/datepicker/f$k;->YEAR:Lcom/google/android/material/datepicker/f$k;

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/google/android/material/datepicker/f$k;->DAY:Lcom/google/android/material/datepicker/f$k;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/f;->A(Lcom/google/android/material/datepicker/f$k;)V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    sget-object v2, Lcom/google/android/material/datepicker/f$k;->DAY:Lcom/google/android/material/datepicker/f$k;

    .line 15
    .line 16
    if-ne v0, v2, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lcom/google/android/material/datepicker/f;->A(Lcom/google/android/material/datepicker/f$k;)V

    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method public f(Lcom/google/android/material/datepicker/l;)Z
    .locals 0
    .param p1    # Lcom/google/android/material/datepicker/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/datepicker/l<",
            "TS;>;)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/google/android/material/datepicker/m;->f(Lcom/google/android/material/datepicker/l;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

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
    const-string v0, "THEME_RES_ID_KEY"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 15
    move-result v0

    .line 16
    .line 17
    iput v0, p0, Lcom/google/android/material/datepicker/f;->themeResId:I

    .line 18
    .line 19
    const-string v0, "GRID_SELECTOR_KEY"

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
    iput-object v0, p0, Lcom/google/android/material/datepicker/f;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

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
    iput-object v0, p0, Lcom/google/android/material/datepicker/f;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 38
    .line 39
    const-string v0, "CURRENT_MONTH_KEY"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    check-cast p1, Lcom/google/android/material/datepicker/Month;

    .line 46
    .line 47
    iput-object p1, p0, Lcom/google/android/material/datepicker/f;->current:Lcom/google/android/material/datepicker/Month;

    .line 48
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
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
    new-instance p3, Landroid/view/ContextThemeWrapper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget v1, p0, Lcom/google/android/material/datepicker/f;->themeResId:I

    .line 9
    .line 10
    .line 11
    invoke-direct {p3, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 12
    .line 13
    new-instance v0, Lcom/google/android/material/datepicker/b;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p3}, Lcom/google/android/material/datepicker/b;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/android/material/datepicker/f;->calendarStyle:Lcom/google/android/material/datepicker/b;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/material/datepicker/f;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints;->n()Lcom/google/android/material/datepicker/Month;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-static {p3}, Lcom/google/android/material/datepicker/g;->v(Landroid/content/Context;)Z

    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x1

    .line 34
    const/4 v3, 0x0

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    sget v1, Ld3/h;->mtrl_calendar_vertical:I

    .line 39
    move v9, v2

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_0
    sget v1, Ld3/h;->mtrl_calendar_horizontal:I

    .line 43
    move v9, v3

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 51
    move-result-object p2

    .line 52
    .line 53
    .line 54
    invoke-static {p2}, Lcom/google/android/material/datepicker/f;->v(Landroid/content/Context;)I

    .line 55
    move-result p2

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 59
    .line 60
    sget p2, Ld3/f;->mtrl_calendar_days_of_week:I

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    move-result-object p2

    .line 65
    .line 66
    check-cast p2, Landroid/widget/GridView;

    .line 67
    .line 68
    new-instance v1, Lcom/google/android/material/datepicker/f$b;

    .line 69
    .line 70
    .line 71
    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/f$b;-><init>(Lcom/google/android/material/datepicker/f;)V

    .line 72
    .line 73
    .line 74
    invoke-static {p2, v1}, Landroidx/core/view/ViewCompat;->u0(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 75
    .line 76
    new-instance v1, Lcom/google/android/material/datepicker/e;

    .line 77
    .line 78
    .line 79
    invoke-direct {v1}, Lcom/google/android/material/datepicker/e;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    .line 84
    iget v0, v0, Lcom/google/android/material/datepicker/Month;->daysInWeek:I

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 91
    .line 92
    sget p2, Ld3/f;->mtrl_calendar_months:I

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    move-result-object p2

    .line 97
    .line 98
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 99
    .line 100
    iput-object p2, p0, Lcom/google/android/material/datepicker/f;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 101
    .line 102
    new-instance p2, Lcom/google/android/material/datepicker/f$c;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 106
    move-result-object v6

    .line 107
    const/4 v8, 0x0

    .line 108
    move-object v4, p2

    .line 109
    move-object v5, p0

    .line 110
    move v7, v9

    .line 111
    .line 112
    .line 113
    invoke-direct/range {v4 .. v9}, Lcom/google/android/material/datepicker/f$c;-><init>(Lcom/google/android/material/datepicker/f;Landroid/content/Context;IZI)V

    .line 114
    .line 115
    iget-object v0, p0, Lcom/google/android/material/datepicker/f;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 119
    .line 120
    iget-object p2, p0, Lcom/google/android/material/datepicker/f;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 121
    .line 122
    sget-object v0, Lcom/google/android/material/datepicker/f;->MONTHS_VIEW_GROUP_TAG:Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 126
    .line 127
    new-instance p2, Lcom/google/android/material/datepicker/k;

    .line 128
    .line 129
    iget-object v0, p0, Lcom/google/android/material/datepicker/f;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    .line 130
    .line 131
    iget-object v1, p0, Lcom/google/android/material/datepicker/f;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 132
    .line 133
    new-instance v4, Lcom/google/android/material/datepicker/f$d;

    .line 134
    .line 135
    .line 136
    invoke-direct {v4, p0}, Lcom/google/android/material/datepicker/f$d;-><init>(Lcom/google/android/material/datepicker/f;)V

    .line 137
    .line 138
    .line 139
    invoke-direct {p2, p3, v0, v1, v4}, Lcom/google/android/material/datepicker/k;-><init>(Landroid/content/Context;Lcom/google/android/material/datepicker/DateSelector;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/f$l;)V

    .line 140
    .line 141
    iget-object v0, p0, Lcom/google/android/material/datepicker/f;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    .line 148
    move-result-object v0

    .line 149
    .line 150
    sget v1, Ld3/g;->mtrl_calendar_year_selector_span:I

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 154
    move-result v0

    .line 155
    .line 156
    sget v1, Ld3/f;->mtrl_calendar_year_selector_frame:I

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 160
    move-result-object v1

    .line 161
    .line 162
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 163
    .line 164
    iput-object v1, p0, Lcom/google/android/material/datepicker/f;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    .line 165
    .line 166
    if-eqz v1, :cond_1

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 170
    .line 171
    iget-object v1, p0, Lcom/google/android/material/datepicker/f;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    .line 172
    .line 173
    new-instance v4, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 174
    .line 175
    .line 176
    invoke-direct {v4, p3, v0, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 180
    .line 181
    iget-object v0, p0, Lcom/google/android/material/datepicker/f;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    .line 182
    .line 183
    new-instance v1, Lcom/google/android/material/datepicker/t;

    .line 184
    .line 185
    .line 186
    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/t;-><init>(Lcom/google/android/material/datepicker/f;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 190
    .line 191
    iget-object v0, p0, Lcom/google/android/material/datepicker/f;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    .line 192
    .line 193
    .line 194
    invoke-direct {p0}, Lcom/google/android/material/datepicker/f;->p()Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 195
    move-result-object v1

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 199
    .line 200
    :cond_1
    sget v0, Ld3/f;->month_navigation_fragment_toggle:I

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 204
    move-result-object v0

    .line 205
    .line 206
    if-eqz v0, :cond_2

    .line 207
    .line 208
    .line 209
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/datepicker/f;->o(Landroid/view/View;Lcom/google/android/material/datepicker/k;)V

    .line 210
    .line 211
    .line 212
    :cond_2
    invoke-static {p3}, Lcom/google/android/material/datepicker/g;->v(Landroid/content/Context;)Z

    .line 213
    move-result p3

    .line 214
    .line 215
    if-nez p3, :cond_3

    .line 216
    .line 217
    new-instance p3, Landroidx/recyclerview/widget/PagerSnapHelper;

    .line 218
    .line 219
    .line 220
    invoke-direct {p3}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    .line 221
    .line 222
    iget-object v0, p0, Lcom/google/android/material/datepicker/f;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 223
    .line 224
    .line 225
    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/SnapHelper;->b(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 226
    .line 227
    :cond_3
    iget-object p3, p0, Lcom/google/android/material/datepicker/f;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 228
    .line 229
    iget-object v0, p0, Lcom/google/android/material/datepicker/f;->current:Lcom/google/android/material/datepicker/Month;

    .line 230
    .line 231
    .line 232
    invoke-virtual {p2, v0}, Lcom/google/android/material/datepicker/k;->j(Lcom/google/android/material/datepicker/Month;)I

    .line 233
    move-result p2

    .line 234
    .line 235
    .line 236
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 237
    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "THEME_RES_ID_KEY"

    .line 6
    .line 7
    iget v1, p0, Lcom/google/android/material/datepicker/f;->themeResId:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 11
    .line 12
    const-string v0, "GRID_SELECTOR_KEY"

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/material/datepicker/f;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 18
    .line 19
    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/material/datepicker/f;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 25
    .line 26
    const-string v0, "CURRENT_MONTH_KEY"

    .line 27
    .line 28
    iget-object v1, p0, Lcom/google/android/material/datepicker/f;->current:Lcom/google/android/material/datepicker/Month;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 32
    return-void
.end method

.method q()Lcom/google/android/material/datepicker/CalendarConstraints;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/f;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    return-object v0
.end method

.method r()Lcom/google/android/material/datepicker/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/f;->calendarStyle:Lcom/google/android/material/datepicker/b;

    return-object v0
.end method

.method s()Lcom/google/android/material/datepicker/Month;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/f;->current:Lcom/google/android/material/datepicker/Month;

    return-object v0
.end method

.method public t()Lcom/google/android/material/datepicker/DateSelector;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/datepicker/DateSelector<",
            "TS;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/f;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    return-object v0
.end method

.method w()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/datepicker/f;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 9
    return-object v0
.end method

.method z(Lcom/google/android/material/datepicker/Month;)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/datepicker/f;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/material/datepicker/k;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/k;->j(Lcom/google/android/material/datepicker/Month;)I

    .line 12
    move-result v1

    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/android/material/datepicker/f;->current:Lcom/google/android/material/datepicker/Month;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2}, Lcom/google/android/material/datepicker/k;->j(Lcom/google/android/material/datepicker/Month;)I

    .line 18
    move-result v0

    .line 19
    .line 20
    sub-int v0, v1, v0

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x3

    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x1

    .line 28
    .line 29
    if-le v2, v3, :cond_0

    .line 30
    move v2, v5

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v2, v4

    .line 33
    .line 34
    :goto_0
    if-lez v0, :cond_1

    .line 35
    move v4, v5

    .line 36
    .line 37
    :cond_1
    iput-object p1, p0, Lcom/google/android/material/datepicker/f;->current:Lcom/google/android/material/datepicker/Month;

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    iget-object p1, p0, Lcom/google/android/material/datepicker/f;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 44
    .line 45
    add-int/lit8 v0, v1, -0x3

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, v1}, Lcom/google/android/material/datepicker/f;->y(I)V

    .line 52
    goto :goto_1

    .line 53
    .line 54
    :cond_2
    if-eqz v2, :cond_3

    .line 55
    .line 56
    iget-object p1, p0, Lcom/google/android/material/datepicker/f;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 57
    .line 58
    add-int/lit8 v0, v1, 0x3

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, v1}, Lcom/google/android/material/datepicker/f;->y(I)V

    .line 65
    goto :goto_1

    .line 66
    .line 67
    .line 68
    :cond_3
    invoke-direct {p0, v1}, Lcom/google/android/material/datepicker/f;->y(I)V

    .line 69
    :goto_1
    return-void
.end method
