.class public Lcom/narvii/poweruser/SendBroadcastDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "SourceFile"


# instance fields
.field content:Landroid/widget/EditText;

.field context:Landroid/content/Context;

.field private linkSummary:Lcom/narvii/model/LinkSummary;

.field membersCount:I

.field numberFormat:Ljava/text/NumberFormat;

.field private postImg:Lcom/narvii/widget/NVImageView;

.field private postTitle:Landroid/widget/TextView;

.field public time:I

.field private timeView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/narvii/model/LinkSummary;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->context:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->linkSummary:Lcom/narvii/model/LinkSummary;

    .line 8
    .line 9
    iput p3, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->membersCount:I

    .line 10
    .line 11
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->numberFormat:Ljava/text/NumberFormat;

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Dialog;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/narvii/poweruser/SendBroadcastDialog;->initView()V

    .line 24
    return-void
.end method

.method private initView()V
    .locals 5

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0158

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Landroid/widget/TextView;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->context:Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    const v3, 0x7f120177

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v2, ":"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    const v0, 0x7f0a0e7e

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    check-cast v0, Landroid/widget/TextView;

    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    iget-object v3, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->context:Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    const v4, 0x7f1203bd

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 61
    move-result-object v3

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    const v0, 0x7f0a0154

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    check-cast v0, Landroid/widget/TextView;

    .line 84
    .line 85
    iget-object v1, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->context:Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    const v2, 0x7f12030e

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 92
    move-result-object v1

    .line 93
    .line 94
    iget v2, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->membersCount:I

    .line 95
    .line 96
    .line 97
    invoke-static {v1, v2}, Lcom/narvii/util/text/TextUtils;->getCountTitle(Ljava/lang/String;I)Ljava/lang/String;

    .line 98
    move-result-object v1

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    const v0, 0x7f0a0e78

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    check-cast v0, Landroid/widget/TextView;

    .line 111
    .line 112
    iput-object v0, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->timeView:Landroid/widget/TextView;

    .line 113
    .line 114
    .line 115
    invoke-direct {p0}, Lcom/narvii/poweruser/SendBroadcastDialog;->refreshTimeView()V

    .line 116
    .line 117
    .line 118
    const v0, 0x7f0a0df8

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 122
    move-result-object v0

    .line 123
    .line 124
    check-cast v0, Landroid/widget/TextView;

    .line 125
    const/4 v1, 0x0

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 129
    .line 130
    .line 131
    const v1, 0x7f0a039d

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 135
    move-result-object v1

    .line 136
    .line 137
    check-cast v1, Landroid/widget/EditText;

    .line 138
    .line 139
    iput-object v1, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->content:Landroid/widget/EditText;

    .line 140
    .line 141
    new-instance v2, Lcom/narvii/poweruser/SendBroadcastDialog$1;

    .line 142
    .line 143
    .line 144
    invoke-direct {v2, p0}, Lcom/narvii/poweruser/SendBroadcastDialog$1;-><init>(Lcom/narvii/poweruser/SendBroadcastDialog;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 148
    .line 149
    iget-object v1, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->content:Landroid/widget/EditText;

    .line 150
    .line 151
    new-instance v2, Lcom/narvii/poweruser/SendBroadcastDialog$2;

    .line 152
    .line 153
    .line 154
    invoke-direct {v2, p0, v0}, Lcom/narvii/poweruser/SendBroadcastDialog$2;-><init>(Lcom/narvii/poweruser/SendBroadcastDialog;Landroid/widget/TextView;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 158
    .line 159
    .line 160
    const v0, 0x7f0a0b48

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 164
    move-result-object v0

    .line 165
    .line 166
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 167
    .line 168
    iput-object v0, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->postImg:Lcom/narvii/widget/NVImageView;

    .line 169
    .line 170
    .line 171
    const v0, 0x7f0a0b78

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 175
    move-result-object v0

    .line 176
    .line 177
    check-cast v0, Landroid/widget/TextView;

    .line 178
    .line 179
    iput-object v0, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->postTitle:Landroid/widget/TextView;

    .line 180
    .line 181
    iget-object v0, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->linkSummary:Lcom/narvii/model/LinkSummary;

    .line 182
    .line 183
    if-eqz v0, :cond_0

    .line 184
    .line 185
    iget-object v1, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->postImg:Lcom/narvii/widget/NVImageView;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Lcom/narvii/model/LinkSummary;->getFirstMedia()Lcom/narvii/model/Media;

    .line 189
    move-result-object v0

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 193
    .line 194
    iget-object v0, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->postTitle:Landroid/widget/TextView;

    .line 195
    .line 196
    iget-object v1, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->linkSummary:Lcom/narvii/model/LinkSummary;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1}, Lcom/narvii/model/LinkSummary;->getTitle()Ljava/lang/String;

    .line 200
    move-result-object v1

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :cond_0
    return-void
.end method

.method private refreshTimeView()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->timeView:Landroid/widget/TextView;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iget v1, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->time:I

    .line 12
    int-to-long v1, v1

    .line 13
    .line 14
    const-wide/16 v3, 0x3e8

    .line 15
    mul-long/2addr v1, v3

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 19
    .line 20
    iget v1, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->time:I

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->context:Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    const v1, 0x7f120172

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/narvii/util/Utils;->formatDeliveryTime(Ljava/util/Date;)Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    :goto_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    new-instance v2, Landroid/text/style/UnderlineSpan;

    .line 48
    .line 49
    .line 50
    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 54
    move-result v0

    .line 55
    const/4 v3, 0x0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2, v3, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 59
    .line 60
    iget-object v0, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->timeView:Landroid/widget/TextView;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method


# virtual methods
.method protected baseLayoutId()I
    .locals 1

    const v0, 0x7f0d01bb

    return v0
.end method

.method public setTime(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->time:I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/poweruser/SendBroadcastDialog;->refreshTimeView()V

    .line 6
    return-void
.end method
