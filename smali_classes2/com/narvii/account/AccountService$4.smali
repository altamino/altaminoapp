.class Lcom/narvii/account/AccountService$4;
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
        "Lcom/narvii/account/AccountService$CommunityReminderChangeInGlobalListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/AccountService;

.field final synthetic val$cid:I

.field final synthetic val$noticeCount:I


# direct methods
.method constructor <init>(Lcom/narvii/account/AccountService;II)V
    .locals 0

    .line 767
    iput-object p1, p0, Lcom/narvii/account/AccountService$4;->this$0:Lcom/narvii/account/AccountService;

    iput p2, p0, Lcom/narvii/account/AccountService$4;->val$cid:I

    iput p3, p0, Lcom/narvii/account/AccountService$4;->val$noticeCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/account/AccountService$CommunityReminderChangeInGlobalListener;)V
    .locals 2

    .line 770
    iget v0, p0, Lcom/narvii/account/AccountService$4;->val$cid:I

    iget v1, p0, Lcom/narvii/account/AccountService$4;->val$noticeCount:I

    invoke-interface {p1, v0, v1}, Lcom/narvii/account/AccountService$CommunityReminderChangeInGlobalListener;->onNoticeCountChanged(II)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 767
    check-cast p1, Lcom/narvii/account/AccountService$CommunityReminderChangeInGlobalListener;

    invoke-virtual {p0, p1}, Lcom/narvii/account/AccountService$4;->call(Lcom/narvii/account/AccountService$CommunityReminderChangeInGlobalListener;)V

    return-void
.end method
