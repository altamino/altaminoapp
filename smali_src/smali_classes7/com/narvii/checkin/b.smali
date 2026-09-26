.class public final synthetic Lcom/narvii/checkin/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/checkin/CheckInService;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/checkin/CheckInService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/checkin/b;->a:Lcom/narvii/checkin/CheckInService;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/checkin/b;->a:Lcom/narvii/checkin/CheckInService;

    check-cast p1, Lcom/narvii/achievements/StreakRepairDialog;

    invoke-static {v0, p1}, Lcom/narvii/checkin/CheckInService;->d(Lcom/narvii/checkin/CheckInService;Lcom/narvii/achievements/StreakRepairDialog;)V

    return-void
.end method
