.class public final synthetic Lcom/narvii/logging/-$$Lambda$LogEventServiceImpl$Do1xlw69f7H6MdTsS-j2tUhXEhI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/narvii/logging/LogEventServiceImpl;

.field private final synthetic f$1:Lcom/narvii/logging/LogEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/logging/LogEventServiceImpl;Lcom/narvii/logging/LogEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/logging/-$$Lambda$LogEventServiceImpl$Do1xlw69f7H6MdTsS-j2tUhXEhI;->f$0:Lcom/narvii/logging/LogEventServiceImpl;

    iput-object p2, p0, Lcom/narvii/logging/-$$Lambda$LogEventServiceImpl$Do1xlw69f7H6MdTsS-j2tUhXEhI;->f$1:Lcom/narvii/logging/LogEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/narvii/logging/-$$Lambda$LogEventServiceImpl$Do1xlw69f7H6MdTsS-j2tUhXEhI;->f$0:Lcom/narvii/logging/LogEventServiceImpl;

    iget-object v1, p0, Lcom/narvii/logging/-$$Lambda$LogEventServiceImpl$Do1xlw69f7H6MdTsS-j2tUhXEhI;->f$1:Lcom/narvii/logging/LogEvent;

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEventServiceImpl;->lambda$logEvent$0$LogEventServiceImpl(Lcom/narvii/logging/LogEvent;)V

    return-void
.end method
