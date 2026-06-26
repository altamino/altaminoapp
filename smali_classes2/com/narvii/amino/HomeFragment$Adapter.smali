.class Lcom/narvii/amino/HomeFragment$Adapter;
.super Lcom/narvii/app/NVScrollablePagerAdapter;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/amino/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/HomeFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/amino/HomeFragment;Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .line 664
    iput-object p1, p0, Lcom/narvii/amino/HomeFragment$Adapter;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 665
    invoke-direct {p0, p2, p3}, Lcom/narvii/app/NVScrollablePagerAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroid/support/v4/app/Fragment;
    .locals 6

    .line 670
    invoke-super {p0, p1}, Lcom/narvii/app/NVScrollablePagerAdapter;->createFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 671
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    if-eqz v1, :cond_9

    .line 672
    move-object v1, v0

    check-cast v1, Lcom/narvii/app/NVFragment;

    .line 673
    new-instance v2, Lcom/narvii/services/ServiceManager;

    invoke-direct {v2, v1}, Lcom/narvii/services/ServiceManager;-><init>(Lcom/narvii/app/NVContext;)V

    .line 674
    new-instance v3, Lcom/narvii/services/ApiServiceProvider;

    invoke-direct {v3}, Lcom/narvii/services/ApiServiceProvider;-><init>()V

    const-string v4, "api"

    invoke-virtual {v2, v4, v3}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 675
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->setEmbedServiceManager(Lcom/narvii/services/ServiceManager;)V

    .line 676
    instance-of v2, v1, Lcom/narvii/list/NVListFragment;

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 677
    check-cast v1, Lcom/narvii/list/NVListFragment;

    invoke-virtual {v1, v3}, Lcom/narvii/list/NVListFragment;->setOverScrollMode(I)V

    .line 678
    invoke-virtual {v1, v4}, Lcom/narvii/list/NVListFragment;->setSwipeRefreshEnabled(Z)V

    goto :goto_0

    .line 679
    :cond_0
    instance-of v2, v1, Lcom/narvii/paging/NVRecyclerViewFragment;

    if-eqz v2, :cond_1

    .line 680
    check-cast v1, Lcom/narvii/paging/NVRecyclerViewFragment;

    invoke-virtual {v1, v3}, Lcom/narvii/paging/NVRecyclerViewFragment;->setOverScrollMode(I)V

    .line 681
    invoke-virtual {v1, v4}, Lcom/narvii/paging/NVRecyclerViewFragment;->setSwipeRefreshEnabled(Z)V

    .line 684
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/narvii/amino/HomeFragment$Adapter;->this$0:Lcom/narvii/amino/HomeFragment;

    iget-object v1, v1, Lcom/narvii/amino/HomeFragment;->tabs:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    iget-object v1, p0, Lcom/narvii/amino/HomeFragment$Adapter;->this$0:Lcom/narvii/amino/HomeFragment;

    iget-object v1, v1, Lcom/narvii/amino/HomeFragment;->tabs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;

    goto :goto_1

    :cond_2
    move-object v1, v2

    .line 685
    :goto_1
    iget-object v3, p0, Lcom/narvii/amino/HomeFragment$Adapter;->this$0:Lcom/narvii/amino/HomeFragment;

    iget-object v3, v3, Lcom/narvii/amino/HomeFragment;->homePages:Ljava/util/List;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_3

    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$Adapter;->this$0:Lcom/narvii/amino/HomeFragment;

    iget-object v2, v2, Lcom/narvii/amino/HomeFragment;->homePages:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/narvii/modulization/page/Page;

    :cond_3
    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    .line 687
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "home tab ["

    .line 688
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] created: "

    .line 689
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;->clazz:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    iget-object v2, v1, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;->args:Landroid/os/Bundle;

    if-eqz v2, :cond_7

    const-string v2, " ["

    .line 691
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    iget-object v2, v1, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;->args:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "_"

    .line 694
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_5

    const-string v5, ", "

    .line 697
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    const/4 v4, 0x1

    .line 701
    :goto_3
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x3d

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 702
    iget-object v5, v1, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;->args:Landroid/os/Bundle;

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    const-string v1, "]"

    .line 704
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    :cond_7
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    goto :goto_4

    .line 708
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "home tab "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " created"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    :cond_9
    :goto_4
    return-object v0
.end method
