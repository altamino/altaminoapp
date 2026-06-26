.class public Lcom/narvii/util/debug/SignallingMonitorHelper;
.super Ljava/lang/Object;
.source "SignallingMonitorHelper.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;
.implements Lcom/narvii/util/ws/WsService$WsListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/util/debug/SignallingMonitorHelper;",
        ">;",
        "Lcom/narvii/util/ws/WsService$WsListener;"
    }
.end annotation


# instance fields
.field private final infoUpdate:Ljava/lang/Runnable;

.field private popup:Landroid/widget/PopupWindow;

.field private prefs:Landroid/content/SharedPreferences;

.field private show:Z

.field private signalling:Lcom/narvii/chat/signalling/SignallingService;

.field private ws:Lcom/narvii/util/ws/WsService;

.field private final wsUpdate:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Lcom/narvii/util/debug/SignallingMonitorHelper$2;

    invoke-direct {v0, p0}, Lcom/narvii/util/debug/SignallingMonitorHelper$2;-><init>(Lcom/narvii/util/debug/SignallingMonitorHelper;)V

    iput-object v0, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->wsUpdate:Ljava/lang/Runnable;

    .line 208
    new-instance v0, Lcom/narvii/util/debug/SignallingMonitorHelper$3;

    invoke-direct {v0, p0}, Lcom/narvii/util/debug/SignallingMonitorHelper$3;-><init>(Lcom/narvii/util/debug/SignallingMonitorHelper;)V

    iput-object v0, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->infoUpdate:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/util/debug/SignallingMonitorHelper;)Landroid/widget/PopupWindow;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->popup:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/util/debug/SignallingMonitorHelper;Landroid/widget/PopupWindow;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/narvii/util/debug/SignallingMonitorHelper;->updatePopupWs(Landroid/widget/PopupWindow;)V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/util/debug/SignallingMonitorHelper;Landroid/widget/PopupWindow;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/narvii/util/debug/SignallingMonitorHelper;->updatePopupSignalling(Landroid/widget/PopupWindow;)V

    return-void
.end method

