.class public final synthetic Lcom/narvii/chat/rtc/-$$Lambda$RtcService$iVYLPGk2olAtIWIvoHYZbA2lHE4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field private final synthetic f$0:Lcom/narvii/chat/rtc/RtcService$WaitingListCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/rtc/RtcService$WaitingListCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/rtc/-$$Lambda$RtcService$iVYLPGk2olAtIWIvoHYZbA2lHE4;->f$0:Lcom/narvii/chat/rtc/RtcService$WaitingListCallback;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/rtc/-$$Lambda$RtcService$iVYLPGk2olAtIWIvoHYZbA2lHE4;->f$0:Lcom/narvii/chat/rtc/RtcService$WaitingListCallback;

    invoke-static {v0, p1}, Lcom/narvii/chat/rtc/RtcService;->lambda$waitListJoinApprove$1(Lcom/narvii/chat/rtc/RtcService$WaitingListCallback;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
