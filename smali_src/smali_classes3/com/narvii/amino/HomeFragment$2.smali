.class Lcom/narvii/amino/HomeFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/amino/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/HomeFragment;


# direct methods
.method constructor <init>(Lcom/narvii/amino/HomeFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/amino/HomeFragment$2;->this$0:Lcom/narvii/amino/HomeFragment;

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
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$2;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/amino/HomeFragment;->configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->getHomePageList()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/amino/HomeFragment$2;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 11
    .line 12
    iput-object v0, v1, Lcom/narvii/amino/HomeFragment;->homePages:Ljava/util/List;

    .line 13
    .line 14
    iget-object v0, v1, Lcom/narvii/amino/HomeFragment;->configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->getStartPageIndex()Ljava/lang/Integer;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iput-object v0, v1, Lcom/narvii/amino/HomeFragment;->startPageIndex:Ljava/lang/Integer;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$2;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$2;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->resetAdapter()V

    .line 34
    .line 35
    :cond_0
    new-instance v0, Lcom/narvii/amino/HomeFragment$2$1;

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/narvii/amino/HomeFragment$2$1;-><init>(Lcom/narvii/amino/HomeFragment$2;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 42
    return-void
.end method