.method private showPopup(Landroid/app/Activity;)Landroid/widget/PopupWindow;
    .locals 5

    .line 77
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b062b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 78
    invoke-static {p1}, Lcom/narvii/util/Utils;->getActionBarHeight(Landroid/content/Context;)I

    move-result v1

    .line 79
    new-instance v2, Landroid/widget/PopupWindow;

    const/high16 v3, 0x43340000    # 180.0f

    invoke-static {p1, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v2, v0, v3, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 80
    invoke-direct {p0, v2}, Lcom/narvii/util/debug/SignallingMonitorHelper;->updatePopupWs(Landroid/widget/PopupWindow;)V

    .line 81
    invoke-direct {p0, v2}, Lcom/narvii/util/debug/SignallingMonitorHelper;->updatePopupSignalling(Landroid/widget/PopupWindow;)V

    .line 82
    new-instance v0, Lcom/narvii/util/debug/SignallingMonitorHelper$1;

    invoke-direct {v0, p0, p1, v2}, Lcom/narvii/util/debug/SignallingMonitorHelper$1;-><init>(Lcom/narvii/util/debug/SignallingMonitorHelper;Landroid/app/Activity;Landroid/widget/PopupWindow;)V

    const-wide/16 v3, 0x64

    invoke-static {v0, v3, v4}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-object v2
.end method

.method private updatePopupSignalling(Landroid/widget/PopupWindow;)V
    .locals 13

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    iget-object v1, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->signalling:Lcom/narvii/chat/signalling/SignallingService;

    invoke-virtual {v1}, Lcom/narvii/chat/signalling/SignallingService;->channelList()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v5, 0xa

    const/4 v6, 0x3

    if-eqz v4, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 154
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    iget-object v8, v4, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    .line 156
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    :goto_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    const/16 v9, 0x20

    if-ge v8, v6, :cond_0

    .line 158
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 160
    :cond_0
    iget v8, v4, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    const/4 v10, 0x4

    const-string v11, "?"

    const/4 v12, 0x1

    if-eq v8, v10, :cond_4

    if-ne v8, v6, :cond_1

    goto :goto_2

    :cond_1
    if-ne v8, v12, :cond_2

    const-string v6, "AUDIO"

    .line 163
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    if-nez v8, :cond_3

    const-string v6, "NONE"

    .line 165
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 167
    :cond_3
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    :goto_2
    const-string v6, "VIDEO"

    .line 161
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :goto_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/16 v8, 0x9

    if-ge v6, v8, :cond_5

    .line 170
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 172
    :cond_5
    iget v6, v4, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    if-nez v6, :cond_6

    const-string v6, "GUEST"

    .line 173
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_6
    if-ne v6, v12, :cond_7

    const-string v6, "HOST"

    .line 175
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_7
    const/4 v8, 0x2

    if-ne v6, v8, :cond_8

    const-string v6, "AUDIE"

    .line 177
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 179
    :cond_8
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :goto_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/16 v8, 0xf

    if-ge v6, v8, :cond_9

    .line 182
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 184
    :cond_9
    iget-object v4, v4, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-virtual {v4, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".."

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_a

    .line 186
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    :cond_a
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_b
    if-ge v3, v6, :cond_d

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "heap="

    .line 196
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v6

    sub-long/2addr v3, v6

    const-wide/16 v6, 0x400

    div-long/2addr v3, v6

    div-long/2addr v3, v6

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "m\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "native="

    .line 197
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v2

    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v8

    sub-long/2addr v2, v8

    div-long/2addr v2, v6

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_c

    .line 199
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_c
    move-object v0, v1

    .line 204
    :cond_d
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    const v1, 0x7f090b5b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updatePopupWs(Landroid/widget/PopupWindow;)V
    .locals 7

    .line 101
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090a97

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 102
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    const v1, 0x7f090a9f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 103
    iget-object v1, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->ws:Lcom/narvii/util/ws/WsService;

    invoke-virtual {v1}, Lcom/narvii/util/ws/WsService;->getConnectStatus()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    .line 106
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v5, 0x12c

    .line 107
    invoke-virtual {v1, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 108
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v5, -0x1

    .line 109
    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 110
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    const v2, 0x7f080654

    .line 112
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 113
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 114
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 115
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    const-wide/16 v5, 0xc8

    if-ne v1, v2, :cond_1

    const v1, 0x7f080657

    .line 117
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 118
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 119
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 120
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->wsUpdate:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 123
    iget-object p1, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->wsUpdate:Ljava/lang/Runnable;

    invoke-static {p1, v5, v6}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_1
    if-gtz v1, :cond_2

    .line 125
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 126
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 127
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    neg-int v0, v1

    .line 128
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->wsUpdate:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 131
    iget-object p1, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->wsUpdate:Ljava/lang/Runnable;

    invoke-static {p1, v5, v6}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 134
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 135
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "?"

    .line 136
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/debug/SignallingMonitorHelper;
    .locals 3

    const-string/jumbo v0, "prefs"

    .line 40
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->prefs:Landroid/content/SharedPreferences;

    .line 41
    iget-object v0, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "debugSignallingMonitor"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->show:Z

    const-string/jumbo v0, "ws"

    .line 42
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/ws/WsService;

    iput-object v0, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->ws:Lcom/narvii/util/ws/WsService;

    const-string/jumbo v0, "signalling"

    .line 43
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/signalling/SignallingService;

    iput-object p1, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->signalling:Lcom/narvii/chat/signalling/SignallingService;

    return-object p0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/narvii/util/debug/SignallingMonitorHelper;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/debug/SignallingMonitorHelper;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/debug/SignallingMonitorHelper;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p2, Lcom/narvii/util/debug/SignallingMonitorHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/debug/SignallingMonitorHelper;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/debug/SignallingMonitorHelper;)V

    return-void
.end method

.method public isShow()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->show:Z

    return v0
.end method

.method public onConnect(Lcom/narvii/util/ws/WsService;)V
    .locals 1

    .line 266
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->wsUpdate:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 267
    iget-object p1, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->wsUpdate:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDisconnect(Lcom/narvii/util/ws/WsService;Ljava/lang/Throwable;)V
    .locals 0

    .line 272
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->wsUpdate:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 273
    iget-object p1, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->wsUpdate:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onWsError(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsError;)V
    .locals 0

    return-void
.end method

.method public onWsMessage(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsMessage;)V
    .locals 0

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/debug/SignallingMonitorHelper;)V
    .locals 1

    .line 239
    iget-object p2, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->popup:Landroid/widget/PopupWindow;

    if-eqz p2, :cond_0

    .line 240
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 p2, 0x0

    .line 241
    iput-object p2, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->popup:Landroid/widget/PopupWindow;

    .line 243
    :cond_0
    sget-object p2, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->infoUpdate:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 244
    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_1

    .line 245
    iget-object p1, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->ws:Lcom/narvii/util/ws/WsService;

    iget-object p1, p1, Lcom/narvii/util/ws/WsService;->listeners:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {p1, p0}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p2, Lcom/narvii/util/debug/SignallingMonitorHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/debug/SignallingMonitorHelper;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/debug/SignallingMonitorHelper;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/debug/SignallingMonitorHelper;)V
    .locals 0

    .line 220
    instance-of p2, p1, Landroid/app/Application;

    if-eqz p2, :cond_0

    .line 221
    iget-object p2, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->ws:Lcom/narvii/util/ws/WsService;

    iget-object p2, p2, Lcom/narvii/util/ws/WsService;->listeners:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {p2, p0}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 223
    :cond_0
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_2

    .line 224
    check-cast p1, Landroid/app/Activity;

    .line 225
    iget-object p2, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->popup:Landroid/widget/PopupWindow;

    if-eqz p2, :cond_1

    .line 226
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 p2, 0x0

    .line 227
    iput-object p2, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->popup:Landroid/widget/PopupWindow;

    .line 229
    :cond_1
    iget-boolean p2, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->show:Z

    if-eqz p2, :cond_2

    .line 230
    invoke-direct {p0, p1}, Lcom/narvii/util/debug/SignallingMonitorHelper;->showPopup(Landroid/app/Activity;)Landroid/widget/PopupWindow;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->popup:Landroid/widget/PopupWindow;

    .line 231
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->infoUpdate:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 232
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->infoUpdate:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p2, Lcom/narvii/util/debug/SignallingMonitorHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/debug/SignallingMonitorHelper;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/debug/SignallingMonitorHelper;)V

    return-void
