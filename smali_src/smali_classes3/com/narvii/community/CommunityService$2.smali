.class Lcom/narvii/community/CommunityService$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/community/CommunityService$2;->this$0:Lcom/narvii/community/CommunityService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/CommunityService$2;->this$0:Lcom/narvii/community/CommunityService;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/community/CommunityService;->b(Lcom/narvii/community/CommunityService;)Ljava/util/HashMap;

    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/narvii/community/CommunityService$2;->this$0:Lcom/narvii/community/CommunityService;

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lcom/narvii/community/CommunityService;->b(Lcom/narvii/community/CommunityService;)Ljava/util/HashMap;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v2

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    check-cast v2, Lcom/narvii/community/CommunityService$UpdateStub;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/narvii/community/CommunityService$2;->this$0:Lcom/narvii/community/CommunityService;

    .line 36
    .line 37
    .line 38
    invoke-static {v3}, Lcom/narvii/community/CommunityService;->a(Lcom/narvii/community/CommunityService;)Ljava/io/File;

    .line 39
    move-result-object v3

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v3}, Lcom/narvii/community/CommunityService$UpdateStub;->save(Ljava/io/File;)V

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v1

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_0
    iget-object v1, p0, Lcom/narvii/community/CommunityService$2;->this$0:Lcom/narvii/community/CommunityService;

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Lcom/narvii/community/CommunityService;->b(Lcom/narvii/community/CommunityService;)Ljava/util/HashMap;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 55
    monitor-exit v0

    .line 56
    return-void

    .line 57
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw v1
.end method
