.class public Lcom/narvii/sharedfolder/SharedFolderStatsResponse;
.super Lcom/narvii/model/api/ApiResponse;
.source "SharedFolderStatsResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/sharedfolder/SharedFolderStatsResponse$Stats;
    }
.end annotation


# instance fields
.field public stats:Lcom/narvii/sharedfolder/SharedFolderStatsResponse$Stats;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/narvii/model/api/ApiResponse;-><init>()V

    return-void
.end method
