.class Lcom/narvii/community/CommunityService$3;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/community/CommunityService$3;->this$0:Lcom/narvii/community/CommunityService;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/community/CommunityService$3;->val$list:Ljava/util/List;

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/narvii/community/CommunityService$3;->val$timestamp:J

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/CommunityService$3;->this$0:Lcom/narvii/community/CommunityService;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/community/CommunityService$3;->val$list:Ljava/util/List;

    .line 5
    .line 6
    iget-wide v2, p0, Lcom/narvii/community/CommunityService$3;->val$timestamp:J

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/community/CommunityService;->doBatchUpdate(Ljava/util/List;J)V

    .line 10
    return-void
.end method
