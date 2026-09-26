.class public Lcom/narvii/account/notice/AccountNoticeListResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/account/notice/AccountNotice;",
        ">;"
    }
.end annotation


# instance fields
.field public communityMap:Ljava/util/Map;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/Community;
        keyAs = Ljava/lang/Integer;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field public noticeCount:I

.field public noticeList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/account/notice/AccountNotice;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/account/notice/AccountNotice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/api/ListResponse;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/account/notice/AccountNoticeListResponse;->noticeCount:I

    .line 7
    return-void
.end method


# virtual methods
.method public getNoticeCount()I
    .locals 1

    iget v0, p0, Lcom/narvii/account/notice/AccountNoticeListResponse;->noticeCount:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/narvii/account/notice/AccountNoticeListResponse;->noticeCount:I

    :cond_0
    iget v0, p0, Lcom/narvii/account/notice/AccountNoticeListResponse;->noticeCount:I

    return v0
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/account/notice/AccountNotice;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/account/notice/AccountNoticeListResponse;->noticeList:Ljava/util/List;

    return-object v0
.end method
