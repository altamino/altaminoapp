.class Lcom/narvii/chat/video/floating/FloatingManager$1;
.super Landroid/content/BroadcastReceiver;
.source "FloatingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/floating/FloatingManager;-><init>(Landroid/content/Context;Lcom/narvii/chat/rtc/RtcService;Lcom/narvii/chat/call/CallScreenService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/floating/FloatingManager;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/floating/FloatingManager;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/narvii/chat/video/floating/FloatingManager$1;->this$0:Lcom/narvii/chat/video/floating/FloatingManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 108
    iget-object p1, p0, Lcom/narvii/chat/video/floating/FloatingManager$1;->this$0:Lcom/narvii/chat/video/floating/FloatingManager;

    invoke-virtual {p1}, Lcom/narvii/chat/video/floating/FloatingManager;->removeAllFloatingWindow()V

    return-void
.end method
