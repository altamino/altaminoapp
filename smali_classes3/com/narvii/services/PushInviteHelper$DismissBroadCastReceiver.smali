.class Lcom/narvii/services/PushInviteHelper$DismissBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PushInviteHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/services/PushInviteHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DismissBroadCastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/services/PushInviteHelper;


# direct methods
.method constructor <init>(Lcom/narvii/services/PushInviteHelper;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/narvii/services/PushInviteHelper$DismissBroadCastReceiver;->this$0:Lcom/narvii/services/PushInviteHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
