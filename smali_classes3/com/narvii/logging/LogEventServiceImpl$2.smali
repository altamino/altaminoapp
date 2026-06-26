.class Lcom/narvii/logging/LogEventServiceImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "LogEventServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/logging/LogEventServiceImpl;-><init>(Lcom/narvii/app/NVContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/logging/LogEventServiceImpl;


# direct methods
.method constructor <init>(Lcom/narvii/logging/LogEventServiceImpl;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/narvii/logging/LogEventServiceImpl$2;->this$0:Lcom/narvii/logging/LogEventServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 93
    iget-object p1, p0, Lcom/narvii/logging/LogEventServiceImpl$2;->this$0:Lcom/narvii/logging/LogEventServiceImpl;

    invoke-static {p1}, Lcom/narvii/logging/LogEventServiceImpl;->access$100(Lcom/narvii/logging/LogEventServiceImpl;)V

    return-void
.end method
