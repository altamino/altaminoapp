.class public Lcom/narvii/community/ReminderCheckMapResponse;
.super Lcom/narvii/model/api/ApiResponse;
.source "ReminderCheckMapResponse.java"


# instance fields
.field public reminderCheckResult:Lcom/narvii/community/ReminderCheck;

.field public reminderCheckResultInCommunities:Ljava/util/HashMap;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/community/ReminderCheck;
        keyAs = Ljava/lang/Integer;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/community/ReminderCheck;",
            ">;"
        }
    .end annotation
.end field

.field public treatedNdcIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/narvii/model/api/ApiResponse;-><init>()V

    return-void
.end method
