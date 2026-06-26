.class public Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;
.super Lcom/narvii/notice/ImportNoticeListAdapter;
.source "NoticeListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/notice/NoticeListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ImportNoticeAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/notice/NoticeListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/notice/NoticeListFragment;)V
    .locals 1

    .line 513
    iput-object p1, p0, Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 514
    iget v0, p1, Lcom/narvii/notice/NoticeListFragment;->cid:I

    invoke-direct {p0, p1, v0}, Lcom/narvii/notice/ImportNoticeListAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .line 532
    iget-boolean v0, p0, Lcom/narvii/notice/ImportNoticeListAdapter;->isImportantNoticeLoaded:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V
    .locals 0

    .line 537
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/notice/ImportNoticeListAdapter;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V

    .line 538
    iget-boolean p1, p0, Lcom/narvii/notice/ImportNoticeListAdapter;->isImportantNoticeLoaded:Z

    if-eqz p1, :cond_0

    .line 539
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    iget-object p1, p1, Lcom/narvii/notice/NoticeListFragment;->adapter:Lcom/narvii/notice/NoticeListFragment$Adapter;

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/account/notice/AccountNoticeListResponse;I)V
    .locals 0

    .line 519
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/notice/ImportNoticeListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/account/notice/AccountNoticeListResponse;I)V

    .line 520
    iget-boolean p1, p0, Lcom/narvii/notice/ImportNoticeListAdapter;->isImportantNoticeLoaded:Z

    if-eqz p1, :cond_0

    .line 521
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    iget-object p1, p1, Lcom/narvii/notice/NoticeListFragment;->adapter:Lcom/narvii/notice/NoticeListFragment$Adapter;

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 506
    check-cast p2, Lcom/narvii/account/notice/AccountNoticeListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/account/notice/AccountNoticeListResponse;I)V

    return-void
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 527
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    return-void
.end method

.method protected supportNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
