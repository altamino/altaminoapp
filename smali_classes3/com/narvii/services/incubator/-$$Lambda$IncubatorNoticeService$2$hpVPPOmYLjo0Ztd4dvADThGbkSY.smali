.class public final synthetic Lcom/narvii/services/incubator/-$$Lambda$IncubatorNoticeService$2$hpVPPOmYLjo0Ztd4dvADThGbkSY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field private final synthetic f$0:Lcom/narvii/services/incubator/IncubatorNoticeService$2;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/services/incubator/IncubatorNoticeService$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/services/incubator/-$$Lambda$IncubatorNoticeService$2$hpVPPOmYLjo0Ztd4dvADThGbkSY;->f$0:Lcom/narvii/services/incubator/IncubatorNoticeService$2;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/services/incubator/-$$Lambda$IncubatorNoticeService$2$hpVPPOmYLjo0Ztd4dvADThGbkSY;->f$0:Lcom/narvii/services/incubator/IncubatorNoticeService$2;

    check-cast p1, Lcom/narvii/services/incubator/IncubatorNoticeService$HasReminderChangeListener;

    invoke-virtual {v0, p1}, Lcom/narvii/services/incubator/IncubatorNoticeService$2;->lambda$onFinish$0$IncubatorNoticeService$2(Lcom/narvii/services/incubator/IncubatorNoticeService$HasReminderChangeListener;)V

    return-void
.end method
