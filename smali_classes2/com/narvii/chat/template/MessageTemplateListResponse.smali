.class public Lcom/narvii/chat/template/MessageTemplateListResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "MessageTemplateListResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/chat/template/MessageTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field public messageTemplateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/chat/template/MessageTemplate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
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
            "Lcom/narvii/chat/template/MessageTemplate;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/narvii/chat/template/MessageTemplateListResponse;->messageTemplateList:Ljava/util/List;

    return-object v0
.end method
