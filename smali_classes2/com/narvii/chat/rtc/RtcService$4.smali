.class Lcom/narvii/chat/rtc/RtcService$4;
.super Ljava/lang/Object;
.source "RtcService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/rtc/RtcService;->postShowFloatingRunnable(Ljava/lang/String;Ljava/lang/Runnable;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/rtc/RtcService;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/narvii/chat/rtc/RtcService;Ljava/lang/Runnable;)V
    .locals 0

    .line 582
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$4;->this$0:Lcom/narvii/chat/rtc/RtcService;

    iput-object p2, p0, Lcom/narvii/chat/rtc/RtcService$4;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 585
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$4;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 586
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$4;->this$0:Lcom/narvii/chat/rtc/RtcService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/chat/rtc/RtcService;->access$502(Lcom/narvii/chat/rtc/RtcService;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
