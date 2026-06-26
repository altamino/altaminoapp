.class public final synthetic Lcom/narvii/pushservice/-$$Lambda$PushNotificationService$YieLhpj2zsi1FWzEtccGiiQq9aQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field private final synthetic f$0:Lcom/narvii/pushservice/PushNotificationService;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/pushservice/PushNotificationService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/pushservice/-$$Lambda$PushNotificationService$YieLhpj2zsi1FWzEtccGiiQq9aQ;->f$0:Lcom/narvii/pushservice/PushNotificationService;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/pushservice/-$$Lambda$PushNotificationService$YieLhpj2zsi1FWzEtccGiiQq9aQ;->f$0:Lcom/narvii/pushservice/PushNotificationService;

    check-cast p1, Lcom/narvii/pushservice/PushPayload;

    invoke-virtual {v0, p1}, Lcom/narvii/pushservice/PushNotificationService;->lambda$new$0$PushNotificationService(Lcom/narvii/pushservice/PushPayload;)V

    return-void
.end method
