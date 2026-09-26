.class public final synthetic Lcom/narvii/account/push/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/account/push/PushNotificationDialog2;

.field public final synthetic b:Lcom/narvii/account/push/PushNotificationHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/account/push/PushNotificationDialog2;Lcom/narvii/account/push/PushNotificationHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/push/b;->a:Lcom/narvii/account/push/PushNotificationDialog2;

    iput-object p2, p0, Lcom/narvii/account/push/b;->b:Lcom/narvii/account/push/PushNotificationHelper;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/account/push/b;->a:Lcom/narvii/account/push/PushNotificationDialog2;

    iget-object v1, p0, Lcom/narvii/account/push/b;->b:Lcom/narvii/account/push/PushNotificationHelper;

    invoke-static {v0, v1, p1}, Lcom/narvii/account/push/PushNotificationHelper;->c(Lcom/narvii/account/push/PushNotificationDialog2;Lcom/narvii/account/push/PushNotificationHelper;Landroid/view/View;)V

    return-void
.end method
