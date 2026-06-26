.class Lcom/narvii/amino/HomeFragment$10;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/amino/HomeFragment;->createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field c:I

.field final synthetic this$0:Lcom/narvii/amino/HomeFragment;


# direct methods
.method constructor <init>(Lcom/narvii/amino/HomeFragment;)V
    .locals 0

    .line 645
    iput-object p1, p0, Lcom/narvii/amino/HomeFragment$10;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 646
    iput p1, p0, Lcom/narvii/amino/HomeFragment$10;->c:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 650
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$10;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$10;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    move-result v0

    iget-object v1, p0, Lcom/narvii/amino/HomeFragment$10;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-virtual {v1}, Lcom/narvii/amino/HomeFragment;->defaultTabIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$10;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$10;->this$0:Lcom/narvii/amino/HomeFragment;

    iget-object v1, v0, Lcom/narvii/amino/HomeFragment;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0}, Lcom/narvii/amino/HomeFragment;->defaultTabIndex()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_0

    .line 653
    :cond_0
    iget v0, p0, Lcom/narvii/amino/HomeFragment$10;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/narvii/amino/HomeFragment$10;->c:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 654
    invoke-static {p0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
