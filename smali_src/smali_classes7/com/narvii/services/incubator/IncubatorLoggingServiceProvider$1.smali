.class Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider$1;
.super Lcom/narvii/logging/LoggingServiceImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/logging/LoggingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider;

.field final synthetic val$ctx:Lcom/narvii/app/NVContext;


# direct methods
.method constructor <init>(Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider;Lcom/narvii/app/NVContext;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider$1;->this$0:Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider$1;->val$ctx:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/narvii/logging/LoggingServiceImpl;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    return-void
.end method


# virtual methods
.method public varargs logEvent(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/logging/LoggingServiceImpl;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider$1;->val$ctx:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p1, p2}, Lcom/narvii/util/statistics/TeaManager;->logEvent(Lcom/narvii/app/NVContext;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    return-void
.end method
