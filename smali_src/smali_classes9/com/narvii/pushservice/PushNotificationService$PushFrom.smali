.class public Lcom/narvii/pushservice/PushNotificationService$PushFrom;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/pushservice/PushNotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PushFrom"
.end annotation


# instance fields
.field public fromPushPayload:Lcom/narvii/pushservice/PushPayload;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/pushservice/PushPayload;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/pushservice/PushNotificationService$PushFrom;->fromPushPayload:Lcom/narvii/pushservice/PushPayload;

    return-void
.end method
