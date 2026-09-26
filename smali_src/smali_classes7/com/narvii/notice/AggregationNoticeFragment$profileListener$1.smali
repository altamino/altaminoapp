.class public final Lcom/narvii/notice/AggregationNoticeFragment$profileListener$1;
.super Lcom/narvii/account/AccountService$ProfileListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/notice/AggregationNoticeFragment$profileListener$1;->this$0:Lcom/narvii/notice/AggregationNoticeFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/account/AccountService$ProfileListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onNoticeCountChanged(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/account/AccountService$ProfileListener;->onNoticeCountChanged(I)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/notice/AggregationNoticeFragment$profileListener$1;->this$0:Lcom/narvii/notice/AggregationNoticeFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/notice/AggregationNoticeFragment;->access$updateGlobalUnreadCount(Lcom/narvii/notice/AggregationNoticeFragment;)V

    .line 9
    return-void
.end method

.method public onNotificationCountChanged(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/account/AccountService$ProfileListener;->onNotificationCountChanged(I)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/notice/AggregationNoticeFragment$profileListener$1;->this$0:Lcom/narvii/notice/AggregationNoticeFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/notice/AggregationNoticeFragment;->access$updateGlobalUnreadCount(Lcom/narvii/notice/AggregationNoticeFragment;)V

    .line 9
    return-void
.end method

.method public onProfileChanged(ILcom/narvii/model/User;)V
    .locals 0
    .param p2    # Lcom/narvii/model/User;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method
