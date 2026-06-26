.class public final synthetic Lcom/narvii/checkin/-$$Lambda$CheckInHistoryView$V7rriyeYGzXsOZhtYqjIZ8RmeOQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/narvii/checkin/CheckInHistoryView;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/checkin/CheckInHistoryView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/checkin/-$$Lambda$CheckInHistoryView$V7rriyeYGzXsOZhtYqjIZ8RmeOQ;->f$0:Lcom/narvii/checkin/CheckInHistoryView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/checkin/-$$Lambda$CheckInHistoryView$V7rriyeYGzXsOZhtYqjIZ8RmeOQ;->f$0:Lcom/narvii/checkin/CheckInHistoryView;

    invoke-virtual {v0}, Lcom/narvii/checkin/CheckInHistoryView;->lambda$onMeasure$0$CheckInHistoryView()V

    return-void
.end method
