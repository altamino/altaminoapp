.class Lcom/google/android/material/datepicker/t;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/datepicker/t$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/google/android/material/datepicker/t$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final materialCalendar:Lcom/google/android/material/datepicker/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/f<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/datepicker/f<",
            "*>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/material/datepicker/t;->materialCalendar:Lcom/google/android/material/datepicker/f;

    .line 6
    return-void
.end method

.method static synthetic g(Lcom/google/android/material/datepicker/t;)Lcom/google/android/material/datepicker/f;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/datepicker/t;->materialCalendar:Lcom/google/android/material/datepicker/f;

    .line 3
    return-object p0
.end method

.method private h(I)Landroid/view/View$OnClickListener;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/material/datepicker/t$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lcom/google/android/material/datepicker/t$a;-><init>(Lcom/google/android/material/datepicker/t;I)V

    .line 6
    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/datepicker/t;->materialCalendar:Lcom/google/android/material/datepicker/f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/f;->q()Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints;->o()I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method i(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/datepicker/t;->materialCalendar:Lcom/google/android/material/datepicker/f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/f;->q()Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints;->n()Lcom/google/android/material/datepicker/Month;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget v0, v0, Lcom/google/android/material/datepicker/Month;->year:I

    .line 13
    sub-int/2addr p1, v0

    .line 14
    return p1
.end method

.method j(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/datepicker/t;->materialCalendar:Lcom/google/android/material/datepicker/f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/f;->q()Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints;->n()Lcom/google/android/material/datepicker/Month;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget v0, v0, Lcom/google/android/material/datepicker/Month;->year:I

    .line 13
    add-int/2addr v0, p1

    .line 14
    return v0
.end method

.method public k(Lcom/google/android/material/datepicker/t$b;I)V
    .locals 7
    .param p1    # Lcom/google/android/material/datepicker/t$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/material/datepicker/t;->j(I)I

    .line 4
    move-result p2

    .line 5
    .line 6
    iget-object v0, p1, Lcom/google/android/material/datepicker/t$b;->textView:Landroid/widget/TextView;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    sget v1, Ld3/j;->mtrl_picker_navigate_to_year_description:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget-object v1, p1, Lcom/google/android/material/datepicker/t$b;->textView:Landroid/widget/TextView;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 22
    move-result-object v2

    .line 23
    const/4 v3, 0x1

    .line 24
    .line 25
    new-array v4, v3, [Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v5

    .line 30
    const/4 v6, 0x0

    .line 31
    .line 32
    aput-object v5, v4, v6

    .line 33
    .line 34
    const-string v5, "%d"

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    iget-object v1, p1, Lcom/google/android/material/datepicker/t$b;->textView:Landroid/widget/TextView;

    .line 44
    .line 45
    new-array v2, v3, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v4

    .line 50
    .line 51
    aput-object v4, v2, v6

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    iget-object v0, p0, Lcom/google/android/material/datepicker/t;->materialCalendar:Lcom/google/android/material/datepicker/f;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/f;->r()Lcom/google/android/material/datepicker/b;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    invoke-static {}, Lcom/google/android/material/datepicker/s;->i()Ljava/util/Calendar;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    .line 72
    move-result v2

    .line 73
    .line 74
    if-ne v2, p2, :cond_0

    .line 75
    .line 76
    iget-object v2, v0, Lcom/google/android/material/datepicker/b;->todayYear:Lcom/google/android/material/datepicker/a;

    .line 77
    goto :goto_0

    .line 78
    .line 79
    :cond_0
    iget-object v2, v0, Lcom/google/android/material/datepicker/b;->year:Lcom/google/android/material/datepicker/a;

    .line 80
    .line 81
    :goto_0
    iget-object v4, p0, Lcom/google/android/material/datepicker/t;->materialCalendar:Lcom/google/android/material/datepicker/f;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4}, Lcom/google/android/material/datepicker/f;->t()Lcom/google/android/material/datepicker/DateSelector;

    .line 85
    move-result-object v4

    .line 86
    .line 87
    .line 88
    invoke-interface {v4}, Lcom/google/android/material/datepicker/DateSelector;->O()Ljava/util/Collection;

    .line 89
    move-result-object v4

    .line 90
    .line 91
    .line 92
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 93
    move-result-object v4

    .line 94
    .line 95
    .line 96
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    move-result v5

    .line 98
    .line 99
    if-eqz v5, :cond_2

    .line 100
    .line 101
    .line 102
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    move-result-object v5

    .line 104
    .line 105
    check-cast v5, Ljava/lang/Long;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 109
    move-result-wide v5

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    .line 116
    move-result v5

    .line 117
    .line 118
    if-ne v5, p2, :cond_1

    .line 119
    .line 120
    iget-object v2, v0, Lcom/google/android/material/datepicker/b;->selectedYear:Lcom/google/android/material/datepicker/a;

    .line 121
    goto :goto_1

    .line 122
    .line 123
    :cond_2
    iget-object v0, p1, Lcom/google/android/material/datepicker/t$b;->textView:Landroid/widget/TextView;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v0}, Lcom/google/android/material/datepicker/a;->d(Landroid/widget/TextView;)V

    .line 127
    .line 128
    iget-object p1, p1, Lcom/google/android/material/datepicker/t$b;->textView:Landroid/widget/TextView;

    .line 129
    .line 130
    .line 131
    invoke-direct {p0, p2}, Lcom/google/android/material/datepicker/t;->h(I)Landroid/view/View$OnClickListener;

    .line 132
    move-result-object p2

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    return-void
.end method

.method public l(Landroid/view/ViewGroup;I)Lcom/google/android/material/datepicker/t$b;
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
    sget v0, Ld3/h;->mtrl_calendar_year:I

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Landroid/widget/TextView;

    .line 18
    .line 19
    new-instance p2, Lcom/google/android/material/datepicker/t$b;

    .line 20
    .line 21
    .line 22
    invoke-direct {p2, p1}, Lcom/google/android/material/datepicker/t$b;-><init>(Landroid/widget/TextView;)V

    .line 23
    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    check-cast p1, Lcom/google/android/material/datepicker/t$b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/datepicker/t;->k(Lcom/google/android/material/datepicker/t$b;I)V

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
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/datepicker/t;->l(Landroid/view/ViewGroup;I)Lcom/google/android/material/datepicker/t$b;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
