.class public final synthetic Lcom/narvii/logging/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/logging/LogEventServiceImpl;

.field public final synthetic b:Lcom/narvii/logging/LogEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/logging/LogEventServiceImpl;Lcom/narvii/logging/LogEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/logging/a;->a:Lcom/narvii/logging/LogEventServiceImpl;

    iput-object p2, p0, Lcom/narvii/logging/a;->b:Lcom/narvii/logging/LogEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/logging/a;->a:Lcom/narvii/logging/LogEventServiceImpl;

    iget-object v1, p0, Lcom/narvii/logging/a;->b:Lcom/narvii/logging/LogEvent;

    invoke-static {v0, v1}, Lcom/narvii/logging/LogEventServiceImpl;->a(Lcom/narvii/logging/LogEventServiceImpl;Lcom/narvii/logging/LogEvent;)V

    return-void
.end method
