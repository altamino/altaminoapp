.class public abstract Lcom/narvii/app/NVScrollableTabFragment;
.super Lcom/narvii/app/NVBaseScrollableTabFragment;
.source "NVScrollableTabFragment.java"


# static fields
.field private static final MAX_TABS:I = 0x8


# instance fields
.field private positionToIndexMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private realPositions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;-><init>()V

    .line 20
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/NVScrollableTabFragment;->realPositions:Landroid/util/SparseArray;

    .line 21
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/NVScrollableTabFragment;->positionToIndexMap:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method protected createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;
    .locals 11

    .line 25
    iget-object v0, p0, Lcom/narvii/app/NVScrollableTabFragment;->realPositions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 26
    iget-object v0, p0, Lcom/narvii/app/NVScrollableTabFragment;->positionToIndexMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    const-string v2, "_"

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const/4 v1, 0x7

    :goto_0
    if-ltz v1, :cond_5

    .line 31
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVScrollableTabFragment;->getTabLabel(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 33
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVScrollableTabFragment;->getFragment(I)Ljava/lang/Class;

    move-result-object v8

    .line 34
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVScrollableTabFragment;->getBundles(I)Landroid/os/Bundle;

    move-result-object v9

    .line 35
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVScrollableTabFragment;->getIconDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v6, v4}, Lcom/narvii/app/NVScrollableTabFragment;->getTabView(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    .line 37
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVScrollableTabFragment;->getIconDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v1, v6, v4}, Lcom/narvii/app/NVScrollableTabFragment;->getTabView(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v4

    :cond_0
    move-object v7, v4

    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 40
    new-instance v10, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v4, p0, Lcom/narvii/app/NVScrollableTabFragment;->realPositions:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    iget-object v4, p0, Lcom/narvii/app/NVScrollableTabFragment;->positionToIndexMap:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const/16 v4, 0x8

    if-ge v3, v4, :cond_5

    .line 49
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVScrollableTabFragment;->getTabLabel(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 51
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVScrollableTabFragment;->getFragment(I)Ljava/lang/Class;

    move-result-object v9

    .line 52
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVScrollableTabFragment;->getBundles(I)Landroid/os/Bundle;

    move-result-object v10

    .line 53
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVScrollableTabFragment;->getIconDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v7, v4}, Lcom/narvii/app/NVScrollableTabFragment;->getTabView(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_3

    .line 55
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVScrollableTabFragment;->getIconDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v3, v7, v4}, Lcom/narvii/app/NVScrollableTabFragment;->getTabView(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v4

    :cond_3
    move-object v8, v4

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 58
    new-instance v4, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v4, p0, Lcom/narvii/app/NVScrollableTabFragment;->realPositions:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    iget-object v4, p0, Lcom/narvii/app/NVScrollableTabFragment;->positionToIndexMap:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 66
    :cond_5
    new-instance v1, Lcom/narvii/app/NVScrollableTabFragment$1;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/narvii/app/NVScrollableTabFragment$1;-><init>(Lcom/narvii/app/NVScrollableTabFragment;Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V

    .line 75
    invoke-virtual {v1, v0}, Lcom/narvii/app/NVScrollablePagerAdapter;->setTabs(Ljava/util/List;)V

    return-object v1
.end method

.method protected getBundles(I)Landroid/os/Bundle;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract getFragment(I)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/app/NVFragment;",
            ">;"
        }
    .end annotation
.end method

.method protected getIconDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getIndexOfRealPosition(I)I
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/narvii/app/NVScrollableTabFragment;->positionToIndexMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 99
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getRealPositionOfIndex(I)I
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/narvii/app/NVScrollableTabFragment;->realPositions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 91
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected abstract getTabLabel(I)Ljava/lang/String;
.end method

.method protected getTabView(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getTabView(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected onInstantiateItem(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
