.class Lcom/narvii/chat/rtc/RtcService$4;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$4;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/rtc/RtcService$4;->val$runnable:Ljava/lang/Runnable;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$4;->val$runnable:Ljava/lang/Runnable;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$4;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/chat/rtc/RtcService;->w(Lcom/narvii/chat/rtc/RtcService;Ljava/lang/String;)V

    .line 12
    return-void
.end method
