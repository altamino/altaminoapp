.class Lcom/narvii/account/AccountService$3;
.super Ljava/lang/Object;
.source "AccountService.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/AccountService;->updateNoticeCount(IILjava/lang/String;Z)V
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

.field final synthetic val$noticeCount:I


# direct methods
.method constructor <init>(Lcom/narvii/account/AccountService;I)V
    .locals 0

    .line 754
    iput-object p1, p0, Lcom/narvii/account/AccountService$3;->this$0:Lcom/narvii/account/AccountService;

    iput p2, p0, Lcom/narvii/account/AccountService$3;->val$noticeCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/account/AccountService$ProfileListener;)V
    .locals 1

    .line 757
    iget v0, p0, Lcom/narvii/account/AccountService$3;->val$noticeCount:I

    invoke-virtual {p1, v0}, Lcom/narvii/account/AccountService$ProfileListener;->onNoticeCountChanged(I)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 754
    check-cast p1, Lcom/narvii/account/AccountService$ProfileListener;

    invoke-virtual {p0, p1}, Lcom/narvii/account/AccountService$3;->call(Lcom/narvii/account/AccountService$ProfileListener;)V

    return-void
.end method
