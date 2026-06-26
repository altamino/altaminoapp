.class Lcom/narvii/chat/rtc/RtcService$26;
.super Ljava/lang/Object;
.source "RtcService.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/rtc/RtcService;->dispatchTotalVolumeChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/chat/video/events/AgoraUserVolumeChangeListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/rtc/RtcService;

.field final synthetic val$totalVolume:I


# direct methods
.method constructor <init>(Lcom/narvii/chat/rtc/RtcService;I)V
    .locals 0

    .line 2049
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$26;->this$0:Lcom/narvii/chat/rtc/RtcService;

    iput p2, p0, Lcom/narvii/chat/rtc/RtcService$26;->val$totalVolume:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/chat/video/events/AgoraUserVolumeChangeListener;)V
    .locals 2

    .line 2052
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$26;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-static {v0}, Lcom/narvii/chat/rtc/RtcService;->access$2000(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    iget v1, p0, Lcom/narvii/chat/rtc/RtcService$26;->val$totalVolume:I

    invoke-interface {p1, v0, v1}, Lcom/narvii/chat/video/events/AgoraUserVolumeChangeListener;->onTotalVolumeChanged(Lcom/narvii/chat/signalling/SignallingChannel;I)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 2049
    check-cast p1, Lcom/narvii/chat/video/events/AgoraUserVolumeChangeListener;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/rtc/RtcService$26;->call(Lcom/narvii/chat/video/events/AgoraUserVolumeChangeListener;)V

    return-void
.end method
