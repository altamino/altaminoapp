.class Lcom/narvii/services/AminoLoggingServiceProvider$1;
.super Lcom/narvii/logging/LoggingServiceImpl;
.source "AminoLoggingServiceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/services/AminoLoggingServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/logging/LoggingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/services/AminoLoggingServiceProvider;

.field final synthetic val$ctx:Lcom/narvii/app/NVContext;


# direct methods
.method constructor <init>(Lcom/narvii/services/AminoLoggingServiceProvider;Lcom/narvii/app/NVContext;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/narvii/services/AminoLoggingServiceProvider$1;->this$0:Lcom/narvii/services/AminoLoggingServiceProvider;

    iput-object p3, p0, Lcom/narvii/services/AminoLoggingServiceProvider$1;->val$ctx:Lcom/narvii/app/NVContext;

    invoke-direct {p0, p2}, Lcom/narvii/logging/LoggingServiceImpl;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public varargs logEvent(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
