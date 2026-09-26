.class Lcom/narvii/community/search/BaseSearchListFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/community/search/BaseSearchListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/search/BaseSearchListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/community/search/BaseSearchListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/community/search/BaseSearchListFragment$2;->this$0:Lcom/narvii/community/search/BaseSearchListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/search/BaseSearchListFragment$2;->this$0:Lcom/narvii/community/search/BaseSearchListFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/community/search/BaseSearchListFragment;->onRealTimeSearch()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/community/search/BaseSearchListFragment$2;->this$0:Lcom/narvii/community/search/BaseSearchListFragment;

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    iput-boolean v1, v0, Lcom/narvii/community/search/BaseSearchListFragment;->pendingSearch:Z

    .line 11
    return-void
.end method
