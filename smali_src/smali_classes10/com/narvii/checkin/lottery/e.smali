.class public final synthetic Lcom/narvii/checkin/lottery/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/checkin/lottery/LotteryDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/checkin/lottery/LotteryDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/checkin/lottery/e;->a:Lcom/narvii/checkin/lottery/LotteryDialog;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/checkin/lottery/e;->a:Lcom/narvii/checkin/lottery/LotteryDialog;

    check-cast p1, Lcom/narvii/model/api/AccountResponse;

    invoke-static {v0, p1}, Lcom/narvii/checkin/lottery/LotteryDialog;->e(Lcom/narvii/checkin/lottery/LotteryDialog;Lcom/narvii/model/api/AccountResponse;)V

    return-void
.end method
