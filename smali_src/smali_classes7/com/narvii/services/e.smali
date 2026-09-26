.class public final synthetic Lcom/narvii/services/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/services/EventLogProfileService$2;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/services/EventLogProfileService$2;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/services/e;->a:Lcom/narvii/services/EventLogProfileService$2;

    iput-boolean p2, p0, Lcom/narvii/services/e;->b:Z

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/services/e;->a:Lcom/narvii/services/EventLogProfileService$2;

    iget-boolean v1, p0, Lcom/narvii/services/e;->b:Z

    check-cast p1, Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;

    invoke-static {v0, v1, p1}, Lcom/narvii/services/EventLogProfileService$2;->c(Lcom/narvii/services/EventLogProfileService$2;ZLcom/narvii/services/EventLogProfileService$EventLogProfileListener;)V

    return-void
.end method
