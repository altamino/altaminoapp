.class public Lcom/narvii/checkin/CheckInHistoryView;
.super Landroid/widget/FrameLayout;
.source "CheckInHistoryView.java"


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

    .line 210
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/checkin/CheckInHistoryView;->breathViews:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 212
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 213
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 214
    new-instance p2, Ljava/text/DateFormatSymbols;

    invoke-direct {p2}, Ljava/text/DateFormatSymbols;-><init>()V

    iput-object p2, p0, Lcom/narvii/checkin/CheckInHistoryView;->dateFormatSymbols:Ljava/text/DateFormatSymbols;

    const p2, 0x7f0b00e1

    .line 216
    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f090516

    .line 217
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridLayout;

    iput-object p1, p0, Lcom/narvii/checkin/CheckInHistoryView;->historyLayout:Landroid/widget/GridLayout;

    const p1, 0x7f09032f

    .line 218
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/narvii/checkin/CheckInHistoryView;->dayOfWeek:Landroid/widget/LinearLayout;

    const p1, 0x7f09071f

    .line 219
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/narvii/checkin/CheckInHistoryView;->monthView:Landroid/widget/FrameLayout;

    .line 222
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInHistoryView;->initViewSizes()V

    .line 223
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInHistoryView;->setUpDayOfWeek()V

    return-void
.end method

.method private getTotalSize(I)I
    .locals 2

    .line 290
    sget v0, Lcom/narvii/checkin/CheckInHistoryView;->cellSize:I

    sget v1, Lcom/narvii/checkin/CheckInHistoryView;->paddingSize:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    mul-int v0, v0, p1

    return v0
.end method

.method private initViewSizes()V
    .locals 2

    .line 227
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/narvii/checkin/CheckInHistoryView;->cellSize:I

    .line 228
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/narvii/checkin/CheckInHistoryView;->paddingSize:I

    return-void
.end method

