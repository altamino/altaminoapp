.class public final synthetic Lcom/narvii/pushservice/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/pushservice/PushNotificationService;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/pushservice/PushNotificationService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/pushservice/d;->a:Lcom/narvii/pushservice/PushNotificationService;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/pushservice/d;->a:Lcom/narvii/pushservice/PushNotificationService;

    check-cast p1, Lcom/narvii/pushservice/PushPayload;

    invoke-static {v0, p1}, Lcom/narvii/pushservice/PushNotificationService;->a(Lcom/narvii/pushservice/PushNotificationService;Lcom/narvii/pushservice/PushPayload;)V

    return-void
.end method
