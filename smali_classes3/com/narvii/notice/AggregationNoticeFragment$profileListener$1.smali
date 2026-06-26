.class public final Lcom/narvii/notice/AggregationNoticeFragment$profileListener$1;
.super Lcom/narvii/account/AccountService$ProfileListener;
.source "AggregationNoticeFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/notice/AggregationNoticeFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/notice/AggregationNoticeFragment;


# direct methods
.method constructor <init>(Lcom/narvii/notice/AggregationNoticeFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/narvii/notice/AggregationNoticeFragment$profileListener$1;->this$0:Lcom/narvii/notice/AggregationNoticeFragment;

    invoke-direct {p0}, Lcom/narvii/account/AccountService$ProfileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoticeCountChanged(I)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/narvii/account/AccountService$ProfileListener;->onNoticeCountChanged(I)V

    .line 45
    iget-object p1, p0, Lcom/narvii/notice/AggregationNoticeFragment$profileListener$1;->this$0:Lcom/narvii/notice/AggregationNoticeFragment;

    invoke-static {p1}, Lcom/narvii/notice/AggregationNoticeFragment;->access$updateGlobalUnreadCount(Lcom/narvii/notice/AggregationNoticeFragment;)V

    return-void
.end method

.method public onNotificationCountChanged(I)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/narvii/account/AccountService$ProfileListener;->onNotificationCountChanged(I)V

    .line 50
    iget-object p1, p0, Lcom/narvii/notice/AggregationNoticeFragment$profileListener$1;->this$0:Lcom/narvii/notice/AggregationNoticeFragment;

    invoke-static {p1}, Lcom/narvii/notice/AggregationNoticeFragment;->access$updateGlobalUnreadCount(Lcom/narvii/notice/AggregationNoticeFragment;)V

    return-void
.end method

.method public onProfileChanged(ILcom/narvii/model/User;)V
    .locals 0

    return-void
.end method
