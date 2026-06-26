.class public final synthetic Lcom/narvii/services/-$$Lambda$EventLogProfileService$2$DQ8oxfCzTTKb-h_pQ_ATVEGX9OA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field private final synthetic f$0:Lcom/narvii/services/EventLogProfileService$2;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/services/EventLogProfileService$2;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/services/-$$Lambda$EventLogProfileService$2$DQ8oxfCzTTKb-h_pQ_ATVEGX9OA;->f$0:Lcom/narvii/services/EventLogProfileService$2;

    iput-boolean p2, p0, Lcom/narvii/services/-$$Lambda$EventLogProfileService$2$DQ8oxfCzTTKb-h_pQ_ATVEGX9OA;->f$1:Z

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/services/-$$Lambda$EventLogProfileService$2$DQ8oxfCzTTKb-h_pQ_ATVEGX9OA;->f$0:Lcom/narvii/services/EventLogProfileService$2;

    iget-boolean v1, p0, Lcom/narvii/services/-$$Lambda$EventLogProfileService$2$DQ8oxfCzTTKb-h_pQ_ATVEGX9OA;->f$1:Z

    check-cast p1, Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;

    invoke-virtual {v0, v1, p1}, Lcom/narvii/services/EventLogProfileService$2;->lambda$onFinish$0$EventLogProfileService$2(ZLcom/narvii/services/EventLogProfileService$EventLogProfileListener;)V

    return-void
.end method
