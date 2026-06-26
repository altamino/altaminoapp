.class public Lcom/narvii/visitor/RecentVisitorListResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "RecentVisitorListResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/visitor/RecentVisitor;",
        ">;"
    }
.end annotation


# instance fields
.field public capacity:J

.field public lastCheckTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public visitors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/visitor/RecentVisitor;",
            ">;"
        }
    .end annotation
.end field

.field public visitorsCount:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/narvii/model/api/ListResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public list()Ljava/util/List;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/narvii/visitor/RecentVisitorListResponse;->visitors:Ljava/util/List;

    return-object v0
.end method
