.class Lcom/narvii/util/badge/BaseBadgeServiceProvider$1;
.super Ljava/lang/Object;
.source "BaseBadgeServiceProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/badge/BaseBadgeServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/badge/BadgeService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/badge/BaseBadgeServiceProvider;

.field final synthetic val$ctx:Lcom/narvii/app/NVContext;

.field final synthetic val$srv:Lcom/narvii/util/badge/BadgeService;


# direct methods
.method constructor <init>(Lcom/narvii/util/badge/BaseBadgeServiceProvider;Lcom/narvii/app/NVContext;Lcom/narvii/util/badge/BadgeService;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/narvii/util/badge/BaseBadgeServiceProvider$1;->this$0:Lcom/narvii/util/badge/BaseBadgeServiceProvider;

    iput-object p2, p0, Lcom/narvii/util/badge/BaseBadgeServiceProvider$1;->val$ctx:Lcom/narvii/app/NVContext;

    iput-object p3, p0, Lcom/narvii/util/badge/BaseBadgeServiceProvider$1;->val$srv:Lcom/narvii/util/badge/BadgeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/narvii/util/badge/BaseBadgeServiceProvider$1;->val$ctx:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 37
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/narvii/util/badge/BaseBadgeServiceProvider$1;->val$srv:Lcom/narvii/util/badge/BadgeService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/util/badge/BadgeService;->setBadge(I)V

    :cond_0
    return-void
.end method
