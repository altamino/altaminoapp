.class public Lcom/tonyodev/fetch/Fetch$Settings;
.super Ljava/lang/Object;
.source "Fetch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch/Fetch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final settings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1086
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1084
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tonyodev/fetch/Fetch$Settings;->settings:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 1091
    iput-object p1, p0, Lcom/tonyodev/fetch/Fetch$Settings;->context:Landroid/content/Context;

    return-void

    .line 1089
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Context cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public apply()V
    .locals 3

    .line 1174
    iget-object v0, p0, Lcom/tonyodev/fetch/Fetch$Settings;->settings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1175
    iget-object v2, p0, Lcom/tonyodev/fetch/Fetch$Settings;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/tonyodev/fetch/FetchService;->sendToService(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public enableLogging(Z)Lcom/tonyodev/fetch/Fetch$Settings;
    .locals 3

    .line 1104
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.tonyodev.fetch.action_type"

    const/16 v2, 0x140

    .line 1105
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.tonyodev.fetch.extra_logging_id"

    .line 1106
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1107
    iget-object p1, p0, Lcom/tonyodev/fetch/Fetch$Settings;->settings:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setConcurrentDownloadsLimit(I)Lcom/tonyodev/fetch/Fetch$Settings;
    .locals 3

    .line 1145
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.tonyodev.fetch.action_type"

    const/16 v2, 0x141

    .line 1146
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.tonyodev.fetch.extra_concurrent_download_limit"

    .line 1147
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1148
    iget-object p1, p0, Lcom/tonyodev/fetch/Fetch$Settings;->settings:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
