.class Lcom/narvii/headlines/GuestLikeHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/headlines/GuestLikeHelper$1;->this$0:Lcom/narvii/headlines/GuestLikeHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "com.narvii.action.ACCOUNT_CHANGED"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/headlines/GuestLikeHelper$1;->this$0:Lcom/narvii/headlines/GuestLikeHelper;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/narvii/headlines/GuestLikeHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 17
    .line 18
    const-string p2, "account"

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    iget-object p2, p0, Lcom/narvii/headlines/GuestLikeHelper$1;->this$0:Lcom/narvii/headlines/GuestLikeHelper;

    .line 31
    .line 32
    iget-object p2, p2, Lcom/narvii/headlines/GuestLikeHelper;->uid:Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    move-result p1

    .line 37
    .line 38
    if-nez p1, :cond_0

    .line 39
    .line 40
    iget-object p1, p0, Lcom/narvii/headlines/GuestLikeHelper$1;->this$0:Lcom/narvii/headlines/GuestLikeHelper;

    .line 41
    .line 42
    iget-object p2, p1, Lcom/narvii/headlines/GuestLikeHelper;->hashSet:Ljava/util/LinkedHashSet;

    .line 43
    .line 44
    if-eqz p2, :cond_0

    .line 45
    const/4 p2, 0x0

    .line 46
    .line 47
    iput-object p2, p1, Lcom/narvii/headlines/GuestLikeHelper;->hashSet:Ljava/util/LinkedHashSet;

    .line 48
    .line 49
    iput-object p2, p1, Lcom/narvii/headlines/GuestLikeHelper;->uid:Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    invoke-static {p1, p2}, Lcom/narvii/headlines/GuestLikeHelper;->a(Lcom/narvii/headlines/GuestLikeHelper;Ljava/util/Set;)V

    .line 53
    :cond_0
    return-void
.end method
