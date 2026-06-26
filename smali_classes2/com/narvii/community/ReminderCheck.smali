.class public Lcom/narvii/community/ReminderCheck;
.super Ljava/lang/Object;
.source "ReminderCheck.java"


# instance fields
.field public checkInHistory:Lcom/narvii/model/CheckInHistory;

.field public consecutiveCheckInDays:Ljava/lang/Integer;

.field public hasCheckInToday:Ljava/lang/Boolean;

.field public noticesCount:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "noticesCount2"
    .end annotation
.end field

.field public notificationsCount:I

.field public unreadChatThreadsCount:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
