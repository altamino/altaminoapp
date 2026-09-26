.class Lcom/narvii/chat/rtc/RtcService$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/rtc/RtcService;->removeAsSpeaker(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/rtc/RtcService;


# direct methods
.method constructor <init>(Lcom/narvii/chat/rtc/RtcService;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$7;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/util/ws/WsError;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$7;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/chat/rtc/RtcService;->n(Lcom/narvii/chat/rtc/RtcService;)Landroid/content/Context;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/util/ws/WsError;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/narvii/util/ws/WsError;->message:Ljava/lang/String;

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    .line 18
    invoke-static {v0, p1, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 23
    :cond_0
    return-void
.end method
