.class Lcom/narvii/amino/HomeFragment$2$1;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/amino/HomeFragment$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/amino/HomeFragment$2;


# direct methods
.method constructor <init>(Lcom/narvii/amino/HomeFragment$2;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/narvii/amino/HomeFragment$2$1;->this$1:Lcom/narvii/amino/HomeFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$2$1;->this$1:Lcom/narvii/amino/HomeFragment$2;

    iget-object v0, v0, Lcom/narvii/amino/HomeFragment$2;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    move-result v0

    iget-object v1, p0, Lcom/narvii/amino/HomeFragment$2$1;->this$1:Lcom/narvii/amino/HomeFragment$2;

    iget-object v1, v1, Lcom/narvii/amino/HomeFragment$2;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-virtual {v1}, Lcom/narvii/amino/HomeFragment;->defaultTabIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$2$1;->this$1:Lcom/narvii/amino/HomeFragment$2;

    iget-object v0, v0, Lcom/narvii/amino/HomeFragment$2;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$2$1;->this$1:Lcom/narvii/amino/HomeFragment$2;

    iget-object v0, v0, Lcom/narvii/amino/HomeFragment$2;->this$0:Lcom/narvii/amino/HomeFragment;

    iget-object v1, v0, Lcom/narvii/amino/HomeFragment;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0}, Lcom/narvii/amino/HomeFragment;->defaultTabIndex()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_0
    return-void
.end method
