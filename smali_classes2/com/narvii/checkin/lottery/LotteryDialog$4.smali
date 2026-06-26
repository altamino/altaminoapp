.class Lcom/narvii/checkin/lottery/LotteryDialog$4;
.super Ljava/lang/Object;
.source "LotteryDialog.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/checkin/lottery/LotteryDialog;->optinAds()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/AccountResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/checkin/lottery/LotteryDialog;


# direct methods
.method constructor <init>(Lcom/narvii/checkin/lottery/LotteryDialog;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$4;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/AccountResponse;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 313
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$4;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    invoke-static {p1}, Lcom/narvii/checkin/lottery/LotteryDialog;->access$200(Lcom/narvii/checkin/lottery/LotteryDialog;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 309
    check-cast p1, Lcom/narvii/model/api/AccountResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/checkin/lottery/LotteryDialog$4;->call(Lcom/narvii/model/api/AccountResponse;)V

    return-void
.end method
