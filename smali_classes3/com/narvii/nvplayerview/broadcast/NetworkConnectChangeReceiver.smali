.class public Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkConnectChangeReceiver.java"


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

    .line 14
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->filter:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static getFilter()Landroid/content/IntentFilter;
    .locals 1

    .line 48
    sget-object v0, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->filter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;
    .locals 2

    .line 22
    sget-object v0, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->instance:Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;

    invoke-direct {v0}, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;-><init>()V

    sput-object v0, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->instance:Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;

    .line 24
    sget-object v0, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->listeners:Ljava/util/List;

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->instance:Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;

    sget-object v1, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 28
    :cond_0
    sget-object p0, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->instance:Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;

    return-object p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    const-string v0, "wifi_state"

    .line 34
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, p1, :cond_0

    .line 36
    sget-object p1, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->listeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver$IWifiStateChangeListener;

    const/4 v0, 0x0

    .line 37
    invoke-interface {p2, v0}, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver$IWifiStateChangeListener;->onWifiStateChange(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 40
    sget-object p2, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->listeners:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver$IWifiStateChangeListener;

    .line 41
    invoke-interface {v0, p1}, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver$IWifiStateChangeListener;->onWifiStateChange(Z)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public registerWifiStateChangeListener(Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver$IWifiStateChangeListener;)V
    .locals 1

    .line 52
    sget-object v0, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 55
    :cond_0
    sget-object v0, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unRegisterWifiStateChangeListener(Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver$IWifiStateChangeListener;)V
    .locals 1

    .line 59
    sget-object v0, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
