.class public Lcom/narvii/wallet/EarnCoinToastHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;
.implements Lcom/narvii/pushservice/PushService$PushListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/wallet/EarnCoinToastHelper;",
        ">;",
        "Lcom/narvii/pushservice/PushService$PushListener;"
    }
.end annotation


# static fields
.field static final DURATION:J = 0x5dcL


# instance fields
.field context:Lcom/narvii/app/NVContext;

.field currentView:Landroid/view/View;

.field enabled:Z

.field handler:Landroid/os/Handler;

.field pcoins:Ljava/util/regex/Pattern;

.field private final remove:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->handler:Landroid/os/Handler;

    .line 8
    .line 9
    const-string v0, "\\d+"

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->pcoins:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    new-instance v0, Lcom/narvii/wallet/EarnCoinToastHelper$1;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/narvii/wallet/EarnCoinToastHelper$1;-><init>(Lcom/narvii/wallet/EarnCoinToastHelper;)V

    .line 21
    .line 22
    iput-object v0, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->remove:Ljava/lang/Runnable;

    .line 23
    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/wallet/EarnCoinToastHelper;
    .locals 1

    iput-object p1, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->context:Lcom/narvii/app/NVContext;

    const-string v0, "push"

    .line 2
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/pushservice/PushService;

    .line 3
    invoke-virtual {p1, p0}, Lcom/narvii/pushservice/PushService;->addPushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    return-object p0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/wallet/EarnCoinToastHelper;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/wallet/EarnCoinToastHelper;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/wallet/EarnCoinToastHelper;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/wallet/EarnCoinToastHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/EarnCoinToastHelper;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/wallet/EarnCoinToastHelper;)V

    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->currentView:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->remove:Ljava/lang/Runnable;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->handler:Landroid/os/Handler;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->remove:Ljava/lang/Runnable;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    :cond_0
    return-void
.end method

