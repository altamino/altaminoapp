.class Lcom/narvii/account/AccountService$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/AccountService;->updateCheckInInfo(ZIJZ)V
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

.field final synthetic val$consecutiveCheckInDays:I

.field final synthetic val$hasCheckInToday:Z


# direct methods
.method constructor <init>(Lcom/narvii/account/AccountService;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/AccountService$5;->this$0:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/narvii/account/AccountService$5;->val$hasCheckInToday:Z

    .line 5
    .line 6
    iput p3, p0, Lcom/narvii/account/AccountService$5;->val$consecutiveCheckInDays:I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/account/AccountService$ProfileListener;)V
    .locals 2

    iget-boolean v0, p0, Lcom/narvii/account/AccountService$5;->val$hasCheckInToday:Z

    iget v1, p0, Lcom/narvii/account/AccountService$5;->val$consecutiveCheckInDays:I

    .line 2
    invoke-virtual {p1, v0, v1}, Lcom/narvii/account/AccountService$ProfileListener;->onCheckInChanged(ZI)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/account/AccountService$ProfileListener;

    invoke-virtual {p0, p1}, Lcom/narvii/account/AccountService$5;->call(Lcom/narvii/account/AccountService$ProfileListener;)V

    return-void
.end method
