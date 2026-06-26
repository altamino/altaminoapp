.class public Lcom/narvii/notice/NoticeListFragment$NoticeMergeAdapter;
.super Lcom/narvii/list/MergeAdapter;
.source "NoticeListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/notice/NoticeListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NoticeMergeAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/notice/NoticeListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/notice/NoticeListFragment;)V
    .locals 0

    .line 1173
    iput-object p1, p0, Lcom/narvii/notice/NoticeListFragment$NoticeMergeAdapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 1174
    invoke-direct {p0, p1}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 3

    .line 1189
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$NoticeMergeAdapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    iget-object v1, v0, Lcom/narvii/notice/NoticeListFragment;->adapter:Lcom/narvii/notice/NoticeListFragment$Adapter;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/narvii/notice/NoticeListFragment;->importNoticeAdapter:Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1193
    :cond_0
    invoke-virtual {v1}, Lcom/narvii/list/NVPagedAdapter;->errorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$NoticeMergeAdapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    iget-object v0, v0, Lcom/narvii/notice/NoticeListFragment;->importNoticeAdapter:Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->loadFinishEmptyOrError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1194
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$NoticeMergeAdapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    iget-object v0, v0, Lcom/narvii/notice/NoticeListFragment;->adapter:Lcom/narvii/notice/NoticeListFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->errorMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1197
    :cond_1
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$NoticeMergeAdapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    iget-object v0, v0, Lcom/narvii/notice/NoticeListFragment;->importNoticeAdapter:Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->errorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$NoticeMergeAdapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    iget-object v0, v0, Lcom/narvii/notice/NoticeListFragment;->adapter:Lcom/narvii/notice/NoticeListFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->loadFinishEmptyOrError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1198
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$NoticeMergeAdapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    iget-object v0, v0, Lcom/narvii/notice/NoticeListFragment;->importNoticeAdapter:Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->errorMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    return-object v2
.end method

.method public isEmpty()Z
    .locals 1

    .line 1179
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$NoticeMergeAdapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    iget-object v0, v0, Lcom/narvii/notice/NoticeListFragment;->adapter:Lcom/narvii/notice/NoticeListFragment$Adapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$NoticeMergeAdapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    iget-object v0, v0, Lcom/narvii/notice/NoticeListFragment;->importNoticeAdapter:Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isListShown()Z
    .locals 1

    .line 1184
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$NoticeMergeAdapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    iget-object v0, v0, Lcom/narvii/notice/NoticeListFragment;->adapter:Lcom/narvii/notice/NoticeListFragment$Adapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isListShown()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$NoticeMergeAdapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    iget-object v0, v0, Lcom/narvii/notice/NoticeListFragment;->importNoticeAdapter:Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isListShown()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$NoticeMergeAdapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    iget-object v0, v0, Lcom/narvii/notice/NoticeListFragment;->importNoticeAdapter:Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
