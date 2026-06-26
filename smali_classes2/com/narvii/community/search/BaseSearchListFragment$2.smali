.class Lcom/narvii/community/search/BaseSearchListFragment$2;
.super Ljava/lang/Object;
.source "BaseSearchListFragment.java"

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

    .line 159
    iput-object p1, p0, Lcom/narvii/community/search/BaseSearchListFragment$2;->this$0:Lcom/narvii/community/search/BaseSearchListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/narvii/community/search/BaseSearchListFragment$2;->this$0:Lcom/narvii/community/search/BaseSearchListFragment;

    invoke-virtual {v0}, Lcom/narvii/community/search/BaseSearchListFragment;->onRealTimeSearch()V

    .line 163
    iget-object v0, p0, Lcom/narvii/community/search/BaseSearchListFragment$2;->this$0:Lcom/narvii/community/search/BaseSearchListFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/narvii/community/search/BaseSearchListFragment;->pendingSearch:Z

    return-void
.end method