.end method

.method public showShow(Landroid/app/Activity;Z)V
    .locals 2

    .line 57
    iput-boolean p2, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->show:Z

    .line 58
    iget-object v0, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "debugSignallingMonitor"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 59
    sget-object p2, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->infoUpdate:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 60
    iget-boolean p2, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->show:Z

    if-eqz p2, :cond_1

    if-eqz p1, :cond_2

    .line 62
    iget-object p2, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->popup:Landroid/widget/PopupWindow;

    if-eqz p2, :cond_0

    .line 63
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 65
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/util/debug/SignallingMonitorHelper;->showPopup(Landroid/app/Activity;)Landroid/widget/PopupWindow;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->popup:Landroid/widget/PopupWindow;

    .line 66
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->infoUpdate:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 69
    :cond_1
    iget-object p1, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->popup:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_2

    .line 70
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 p1, 0x0

    .line 71
    iput-object p1, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->popup:Landroid/widget/PopupWindow;

    :cond_2
    :goto_0
    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/util/debug/SignallingMonitorHelper;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p2, Lcom/narvii/util/debug/SignallingMonitorHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/debug/SignallingMonitorHelper;->start(Lcom/narvii/app/NVContext;Lcom/narvii/util/debug/SignallingMonitorHelper;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/debug/SignallingMonitorHelper;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p2, Lcom/narvii/util/debug/SignallingMonitorHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/debug/SignallingMonitorHelper;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/debug/SignallingMonitorHelper;)V

    return-void
.end method
