.class public final synthetic Lcom/narvii/checkin/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/checkin/CheckInService;

.field public final synthetic b:Lcom/narvii/checkin/CheckInResult;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/checkin/CheckInService;Lcom/narvii/checkin/CheckInResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/checkin/h;->a:Lcom/narvii/checkin/CheckInService;

    iput-object p2, p0, Lcom/narvii/checkin/h;->b:Lcom/narvii/checkin/CheckInResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/checkin/h;->a:Lcom/narvii/checkin/CheckInService;

    iget-object v1, p0, Lcom/narvii/checkin/h;->b:Lcom/narvii/checkin/CheckInResult;

    invoke-static {v0, v1}, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->b(Lcom/narvii/checkin/CheckInService;Lcom/narvii/checkin/CheckInResult;)V

    return-void
.end method
