.class public Lcom/narvii/poll/PollDurationView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private darkTheme:Z

.field private text1:Landroid/widget/TextView;

.field private text2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    const p2, 0x7f0d0620

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    const p1, 0x7f0a0b0c

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    check-cast p1, Landroid/widget/TextView;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/poll/PollDurationView;->text1:Landroid/widget/TextView;

    .line 25
    .line 26
    .line 27
    const p1, 0x7f0a0b0b

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    check-cast p1, Landroid/widget/TextView;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/narvii/poll/PollDurationView;->text2:Landroid/widget/TextView;

    .line 36
    return-void
.end method


# virtual methods
.method public setDarkTheme(Z)V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/poll/PollDurationView;->darkTheme:Z

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/poll/PollDurationView;->darkTheme:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/poll/PollDurationView;->text1:Landroid/widget/TextView;

    .line 10
    .line 11
    .line 12
    const v1, -0x333334

    .line 13
    const/4 v2, -0x1

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    move v3, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    move v3, v1

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/poll/PollDurationView;->text2:Landroid/widget/TextView;

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    move v1, v2

    .line 27
    .line 28
    .line 29
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    return-void
.end method

.method public setEndTime(Ljava/util/Date;)V
    .locals 9

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/poll/PollDurationView;->text1:Landroid/widget/TextView;

    .line 5
    .line 6
    .line 7
    const v0, 0x7f1203e5

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/poll/PollDurationView;->text2:Landroid/widget/TextView;

    .line 13
    .line 14
    const/16 v0, 0x8

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 23
    move-result-wide v0

    .line 24
    .line 25
    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    move-result-wide v2

    .line 28
    sub-long/2addr v0, v2

    .line 29
    .line 30
    .line 31
    const-wide/32 v2, 0x36ee80

    .line 32
    .line 33
    cmp-long v4, v0, v2

    .line 34
    const/4 v5, 0x0

    .line 35
    .line 36
    if-gez v4, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    const v1, 0x7f1203da

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    goto :goto_0

    .line 49
    .line 50
    .line 51
    :cond_1
    const-wide/32 v6, 0x6ddd00

    .line 52
    .line 53
    cmp-long v4, v0, v6

    .line 54
    .line 55
    if-gez v4, :cond_2

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    const v1, 0x7f1203de

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    goto :goto_0

    .line 68
    .line 69
    .line 70
    :cond_2
    const-wide/32 v6, 0x5265c00

    .line 71
    .line 72
    cmp-long v4, v0, v6

    .line 73
    const/4 v8, 0x1

    .line 74
    .line 75
    if-gez v4, :cond_3

    .line 76
    div-long/2addr v0, v2

    .line 77
    long-to-int v0, v0

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    new-array v2, v8, [Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    aput-object v0, v2, v5

    .line 90
    .line 91
    .line 92
    const v0, 0x7f1203dc

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    move-result-object v0

    .line 97
    goto :goto_0

    .line 98
    .line 99
    .line 100
    :cond_3
    const-wide/32 v2, 0xa4cb800

    .line 101
    .line 102
    cmp-long v2, v0, v2

    .line 103
    .line 104
    if-gez v2, :cond_4

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    .line 111
    const v1, 0x7f1203dd

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 115
    move-result-object v0

    .line 116
    goto :goto_0

    .line 117
    :cond_4
    div-long/2addr v0, v6

    .line 118
    long-to-int v0, v0

    .line 119
    add-int/2addr v0, v8

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 123
    move-result-object v1

    .line 124
    .line 125
    new-array v2, v8, [Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    move-result-object v0

    .line 130
    .line 131
    aput-object v0, v2, v5

    .line 132
    .line 133
    .line 134
    const v0, 0x7f1203db

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 138
    move-result-object v0

    .line 139
    .line 140
    :goto_0
    iget-object v1, p0, Lcom/narvii/poll/PollDurationView;->text1:Landroid/widget/TextView;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    iget-object v0, p0, Lcom/narvii/poll/PollDurationView;->text2:Landroid/widget/TextView;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 152
    move-result-object v0

    .line 153
    .line 154
    .line 155
    invoke-static {v0}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    .line 156
    move-result-object v0

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, p1}, Lcom/narvii/util/DateTimeFormatter;->endTime(Ljava/util/Date;)Ljava/lang/String;

    .line 160
    move-result-object p1

    .line 161
    .line 162
    iget-object v0, p0, Lcom/narvii/poll/PollDurationView;->text2:Landroid/widget/TextView;

    .line 163
    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    const-string v2, "\u2022 "

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    const-string p1, " \u2022"

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    move-result-object p1

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    :goto_1
    return-void
.end method
