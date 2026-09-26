.class public final synthetic Lcom/narvii/account/push/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/account/push/PushNotificationDialog2;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/account/push/PushNotificationDialog2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/push/a;->a:Lcom/narvii/account/push/PushNotificationDialog2;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/account/push/a;->a:Lcom/narvii/account/push/PushNotificationDialog2;

    invoke-static {v0, p1}, Lcom/narvii/account/push/PushNotificationHelper;->d(Lcom/narvii/account/push/PushNotificationDialog2;Landroid/view/View;)V

    return-void
.end method
