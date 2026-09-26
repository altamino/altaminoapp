.class Lcom/google/android/material/datepicker/k;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/datepicker/k$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/google/android/material/datepicker/k$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final dateSelector:Lcom/google/android/material/datepicker/DateSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/DateSelector<",
            "*>;"
        }
    .end annotation
.end field

.field private final itemHeight:I

.field private final onDayClickListener:Lcom/google/android/material/datepicker/f$l;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/material/datepicker/DateSelector;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/f$l;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/material/datepicker/CalendarConstraints;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/datepicker/DateSelector<",
            "*>;",
            "Lcom/google/android/material/datepicker/CalendarConstraints;",
            "Lcom/google/android/material/datepicker/f$l;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3}, Lcom/google/android/material/datepicker/CalendarConstraints;->n()Lcom/google/android/material/datepicker/Month;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3}, Lcom/google/android/material/datepicker/CalendarConstraints;->k()Lcom/google/android/material/datepicker/Month;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3}, Lcom/google/android/material/datepicker/CalendarConstraints;->m()Lcom/google/android/material/datepicker/Month;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2}, Lcom/google/android/material/datepicker/Month;->a(Lcom/google/android/material/datepicker/Month;)I

    .line 19
    move-result v0

    .line 20
    .line 21
    if-gtz v0, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v1}, Lcom/google/android/material/datepicker/Month;->a(Lcom/google/android/material/datepicker/Month;)I

    .line 25
    move-result v0

    .line 26
    .line 27
    if-gtz v0, :cond_1

    .line 28
    .line 29
    sget v0, Lcom/google/android/material/datepicker/j;->MAXIMUM_WEEKS:I

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/google/android/material/datepicker/f;->u(Landroid/content/Context;)I

    .line 33
    move-result v1

    .line 34
    mul-int/2addr v0, v1

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lcom/google/android/material/datepicker/g;->v(Landroid/content/Context;)Z

    .line 38
    move-result v1

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lcom/google/android/material/datepicker/f;->u(Landroid/content/Context;)I

    .line 44
    move-result p1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 p1, 0x0

    .line 47
    :goto_0
    add-int/2addr v0, p1

    .line 48
    .line 49
    iput v0, p0, Lcom/google/android/material/datepicker/k;->itemHeight:I

    .line 50
    .line 51
    iput-object p3, p0, Lcom/google/android/material/datepicker/k;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 52
    .line 53
    iput-object p2, p0, Lcom/google/android/material/datepicker/k;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    .line 54
    .line 55
    iput-object p4, p0, Lcom/google/android/material/datepicker/k;->onDayClickListener:Lcom/google/android/material/datepicker/f$l;

    .line 56
    const/4 p1, 0x1

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 60
    return-void

    .line 61
    .line 62
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 63
    .line 64
    const-string p2, "currentPage cannot be after lastPage"

    .line 65
    .line 66
    .line 67
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    throw p1

    .line 69
    .line 70
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 71
    .line 72
    const-string p2, "firstPage cannot be after currentPage"

    .line 73
    .line 74
    .line 75
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    throw p1
.end method

.method static synthetic g(Lcom/google/android/material/datepicker/k;)Lcom/google/android/material/datepicker/f$l;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/datepicker/k;->onDayClickListener:Lcom/google/android/material/datepicker/f$l;

    .line 3
    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/datepicker/k;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints;->l()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/datepicker/k;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints;->n()Lcom/google/android/material/datepicker/Month;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/Month;->p(I)Lcom/google/android/material/datepicker/Month;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/Month;->o()J

    .line 14
    move-result-wide v0

    .line 15
    return-wide v0
.end method

