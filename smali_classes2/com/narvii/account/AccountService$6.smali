.class Lcom/narvii/account/AccountService$6;
.super Ljava/lang/Object;
.source "AccountService.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/AccountService;->updateCheckInHistoryInfo(Lcom/narvii/model/CheckInHistory;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/account/AccountService$ProfileListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/AccountService;

.field final synthetic val$checkInHistory:Lcom/narvii/model/CheckInHistory;


# direct methods
.method constructor <init>(Lcom/narvii/account/AccountService;Lcom/narvii/model/CheckInHistory;)V
    .locals 0

    .line 928
    iput-object p1, p0, Lcom/narvii/account/AccountService$6;->this$0:Lcom/narvii/account/AccountService;

    iput-object p2, p0, Lcom/narvii/account/AccountService$6;->val$checkInHistory:Lcom/narvii/model/CheckInHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/account/AccountService$ProfileListener;)V
    .locals 1

    .line 931
    iget-object v0, p0, Lcom/narvii/account/AccountService$6;->val$checkInHistory:Lcom/narvii/model/CheckInHistory;

    invoke-virtual {p1, v0}, Lcom/narvii/account/AccountService$ProfileListener;->onCheckInHistoryChanged(Lcom/narvii/model/CheckInHistory;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 928
    check-cast p1, Lcom/narvii/account/AccountService$ProfileListener;

    invoke-virtual {p0, p1}, Lcom/narvii/account/AccountService$6;->call(Lcom/narvii/account/AccountService$ProfileListener;)V

    return-void
.end method