.method private setUpDayOfWeek()V
    .locals 11

    .line 232
    iget-object v0, p0, Lcom/narvii/checkin/CheckInHistoryView;->dayOfWeek:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/narvii/checkin/CheckInHistoryView;->dateFormatSymbols:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 237
    invoke-virtual {v1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    .line 238
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    .line 239
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x3

    .line 240
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x6

    .line 241
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x7

    if-ge v5, v6, :cond_3

    add-int v7, v1, v5

    if-le v7, v6, :cond_0

    .line 246
    rem-int/lit8 v7, v7, 0x7

    .line 247
    :cond_0
    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 248
    sget v8, Lcom/narvii/checkin/CheckInHistoryView;->cellSize:I

    int-to-float v8, v8

    const/high16 v9, 0x3f400000    # 0.75f

    mul-float v8, v8, v9

    invoke-virtual {v6, v3, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v8, 0x10

    .line 249
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 250
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    sget v10, Lcom/narvii/checkin/CheckInHistoryView;->cellSize:I

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eq v5, v4, :cond_1

    .line 252
    sget v9, Lcom/narvii/checkin/CheckInHistoryView;->paddingSize:I

    mul-int/lit8 v9, v9, 0x2

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 254
    :cond_1
    sget v9, Lcom/narvii/checkin/CheckInHistoryView;->paddingSize:I

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 256
    :goto_1
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 258
    aget-object v7, v0, v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    :cond_2
    iget-object v7, p0, Lcom/narvii/checkin/CheckInHistoryView;->dayOfWeek:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public getAfterGetColumnListener()Lcom/narvii/checkin/CheckInHistoryView$AfterGetColumnListener;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/narvii/checkin/CheckInHistoryView;->afterGetColumnListener:Lcom/narvii/checkin/CheckInHistoryView$AfterGetColumnListener;

    return-object v0
.end method

.method public synthetic lambda$onMeasure$0$CheckInHistoryView()V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/narvii/checkin/CheckInHistoryView;->afterGetColumnListener:Lcom/narvii/checkin/CheckInHistoryView$AfterGetColumnListener;

    iget v1, p0, Lcom/narvii/checkin/CheckInHistoryView;->column:I

    invoke-interface {v0, v1}, Lcom/narvii/checkin/CheckInHistoryView$AfterGetColumnListener;->onGetColumn(I)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 65
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 67
    iget-object v0, p0, Lcom/narvii/checkin/CheckInHistoryView;->anim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/narvii/checkin/CheckInHistoryView;->breathViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 69
    iget-object v2, p0, Lcom/narvii/checkin/CheckInHistoryView;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 267
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 268
    iget-boolean p1, p0, Lcom/narvii/checkin/CheckInHistoryView;->columnGot:Z

    const/4 p2, 0x7

    if-nez p1, :cond_0

    .line 269
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    .line 270
    iget-object v0, p0, Lcom/narvii/checkin/CheckInHistoryView;->dayOfWeek:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    .line 271
    iget-object v1, p0, Lcom/narvii/checkin/CheckInHistoryView;->historyLayout:Landroid/widget/GridLayout;

    invoke-virtual {v1}, Landroid/widget/GridLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v1}, Lcom/narvii/util/LayoutUtils;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v1

    .line 272
    iget-object v2, p0, Lcom/narvii/checkin/CheckInHistoryView;->historyLayout:Landroid/widget/GridLayout;

    invoke-virtual {v2}, Landroid/widget/GridLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v2}, Lcom/narvii/util/LayoutUtils;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v2

    .line 273
    iget-object v3, p0, Lcom/narvii/checkin/CheckInHistoryView;->dayOfWeek:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v3}, Lcom/narvii/util/LayoutUtils;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v3

    .line 274
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v4

    sub-int/2addr p1, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr p1, v4

    sub-int/2addr p1, v1

    sub-int/2addr p1, v2

    sub-int/2addr p1, v3

    sub-int/2addr p1, v0

    sget v0, Lcom/narvii/checkin/CheckInHistoryView;->cellSize:I

    sget v1, Lcom/narvii/checkin/CheckInHistoryView;->paddingSize:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    div-int/2addr p1, v0

    iput p1, p0, Lcom/narvii/checkin/CheckInHistoryView;->column:I

    const/4 p1, 0x1

    .line 275
    iput-boolean p1, p0, Lcom/narvii/checkin/CheckInHistoryView;->columnGot:Z

    .line 276
    iget-object p1, p0, Lcom/narvii/checkin/CheckInHistoryView;->historyLayout:Landroid/widget/GridLayout;

    iget v0, p0, Lcom/narvii/checkin/CheckInHistoryView;->column:I

    invoke-virtual {p1, v0}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 277
    iget-object p1, p0, Lcom/narvii/checkin/CheckInHistoryView;->historyLayout:Landroid/widget/GridLayout;

    invoke-virtual {p1, p2}, Landroid/widget/GridLayout;->setRowCount(I)V

    .line 278
    iget-object p1, p0, Lcom/narvii/checkin/CheckInHistoryView;->afterGetColumnListener:Lcom/narvii/checkin/CheckInHistoryView$AfterGetColumnListener;

    if-eqz p1, :cond_0

    .line 279
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/narvii/checkin/-$$Lambda$CheckInHistoryView$V7rriyeYGzXsOZhtYqjIZ8RmeOQ;

    invoke-direct {v0, p0}, Lcom/narvii/checkin/-$$Lambda$CheckInHistoryView$V7rriyeYGzXsOZhtYqjIZ8RmeOQ;-><init>(Lcom/narvii/checkin/CheckInHistoryView;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 284
    :cond_0
    iget p1, p0, Lcom/narvii/checkin/CheckInHistoryView;->column:I

    invoke-direct {p0, p1}, Lcom/narvii/checkin/CheckInHistoryView;->getTotalSize(I)I

    move-result p1

    .line 285
    invoke-direct {p0, p2}, Lcom/narvii/checkin/CheckInHistoryView;->getTotalSize(I)I

    move-result p2

    .line 286
    iget-object v0, p0, Lcom/narvii/checkin/CheckInHistoryView;->historyLayout:Landroid/widget/GridLayout;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/widget/GridLayout;->measure(II)V

    return-void
.end method

.method public setAfterGetColumnListener(Lcom/narvii/checkin/CheckInHistoryView$AfterGetColumnListener;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/narvii/checkin/CheckInHistoryView;->afterGetColumnListener:Lcom/narvii/checkin/CheckInHistoryView$AfterGetColumnListener;

    return-void
.end method

.method public setCheckins(J[ZJZ)V
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    .line 75
    iget-object v4, v0, Lcom/narvii/checkin/CheckInHistoryView;->dayOfWeek:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 77
    iput-object v3, v0, Lcom/narvii/checkin/CheckInHistoryView;->checkins:[Z

    .line 78
    iget-object v4, v0, Lcom/narvii/checkin/CheckInHistoryView;->historyLayout:Landroid/widget/GridLayout;

    invoke-virtual {v4}, Landroid/widget/GridLayout;->removeAllViews()V

    .line 79
    iget-object v4, v0, Lcom/narvii/checkin/CheckInHistoryView;->monthView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 80
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 81
    invoke-virtual {v4, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 83
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    move-wide/from16 v7, p4

    .line 84
    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v7, 0xb

    .line 85
    invoke-virtual {v6, v7, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xc

    .line 86
    invoke-virtual {v6, v7, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xd

    .line 87
    invoke-virtual {v6, v7, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xe

    .line 88
    invoke-virtual {v6, v7, v5}, Ljava/util/Calendar;->set(II)V

    .line 92
    iget-object v7, v0, Lcom/narvii/checkin/CheckInHistoryView;->breathViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f010018

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, v0, Lcom/narvii/checkin/CheckInHistoryView;->anim:Landroid/view/animation/Animation;

    .line 95
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v7

    .line 96
    new-instance v8, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {v8, v7}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 97
    invoke-virtual {v8}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result v8

    .line 99
    new-instance v9, Lcom/narvii/checkin/CheckInHelper;

    invoke-direct {v9, v7}, Lcom/narvii/checkin/CheckInHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v7, "Achievements"

    .line 100
    iput-object v7, v9, Lcom/narvii/checkin/CheckInHelper;->source:Ljava/lang/String;

    .line 101
    new-instance v7, Lcom/narvii/checkin/CheckInHistoryView$1;

    invoke-direct {v7, v0, v9}, Lcom/narvii/checkin/CheckInHistoryView$1;-><init>(Lcom/narvii/checkin/CheckInHistoryView;Lcom/narvii/checkin/CheckInHelper;)V

    const/4 v9, 0x0

    :goto_0
    const/4 v10, 0x7

    if-ge v9, v10, :cond_b

    const/4 v11, 0x0

    .line 108
    :goto_1
    iget v12, v0, Lcom/narvii/checkin/CheckInHistoryView;->column:I

    if-ge v11, v12, :cond_a

    mul-int/lit8 v12, v11, 0x7

    add-int/2addr v12, v9

    .line 111
    invoke-virtual {v4, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v13, 0x6

    .line 112
    invoke-virtual {v4, v13, v12}, Ljava/util/Calendar;->add(II)V

    const/4 v13, 0x5

    .line 114
    invoke-virtual {v4, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    .line 115
    array-length v13, v3

    if-ge v12, v13, :cond_1

    const/4 v13, 0x2

    .line 116
    invoke-virtual {v4, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 117
    iget-object v15, v0, Lcom/narvii/checkin/CheckInHistoryView;->dateFormatSymbols:Ljava/text/DateFormatSymbols;

    invoke-virtual {v15}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v15

    aget-object v13, v15, v13

    .line 118
    new-instance v15, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v15, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 119
    sget v10, Lcom/narvii/checkin/CheckInHistoryView;->cellSize:I

    int-to-float v10, v10

    const/high16 v16, 0x3f400000    # 0.75f

    mul-float v10, v10, v16

    invoke-virtual {v15, v5, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 120
    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 121
    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setMaxLines(I)V

    const v10, -0xff4201

    .line 122
    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v10, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 124
    sget v5, Lcom/narvii/checkin/CheckInHistoryView;->cellSize:I

    sget v17, Lcom/narvii/checkin/CheckInHistoryView;->paddingSize:I

    mul-int/lit8 v18, v17, 0x2

    add-int v5, v5, v18

    mul-int v5, v5, v11

    add-int v5, v5, v17

    .line 125
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v14, v1, :cond_0

    .line 126
    invoke-virtual {v10, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_2

    .line 128
    :cond_0
    iput v5, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 130
    :goto_2
    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v1, v0, Lcom/narvii/checkin/CheckInHistoryView;->monthView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v15}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 135
    :cond_1
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 136
    new-instance v2, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v2}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    .line 137
    sget v5, Lcom/narvii/checkin/CheckInHistoryView;->cellSize:I

    iput v5, v2, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 138
    iput v5, v2, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 139
    sget v5, Lcom/narvii/checkin/CheckInHistoryView;->paddingSize:I

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    .line 140
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    array-length v2, v3

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    .line 143
    iget-boolean v5, v0, Lcom/narvii/checkin/CheckInHistoryView;->isMe:Z

    const/4 v10, -0x1

    if-eqz v5, :cond_3

    if-ne v12, v2, :cond_3

    if-ltz v2, :cond_3

    .line 144
    new-instance v5, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v5, v13}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 145
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v13, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    aget-boolean v2, v3, v2

    if-eqz v2, :cond_2

    const v2, -0x22000001

    .line 147
    invoke-virtual {v5, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 148
    new-instance v2, Lcom/narvii/checkin/CheckInHistoryView$2;

    invoke-direct {v2, v0}, Lcom/narvii/checkin/CheckInHistoryView$2;-><init>(Lcom/narvii/checkin/CheckInHistoryView;)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_2
    const v2, 0x7f080150

    .line 161
    invoke-virtual {v5, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 163
    :goto_3
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 164
    iget-object v2, v0, Lcom/narvii/checkin/CheckInHistoryView;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v5, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 166
    iget-object v2, v0, Lcom/narvii/checkin/CheckInHistoryView;->breathViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_3
    array-length v2, v3

    if-ge v12, v2, :cond_9

    if-ltz v12, :cond_9

    .line 170
    invoke-virtual {v4, v6}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f080151

    .line 171
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_4

    .line 173
    :cond_4
    aget-boolean v2, v3, v12

    if-eqz v2, :cond_5

    const v2, 0x7f080152

    .line 174
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_4

    .line 176
    :cond_5
    array-length v2, v3

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    if-ne v12, v2, :cond_6

    const v2, 0x7f08014f

    .line 177
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_4

    .line 178
    :cond_6
    iget-boolean v2, v0, Lcom/narvii/checkin/CheckInHistoryView;->isMe:Z

    if-eqz v2, :cond_7

    if-eqz v8, :cond_7

    if-eqz p6, :cond_7

    array-length v2, v3

    sub-int/2addr v2, v5

    const/4 v5, 0x7

    sub-int/2addr v2, v5

    if-le v12, v2, :cond_8

    const v2, 0x7f08014e

    .line 179
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 180
    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    new-instance v2, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v2, v12}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 183
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v12, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v10, -0x10000

    .line 184
    invoke-virtual {v2, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 185
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 186
    iget-object v10, v0, Lcom/narvii/checkin/CheckInHistoryView;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 188
    iget-object v10, v0, Lcom/narvii/checkin/CheckInHistoryView;->breathViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    const/4 v5, 0x7

    :cond_8
    const v2, 0x7f08014d

    .line 190
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v5, 0x7

    .line 196
    :goto_5
    iget-object v2, v0, Lcom/narvii/checkin/CheckInHistoryView;->historyLayout:Landroid/widget/GridLayout;

    invoke-virtual {v2, v1}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v1, p1

    const/4 v5, 0x0

    const/4 v10, 0x7

    goto/16 :goto_1

    :cond_a
    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v1, p1

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public setMe(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/narvii/checkin/CheckInHistoryView;->isMe:Z

    return-void
.end method
