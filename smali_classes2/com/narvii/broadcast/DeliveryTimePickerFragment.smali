.class public Lcom/narvii/broadcast/DeliveryTimePickerFragment;
.super Lcom/narvii/app/NVFragment;
.source "DeliveryTimePickerFragment.java"


# static fields
.field public static final ONE_HOUR:I = 0x36ee80


# instance fields
.field private calendar:Ljava/util/Calendar;

.field private check1:Landroid/view/View;

.field private check2:Landroid/view/View;

.field private currentPosition:I

.field public date:Ljava/util/Date;

.field datePicker:Landroid/widget/DatePicker;

.field private dateTextView:Landroid/widget/TextView;

.field picker:Landroid/view/View;

.field timePicker:Landroid/widget/TimePicker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->currentPosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/broadcast/DeliveryTimePickerFragment;)Ljava/util/Calendar;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->calendar:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/broadcast/DeliveryTimePickerFragment;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->resetTime()V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/broadcast/DeliveryTimePickerFragment;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->currentPosition:I

    return p0
.end method

.method static synthetic access$300(Lcom/narvii/broadcast/DeliveryTimePickerFragment;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->setCurrentPosition(I)V

    return-void
.end method

.method private resetCheckView()V
    .locals 3

    .line 157
    iget v0, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->currentPosition:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->check1:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 159
    iget-object v0, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->check2:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->check2:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 162
    iget-object v0, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->check1:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    :goto_0
    return-void
.end method

.method private resetTime()V
    .locals 3

    .line 167
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "MM/dd/yyyy hh:mm a"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 168
    iget-object v1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->date:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->dateTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setCurrentPosition(I)V
    .locals 1

    .line 144
    iput p1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->currentPosition:I

    .line 145
    invoke-direct {p0}, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->resetTime()V

    .line 146
    invoke-direct {p0}, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->resetCheckView()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 147
    :goto_0
    invoke-direct {p0, v0}, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->showTimeView(Z)V

    return-void
.end method

.method private showTimeView(Z)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->dateTextView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 152
    iget-object v0, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->picker:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget p1, Lcom/narvii/lib/R$string;->delivery_time:I

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 54
    sget p3, Lcom/narvii/lib/R$layout;->delivery_time_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    .line 64
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 66
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->calendar:Ljava/util/Calendar;

    const/4 p2, 0x0

    const-string v0, "time"

    .line 67
    invoke-virtual {p0, v0, p2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    move-result v0

    .line 68
    iget-object v1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->calendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    add-long/2addr v2, v4

    goto :goto_0

    :cond_0
    int-to-long v2, v0

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    :goto_0
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 69
    iget-object v1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->date:Ljava/util/Date;

    .line 72
    sget v1, Lcom/narvii/lib/R$id;->picker:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->picker:Landroid/view/View;

    .line 73
    sget v1, Lcom/narvii/lib/R$id;->check1:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->check1:Landroid/view/View;

    .line 74
    sget v1, Lcom/narvii/lib/R$id;->check2:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->check2:Landroid/view/View;

    .line 75
    sget v1, Lcom/narvii/lib/R$id;->time:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->dateTextView:Landroid/widget/TextView;

    .line 76
    sget v1, Lcom/narvii/lib/R$id;->date_picker:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/DatePicker;

    iput-object v1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->datePicker:Landroid/widget/DatePicker;

    .line 77
    sget v1, Lcom/narvii/lib/R$id;->time_picker:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TimePicker;

    iput-object v1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->timePicker:Landroid/widget/TimePicker;

    .line 79
    iget-object v1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->timePicker:Landroid/widget/TimePicker;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 80
    iget-object v1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->timePicker:Landroid/widget/TimePicker;

    iget-object v2, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 81
    iget-object v1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->timePicker:Landroid/widget/TimePicker;

    iget-object v2, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 82
    iget-object v1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->timePicker:Landroid/widget/TimePicker;

    new-instance v2, Lcom/narvii/broadcast/DeliveryTimePickerFragment$1;

    invoke-direct {v2, p0}, Lcom/narvii/broadcast/DeliveryTimePickerFragment$1;-><init>(Lcom/narvii/broadcast/DeliveryTimePickerFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 91
    iget-object v1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->datePicker:Landroid/widget/DatePicker;

    iget-object v2, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v4, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->calendar:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->calendar:Ljava/util/Calendar;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    new-instance v6, Lcom/narvii/broadcast/DeliveryTimePickerFragment$2;

    invoke-direct {v6, p0}, Lcom/narvii/broadcast/DeliveryTimePickerFragment$2;-><init>(Lcom/narvii/broadcast/DeliveryTimePickerFragment;)V

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->datePicker:Landroid/widget/DatePicker;

    iget-object v2, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const-wide/16 v6, 0x7d0

    sub-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Landroid/widget/DatePicker;->setMinDate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 104
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 108
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->datePicker:Landroid/widget/DatePicker;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x240c8400

    add-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Landroid/widget/DatePicker;->setMaxDate(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 110
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 113
    :goto_2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/narvii/app/NVActivity;

    .line 114
    sget v2, Lcom/narvii/lib/R$string;->save:I

    new-instance v4, Lcom/narvii/broadcast/DeliveryTimePickerFragment$3;

    invoke-direct {v4, p0}, Lcom/narvii/broadcast/DeliveryTimePickerFragment$3;-><init>(Lcom/narvii/broadcast/DeliveryTimePickerFragment;)V

    invoke-virtual {v1, v2, v4}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/view/View$OnClickListener;)V

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    const/4 p2, 0x1

    .line 126
    :goto_3
    invoke-direct {p0, p2}, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->setCurrentPosition(I)V

    .line 128
    sget p2, Lcom/narvii/lib/R$id;->immediately_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/narvii/broadcast/DeliveryTimePickerFragment$4;

    invoke-direct {v0, p0}, Lcom/narvii/broadcast/DeliveryTimePickerFragment$4;-><init>(Lcom/narvii/broadcast/DeliveryTimePickerFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    sget p2, Lcom/narvii/lib/R$id;->schedule_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/narvii/broadcast/DeliveryTimePickerFragment$5;

    invoke-direct {p2, p0}, Lcom/narvii/broadcast/DeliveryTimePickerFragment$5;-><init>(Lcom/narvii/broadcast/DeliveryTimePickerFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
