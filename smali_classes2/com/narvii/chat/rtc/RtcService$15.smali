.class Lcom/narvii/chat/rtc/RtcService$15;
.super Ljava/lang/Object;
.source "RtcService.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/rtc/RtcService;->exitSignallingChannel(ILjava/lang/String;Lcom/narvii/video/model/ChannelActionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/chat/screenroom/SRChannelStatusChangeListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/rtc/RtcService;


# direct methods
.method constructor <init>(Lcom/narvii/chat/rtc/RtcService;)V
    .locals 0

    .line 1128
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$15;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/chat/screenroom/SRChannelStatusChangeListener;)V
    .locals 0

    .line 1131
    invoke-interface {p1}, Lcom/narvii/chat/screenroom/SRChannelStatusChangeListener;->onChannelEnd()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1128
    check-cast p1, Lcom/narvii/chat/screenroom/SRChannelStatusChangeListener;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/rtc/RtcService$15;->call(Lcom/narvii/chat/screenroom/SRChannelStatusChangeListener;)V

    return-void
.end method
