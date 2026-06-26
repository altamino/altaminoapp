.class Lcom/narvii/community/MyCommunityListService$6;
.super Landroid/content/BroadcastReceiver;
.source "MyCommunityListService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/community/MyCommunityListService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/MyCommunityListService;


# direct methods
.method constructor <init>(Lcom/narvii/community/MyCommunityListService;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/narvii/community/MyCommunityListService$6;->this$0:Lcom/narvii/community/MyCommunityListService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 247
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 248
    iget-object p1, p0, Lcom/narvii/community/MyCommunityListService$6;->this$0:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->resetList()V

    .line 249
    iget-object p1, p0, Lcom/narvii/community/MyCommunityListService$6;->this$0:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->refreshSuggestCommunityRequest()V

    .line 250
    iget-object p1, p0, Lcom/narvii/community/MyCommunityListService$6;->this$0:Lcom/narvii/community/MyCommunityListService;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/narvii/community/MyCommunityListService;->globalReminderCheck:Lcom/narvii/community/ReminderCheck;

    :cond_0
    return-void
.end method
