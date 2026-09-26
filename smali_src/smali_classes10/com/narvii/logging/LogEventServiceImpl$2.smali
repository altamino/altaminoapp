.class Lcom/narvii/logging/LogEventServiceImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/logging/LogEventServiceImpl$2;->this$0:Lcom/narvii/logging/LogEventServiceImpl;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/logging/LogEventServiceImpl$2;->this$0:Lcom/narvii/logging/LogEventServiceImpl;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/logging/LogEventServiceImpl;->c(Lcom/narvii/logging/LogEventServiceImpl;)V

    .line 6
    return-void
.end method
