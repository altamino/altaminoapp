.class public Lcom/narvii/wallet/EarnCoinToastHelper;
.super Ljava/lang/Object;
.source "EarnCoinToastHelper.java"

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

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->handler:Landroid/os/Handler;

    const-string v0, "\\d+"

    .line 74
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->pcoins:Ljava/util/regex/Pattern;

    .line 163
    new-instance v0, Lcom/narvii/wallet/EarnCoinToastHelper$1;

    invoke-direct {v0, p0}, Lcom/narvii/wallet/EarnCoinToastHelper$1;-><init>(Lcom/narvii/wallet/EarnCoinToastHelper;)V

    iput-object v0, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->remove:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/wallet/EarnCoinToastHelper;
    .locals 1

    .line 38
    iput-object p1, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->context:Lcom/narvii/app/NVContext;

    const-string/jumbo v0, "push"

    .line 39
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/pushservice/PushService;

    .line 40
    invoke-virtual {p1, p0}, Lcom/narvii/pushservice/PushService;->addPushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    return-object p0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/narvii/wallet/EarnCoinToastHelper;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/wallet/EarnCoinToastHelper;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/wallet/EarnCoinToastHelper;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p2, Lcom/narvii/wallet/EarnCoinToastHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/EarnCoinToastHelper;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/wallet/EarnCoinToastHelper;)V

    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->currentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->remove:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 159
    iget-object v0, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->remove:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onInterceptNotification(Lcom/narvii/pushservice/PushPayload;)Z
    .locals 1

    .line 96
    iget p1, p1, Lcom/narvii/pushservice/PushPayload;->type:I

    const/16 v0, 0x33

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onPushPayload(Lcom/narvii/pushservice/PushPayload;)V
    .locals 4

    const-string v0, "Coins Earned"

    .line 78
    iget-boolean v1, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->enabled:Z

    const/4 v2, 0x0

    const/16 v3, 0x33

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/narvii/pushservice/PushPayload;->type:I

    if-ne v1, v3, :cond_0

    .line 79
    invoke-virtual {p1, v2}, Lcom/narvii/pushservice/PushPayload;->message(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/narvii/wallet/EarnCoinToastHelper;->show(Ljava/lang/String;)V

    .line 81
    :cond_0
    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/wallet/EarnCoinToastHelper;)V
    .locals 0

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->enabled:Z

    .line 57
    invoke-virtual {p0}, Lcom/narvii/wallet/EarnCoinToastHelper;->dismiss()V

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p2, Lcom/narvii/wallet/EarnCoinToastHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/EarnCoinToastHelper;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/wallet/EarnCoinToastHelper;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/wallet/EarnCoinToastHelper;)V
    .locals 0

    const/4 p1, 0x1

    .line 51
    iput-boolean p1, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->enabled:Z

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p2, Lcom/narvii/wallet/EarnCoinToastHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/EarnCoinToastHelper;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/wallet/EarnCoinToastHelper;)V

    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 13

    const-string v0, "layout_inflater"

    .line 100
    iget-object v1, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->currentView:Landroid/view/View;

    const-wide/16 v2, 0x5dc

    const v4, 0x7f090baa

    if-nez v1, :cond_2

    .line 101
    iget-object v1, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v5, 0x31

    const/4 v6, 0x0

    const v7, 0x7f0b06fe

    .line 103
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 104
    invoke-virtual {v8, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 105
    invoke-virtual {v8, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 106
    invoke-virtual {v9, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    new-instance v10, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v10}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 109
    iput v5, v10, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v11, -0x2

    .line 110
    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 111
    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v11, 0x18

    .line 112
    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v11, -0x3

    .line 114
    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 115
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1a

    if-ge v11, v12, :cond_0

    const/16 v11, 0x7d5

    .line 116
    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    :cond_0
    const/16 v11, 0x7f6

    .line 118
    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    :goto_0
    const-string/jumbo v11, "window"

    .line 121
    invoke-virtual {v1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    .line 122
    invoke-interface {v11, v8, v10}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    iput-object v8, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->currentView:Landroid/view/View;

    const v8, 0x7f01004d

    .line 124
    invoke-static {v1, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 125
    iget-object v8, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->handler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->remove:Ljava/lang/Runnable;

    invoke-virtual {v8, v9, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 127
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v8, "permission denied"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 129
    invoke-virtual {v0, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 131
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 132
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :try_start_1
    new-instance p1, Landroid/widget/Toast;

    iget-object v1, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 136
    invoke-virtual {p1, v5, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 137
    invoke-static {p1}, Lcom/narvii/util/NVToast;->hook(Landroid/widget/Toast;)V

    .line 138
    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    const/16 v0, 0x5dc

    .line 139
    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setDuration(I)V

    .line 140
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string/jumbo v0, "system toast fail"

    .line 142
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    const-string/jumbo p1, "toast fail"

    .line 145
    invoke-static {p1, v2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 149
    :cond_2
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 150
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object p1, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->remove:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 152
    iget-object p1, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/wallet/EarnCoinToastHelper;->remove:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/wallet/EarnCoinToastHelper;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p2, Lcom/narvii/wallet/EarnCoinToastHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/EarnCoinToastHelper;->start(Lcom/narvii/app/NVContext;Lcom/narvii/wallet/EarnCoinToastHelper;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/wallet/EarnCoinToastHelper;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p2, Lcom/narvii/wallet/EarnCoinToastHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/EarnCoinToastHelper;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/wallet/EarnCoinToastHelper;)V

    return-void
.end method
