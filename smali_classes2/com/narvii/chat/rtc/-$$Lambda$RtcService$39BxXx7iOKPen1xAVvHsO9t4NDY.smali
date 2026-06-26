.class public final synthetic Lcom/narvii/chat/rtc/-$$Lambda$RtcService$39BxXx7iOKPen1xAVvHsO9t4NDY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field private final synthetic f$0:Lcom/narvii/util/Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/util/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/rtc/-$$Lambda$RtcService$39BxXx7iOKPen1xAVvHsO9t4NDY;->f$0:Lcom/narvii/util/Callback;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/rtc/-$$Lambda$RtcService$39BxXx7iOKPen1xAVvHsO9t4NDY;->f$0:Lcom/narvii/util/Callback;

    invoke-static {v0, p1}, Lcom/narvii/chat/rtc/RtcService;->lambda$waitListJoin$3(Lcom/narvii/util/Callback;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
