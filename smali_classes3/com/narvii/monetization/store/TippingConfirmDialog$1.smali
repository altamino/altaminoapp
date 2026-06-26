.class Lcom/narvii/monetization/store/TippingConfirmDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "TippingConfirmDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/store/TippingConfirmDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/store/TippingConfirmDialog;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$1;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 139
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$1;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    invoke-static {p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->access$000(Lcom/narvii/monetization/store/TippingConfirmDialog;)V

    return-void
.end method
