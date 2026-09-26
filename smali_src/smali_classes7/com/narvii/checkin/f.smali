.class public final synthetic Lcom/narvii/checkin/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/checkin/CheckInService;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/checkin/CheckInService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/checkin/f;->a:Lcom/narvii/checkin/CheckInService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/checkin/f;->a:Lcom/narvii/checkin/CheckInService;

    invoke-static {v0}, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->d(Lcom/narvii/checkin/CheckInService;)V

    return-void
.end method