.method public onInterceptNotification(Lcom/narvii/pushservice/PushPayload;)Z
    .locals 1

    .line 1
    .line 2
    iget p1, p1, Lcom/narvii/pushservice/PushPayload;->type:I

    .line 3
    .line 4
    const/16 v0, 0x33

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method public onPushPayload(Lcom/narvii/pushservice/PushPayload;)V
    .locals 4

    .line 1
    .line 2
    const-string v0, "Coins Earned"

    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->enabled:Z

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    const/16 v3, 0x33

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget v1, p1, Lcom/narvii/pushservice/PushPayload;->type:I

    .line 12
    .line 13
    if-ne v1, v3, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v2}, Lcom/narvii/pushservice/PushPayload;->message(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1}, Lcom/narvii/wallet/EarnCoinToastHelper;->show(Ljava/lang/String;)V

    .line 21
    .line 22
    :cond_0
    iget v1, p1, Lcom/narvii/pushservice/PushPayload;->type:I

    .line 23
    .line 24
    if-ne v1, v3, :cond_1

    .line 25
    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->pcoins:Ljava/util/regex/Pattern;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v2}, Lcom/narvii/pushservice/PushPayload;->message(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 38
    move-result v1

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 48
    move-result p1

    .line 49
    .line 50
    iget-object v1, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->context:Lcom/narvii/app/NVContext;

    .line 51
    .line 52
    const-string v2, "statistics"

    .line 53
    .line 54
    .line 55
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    check-cast v1, Lcom/narvii/util/statistics/StatisticsService;

    .line 59
    .line 60
    .line 61
    invoke-interface {v1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v0, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;I)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    const-string v1, "Coins Earned Total"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;I)Lcom/narvii/util/statistics/StatisticsEventBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :catch_0
    :cond_1
    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/wallet/EarnCoinToastHelper;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->enabled:Z

    .line 2
    invoke-virtual {p0}, Lcom/narvii/wallet/EarnCoinToastHelper;->dismiss()V

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/wallet/EarnCoinToastHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/EarnCoinToastHelper;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/wallet/EarnCoinToastHelper;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/wallet/EarnCoinToastHelper;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->enabled:Z

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/wallet/EarnCoinToastHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/EarnCoinToastHelper;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/wallet/EarnCoinToastHelper;)V

    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 13

    .line 1
    .line 2
    const-string v0, "layout_inflater"

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->currentView:Landroid/view/View;

    .line 5
    .line 6
    const-wide/16 v2, 0x5dc

    .line 7
    .line 8
    .line 9
    const v4, 0x7f0a0ec1

    .line 10
    .line 11
    if-nez v1, :cond_2

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->context:Lcom/narvii/app/NVContext;

    .line 14
    .line 15
    .line 16
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    const/16 v5, 0x31

    .line 20
    const/4 v6, 0x0

    .line 21
    .line 22
    .line 23
    const v7, 0x7f0d07af

    .line 24
    .line 25
    .line 26
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object v8

    .line 28
    .line 29
    check-cast v8, Landroid/view/LayoutInflater;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v8, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 33
    move-result-object v8

    .line 34
    .line 35
    .line 36
    invoke-virtual {v8, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object v9

    .line 38
    .line 39
    check-cast v9, Landroid/widget/TextView;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v9, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    new-instance v10, Landroid/view/WindowManager$LayoutParams;

    .line 45
    .line 46
    .line 47
    invoke-direct {v10}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 48
    .line 49
    iput v5, v10, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 50
    const/4 v11, -0x2

    .line 51
    .line 52
    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 53
    .line 54
    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 55
    .line 56
    const/16 v11, 0x18

    .line 57
    .line 58
    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 59
    const/4 v11, -0x3

    .line 60
    .line 61
    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 62
    .line 63
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 64
    .line 65
    const/16 v12, 0x1a

    .line 66
    .line 67
    if-ge v11, v12, :cond_0

    .line 68
    .line 69
    const/16 v11, 0x7d5

    .line 70
    .line 71
    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception v2

    .line 74
    goto :goto_1

    .line 75
    .line 76
    :cond_0
    const/16 v11, 0x7f6

    .line 77
    .line 78
    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 79
    .line 80
    .line 81
    :goto_0
    const-string/jumbo v11, "window"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    move-result-object v11

    .line 86
    .line 87
    check-cast v11, Landroid/view/WindowManager;

    .line 88
    .line 89
    .line 90
    invoke-interface {v11, v8, v10}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    .line 92
    iput-object v8, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->currentView:Landroid/view/View;

    .line 93
    .line 94
    .line 95
    const v8, 0x7f01006b

    .line 96
    .line 97
    .line 98
    invoke-static {v1, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 99
    move-result-object v8

    .line 100
    .line 101
    .line 102
    invoke-virtual {v9, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 103
    .line 104
    iget-object v8, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->handler:Landroid/os/Handler;

    .line 105
    .line 106
    iget-object v9, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->remove:Ljava/lang/Runnable;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v8, v9, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    goto :goto_2

    .line 111
    .line 112
    .line 113
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 114
    move-result-object v3

    .line 115
    .line 116
    const-string v8, "permission denied"

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 120
    move-result v3

    .line 121
    .line 122
    if-eqz v3, :cond_1

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    move-result-object v0

    .line 127
    .line 128
    check-cast v0, Landroid/view/LayoutInflater;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 132
    move-result-object v0

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 136
    move-result-object v1

    .line 137
    .line 138
    check-cast v1, Landroid/widget/TextView;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    .line 143
    :try_start_1
    new-instance p1, Landroid/widget/Toast;

    .line 144
    .line 145
    iget-object v1, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->context:Lcom/narvii/app/NVContext;

    .line 146
    .line 147
    .line 148
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 149
    move-result-object v1

    .line 150
    .line 151
    .line 152
    invoke-direct {p1, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 153
    const/4 v1, 0x0

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v5, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 157
    .line 158
    .line 159
    invoke-static {p1}, Lcom/narvii/util/NVToast;->hook(Landroid/widget/Toast;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 163
    .line 164
    const/16 v0, 0x5dc

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setDuration(I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 171
    goto :goto_2

    .line 172
    :catch_1
    move-exception p1

    .line 173
    .line 174
    .line 175
    const-string/jumbo v0, "system toast fail"

    .line 176
    .line 177
    .line 178
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    goto :goto_2

    .line 180
    .line 181
    .line 182
    :cond_1
    const-string/jumbo p1, "toast fail"

    .line 183
    .line 184
    .line 185
    invoke-static {p1, v2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    goto :goto_2

    .line 187
    .line 188
    .line 189
    :cond_2
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 190
    move-result-object v0

    .line 191
    .line 192
    check-cast v0, Landroid/widget/TextView;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    .line 197
    iget-object p1, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->handler:Landroid/os/Handler;

    .line 198
    .line 199
    iget-object v0, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->remove:Ljava/lang/Runnable;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 203
    .line 204
    iget-object p1, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->handler:Landroid/os/Handler;

    .line 205
    .line 206
    iget-object v0, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->remove:Ljava/lang/Runnable;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 210
    :goto_2
    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/wallet/EarnCoinToastHelper;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/wallet/EarnCoinToastHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/EarnCoinToastHelper;->start(Lcom/narvii/app/NVContext;Lcom/narvii/wallet/EarnCoinToastHelper;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/wallet/EarnCoinToastHelper;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/wallet/EarnCoinToastHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/EarnCoinToastHelper;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/wallet/EarnCoinToastHelper;)V

    return-void
.end method
