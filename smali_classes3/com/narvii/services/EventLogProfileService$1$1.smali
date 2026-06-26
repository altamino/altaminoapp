.class Lcom/narvii/services/EventLogProfileService$1$1;
.super Ljava/lang/Object;
.source "EventLogProfileService.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/services/EventLogProfileService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/services/EventLogProfileService$1;


# direct methods
.method constructor <init>(Lcom/narvii/services/EventLogProfileService$1;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/narvii/services/EventLogProfileService$1$1;->this$1:Lcom/narvii/services/EventLogProfileService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;)V
    .locals 0

    .line 61
    invoke-interface {p1}, Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;->clearResponseWhenAccountChange()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 58
    check-cast p1, Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;

    invoke-virtual {p0, p1}, Lcom/narvii/services/EventLogProfileService$1$1;->call(Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;)V

    return-void
.end method
