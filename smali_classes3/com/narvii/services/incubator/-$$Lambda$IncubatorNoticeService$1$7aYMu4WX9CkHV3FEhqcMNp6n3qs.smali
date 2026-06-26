.class public final synthetic Lcom/narvii/services/incubator/-$$Lambda$IncubatorNoticeService$1$7aYMu4WX9CkHV3FEhqcMNp6n3qs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field private final synthetic f$0:Lcom/narvii/services/incubator/IncubatorNoticeService$1;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/services/incubator/IncubatorNoticeService$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/services/incubator/-$$Lambda$IncubatorNoticeService$1$7aYMu4WX9CkHV3FEhqcMNp6n3qs;->f$0:Lcom/narvii/services/incubator/IncubatorNoticeService$1;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/services/incubator/-$$Lambda$IncubatorNoticeService$1$7aYMu4WX9CkHV3FEhqcMNp6n3qs;->f$0:Lcom/narvii/services/incubator/IncubatorNoticeService$1;

    check-cast p1, Lcom/narvii/services/incubator/IncubatorNoticeService$HasReminderChangeListener;

    invoke-virtual {v0, p1}, Lcom/narvii/services/incubator/IncubatorNoticeService$1;->lambda$onReceive$0$IncubatorNoticeService$1(Lcom/narvii/services/incubator/IncubatorNoticeService$HasReminderChangeListener;)V

    return-void
.end method
