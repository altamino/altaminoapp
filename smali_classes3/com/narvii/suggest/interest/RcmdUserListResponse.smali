.class public Lcom/narvii/suggest/interest/RcmdUserListResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "RcmdUserListResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/suggest/interest/RcmdUser;",
        ">;"
    }
.end annotation


# instance fields
.field public rcmdUsersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/suggest/interest/RcmdUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/narvii/model/api/ListResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/suggest/interest/RcmdUser;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/narvii/suggest/interest/RcmdUserListResponse;->rcmdUsersList:Ljava/util/List;

    return-object v0
.end method
