.class public Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver$IWifiStateChangeListener;
    }
.end annotation


# static fields
.field private static final filter:Landroid/content/IntentFilter;

.field private static instance:Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;

.field private static listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver$IWifiStateChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->filter:Landroid/content/IntentFilter;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
.end method

.method public static getFilter()Landroid/content/IntentFilter;
    .locals 1

    sget-object v0, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->filter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->instance:Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;-><init>()V

    .line 10
    .line 11
    sput-object v0, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->instance:Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;

    .line 12
    .line 13
    sget-object v0, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->filter:Landroid/content/IntentFilter;

    .line 14
    .line 15
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    .line 20
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    sput-object v1, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->listeners:Ljava/util/List;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 29
    move-result-object p0

    .line 30
    .line 31
    sget-object v1, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->instance:Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 35
    .line 36
    :cond_0
    sget-object p0, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->instance:Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;

    .line 37
    return-object p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    const-string p1, "wifi_state"

    .line 15
    const/4 v0, 0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 19
    move-result p1

    .line 20
    .line 21
    if-ne p1, v0, :cond_0

    .line 22
    .line 23
    sget-object p1, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->listeners:Ljava/util/List;

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result p2

    .line 32
    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    check-cast p2, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver$IWifiStateChangeListener;

    .line 40
    const/4 v0, 0x0

    .line 41
    .line 42
    .line 43
    invoke-interface {p2, v0}, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver$IWifiStateChangeListener;->onWifiStateChange(Z)V

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 p2, 0x3

    .line 46
    .line 47
    if-ne p1, p2, :cond_1

    .line 48
    .line 49
    sget-object p1, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->listeners:Ljava/util/List;

    .line 50
    .line 51
    .line 52
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result p2

    .line 58
    .line 59
    if-eqz p2, :cond_1

    .line 60
    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object p2

    .line 64
    .line 65
    check-cast p2, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver$IWifiStateChangeListener;

    .line 66
    .line 67
    .line 68
    invoke-interface {p2, v0}, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver$IWifiStateChangeListener;->onWifiStateChange(Z)V

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    return-void
.end method

.method public registerWifiStateChangeListener(Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver$IWifiStateChangeListener;)V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->listeners:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    sget-object v0, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->listeners:Ljava/util/List;

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    return-void
.end method

.method public unRegisterWifiStateChangeListener(Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver$IWifiStateChangeListener;)V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->listeners:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method
