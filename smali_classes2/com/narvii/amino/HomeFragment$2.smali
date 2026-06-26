.class Lcom/narvii/amino/HomeFragment$2;
.super Ljava/lang/Object;
.source "HomeFragment.java"

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

    .line 191
    iput-object p1, p0, Lcom/narvii/amino/HomeFragment$2;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$2;->this$0:Lcom/narvii/amino/HomeFragment;

    iget-object v0, v0, Lcom/narvii/amino/HomeFragment;->configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->getHomePageList()Ljava/util/List;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/narvii/amino/HomeFragment$2;->this$0:Lcom/narvii/amino/HomeFragment;

    iput-object v0, v1, Lcom/narvii/amino/HomeFragment;->homePages:Ljava/util/List;

    .line 196
    iget-object v0, v1, Lcom/narvii/amino/HomeFragment;->configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->getStartPageIndex()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/narvii/amino/HomeFragment;->startPageIndex:Ljava/lang/Integer;

    .line 197
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$2;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$2;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->resetAdapter()V

    .line 200
    :cond_0
    new-instance v0, Lcom/narvii/amino/HomeFragment$2$1;

    invoke-direct {v0, p0}, Lcom/narvii/amino/HomeFragment$2$1;-><init>(Lcom/narvii/amino/HomeFragment$2;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method
