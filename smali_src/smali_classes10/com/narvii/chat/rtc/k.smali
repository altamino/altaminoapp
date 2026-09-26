.class public final synthetic Lcom/narvii/chat/rtc/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/l;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/rtc/RtcService$WaitingListCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/rtc/RtcService$WaitingListCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/rtc/k;->a:Lcom/narvii/chat/rtc/RtcService$WaitingListCallback;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/rtc/k;->a:Lcom/narvii/chat/rtc/RtcService$WaitingListCallback;

    invoke-static {v0, p1}, Lcom/narvii/chat/rtc/RtcService;->c(Lcom/narvii/chat/rtc/RtcService$WaitingListCallback;Ljava/lang/Object;)Lw7/l0;

    move-result-object p1

    return-object p1
.end method
