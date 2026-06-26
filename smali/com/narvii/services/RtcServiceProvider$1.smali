.class Lcom/narvii/services/RtcServiceProvider$1;
.super Ljava/lang/Object;
.source "RtcServiceProvider.java"

# interfaces
.implements Lcom/narvii/chat/rtc/RelaunchLiveChannelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/services/RtcServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/chat/rtc/RtcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/services/RtcServiceProvider;

.field final synthetic val$ctx:Lcom/narvii/app/NVContext;


# direct methods
.method constructor <init>(Lcom/narvii/services/RtcServiceProvider;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/narvii/services/RtcServiceProvider$1;->this$0:Lcom/narvii/services/RtcServiceProvider;

    iput-object p2, p0, Lcom/narvii/services/RtcServiceProvider$1;->val$ctx:Lcom/narvii/app/NVContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReLaunchLiveChannelView(Landroid/os/Bundle;ZLandroid/content/Intent;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/narvii/services/RtcServiceProvider$1;->val$ctx:Lcom/narvii/app/NVContext;

    const-string/jumbo v1, "topActivity"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/services/TopActivityService;

    .line 42
    invoke-virtual {v0}, Lcom/narvii/util/services/TopActivityService;->getLastResumedActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "threadId"

    .line 43
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    instance-of v3, v0, Lcom/narvii/app/NVActivity;

    const-string v4, "id"

    if-eqz v3, :cond_1

    .line 45
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 46
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 47
    instance-of v3, v0, Lcom/narvii/chat/ChatActivity;

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 48
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 49
    invoke-static {v3, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->finish()V

    .line 55
    :cond_1
    const-class v0, Lcom/narvii/chat/ChatFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 56
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 57
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Source"

    const-string v2, "Popup Window"

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "isCreator"

    .line 59
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const-string v1, "creator"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x1

    const-string/jumbo v1, "relaunch"

    .line 60
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo p1, "vvCallPendingIntent"

    .line 61
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "forceDisableFloatingWindow"

    .line 62
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 63
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 64
    iget-object p1, p0, Lcom/narvii/services/RtcServiceProvider$1;->val$ctx:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
