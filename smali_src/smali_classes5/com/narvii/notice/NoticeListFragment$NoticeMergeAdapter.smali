.class public Lcom/narvii/notice/NoticeListFragment$NoticeMergeAdapter;
.super Lcom/narvii/list/MergeAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/notice/NoticeListFragment$NoticeMergeAdapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$NoticeMergeAdapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/notice/NoticeListFragment;->adapter:Lcom/narvii/notice/NoticeListFragment$Adapter;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    iget-object v0, v0, Lcom/narvii/notice/NoticeListFragment;->importNoticeAdapter:Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {v1}, Lcom/narvii/list/NVPagedAdapter;->errorMessage()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$NoticeMergeAdapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/narvii/notice/NoticeListFragment;->importNoticeAdapter:Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->loadFinishEmptyOrError()Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$NoticeMergeAdapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/narvii/notice/NoticeListFragment;->adapter:Lcom/narvii/notice/NoticeListFragment$Adapter;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->errorMessage()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    return-object v0

    .line 42
    .line 43
    :cond_1
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$NoticeMergeAdapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/narvii/notice/NoticeListFragment;->importNoticeAdapter:Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->errorMessage()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    move-result v0

    .line 54
    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$NoticeMergeAdapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/narvii/notice/NoticeListFragment;->adapter:Lcom/narvii/notice/NoticeListFragment$Adapter;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->loadFinishEmptyOrError()Z

    .line 63
    move-result v0

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$NoticeMergeAdapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/narvii/notice/NoticeListFragment;->importNoticeAdapter:Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->errorMessage()Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    return-object v0

    .line 75
    :cond_2
    :goto_0
    return-object v2
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$NoticeMergeAdapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/notice/NoticeListFragment;->adapter:Lcom/narvii/notice/NoticeListFragment$Adapter;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$NoticeMergeAdapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/narvii/notice/NoticeListFragment;->importNoticeAdapter:Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;->isEmpty()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    :cond_0
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0
.end method

.method public isListShown()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$NoticeMergeAdapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/notice/NoticeListFragment;->adapter:Lcom/narvii/notice/NoticeListFragment$Adapter;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isListShown()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$NoticeMergeAdapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/narvii/notice/NoticeListFragment;->importNoticeAdapter:Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isListShown()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$NoticeMergeAdapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/narvii/notice/NoticeListFragment;->importNoticeAdapter:Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    .line 32
    move-result v0

    .line 33
    .line 34
    if-lez v0, :cond_2

    .line 35
    :cond_1
    const/4 v0, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/4 v0, 0x0

    .line 38
    :goto_0
    return v0
.end method
