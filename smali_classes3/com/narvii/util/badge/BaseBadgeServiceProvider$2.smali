.class Lcom/narvii/util/badge/BaseBadgeServiceProvider$2;
.super Ljava/lang/Object;
.source "BaseBadgeServiceProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/badge/BaseBadgeServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/badge/BadgeService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/badge/BaseBadgeServiceProvider;

.field final synthetic val$srv:Lcom/narvii/util/badge/BadgeService;


# direct methods
.method constructor <init>(Lcom/narvii/util/badge/BaseBadgeServiceProvider;Lcom/narvii/util/badge/BadgeService;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/narvii/util/badge/BaseBadgeServiceProvider$2;->this$0:Lcom/narvii/util/badge/BaseBadgeServiceProvider;

    iput-object p2, p0, Lcom/narvii/util/badge/BaseBadgeServiceProvider$2;->val$srv:Lcom/narvii/util/badge/BadgeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/narvii/util/badge/BaseBadgeServiceProvider$2;->val$srv:Lcom/narvii/util/badge/BadgeService;

    invoke-virtual {v0}, Lcom/narvii/util/badge/BadgeService;->flushBadge()V

    return-void
.end method