.method h(I)Lcom/google/android/material/datepicker/Month;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/datepicker/k;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints;->n()Lcom/google/android/material/datepicker/Month;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/Month;->p(I)Lcom/google/android/material/datepicker/Month;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method i(I)Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/k;->h(I)Lcom/google/android/material/datepicker/Month;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/Month;->n()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method j(Lcom/google/android/material/datepicker/Month;)I
    .locals 1
    .param p1    # Lcom/google/android/material/datepicker/Month;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/datepicker/k;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints;->n()Lcom/google/android/material/datepicker/Month;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/Month;->s(Lcom/google/android/material/datepicker/Month;)I

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public k(Lcom/google/android/material/datepicker/k$b;I)V
    .locals 3
    .param p1    # Lcom/google/android/material/datepicker/k$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/datepicker/k;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints;->n()Lcom/google/android/material/datepicker/Month;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Lcom/google/android/material/datepicker/Month;->p(I)Lcom/google/android/material/datepicker/Month;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    iget-object v0, p1, Lcom/google/android/material/datepicker/k$b;->monthTitle:Landroid/widget/TextView;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/google/android/material/datepicker/Month;->n()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    iget-object p1, p1, Lcom/google/android/material/datepicker/k$b;->monthGrid:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    .line 22
    .line 23
    sget v0, Ld3/f;->month_grid:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    check-cast p1, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b()Lcom/google/android/material/datepicker/j;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b()Lcom/google/android/material/datepicker/j;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    iget-object v0, v0, Lcom/google/android/material/datepicker/j;->month:Lcom/google/android/material/datepicker/Month;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, v0}, Lcom/google/android/material/datepicker/Month;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v0

    .line 46
    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b()Lcom/google/android/material/datepicker/j;

    .line 54
    move-result-object p2

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, p1}, Lcom/google/android/material/datepicker/j;->m(Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_0
    new-instance v0, Lcom/google/android/material/datepicker/j;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/google/android/material/datepicker/k;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    .line 63
    .line 64
    iget-object v2, p0, Lcom/google/android/material/datepicker/k;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 65
    .line 66
    .line 67
    invoke-direct {v0, p2, v1, v2}, Lcom/google/android/material/datepicker/j;-><init>(Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/DateSelector;Lcom/google/android/material/datepicker/CalendarConstraints;)V

    .line 68
    .line 69
    iget p2, p2, Lcom/google/android/material/datepicker/Month;->daysInWeek:I

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    .line 77
    :goto_0
    new-instance p2, Lcom/google/android/material/datepicker/k$a;

    .line 78
    .line 79
    .line 80
    invoke-direct {p2, p0, p1}, Lcom/google/android/material/datepicker/k$a;-><init>(Lcom/google/android/material/datepicker/k;Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 84
    return-void
.end method

.method public l(Landroid/view/ViewGroup;I)Lcom/google/android/material/datepicker/k$b;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    sget v0, Ld3/h;->mtrl_calendar_month_labeled:I

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    check-cast p2, Landroid/widget/LinearLayout;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/google/android/material/datepicker/g;->v(Landroid/content/Context;)Z

    .line 25
    move-result p1

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 30
    const/4 v0, -0x1

    .line 31
    .line 32
    iget v1, p0, Lcom/google/android/material/datepicker/k;->itemHeight:I

    .line 33
    .line 34
    .line 35
    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    .line 40
    new-instance p1, Lcom/google/android/material/datepicker/k$b;

    .line 41
    const/4 v0, 0x1

    .line 42
    .line 43
    .line 44
    invoke-direct {p1, p2, v0}, Lcom/google/android/material/datepicker/k$b;-><init>(Landroid/widget/LinearLayout;Z)V

    .line 45
    return-object p1

    .line 46
    .line 47
    :cond_0
    new-instance p1, Lcom/google/android/material/datepicker/k$b;

    .line 48
    .line 49
    .line 50
    invoke-direct {p1, p2, v1}, Lcom/google/android/material/datepicker/k$b;-><init>(Landroid/widget/LinearLayout;Z)V

    .line 51
    return-object p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    check-cast p1, Lcom/google/android/material/datepicker/k$b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/datepicker/k;->k(Lcom/google/android/material/datepicker/k$b;I)V

    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/datepicker/k;->l(Landroid/view/ViewGroup;I)Lcom/google/android/material/datepicker/k$b;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
