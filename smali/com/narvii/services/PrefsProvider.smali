.class public Lcom/narvii/services/PrefsProvider;
.super Ljava/lang/Object;
.source "PrefsProvider.java"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Landroid/content/SharedPreferences;",
        ">;"
    }
.end annotation


# instance fields
.field chatPreferenceHelper:Lcom/narvii/chat/ChatPreferenceHelper;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/narvii/services/PrefsProvider;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Landroid/content/SharedPreferences;
    .locals 2

    .line 25
    new-instance v0, Lcom/narvii/chat/ChatPreferenceHelper;

    invoke-direct {v0, p1}, Lcom/narvii/chat/ChatPreferenceHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/services/PrefsProvider;->chatPreferenceHelper:Lcom/narvii/chat/ChatPreferenceHelper;

    .line 26
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/services/PrefsProvider;->name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/services/PrefsProvider;->create(Lcom/narvii/app/NVContext;)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Landroid/content/SharedPreferences;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Landroid/content/SharedPreferences;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/PrefsProvider;->destroy(Lcom/narvii/app/NVContext;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Landroid/content/SharedPreferences;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Landroid/content/SharedPreferences;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/PrefsProvider;->pause(Lcom/narvii/app/NVContext;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Landroid/content/SharedPreferences;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Landroid/content/SharedPreferences;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/PrefsProvider;->resume(Lcom/narvii/app/NVContext;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Landroid/content/SharedPreferences;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Landroid/content/SharedPreferences;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/PrefsProvider;->start(Lcom/narvii/app/NVContext;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 46
    iget-object p1, p0, Lcom/narvii/services/PrefsProvider;->chatPreferenceHelper:Lcom/narvii/chat/ChatPreferenceHelper;

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p1}, Lcom/narvii/chat/ChatPreferenceHelper;->removeOverdueItems()V

    :cond_0
    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Landroid/content/SharedPreferences;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/PrefsProvider;->stop(Lcom/narvii/app/NVContext;Landroid/content/SharedPreferences;)V

    return-void
.end method
