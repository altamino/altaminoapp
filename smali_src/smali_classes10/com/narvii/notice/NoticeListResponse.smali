.class public Lcom/narvii/notice/NoticeListResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/notice/Notice;",
        ">;"
    }
.end annotation


# instance fields
.field public lastCheckTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public notificationCount:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "notificationsCount"
    .end annotation
.end field

.field public notificationList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/notice/Notice;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/notice/Notice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/api/ListResponse;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/notice/Notice;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/notice/NoticeListResponse;->notificationList:Ljava/util/List;

    return-object v0
.end method
