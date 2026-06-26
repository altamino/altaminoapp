.class Lcom/narvii/headlines/GuestLikeHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "GuestLikeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/headlines/GuestLikeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/headlines/GuestLikeHelper;


# direct methods
.method constructor <init>(Lcom/narvii/headlines/GuestLikeHelper;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/narvii/headlines/GuestLikeHelper$1;->this$0:Lcom/narvii/headlines/GuestLikeHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 50
    iget-object p1, p0, Lcom/narvii/headlines/GuestLikeHelper$1;->this$0:Lcom/narvii/headlines/GuestLikeHelper;

    iget-object p1, p1, Lcom/narvii/headlines/GuestLikeHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string p2, "account"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 51
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p1

    .line 52
    iget-object p2, p0, Lcom/narvii/headlines/GuestLikeHelper$1;->this$0:Lcom/narvii/headlines/GuestLikeHelper;

    iget-object p2, p2, Lcom/narvii/headlines/GuestLikeHelper;->uid:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 53
    iget-object p1, p0, Lcom/narvii/headlines/GuestLikeHelper$1;->this$0:Lcom/narvii/headlines/GuestLikeHelper;

    iget-object p2, p1, Lcom/narvii/headlines/GuestLikeHelper;->hashSet:Ljava/util/LinkedHashSet;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 54
    iput-object p2, p1, Lcom/narvii/headlines/GuestLikeHelper;->hashSet:Ljava/util/LinkedHashSet;

    .line 55
    iput-object p2, p1, Lcom/narvii/headlines/GuestLikeHelper;->uid:Ljava/lang/String;

    .line 56
    invoke-static {p1, p2}, Lcom/narvii/headlines/GuestLikeHelper;->access$000(Lcom/narvii/headlines/GuestLikeHelper;Ljava/util/Set;)V

    :cond_0
    return-void
.end method
