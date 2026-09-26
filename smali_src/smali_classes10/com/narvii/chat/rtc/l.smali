.class public final synthetic Lcom/narvii/chat/rtc/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/rtc/RtcService$5;

.field public final synthetic b:Lcom/narvii/chat/signalling/SignallingChannel;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/rtc/RtcService$5;Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/rtc/l;->a:Lcom/narvii/chat/rtc/RtcService$5;

    iput-object p2, p0, Lcom/narvii/chat/rtc/l;->b:Lcom/narvii/chat/signalling/SignallingChannel;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/rtc/l;->a:Lcom/narvii/chat/rtc/RtcService$5;

    iget-object v1, p0, Lcom/narvii/chat/rtc/l;->b:Lcom/narvii/chat/signalling/SignallingChannel;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1}, Lcom/narvii/chat/rtc/RtcService$5;->a(Lcom/narvii/chat/rtc/RtcService$5;Lcom/narvii/chat/signalling/SignallingChannel;Ljava/lang/Boolean;)V

    return-void
.end method
