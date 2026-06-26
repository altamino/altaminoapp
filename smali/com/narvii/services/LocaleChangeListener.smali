.class public Lcom/narvii/services/LocaleChangeListener;
.super Ljava/lang/Object;
.source "LocaleChangeListener.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/services/LocaleChangeListener;",
        ">;"
    }
.end annotation


# instance fields
.field receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/services/LocaleChangeListener;
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/narvii/services/LocaleChangeListener;->receiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/narvii/services/LocaleChangeListener$1;

    invoke-direct {v0, p0}, Lcom/narvii/services/LocaleChangeListener$1;-><init>(Lcom/narvii/services/LocaleChangeListener;)V

    iput-object v0, p0, Lcom/narvii/services/LocaleChangeListener;->receiver:Landroid/content/BroadcastReceiver;

    .line 32
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/services/LocaleChangeListener;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-object p0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/narvii/services/LocaleChangeListener;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/services/LocaleChangeListener;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/services/LocaleChangeListener;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Lcom/narvii/services/LocaleChangeListener;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/LocaleChangeListener;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/services/LocaleChangeListener;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/services/LocaleChangeListener;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Lcom/narvii/services/LocaleChangeListener;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/LocaleChangeListener;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/services/LocaleChangeListener;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/services/LocaleChangeListener;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Lcom/narvii/services/LocaleChangeListener;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/LocaleChangeListener;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/services/LocaleChangeListener;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/services/LocaleChangeListener;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Lcom/narvii/services/LocaleChangeListener;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/LocaleChangeListener;->start(Lcom/narvii/app/NVContext;Lcom/narvii/services/LocaleChangeListener;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/services/LocaleChangeListener;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Lcom/narvii/services/LocaleChangeListener;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/LocaleChangeListener;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/services/LocaleChangeListener;)V

    return-void
.end method
