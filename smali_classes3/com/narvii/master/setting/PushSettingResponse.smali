.class public Lcom/narvii/master/setting/PushSettingResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "PushSettingResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/master/setting/PushSettings;",
        ">;"
    }
.end annotation


# instance fields
.field public pushSettings:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/master/setting/PushSettings;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/master/setting/PushSettings;",
            ">;"
        }
    .end annotation
.end field


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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/master/setting/PushSettings;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/narvii/master/setting/PushSettingResponse;->pushSettings:Ljava/util/List;

    return-object v0
.end method
