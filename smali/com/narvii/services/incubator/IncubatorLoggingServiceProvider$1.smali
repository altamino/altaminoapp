.class Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider$1;
.super Lcom/narvii/logging/LoggingServiceImpl;
.source "IncubatorLoggingServiceProvider.java"


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

    .line 24
    iput-object p1, p0, Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider$1;->this$0:Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider;

    iput-object p3, p0, Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider$1;->val$ctx:Lcom/narvii/app/NVContext;

    invoke-direct {p0, p2}, Lcom/narvii/logging/LoggingServiceImpl;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public varargs logEvent(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
