.class public Lcom/narvii/checkin/CheckInHistoryView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/checkin/CheckInHistoryView$AfterGetColumnListener;
    }
.end annotation


# static fields
.field public static final DAYS_OF_ONE_WEEK:I = 0x7

.field public static final DEFAULT_CELL_SIZE:I = 0x10

.field public static final DEFAULT_PADDING_SIZE:I = 0x1

.field public static cellSize:I

.field public static paddingSize:I


# instance fields
.field private afterGetColumnListener:Lcom/narvii/checkin/CheckInHistoryView$AfterGetColumnListener;

.field private anim:Landroid/view/animation/Animation;

.field breathViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field checkins:[Z

.field private column:I

.field private columnGot:Z

.field private dateFormatSymbols:Ljava/text/DateFormatSymbols;

.field dayOfWeek:Landroid/widget/LinearLayout;

.field historyLayout:Landroid/widget/GridLayout;

.field isMe:Z

.field monthView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p2, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object p2, p0, Lcom/narvii/checkin/CheckInHistoryView;->breathViews:Ljava/util/ArrayList;

    .line 11
    const/4 p2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 18
    .line 19
    new-instance p2, Ljava/text/DateFormatSymbols;

    .line 20
    .line 21
    .line 22
    invoke-direct {p2}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 23
    .line 24
    iput-object p2, p0, Lcom/narvii/checkin/CheckInHistoryView;->dateFormatSymbols:Ljava/text/DateFormatSymbols;

    .line 25
    .line 26
    .line 27
    const p2, 0x7f0d00f3

    .line 28
    .line 29
    .line 30
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    const p1, 0x7f0a0672

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    check-cast p1, Landroid/widget/GridLayout;

    .line 40
    .line 41
    iput-object p1, p0, Lcom/narvii/checkin/CheckInHistoryView;->historyLayout:Landroid/widget/GridLayout;

    .line 42
    .line 43
    .line 44
    const p1, 0x7f0a0409

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    check-cast p1, Landroid/widget/LinearLayout;

    .line 51
    .line 52
    iput-object p1, p0, Lcom/narvii/checkin/CheckInHistoryView;->dayOfWeek:Landroid/widget/LinearLayout;

    .line 53
    .line 54
    .line 55
    const p1, 0x7f0a0982

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    check-cast p1, Landroid/widget/FrameLayout;

    .line 62
    .line 63
    iput-object p1, p0, Lcom/narvii/checkin/CheckInHistoryView;->monthView:Landroid/widget/FrameLayout;

    .line 64
    .line 65
    .line 66
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInHistoryView;->initViewSizes()V

    .line 67
    .line 68
    .line 69
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInHistoryView;->setUpDayOfWeek()V

    .line 70
    return-void
.end method

.method public static synthetic a(Lcom/narvii/checkin/CheckInHistoryView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInHistoryView;->lambda$onMeasure$0()V

    return-void
.end method

.method private getTotalSize(I)I
    .locals 2

    sget v0, Lcom/narvii/checkin/CheckInHistoryView;->cellSize:I

    sget v1, Lcom/narvii/checkin/CheckInHistoryView;->paddingSize:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    mul-int/2addr v0, p1

    return v0
.end method

.method private initViewSizes()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const/high16 v1, 0x41800000    # 16.0f

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 10
    move-result v0

    .line 11
    float-to-int v0, v0

    .line 12
    .line 13
    sput v0, Lcom/narvii/checkin/CheckInHistoryView;->cellSize:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    const/high16 v1, 0x3f800000    # 1.0f

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 23
    move-result v0

    .line 24
    float-to-int v0, v0

    .line 25
    .line 26
    sput v0, Lcom/narvii/checkin/CheckInHistoryView;->paddingSize:I

    .line 27
    return-void
.end method

.method private synthetic lambda$onMeasure$0()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/checkin/CheckInHistoryView;->afterGetColumnListener:Lcom/narvii/checkin/CheckInHistoryView$AfterGetColumnListener;

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/checkin/CheckInHistoryView;->column:I

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/checkin/CheckInHistoryView$AfterGetColumnListener;->onGetColumn(I)V

    .line 8
    return-void
.end method

.method private setUpDayOfWeek()V
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/checkin/CheckInHistoryView;->dayOfWeek:Landroid/widget/LinearLayout;

    .line 3
    const/4 v1, 0x4

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/checkin/CheckInHistoryView;->dateFormatSymbols:Ljava/text/DateFormatSymbols;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    .line 20
    move-result v1

    .line 21
    .line 22
    new-instance v2, Ljava/util/HashSet;

    .line 23
    .line 24
    .line 25
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 26
    const/4 v3, 0x0

    .line 27
    .line 28
    .line 29
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v4

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    const/4 v4, 0x3

    .line 35
    .line 36
    .line 37
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v4

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    const/4 v4, 0x6

    .line 43
    .line 44
    .line 45
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v5

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 50
    move v5, v3

    .line 51
    :goto_0
    const/4 v6, 0x7

    .line 52
    .line 53
    if-ge v5, v6, :cond_3

    .line 54
    .line 55
    add-int v7, v1, v5

    .line 56
    .line 57
    if-le v7, v6, :cond_0

    .line 58
    .line 59
    rem-int/lit8 v7, v7, 0x7

    .line 60
    .line 61
    :cond_0
    new-instance v6, Landroid/widget/TextView;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 65
    move-result-object v8

    .line 66
    .line 67
    .line 68
    invoke-direct {v6, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 69
    .line 70
    sget v8, Lcom/narvii/checkin/CheckInHistoryView;->cellSize:I

    .line 71
    int-to-float v8, v8

    .line 72
    .line 73
    const/high16 v9, 0x3f400000    # 0.75f

    .line 74
    mul-float/2addr v8, v9

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6, v3, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 78
    .line 79
    const/16 v8, 0x10

    .line 80
    .line 81
    .line 82
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 83
    .line 84
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 85
    const/4 v9, -0x2

    .line 86
    .line 87
    sget v10, Lcom/narvii/checkin/CheckInHistoryView;->cellSize:I

    .line 88
    .line 89
    .line 90
    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 91
    .line 92
    if-eq v5, v4, :cond_1

    .line 93
    .line 94
    sget v9, Lcom/narvii/checkin/CheckInHistoryView;->paddingSize:I

    .line 95
    .line 96
    mul-int/lit8 v9, v9, 0x2

    .line 97
    .line 98
    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 99
    goto :goto_1

    .line 100
    .line 101
    :cond_1
    sget v9, Lcom/narvii/checkin/CheckInHistoryView;->paddingSize:I

    .line 102
    .line 103
    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 104
    .line 105
    .line 106
    :goto_1
    invoke-virtual {v6, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    move-result-object v8

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 114
    move-result v8

    .line 115
    .line 116
    if-eqz v8, :cond_2

    .line 117
    .line 118
    aget-object v7, v0, v7

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    :cond_2
    iget-object v7, p0, Lcom/narvii/checkin/CheckInHistoryView;->dayOfWeek:Landroid/widget/LinearLayout;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 127
    .line 128
    add-int/lit8 v5, v5, 0x1

    .line 129
    goto :goto_0

    .line 130
    :cond_3
    return-void
.end method


# virtual methods
.method public getAfterGetColumnListener()Lcom/narvii/checkin/CheckInHistoryView$AfterGetColumnListener;
    .locals 1

    iget-object v0, p0, Lcom/narvii/checkin/CheckInHistoryView;->afterGetColumnListener:Lcom/narvii/checkin/CheckInHistoryView$AfterGetColumnListener;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/checkin/CheckInHistoryView;->anim:Landroid/view/animation/Animation;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/checkin/CheckInHistoryView;->breathViews:Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    check-cast v1, Landroid/view/View;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/narvii/checkin/CheckInHistoryView;->anim:Landroid/view/animation/Animation;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/narvii/checkin/CheckInHistoryView;->columnGot:Z

    .line 6
    const/4 p2, 0x7

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 12
    move-result p1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/checkin/CheckInHistoryView;->dayOfWeek:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 18
    move-result v0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/checkin/CheckInHistoryView;->historyLayout:Landroid/widget/GridLayout;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lcom/narvii/util/LayoutUtils;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    .line 30
    move-result v1

    .line 31
    .line 32
    iget-object v2, p0, Lcom/narvii/checkin/CheckInHistoryView;->historyLayout:Landroid/widget/GridLayout;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 39
    .line 40
    .line 41
    invoke-static {v2}, Lcom/narvii/util/LayoutUtils;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    .line 42
    move-result v2

    .line 43
    .line 44
    iget-object v3, p0, Lcom/narvii/checkin/CheckInHistoryView;->dayOfWeek:Landroid/widget/LinearLayout;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    move-result-object v3

    .line 49
    .line 50
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 51
    .line 52
    .line 53
    invoke-static {v3}, Lcom/narvii/util/LayoutUtils;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    .line 54
    move-result v3

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 58
    move-result v4

    .line 59
    sub-int/2addr p1, v4

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 63
    move-result v4

    .line 64
    sub-int/2addr p1, v4

    .line 65
    sub-int/2addr p1, v1

    .line 66
    sub-int/2addr p1, v2

    .line 67
    sub-int/2addr p1, v3

    .line 68
    sub-int/2addr p1, v0

    .line 69
    .line 70
    sget v0, Lcom/narvii/checkin/CheckInHistoryView;->cellSize:I

    .line 71
    .line 72
    sget v1, Lcom/narvii/checkin/CheckInHistoryView;->paddingSize:I

    .line 73
    .line 74
    mul-int/lit8 v1, v1, 0x2

    .line 75
    add-int/2addr v0, v1

    .line 76
    div-int/2addr p1, v0

    .line 77
    .line 78
    iput p1, p0, Lcom/narvii/checkin/CheckInHistoryView;->column:I

    .line 79
    const/4 v0, 0x1

    .line 80
    .line 81
    iput-boolean v0, p0, Lcom/narvii/checkin/CheckInHistoryView;->columnGot:Z

    .line 82
    .line 83
    iget-object v0, p0, Lcom/narvii/checkin/CheckInHistoryView;->historyLayout:Landroid/widget/GridLayout;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, p1}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 87
    .line 88
    iget-object p1, p0, Lcom/narvii/checkin/CheckInHistoryView;->historyLayout:Landroid/widget/GridLayout;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p2}, Landroid/widget/GridLayout;->setRowCount(I)V

    .line 92
    .line 93
    iget-object p1, p0, Lcom/narvii/checkin/CheckInHistoryView;->afterGetColumnListener:Lcom/narvii/checkin/CheckInHistoryView$AfterGetColumnListener;

    .line 94
    .line 95
    if-eqz p1, :cond_0

    .line 96
    .line 97
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 98
    .line 99
    new-instance v0, Lcom/narvii/checkin/a;

    .line 100
    .line 101
    .line 102
    invoke-direct {v0, p0}, Lcom/narvii/checkin/a;-><init>(Lcom/narvii/checkin/CheckInHistoryView;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    .line 107
    :cond_0
    iget p1, p0, Lcom/narvii/checkin/CheckInHistoryView;->column:I

    .line 108
    .line 109
    .line 110
    invoke-direct {p0, p1}, Lcom/narvii/checkin/CheckInHistoryView;->getTotalSize(I)I

    .line 111
    move-result p1

    .line 112
    .line 113
    .line 114
    invoke-direct {p0, p2}, Lcom/narvii/checkin/CheckInHistoryView;->getTotalSize(I)I

    .line 115
    move-result p2

    .line 116
    .line 117
    iget-object v0, p0, Lcom/narvii/checkin/CheckInHistoryView;->historyLayout:Landroid/widget/GridLayout;

    .line 118
    .line 119
    const/high16 v1, 0x40000000    # 2.0f

    .line 120
    .line 121
    .line 122
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 123
    move-result p1

    .line 124
    .line 125
    .line 126
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 127
    move-result p2

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 131
    return-void
.end method

.method public setAfterGetColumnListener(Lcom/narvii/checkin/CheckInHistoryView$AfterGetColumnListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/checkin/CheckInHistoryView;->afterGetColumnListener:Lcom/narvii/checkin/CheckInHistoryView$AfterGetColumnListener;

    return-void
.end method

.method public setCheckins(J[ZJZ)V
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/narvii/checkin/CheckInHistoryView;->dayOfWeek:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    .line 1
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iput-object v3, v0, Lcom/narvii/checkin/CheckInHistoryView;->checkins:[Z

    iget-object v4, v0, Lcom/narvii/checkin/CheckInHistoryView;->historyLayout:Landroid/widget/GridLayout;

    .line 2
    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v4, v0, Lcom/narvii/checkin/CheckInHistoryView;->monthView:Landroid/widget/FrameLayout;

    .line 3
    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 5
    invoke-virtual {v4, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    move-wide/from16 v7, p4

    .line 7
    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v7, 0xb

    .line 8
    invoke-virtual {v6, v7, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xc

    .line 9
    invoke-virtual {v6, v7, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xd

    .line 10
    invoke-virtual {v6, v7, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xe

    .line 11
    invoke-virtual {v6, v7, v5}, Ljava/util/Calendar;->set(II)V

    iget-object v7, v0, Lcom/narvii/checkin/CheckInHistoryView;->breathViews:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f010026

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, v0, Lcom/narvii/checkin/CheckInHistoryView;->anim:Landroid/view/animation/Animation;

    .line 14
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v7

    .line 15
    new-instance v8, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {v8, v7}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 16
    invoke-virtual {v8}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result v8

    .line 17
    new-instance v9, Lcom/narvii/checkin/CheckInHelper;

    invoke-direct {v9, v7}, Lcom/narvii/checkin/CheckInHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v7, "Achievements"

    iput-object v7, v9, Lcom/narvii/checkin/CheckInHelper;->source:Ljava/lang/String;

    .line 18
    new-instance v7, Lcom/narvii/checkin/CheckInHistoryView$1;

    invoke-direct {v7, v0, v9}, Lcom/narvii/checkin/CheckInHistoryView$1;-><init>(Lcom/narvii/checkin/CheckInHistoryView;Lcom/narvii/checkin/CheckInHelper;)V

    move v9, v5

    :goto_0
    const/4 v10, 0x7

    if-ge v9, v10, :cond_9

    move v10, v5

    :goto_1
    iget v11, v0, Lcom/narvii/checkin/CheckInHistoryView;->column:I

    if-ge v10, v11, :cond_8

    mul-int/lit8 v11, v10, 0x7

    add-int/2addr v11, v9

    .line 19
    invoke-virtual {v4, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v12, 0x6

    .line 20
    invoke-virtual {v4, v12, v11}, Ljava/util/Calendar;->add(II)V

    const/4 v12, 0x5

    .line 21
    invoke-virtual {v4, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 22
    array-length v12, v3

    if-ge v11, v12, :cond_0

    const/4 v12, 0x2

    .line 23
    invoke-virtual {v4, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    iget-object v14, v0, Lcom/narvii/checkin/CheckInHistoryView;->dateFormatSymbols:Ljava/text/DateFormatSymbols;

    .line 24
    invoke-virtual {v14}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v14

    aget-object v12, v14, v12

    .line 25
    new-instance v14, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v15, Lcom/narvii/checkin/CheckInHistoryView;->cellSize:I

    int-to-float v15, v15

    const/high16 v16, 0x3f400000    # 0.75f

    mul-float v15, v15, v16

    .line 26
    invoke-virtual {v14, v5, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 27
    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 28
    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setMaxLines(I)V

    const v15, -0xff4201

    .line 29
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v15, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sget v5, Lcom/narvii/checkin/CheckInHistoryView;->cellSize:I

    sget v17, Lcom/narvii/checkin/CheckInHistoryView;->paddingSize:I

    mul-int/lit8 v18, v17, 0x2

    add-int v5, v5, v18

    mul-int/2addr v5, v10

    add-int v5, v5, v17

    .line 31
    invoke-virtual {v15, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 32
    invoke-virtual {v14, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lcom/narvii/checkin/CheckInHistoryView;->monthView:Landroid/widget/FrameLayout;

    .line 34
    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 35
    :cond_0
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v5, v12}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v12, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v12}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    sget v14, Lcom/narvii/checkin/CheckInHistoryView;->cellSize:I

    iput v14, v12, Landroid/widget/GridLayout$LayoutParams;->width:I

    iput v14, v12, Landroid/widget/GridLayout$LayoutParams;->height:I

    sget v14, Lcom/narvii/checkin/CheckInHistoryView;->paddingSize:I

    .line 37
    invoke-virtual {v12, v14, v14, v14, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 38
    invoke-virtual {v5, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    array-length v12, v3

    sub-int/2addr v12, v13

    iget-boolean v14, v0, Lcom/narvii/checkin/CheckInHistoryView;->isMe:Z

    const/4 v15, -0x1

    if-eqz v14, :cond_2

    if-ne v11, v12, :cond_2

    if-ltz v12, :cond_2

    .line 40
    new-instance v14, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v14, v13}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v13, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    aget-boolean v12, v3, v12

    if-eqz v12, :cond_1

    const v12, -0x22000001

    .line 43
    invoke-virtual {v14, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 44
    new-instance v12, Lcom/narvii/checkin/CheckInHistoryView$2;

    invoke-direct {v12, v0}, Lcom/narvii/checkin/CheckInHistoryView$2;-><init>(Lcom/narvii/checkin/CheckInHistoryView;)V

    invoke-virtual {v14, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_1
    const v12, 0x7f0801df

    .line 45
    invoke-virtual {v14, v12}, Landroid/view/View;->setBackgroundResource(I)V

    .line 46
    :goto_2
    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v12, v0, Lcom/narvii/checkin/CheckInHistoryView;->anim:Landroid/view/animation/Animation;

    .line 47
    invoke-virtual {v14, v12}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v12, v0, Lcom/narvii/checkin/CheckInHistoryView;->breathViews:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_2
    array-length v12, v3

    if-ge v11, v12, :cond_7

    if-ltz v11, :cond_7

    .line 50
    invoke-virtual {v4, v6}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const v11, 0x7f0801e0

    .line 51
    invoke-virtual {v5, v11}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 52
    :cond_3
    aget-boolean v12, v3, v11

    if-eqz v12, :cond_4

    const v11, 0x7f0801e1

    .line 53
    invoke-virtual {v5, v11}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 54
    :cond_4
    array-length v12, v3

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    if-ne v11, v12, :cond_5

    const v11, 0x7f0801de

    .line 55
    invoke-virtual {v5, v11}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :cond_5
    iget-boolean v12, v0, Lcom/narvii/checkin/CheckInHistoryView;->isMe:Z

    if-eqz v12, :cond_6

    if-eqz v8, :cond_6

    if-eqz p6, :cond_6

    .line 56
    array-length v12, v3

    add-int/lit8 v12, v12, -0x8

    if-le v11, v12, :cond_6

    const v11, 0x7f0801dd

    .line 57
    invoke-virtual {v5, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 58
    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    new-instance v11, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v12, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v12, -0x10000

    .line 61
    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 62
    invoke-virtual {v5, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v12, v0, Lcom/narvii/checkin/CheckInHistoryView;->anim:Landroid/view/animation/Animation;

    .line 63
    invoke-virtual {v11, v12}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v12, v0, Lcom/narvii/checkin/CheckInHistoryView;->breathViews:Ljava/util/ArrayList;

    .line 64
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    const v11, 0x7f0801dc

    .line 65
    invoke-virtual {v5, v11}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_7
    :goto_3
    iget-object v11, v0, Lcom/narvii/checkin/CheckInHistoryView;->historyLayout:Landroid/widget/GridLayout;

    .line 66
    invoke-virtual {v11, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_8
    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public setMe(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/checkin/CheckInHistoryView;->isMe:Z

    return-void
.end method
