.class Lcom/narvii/util/badge/BaseBadgeServiceProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/badge/BaseBadgeServiceProvider$1;->this$0:Lcom/narvii/util/badge/BaseBadgeServiceProvider;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/util/badge/BaseBadgeServiceProvider$1;->val$ctx:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/util/badge/BaseBadgeServiceProvider$1;->val$srv:Lcom/narvii/util/badge/BadgeService;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/badge/BaseBadgeServiceProvider$1;->val$ctx:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "account"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/util/badge/BaseBadgeServiceProvider$1;->val$srv:Lcom/narvii/util/badge/BadgeService;

    .line 19
    const/4 v1, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/narvii/util/badge/BadgeService;->setBadge(I)V

    .line 23
    :cond_0
    return-void
.end method
