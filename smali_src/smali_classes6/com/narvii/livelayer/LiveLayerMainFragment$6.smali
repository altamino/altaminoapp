.class Lcom/narvii/livelayer/LiveLayerMainFragment$6;
.super Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$6;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$6;->val$data:Lcom/narvii/livelayer/LiveLayerMainData;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$6;->val$data:Lcom/narvii/livelayer/LiveLayerMainData;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerMainData;->onlineCategoryList:Ljava/util/List;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->getCount()I

    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$6;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerMainFragment;->allOnline:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->isRequestFinished()Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    const/4 v0, 0x0

    .line 27
    return v0

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-super {p0}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->getCount()I

    .line 31
    move-result v0

    .line 32
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$6;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$6;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    return-void

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Landroidx/fragment/app/Fragment;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_3

    .line 27
    :catch_0
    move-exception p1

    .line 28
    goto :goto_0

    .line 29
    :catch_1
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    goto :goto_2

    .line 35
    .line 36
    .line 37
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    :goto_2
    move-object p1, v0

    .line 39
    .line 40
    :goto_3
    new-instance v1, Landroid/os/Bundle;

    .line 41
    .line 42
    .line 43
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 44
    .line 45
    const-string v2, "Source"

    .line 46
    .line 47
    const-string v3, "Live Layer"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 54
    .line 55
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$6;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    .line 56
    .line 57
    .line 58
    invoke-static {v1}, Lcom/narvii/livelayer/LiveLayerMainFragment;->t(Lcom/narvii/livelayer/LiveLayerMainFragment;)Landroid/graphics/drawable/Drawable;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    .line 62
    invoke-static {v1}, Lcom/narvii/livelayer/BackgroundHelper;->saveWithDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    .line 64
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$6;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$6;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->r(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    .line 81
    const v2, 0x7f0a05ff

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2, p1}, Landroidx/fragment/app/FragmentTransaction;->b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 93
    .line 94
    :try_start_1
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$6;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->i0()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 102
    :catch_2
    return-void
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
