.class public final synthetic Lcom/narvii/account/push/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/account/push/PushNotificationHelper;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/narvii/account/push/PushNotificationDialog2;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/account/push/PushNotificationHelper;Ljava/lang/String;Lcom/narvii/account/push/PushNotificationDialog2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/push/c;->a:Lcom/narvii/account/push/PushNotificationHelper;

    iput-object p2, p0, Lcom/narvii/account/push/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/account/push/c;->c:Lcom/narvii/account/push/PushNotificationDialog2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/account/push/c;->a:Lcom/narvii/account/push/PushNotificationHelper;

    iget-object v1, p0, Lcom/narvii/account/push/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/account/push/c;->c:Lcom/narvii/account/push/PushNotificationDialog2;

    invoke-static {v0, v1, v2}, Lcom/narvii/account/push/PushNotificationHelper;->a(Lcom/narvii/account/push/PushNotificationHelper;Ljava/lang/String;Lcom/narvii/account/push/PushNotificationDialog2;)V

    return-void
.end method
