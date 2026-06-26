.class Lcom/narvii/community/CommunityService$3;
.super Ljava/lang/Object;
.source "CommunityService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/community/CommunityService;->batchUpdateCommunity(Ljava/util/List;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/CommunityService;

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lcom/narvii/community/CommunityService;Ljava/util/List;J)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/narvii/community/CommunityService$3;->this$0:Lcom/narvii/community/CommunityService;

    iput-object p2, p0, Lcom/narvii/community/CommunityService$3;->val$list:Ljava/util/List;

    iput-wide p3, p0, Lcom/narvii/community/CommunityService$3;->val$timestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 374
    iget-object v0, p0, Lcom/narvii/community/CommunityService$3;->this$0:Lcom/narvii/community/CommunityService;

    iget-object v1, p0, Lcom/narvii/community/CommunityService$3;->val$list:Ljava/util/List;

    iget-wide v2, p0, Lcom/narvii/community/CommunityService$3;->val$timestamp:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/community/CommunityService;->doBatchUpdate(Ljava/util/List;J)V

    return-void
.end method
