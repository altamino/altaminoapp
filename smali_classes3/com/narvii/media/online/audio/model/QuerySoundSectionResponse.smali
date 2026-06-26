.class public Lcom/narvii/media/online/audio/model/QuerySoundSectionResponse;
.super Lcom/narvii/model/api/ApiResponse;
.source "QuerySoundSectionResponse.java"


# instance fields
.field public sectionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/media/online/audio/model/AssetSection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/narvii/model/api/ApiResponse;-><init>()V

    return-void
.end method
