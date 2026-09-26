.class public Lcom/narvii/broadcast/DeliveryTimePickerFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->currentPosition:I

    .line 7
    return-void
.end method

.method static bridge synthetic n(Lcom/narvii/broadcast/DeliveryTimePickerFragment;)Ljava/util/Calendar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->calendar:Ljava/util/Calendar;

    return-object p0
.end method

.method static bridge synthetic o(Lcom/narvii/broadcast/DeliveryTimePickerFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->currentPosition:I

    return p0
.end method

.method static bridge synthetic p(Lcom/narvii/broadcast/DeliveryTimePickerFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->resetTime()V

    return-void
.end method

.method static bridge synthetic q(Lcom/narvii/broadcast/DeliveryTimePickerFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->setCurrentPosition(I)V

    return-void
.end method

.method private resetCheckView()V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->currentPosition:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->check1:Landroid/view/View;

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->check2:Landroid/view/View;

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->check2:Landroid/view/View;

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->check1:Landroid/view/View;

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 28
    :goto_0
    return-void
.end method

.method private resetTime()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 3
    .line 4
    const-string v1, "MM/dd/yyyy hh:mm a"

    .line 5
    .line 6
    .line 7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 8
    move-result-object v2

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->date:Ljava/util/Date;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->dateTextView:Landroid/widget/TextView;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    return-void
.end method

.method private setCurrentPosition(I)V
    .locals 1

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->currentPosition:I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->resetTime()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->resetCheckView()V

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-direct {p0, v0}, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->showTimeView(Z)V

    .line 17
    return-void
.end method

.method private showTimeView(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->dateTextView:Landroid/widget/TextView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->picker:Landroid/view/View;

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 11
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    sget p1, Lcom/narvii/lib/R$string;->delivery_time:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 9
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    sget p3, Lcom/narvii/lib/R$layout;->delivery_time_layout:I

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    iput-object p2, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->calendar:Ljava/util/Calendar;

    .line 10
    .line 11
    const-string p2, "time"

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p2, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    .line 16
    move-result p2

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->calendar:Ljava/util/Calendar;

    .line 19
    .line 20
    if-nez p2, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    move-result-wide v2

    .line 25
    .line 26
    .line 27
    const-wide/32 v4, 0x36ee80

    .line 28
    add-long/2addr v2, v4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    int-to-long v2, p2

    .line 31
    .line 32
    const-wide/16 v4, 0x3e8

    .line 33
    mul-long/2addr v2, v4

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 37
    .line 38
    iget-object v1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->calendar:Ljava/util/Calendar;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    iput-object v1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->date:Ljava/util/Date;

    .line 45
    .line 46
    sget v1, Lcom/narvii/lib/R$id;->picker:I

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    iput-object v1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->picker:Landroid/view/View;

    .line 53
    .line 54
    sget v1, Lcom/narvii/lib/R$id;->check1:I

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    iput-object v1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->check1:Landroid/view/View;

    .line 61
    .line 62
    sget v1, Lcom/narvii/lib/R$id;->check2:I

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    iput-object v1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->check2:Landroid/view/View;

    .line 69
    .line 70
    sget v1, Lcom/narvii/lib/R$id;->time:I

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    check-cast v1, Landroid/widget/TextView;

    .line 77
    .line 78
    iput-object v1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->dateTextView:Landroid/widget/TextView;

    .line 79
    .line 80
    sget v1, Lcom/narvii/lib/R$id;->date_picker:I

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    check-cast v1, Landroid/widget/DatePicker;

    .line 87
    .line 88
    iput-object v1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->datePicker:Landroid/widget/DatePicker;

    .line 89
    .line 90
    sget v1, Lcom/narvii/lib/R$id;->time_picker:I

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    move-result-object v1

    .line 95
    .line 96
    check-cast v1, Landroid/widget/TimePicker;

    .line 97
    .line 98
    iput-object v1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->timePicker:Landroid/widget/TimePicker;

    .line 99
    .line 100
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 104
    .line 105
    iget-object v1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->timePicker:Landroid/widget/TimePicker;

    .line 106
    .line 107
    iget-object v2, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->calendar:Ljava/util/Calendar;

    .line 108
    .line 109
    const/16 v3, 0xb

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    .line 113
    move-result v2

    .line 114
    .line 115
    .line 116
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    move-result-object v2

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 121
    .line 122
    iget-object v1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->timePicker:Landroid/widget/TimePicker;

    .line 123
    .line 124
    iget-object v2, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->calendar:Ljava/util/Calendar;

    .line 125
    .line 126
    const/16 v3, 0xc

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    .line 130
    move-result v2

    .line 131
    .line 132
    .line 133
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    move-result-object v2

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 138
    .line 139
    iget-object v1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->timePicker:Landroid/widget/TimePicker;

    .line 140
    .line 141
    new-instance v2, Lcom/narvii/broadcast/DeliveryTimePickerFragment$1;

    .line 142
    .line 143
    .line 144
    invoke-direct {v2, p0}, Lcom/narvii/broadcast/DeliveryTimePickerFragment$1;-><init>(Lcom/narvii/broadcast/DeliveryTimePickerFragment;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 148
    .line 149
    iget-object v1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->datePicker:Landroid/widget/DatePicker;

    .line 150
    .line 151
    iget-object v2, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->calendar:Ljava/util/Calendar;

    .line 152
    const/4 v3, 0x1

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    .line 156
    move-result v2

    .line 157
    .line 158
    iget-object v4, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->calendar:Ljava/util/Calendar;

    .line 159
    const/4 v5, 0x2

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    .line 163
    move-result v4

    .line 164
    .line 165
    iget-object v5, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->calendar:Ljava/util/Calendar;

    .line 166
    const/4 v6, 0x5

    .line 167
    .line 168
    .line 169
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    .line 170
    move-result v5

    .line 171
    .line 172
    new-instance v6, Lcom/narvii/broadcast/DeliveryTimePickerFragment$2;

    .line 173
    .line 174
    .line 175
    invoke-direct {v6, p0}, Lcom/narvii/broadcast/DeliveryTimePickerFragment$2;-><init>(Lcom/narvii/broadcast/DeliveryTimePickerFragment;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 179
    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->datePicker:Landroid/widget/DatePicker;

    .line 181
    .line 182
    iget-object v2, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->calendar:Ljava/util/Calendar;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 186
    move-result-object v2

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 190
    move-result-wide v4

    .line 191
    .line 192
    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 194
    move-result-wide v6

    .line 195
    .line 196
    .line 197
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 198
    move-result-wide v4

    .line 199
    .line 200
    const-wide/16 v6, 0x7d0

    .line 201
    sub-long/2addr v4, v6

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v4, v5}, Landroid/widget/DatePicker;->setMinDate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    goto :goto_1

    .line 206
    :catch_0
    move-exception v1

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 210
    move-result-object v1

    .line 211
    .line 212
    .line 213
    invoke-static {v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 214
    .line 215
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->datePicker:Landroid/widget/DatePicker;

    .line 216
    .line 217
    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 219
    move-result-wide v4

    .line 220
    .line 221
    .line 222
    const-wide/32 v6, 0x240c8400

    .line 223
    add-long/2addr v4, v6

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1, v4, v5}, Landroid/widget/DatePicker;->setMaxDate(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 227
    goto :goto_2

    .line 228
    :catch_1
    move-exception v1

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 232
    move-result-object v1

    .line 233
    .line 234
    .line 235
    invoke-static {v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 239
    move-result-object v1

    .line 240
    .line 241
    check-cast v1, Lcom/narvii/app/NVActivity;

    .line 242
    .line 243
    sget v2, Lcom/narvii/lib/R$string;->save:I

    .line 244
    .line 245
    new-instance v4, Lcom/narvii/broadcast/DeliveryTimePickerFragment$3;

    .line 246
    .line 247
    .line 248
    invoke-direct {v4, p0}, Lcom/narvii/broadcast/DeliveryTimePickerFragment$3;-><init>(Lcom/narvii/broadcast/DeliveryTimePickerFragment;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1, v2, v4}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/view/View$OnClickListener;)V

    .line 252
    .line 253
    if-nez p2, :cond_1

    .line 254
    goto :goto_3

    .line 255
    :cond_1
    move v0, v3

    .line 256
    .line 257
    .line 258
    :goto_3
    invoke-direct {p0, v0}, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->setCurrentPosition(I)V

    .line 259
    .line 260
    sget p2, Lcom/narvii/lib/R$id;->immediately_layout:I

    .line 261
    .line 262
    .line 263
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 264
    move-result-object p2

    .line 265
    .line 266
    new-instance v0, Lcom/narvii/broadcast/DeliveryTimePickerFragment$4;

    .line 267
    .line 268
    .line 269
    invoke-direct {v0, p0}, Lcom/narvii/broadcast/DeliveryTimePickerFragment$4;-><init>(Lcom/narvii/broadcast/DeliveryTimePickerFragment;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    .line 274
    sget p2, Lcom/narvii/lib/R$id;->schedule_layout:I

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 278
    move-result-object p1

    .line 279
    .line 280
    new-instance p2, Lcom/narvii/broadcast/DeliveryTimePickerFragment$5;

    .line 281
    .line 282
    .line 283
    invoke-direct {p2, p0}, Lcom/narvii/broadcast/DeliveryTimePickerFragment$5;-><init>(Lcom/narvii/broadcast/DeliveryTimePickerFragment;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    return-void
.end method
