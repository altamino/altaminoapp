.class public final synthetic Lcom/narvii/chat/rtc/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/video/model/ChannelActionCallback;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/rtc/RtcService;

.field public final synthetic b:Lcom/narvii/chat/signalling/SignallingChannel;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/rtc/RtcService;Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/rtc/e;->a:Lcom/narvii/chat/rtc/RtcService;

    iput-object p2, p0, Lcom/narvii/chat/rtc/e;->b:Lcom/narvii/chat/signalling/SignallingChannel;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/rtc/e;->a:Lcom/narvii/chat/rtc/RtcService;

    iget-object v1, p0, Lcom/narvii/chat/rtc/e;->b:Lcom/narvii/chat/signalling/SignallingChannel;

    invoke-static {v0, v1, p1}, Lcom/narvii/chat/rtc/RtcService;->j(Lcom/narvii/chat/rtc/RtcService;Lcom/narvii/chat/signalling/SignallingChannel;Ljava/lang/Object;)V

    return-void
.end method
