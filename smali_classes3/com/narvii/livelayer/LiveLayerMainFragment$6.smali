.class Lcom/narvii/livelayer/LiveLayerMainFragment$6;
.super Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;
.source "LiveLayerMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/LiveLayerMainFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

.field final synthetic val$data:Lcom/narvii/livelayer/LiveLayerMainData;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerMainFragment;Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerMainData;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$6;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    iput-object p3, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$6;->val$data:Lcom/narvii/livelayer/LiveLayerMainData;

    invoke-direct {p0, p2}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$6;->val$data:Lcom/narvii/livelayer/LiveLayerMainData;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerMainData;->onlineCategoryList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 365
    invoke-super {p0}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->getCount()I

    move-result v0

    return v0

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$6;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerMainFragment;->allOnline:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->isRequestFinished()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 370
    :cond_1
    invoke-super {p0}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method protected gotoFragment(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;",
            ">;)V"
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$6;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$6;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 389
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 393
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 391
    invoke-virtual {p1}, Ljava/lang/InstantiationException;->printStackTrace()V

    :goto_0
    move-object p1, v0

    .line 395
    :goto_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "Source"

    const-string v3, "Live Layer"

    .line 396
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-virtual {p1, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 398
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$6;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    invoke-static {v1}, Lcom/narvii/livelayer/LiveLayerMainFragment;->access$100(Lcom/narvii/livelayer/LiveLayerMainFragment;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/livelayer/BackgroundHelper;->saveWithDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 399
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$6;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 400
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$6;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0904ba

    invoke-virtual {v1, v2, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 403
    :try_start_1
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$6;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :catch_2
    return-void
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
