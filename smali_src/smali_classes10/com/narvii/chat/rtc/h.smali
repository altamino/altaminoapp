.class public final synthetic Lcom/narvii/chat/rtc/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/video/model/ChannelActionCallback;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/rtc/RtcService;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/rtc/RtcService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/rtc/h;->a:Lcom/narvii/chat/rtc/RtcService;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/rtc/h;->a:Lcom/narvii/chat/rtc/RtcService;

    invoke-static {v0, p1}, Lcom/narvii/chat/rtc/RtcService;->b(Lcom/narvii/chat/rtc/RtcService;Ljava/lang/Object;)V

    return-void
.end method
