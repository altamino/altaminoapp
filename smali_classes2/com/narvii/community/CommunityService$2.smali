.class Lcom/narvii/community/CommunityService$2;
.super Ljava/lang/Object;
.source "CommunityService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/community/CommunityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/CommunityService;


# direct methods
.method constructor <init>(Lcom/narvii/community/CommunityService;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/narvii/community/CommunityService$2;->this$0:Lcom/narvii/community/CommunityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 357
    iget-object v0, p0, Lcom/narvii/community/CommunityService$2;->this$0:Lcom/narvii/community/CommunityService;

    invoke-static {v0}, Lcom/narvii/community/CommunityService;->access$000(Lcom/narvii/community/CommunityService;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 358
    :try_start_0
    iget-object v1, p0, Lcom/narvii/community/CommunityService$2;->this$0:Lcom/narvii/community/CommunityService;

    invoke-static {v1}, Lcom/narvii/community/CommunityService;->access$000(Lcom/narvii/community/CommunityService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/community/CommunityService$UpdateStub;

    .line 359
    iget-object v3, p0, Lcom/narvii/community/CommunityService$2;->this$0:Lcom/narvii/community/CommunityService;

    invoke-static {v3}, Lcom/narvii/community/CommunityService;->access$100(Lcom/narvii/community/CommunityService;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/narvii/community/CommunityService$UpdateStub;->save(Ljava/io/File;)V

    goto :goto_0

    .line 361
    :cond_0
    iget-object v1, p0, Lcom/narvii/community/CommunityService$2;->this$0:Lcom/narvii/community/CommunityService;

    invoke-static {v1}, Lcom/narvii/community/CommunityService;->access$000(Lcom/narvii/community/CommunityService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 362
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
