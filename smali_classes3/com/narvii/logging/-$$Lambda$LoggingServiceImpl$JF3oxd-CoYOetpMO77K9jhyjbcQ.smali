.class public final synthetic Lcom/narvii/logging/-$$Lambda$LoggingServiceImpl$JF3oxd-CoYOetpMO77K9jhyjbcQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/narvii/logging/LoggingServiceImpl;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/logging/LoggingServiceImpl;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/logging/-$$Lambda$LoggingServiceImpl$JF3oxd-CoYOetpMO77K9jhyjbcQ;->f$0:Lcom/narvii/logging/LoggingServiceImpl;

    iput-object p2, p0, Lcom/narvii/logging/-$$Lambda$LoggingServiceImpl$JF3oxd-CoYOetpMO77K9jhyjbcQ;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/logging/-$$Lambda$LoggingServiceImpl$JF3oxd-CoYOetpMO77K9jhyjbcQ;->f$2:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/narvii/logging/-$$Lambda$LoggingServiceImpl$JF3oxd-CoYOetpMO77K9jhyjbcQ;->f$0:Lcom/narvii/logging/LoggingServiceImpl;

    iget-object v1, p0, Lcom/narvii/logging/-$$Lambda$LoggingServiceImpl$JF3oxd-CoYOetpMO77K9jhyjbcQ;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/logging/-$$Lambda$LoggingServiceImpl$JF3oxd-CoYOetpMO77K9jhyjbcQ;->f$2:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/logging/LoggingServiceImpl;->lambda$logEvent$0$LoggingServiceImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
