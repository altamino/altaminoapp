.class public Lcom/narvii/account/push/PushNotificationDialog2;
.super Lcom/narvii/widget/ACMAlertDialog;
.source "PushNotificationDialog2.java"


# instance fields
.field source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 15
    iput-object p3, p0, Lcom/narvii/account/push/PushNotificationDialog2;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V
    .locals 2

    .line 21
    invoke-super {p0, p1}, Lcom/narvii/app/NVDialog;->completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V

    .line 22
    iget-object v0, p0, Lcom/narvii/account/push/PushNotificationDialog2;->source:Ljava/lang/String;

    const-string v1, "source"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    return-void
.end method
