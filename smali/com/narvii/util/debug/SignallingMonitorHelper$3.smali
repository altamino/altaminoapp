.class Lcom/narvii/util/debug/SignallingMonitorHelper$3;
.super Ljava/lang/Object;
.source "SignallingMonitorHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/debug/SignallingMonitorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/debug/SignallingMonitorHelper;


# direct methods
.method constructor <init>(Lcom/narvii/util/debug/SignallingMonitorHelper;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/narvii/util/debug/SignallingMonitorHelper$3;->this$0:Lcom/narvii/util/debug/SignallingMonitorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/narvii/util/debug/SignallingMonitorHelper$3;->this$0:Lcom/narvii/util/debug/SignallingMonitorHelper;

    invoke-static {v0}, Lcom/narvii/util/debug/SignallingMonitorHelper;->access$000(Lcom/narvii/util/debug/SignallingMonitorHelper;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/narvii/util/debug/SignallingMonitorHelper$3;->this$0:Lcom/narvii/util/debug/SignallingMonitorHelper;

    invoke-static {v0}, Lcom/narvii/util/debug/SignallingMonitorHelper;->access$000(Lcom/narvii/util/debug/SignallingMonitorHelper;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/debug/SignallingMonitorHelper;->access$200(Lcom/narvii/util/debug/SignallingMonitorHelper;Landroid/widget/PopupWindow;)V

    .line 213
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
