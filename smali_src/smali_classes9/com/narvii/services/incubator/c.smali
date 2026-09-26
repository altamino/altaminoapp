.class public final synthetic Lcom/narvii/services/incubator/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/services/incubator/IncubatorNoticeService$2;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/services/incubator/IncubatorNoticeService$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/services/incubator/c;->a:Lcom/narvii/services/incubator/IncubatorNoticeService$2;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/services/incubator/c;->a:Lcom/narvii/services/incubator/IncubatorNoticeService$2;

    check-cast p1, Lcom/narvii/services/incubator/IncubatorNoticeService$HasReminderChangeListener;

    invoke-static {v0, p1}, Lcom/narvii/services/incubator/IncubatorNoticeService$2;->a(Lcom/narvii/services/incubator/IncubatorNoticeService$2;Lcom/narvii/services/incubator/IncubatorNoticeService$HasReminderChangeListener;)V

    return-void
.end method
