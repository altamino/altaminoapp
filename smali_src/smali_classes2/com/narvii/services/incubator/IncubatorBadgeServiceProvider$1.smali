.class Lcom/narvii/services/incubator/IncubatorBadgeServiceProvider$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/services/incubator/IncubatorBadgeServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/badge/BadgeService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/notice/ReminderFullCheckResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/services/incubator/IncubatorBadgeServiceProvider;

.field final synthetic val$srv:Lcom/narvii/util/badge/BadgeService;


# direct methods
.method constructor <init>(Lcom/narvii/services/incubator/IncubatorBadgeServiceProvider;Ljava/lang/Class;Lcom/narvii/util/badge/BadgeService;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/services/incubator/IncubatorBadgeServiceProvider$1;->this$0:Lcom/narvii/services/incubator/IncubatorBadgeServiceProvider;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/services/incubator/IncubatorBadgeServiceProvider$1;->val$srv:Lcom/narvii/util/badge/BadgeService;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/narvii/notice/ReminderFullCheckResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorBadgeServiceProvider$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/notice/ReminderFullCheckResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/notice/ReminderFullCheckResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Lcom/narvii/services/incubator/IncubatorBadgeServiceProvider$1;->val$srv:Lcom/narvii/util/badge/BadgeService;

    .line 2
    iget-object p2, p2, Lcom/narvii/notice/ReminderFullCheckResponse;->reminderFullCheckResult:Lcom/narvii/notice/ReminderFullCheckResult;

    iget-boolean p2, p2, Lcom/narvii/notice/ReminderFullCheckResult;->hasReminder:Z

    invoke-virtual {p1, p2}, Lcom/narvii/util/badge/BadgeService;->setBadge(I)V

    return-void
.end method
