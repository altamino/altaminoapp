.class public Landroidx/appcompat/view/menu/MenuBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/internal/view/SupportMenu;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;,
        Landroidx/appcompat/view/menu/MenuBuilder$Callback;
    }
.end annotation


# static fields
.field private static final ACTION_VIEW_STATES_KEY:Ljava/lang/String; = "android:menu:actionviewstates"

.field private static final EXPANDED_ACTION_VIEW_ID:Ljava/lang/String; = "android:menu:expandedactionview"

.field private static final PRESENTER_KEY:Ljava/lang/String; = "android:menu:presenters"

.field private static final TAG:Ljava/lang/String; = "MenuBuilder"

.field private static final sCategoryToOrder:[I


# instance fields
.field private mActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mDefaultShowAsAction:I

.field private mExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

.field private mGroupDividerEnabled:Z

.field mHeaderIcon:Landroid/graphics/drawable/Drawable;

.field mHeaderTitle:Ljava/lang/CharSequence;

.field mHeaderView:Landroid/view/View;

.field private mIsActionItemsStale:Z

.field private mIsClosing:Z

.field private mIsVisibleItemsStale:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsChangedWhileDispatchPrevented:Z

.field private mNonActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionalIconsVisible:Z

.field private mOverrideVisibleItems:Z

.field private mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/appcompat/view/menu/MenuPresenter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreventDispatchingItemsChanged:Z

.field private mQwertyMode:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mShortcutsVisible:Z

.field private mStructureChangedWhileDispatchPrevented:Z

.field private mTempShortcutItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/appcompat/view/menu/MenuBuilder;->sCategoryToOrder:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 7
    .line 8
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mStructureChangedWhileDispatchPrevented:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsClosing:Z

    .line 17
    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    iput-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 29
    .line 30
    iput-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    .line 32
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mGroupDividerEnabled:Z

    .line 33
    .line 34
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 41
    .line 42
    new-instance p1, Ljava/util/ArrayList;

    .line 43
    .line 44
    .line 45
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 48
    .line 49
    new-instance p1, Ljava/util/ArrayList;

    .line 50
    .line 51
    .line 52
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 55
    const/4 p1, 0x1

    .line 56
    .line 57
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 58
    .line 59
    new-instance v0, Ljava/util/ArrayList;

    .line 60
    .line 61
    .line 62
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    .line 65
    .line 66
    new-instance v0, Ljava/util/ArrayList;

    .line 67
    .line 68
    .line 69
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 72
    .line 73
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->f0(Z)V

    .line 77
    return-void
.end method

.method private static D(I)I
    .locals 3

    .line 1
    .line 2
    const/high16 v0, -0x10000

    .line 3
    and-int/2addr v0, p0

    .line 4
    .line 5
    shr-int/lit8 v0, v0, 0x10

    .line 6
    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    sget-object v1, Landroidx/appcompat/view/menu/MenuBuilder;->sCategoryToOrder:[I

    .line 10
    array-length v2, v1

    .line 11
    .line 12
    if-ge v0, v2, :cond_0

    .line 13
    .line 14
    aget v0, v1, v0

    .line 15
    .line 16
    shl-int/lit8 v0, v0, 0x10

    .line 17
    .line 18
    .line 19
    const v1, 0xffff

    .line 20
    and-int/2addr p0, v1

    .line 21
    or-int/2addr p0, v0

    .line 22
    return p0

    .line 23
    .line 24
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string v0, "order does not contain a valid category."

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p0
.end method

.method private P(IZ)V
    .locals 1

    .line 1
    .line 2
    if-ltz p1, :cond_1

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-lt p1, v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 17
    .line 18
    if-eqz p2, :cond_1

    .line 19
    const/4 p1, 0x1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->M(Z)V

    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method private a0(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->E()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz p5, :cond_0

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 10
    .line 11
    iput-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 12
    .line 13
    iput-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 14
    goto :goto_2

    .line 15
    .line 16
    :cond_0
    if-lez p1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_1
    if-eqz p2, :cond_2

    .line 26
    .line 27
    iput-object p2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 28
    .line 29
    :cond_2
    :goto_0
    if-lez p3, :cond_3

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->w()Landroid/content/Context;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :cond_3
    if-eqz p4, :cond_4

    .line 43
    .line 44
    iput-object p4, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 45
    .line 46
    :cond_4
    :goto_1
    iput-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 47
    :goto_2
    const/4 p1, 0x0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->M(Z)V

    .line 51
    return-void
.end method

.method private f0(Z)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iget p1, p1, Landroid/content/res/Configuration;->keyboard:I

    .line 11
    const/4 v0, 0x1

    .line 12
    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v1}, Landroidx/core/view/ViewConfigurationCompat;->e(Landroid/view/ViewConfiguration;Landroid/content/Context;)Z

    .line 25
    move-result p1

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    .line 31
    :goto_0
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mShortcutsVisible:Z

    .line 32
    return-void
.end method

.method private g(IIIILjava/lang/CharSequence;I)Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 9

    .line 1
    .line 2
    new-instance v8, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 3
    move-object v0, v8

    .line 4
    move-object v1, p0

    .line 5
    move v2, p1

    .line 6
    move v3, p2

    .line 7
    move v4, p3

    .line 8
    move v5, p4

    .line 9
    move-object v6, p5

    .line 10
    move v7, p6

    .line 11
    .line 12
    .line 13
    invoke-direct/range {v0 .. v7}, Landroidx/appcompat/view/menu/MenuItemImpl;-><init>(Landroidx/appcompat/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    .line 14
    return-object v8
.end method

.method private i(Z)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->h0()V

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    check-cast v2, Landroidx/appcompat/view/menu/MenuPresenter;

    .line 37
    .line 38
    if-nez v2, :cond_1

    .line 39
    .line 40
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 44
    goto :goto_0

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-interface {v2, p1}, Landroidx/appcompat/view/menu/MenuPresenter;->d(Z)V

    .line 48
    goto :goto_0

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->g0()V

    .line 52
    return-void
.end method

.method private j(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    const-string v0, "android:menu:presenters"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_3

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    goto :goto_1

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    check-cast v2, Landroidx/appcompat/view/menu/MenuPresenter;

    .line 42
    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 49
    goto :goto_0

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-interface {v2}, Landroidx/appcompat/view/menu/MenuPresenter;->getId()I

    .line 53
    move-result v1

    .line 54
    .line 55
    if-lez v1, :cond_1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    check-cast v1, Landroid/os/Parcelable;

    .line 62
    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    .line 66
    invoke-interface {v2, v1}, Landroidx/appcompat/view/menu/MenuPresenter;->j(Landroid/os/Parcelable;)V

    .line 67
    goto :goto_0

    .line 68
    :cond_3
    :goto_1
    return-void
.end method

.method private k(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

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
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v2

    .line 25
    .line 26
    if-eqz v2, :cond_3

    .line 27
    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    check-cast v3, Landroidx/appcompat/view/menu/MenuPresenter;

    .line 39
    .line 40
    if-nez v3, :cond_2

    .line 41
    .line 42
    iget-object v3, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 46
    goto :goto_0

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-interface {v3}, Landroidx/appcompat/view/menu/MenuPresenter;->getId()I

    .line 50
    move-result v2

    .line 51
    .line 52
    if-lez v2, :cond_1

    .line 53
    .line 54
    .line 55
    invoke-interface {v3}, Landroidx/appcompat/view/menu/MenuPresenter;->c()Landroid/os/Parcelable;

    .line 56
    move-result-object v3

    .line 57
    .line 58
    if-eqz v3, :cond_1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_3
    const-string v1, "android:menu:presenters"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 68
    return-void
.end method

.method private l(Landroidx/appcompat/view/menu/SubMenuBuilder;Landroidx/appcompat/view/menu/MenuPresenter;)Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    return v1

    .line 11
    .line 12
    :cond_0
    if-eqz p2, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/MenuPresenter;->k(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z

    .line 16
    move-result v1

    .line 17
    .line 18
    :cond_1
    iget-object p2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    .line 25
    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    .line 31
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    check-cast v2, Landroidx/appcompat/view/menu/MenuPresenter;

    .line 41
    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_3
    if-nez v1, :cond_2

    .line 51
    .line 52
    .line 53
    invoke-interface {v2, p1}, Landroidx/appcompat/view/menu/MenuPresenter;->k(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z

    .line 54
    move-result v0

    .line 55
    move v1, v0

    .line 56
    goto :goto_0

    .line 57
    :cond_4
    return v1
.end method

.method private static p(Ljava/util/ArrayList;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;I)I"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    :goto_0
    if-ltz v0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    check-cast v1, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->f()I

    .line 18
    move-result v1

    .line 19
    .line 20
    if-gt v1, p1, :cond_0

    .line 21
    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 23
    return v0

    .line 24
    .line 25
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    return p0
.end method


# virtual methods
.method public A()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public B()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->t()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 6
    return-object v0
.end method

.method C()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    return v0
.end method

.method E()Landroid/content/res/Resources;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public F()Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public G()Ljava/util/ArrayList;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 7
    return-object v0

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    move v2, v1

    .line 21
    .line 22
    :goto_0
    if-ge v2, v0, :cond_2

    .line 23
    .line 24
    iget-object v3, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    check-cast v3, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    .line 34
    move-result v4

    .line 35
    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    iget-object v4, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_2
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 47
    const/4 v0, 0x1

    .line 48
    .line 49
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 50
    .line 51
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 52
    return-object v0
.end method

.method public H()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mGroupDividerEnabled:Z

    return v0
.end method

.method I()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mQwertyMode:Z

    return v0
.end method

.method public J()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mShortcutsVisible:Z

    return v0
.end method

.method K(Landroidx/appcompat/view/menu/MenuItemImpl;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    .line 3
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->M(Z)V

    .line 7
    return-void
.end method

.method L(Landroidx/appcompat/view/menu/MenuItemImpl;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    .line 3
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->M(Z)V

    .line 7
    return-void
.end method

.method public M(Z)V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 10
    .line 11
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->i(Z)V

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_1
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mStructureChangedWhileDispatchPrevented:Z

    .line 22
    :cond_2
    :goto_0
    return-void
.end method

.method public N(Landroid/view/MenuItem;I)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->O(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public O(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z
    .locals 6

    .line 1
    .line 2
    check-cast p1, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-eqz p1, :cond_9

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    .line 9
    move-result v1

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    goto :goto_3

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->k()Z

    .line 16
    move-result v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->a()Landroidx/core/view/ActionProvider;

    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x1

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Landroidx/core/view/ActionProvider;->a()Z

    .line 27
    move-result v4

    .line 28
    .line 29
    if-eqz v4, :cond_1

    .line 30
    move v4, v3

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v4, v0

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->j()Z

    .line 36
    move-result v5

    .line 37
    .line 38
    if-eqz v5, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->expandActionView()Z

    .line 42
    move-result p1

    .line 43
    or-int/2addr v1, p1

    .line 44
    .line 45
    if-eqz v1, :cond_8

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->e(Z)V

    .line 49
    goto :goto_2

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    .line 53
    move-result v5

    .line 54
    .line 55
    if-nez v5, :cond_4

    .line 56
    .line 57
    if-eqz v4, :cond_3

    .line 58
    goto :goto_1

    .line 59
    .line 60
    :cond_3
    and-int/lit8 p1, p3, 0x1

    .line 61
    .line 62
    if-nez p1, :cond_8

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->e(Z)V

    .line 66
    goto :goto_2

    .line 67
    .line 68
    :cond_4
    :goto_1
    and-int/lit8 p3, p3, 0x4

    .line 69
    .line 70
    if-nez p3, :cond_5

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->e(Z)V

    .line 74
    .line 75
    .line 76
    :cond_5
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    .line 77
    move-result p3

    .line 78
    .line 79
    if-nez p3, :cond_6

    .line 80
    .line 81
    new-instance p3, Landroidx/appcompat/view/menu/SubMenuBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->w()Landroid/content/Context;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    .line 88
    invoke-direct {p3, v0, p0, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/MenuItemImpl;->x(Landroidx/appcompat/view/menu/SubMenuBuilder;)V

    .line 92
    .line 93
    .line 94
    :cond_6
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    .line 95
    move-result-object p1

    .line 96
    .line 97
    check-cast p1, Landroidx/appcompat/view/menu/SubMenuBuilder;

    .line 98
    .line 99
    if-eqz v4, :cond_7

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, p1}, Landroidx/core/view/ActionProvider;->f(Landroid/view/SubMenu;)V

    .line 103
    .line 104
    .line 105
    :cond_7
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->l(Landroidx/appcompat/view/menu/SubMenuBuilder;Landroidx/appcompat/view/menu/MenuPresenter;)Z

    .line 106
    move-result p1

    .line 107
    or-int/2addr v1, p1

    .line 108
    .line 109
    if-nez v1, :cond_8

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->e(Z)V

    .line 113
    :cond_8
    :goto_2
    return v1

    .line 114
    :cond_9
    :goto_3
    return v0
.end method

.method public Q(Landroidx/appcompat/view/menu/MenuPresenter;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    check-cast v2, Landroidx/appcompat/view/menu/MenuPresenter;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    if-ne v2, p1, :cond_0

    .line 29
    .line 30
    :cond_1
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    return-void
.end method

.method public R(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->v()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    :goto_0
    if-ge v2, v1, :cond_3

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    .line 25
    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    .line 26
    move-result-object v4

    .line 27
    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 32
    move-result v5

    .line 33
    const/4 v6, -0x1

    .line 34
    .line 35
    if-eq v5, v6, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    .line 42
    move-result v4

    .line 43
    .line 44
    if-eqz v4, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    .line 48
    move-result-object v3

    .line 49
    .line 50
    check-cast v3, Landroidx/appcompat/view/menu/SubMenuBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->R(Landroid/os/Bundle;)V

    .line 54
    .line 55
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_3
    const-string v0, "android:menu:expandedactionview"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 62
    move-result p1

    .line 63
    .line 64
    if-lez p1, :cond_4

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    if-eqz p1, :cond_4

    .line 71
    .line 72
    .line 73
    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    .line 74
    :cond_4
    return-void
.end method

.method public S(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->j(Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public T(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    :goto_0
    if-ge v2, v0, :cond_3

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 12
    move-result-object v3

    .line 13
    .line 14
    .line 15
    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    .line 16
    move-result-object v4

    .line 17
    .line 18
    if-eqz v4, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 22
    move-result v5

    .line 23
    const/4 v6, -0x1

    .line 24
    .line 25
    if-eq v5, v6, :cond_1

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    new-instance v1, Landroid/util/SparseArray;

    .line 30
    .line 31
    .line 32
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {v4, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v3}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    .line 39
    move-result v4

    .line 40
    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    const-string v4, "android:menu:expandedactionview"

    .line 44
    .line 45
    .line 46
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    .line 47
    move-result v5

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    .line 54
    move-result v4

    .line 55
    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    .line 59
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    .line 60
    move-result-object v3

    .line 61
    .line 62
    check-cast v3, Landroidx/appcompat/view/menu/SubMenuBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->T(Landroid/os/Bundle;)V

    .line 66
    .line 67
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 68
    goto :goto_0

    .line 69
    .line 70
    :cond_3
    if-eqz v1, :cond_4

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->v()Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 78
    :cond_4
    return-void
.end method

.method public U(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->k(Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public V(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    return-void
.end method

.method public W(I)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    return-object p0
.end method

.method X(Landroid/view/MenuItem;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->h0()V

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    .line 17
    :goto_0
    if-ge v3, v1, :cond_4

    .line 18
    .line 19
    iget-object v4, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v4

    .line 24
    .line 25
    check-cast v4, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    .line 29
    move-result v5

    .line 30
    .line 31
    if-ne v5, v0, :cond_3

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->m()Z

    .line 35
    move-result v5

    .line 36
    .line 37
    if-nez v5, :cond_0

    .line 38
    goto :goto_2

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    .line 42
    move-result v5

    .line 43
    .line 44
    if-nez v5, :cond_1

    .line 45
    goto :goto_2

    .line 46
    .line 47
    :cond_1
    if-ne v4, p1, :cond_2

    .line 48
    const/4 v5, 0x1

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v5, v2

    .line 51
    .line 52
    .line 53
    :goto_1
    invoke-virtual {v4, v5}, Landroidx/appcompat/view/menu/MenuItemImpl;->s(Z)V

    .line 54
    .line 55
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 56
    goto :goto_0

    .line 57
    .line 58
    .line 59
    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->g0()V

    .line 60
    return-void
.end method

.method protected Y(I)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 6

    .line 1
    const/4 v1, 0x0

    .line 2
    const/4 v2, 0x0

    .line 3
    const/4 v4, 0x0

    .line 4
    const/4 v5, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move v3, p1

    .line 7
    .line 8
    .line 9
    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/MenuBuilder;->a0(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 10
    return-object p0
.end method

.method protected Z(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 6

    .line 1
    const/4 v1, 0x0

    .line 2
    const/4 v2, 0x0

    .line 3
    const/4 v3, 0x0

    .line 4
    const/4 v5, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v4, p1

    .line 7
    .line 8
    .line 9
    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/MenuBuilder;->a0(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 10
    return-object p0
.end method

.method protected a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-static {p3}, Landroidx/appcompat/view/menu/MenuBuilder;->D(I)I

    .line 4
    move-result v7

    .line 5
    .line 6
    iget v6, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 7
    move-object v0, p0

    .line 8
    move v1, p1

    .line 9
    move v2, p2

    .line 10
    move v3, p3

    .line 11
    move v4, v7

    .line 12
    move-object v5, p4

    .line 13
    .line 14
    .line 15
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/view/menu/MenuBuilder;->g(IIIILjava/lang/CharSequence;I)Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    iget-object p2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 19
    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/MenuItemImpl;->v(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 24
    .line 25
    :cond_0
    iget-object p2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    invoke-static {p2, v7}, Landroidx/appcompat/view/menu/MenuBuilder;->p(Ljava/util/ArrayList;I)I

    .line 29
    move-result p3

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 33
    const/4 p2, 0x1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->M(Z)V

    .line 37
    return-object p1
.end method

.method public add(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 4
    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/MenuBuilder;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/MenuBuilder;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p4, p5, p6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    .line 11
    move-result-object p4

    .line 12
    .line 13
    if-eqz p4, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 17
    move-result v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v2, v1

    .line 20
    .line 21
    :goto_0
    and-int/lit8 p7, p7, 0x1

    .line 22
    .line 23
    if-nez p7, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->removeGroup(I)V

    .line 27
    .line 28
    :cond_1
    :goto_1
    if-ge v1, v2, :cond_4

    .line 29
    .line 30
    .line 31
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object p7

    .line 33
    .line 34
    check-cast p7, Landroid/content/pm/ResolveInfo;

    .line 35
    .line 36
    new-instance v3, Landroid/content/Intent;

    .line 37
    .line 38
    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    .line 39
    .line 40
    if-gez v4, :cond_2

    .line 41
    move-object v4, p6

    .line 42
    goto :goto_2

    .line 43
    .line 44
    :cond_2
    aget-object v4, p5, v4

    .line 45
    .line 46
    .line 47
    :goto_2
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 48
    .line 49
    new-instance v4, Landroid/content/ComponentName;

    .line 50
    .line 51
    iget-object v5, p7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 52
    .line 53
    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 54
    .line 55
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    invoke-direct {v4, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 67
    move-result-object v4

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p1, p2, p3, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 71
    move-result-object v4

    .line 72
    .line 73
    .line 74
    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 75
    move-result-object v5

    .line 76
    .line 77
    .line 78
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 79
    move-result-object v4

    .line 80
    .line 81
    .line 82
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 83
    move-result-object v3

    .line 84
    .line 85
    if-eqz p8, :cond_3

    .line 86
    .line 87
    iget p7, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    .line 88
    .line 89
    if-ltz p7, :cond_3

    .line 90
    .line 91
    aput-object v3, p8, p7

    .line 92
    .line 93
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 94
    goto :goto_1

    .line 95
    :cond_4
    return v2
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 6
    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/MenuBuilder;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 4
    new-instance p2, Landroidx/appcompat/view/menu/SubMenuBuilder;

    iget-object p3, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3, p0, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 5
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/MenuItemImpl;->x(Landroidx/appcompat/view/menu/SubMenuBuilder;)V

    return-object p2
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroidx/appcompat/view/menu/MenuPresenter;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->c(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 6
    return-void
.end method

.method protected b0(I)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 6

    .line 1
    const/4 v2, 0x0

    .line 2
    const/4 v3, 0x0

    .line 3
    const/4 v4, 0x0

    .line 4
    const/4 v5, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move v1, p1

    .line 7
    .line 8
    .line 9
    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/MenuBuilder;->a0(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 10
    return-object p0
.end method

.method public c(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, p2, p0}, Landroidx/appcompat/view/menu/MenuPresenter;->g(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 14
    const/4 p1, 0x1

    .line 15
    .line 16
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 17
    return-void
.end method

.method protected c0(Ljava/lang/CharSequence;)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 6

    .line 1
    const/4 v1, 0x0

    .line 2
    const/4 v3, 0x0

    .line 3
    const/4 v4, 0x0

    .line 4
    const/4 v5, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v2, p1

    .line 7
    .line 8
    .line 9
    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/MenuBuilder;->a0(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 10
    return-object p0
.end method

.method public clear()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->f(Landroidx/appcompat/view/menu/MenuItemImpl;)Z

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 13
    const/4 v0, 0x1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->M(Z)V

    .line 17
    return-void
.end method

.method public clearHeader()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 6
    .line 7
    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->M(Z)V

    .line 12
    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->e(Z)V

    .line 5
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p0}, Landroidx/appcompat/view/menu/MenuBuilder$Callback;->b(Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 8
    :cond_0
    return-void
.end method

.method protected d0(Landroid/view/View;)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 6

    .line 1
    const/4 v1, 0x0

    .line 2
    const/4 v2, 0x0

    .line 3
    const/4 v3, 0x0

    .line 4
    const/4 v4, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v5, p1

    .line 7
    .line 8
    .line 9
    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/MenuBuilder;->a0(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 10
    return-object p0
.end method

.method public final e(Z)V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsClosing:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    .line 8
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsClosing:Z

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    check-cast v2, Landroidx/appcompat/view/menu/MenuPresenter;

    .line 33
    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 40
    goto :goto_0

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-interface {v2, p0, p1}, Landroidx/appcompat/view/menu/MenuPresenter;->a(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 p1, 0x0

    .line 46
    .line 47
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsClosing:Z

    .line 48
    return-void
.end method

.method public e0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mOverrideVisibleItems:Z

    return-void
.end method

.method public f(Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-nez v0, :cond_4

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 12
    .line 13
    if-eq v0, p1, :cond_0

    .line 14
    goto :goto_1

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->h0()V

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v2

    .line 28
    .line 29
    if-eqz v2, :cond_3

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 39
    move-result-object v3

    .line 40
    .line 41
    check-cast v3, Landroidx/appcompat/view/menu/MenuPresenter;

    .line 42
    .line 43
    if-nez v3, :cond_2

    .line 44
    .line 45
    iget-object v3, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 49
    goto :goto_0

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-interface {v3, p0, p1}, Landroidx/appcompat/view/menu/MenuPresenter;->f(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z

    .line 53
    move-result v1

    .line 54
    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    .line 58
    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->g0()V

    .line 59
    .line 60
    if-eqz v1, :cond_4

    .line 61
    const/4 p1, 0x0

    .line 62
    .line 63
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 64
    :cond_4
    :goto_1
    return v1
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    :goto_0
    if-ge v1, v0, :cond_2

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    check-cast v2, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    .line 19
    move-result v3

    .line 20
    .line 21
    if-ne v3, p1, :cond_0

    .line 22
    return-object v2

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    .line 26
    move-result v3

    .line 27
    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    .line 35
    invoke-interface {v2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    return-object v2

    .line 40
    .line 41
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/4 p1, 0x0

    .line 44
    return-object p1
.end method

.method public g0()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 4
    .line 5
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 10
    .line 11
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mStructureChangedWhileDispatchPrevented:Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->M(Z)V

    .line 15
    :cond_0
    return-void
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Landroid/view/MenuItem;

    .line 9
    return-object p1
.end method

.method h(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroidx/appcompat/view/menu/MenuBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder$Callback;->a(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method public h0()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mStructureChangedWhileDispatchPrevented:Z

    :cond_0
    return-void
.end method

.method public hasVisibleItems()Z
    .locals 5

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mOverrideVisibleItems:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    .line 14
    :goto_0
    if-ge v3, v0, :cond_2

    .line 15
    .line 16
    iget-object v4, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v4

    .line 21
    .line 22
    check-cast v4, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    .line 26
    move-result v4

    .line 27
    .line 28
    if-eqz v4, :cond_1

    .line 29
    return v1

    .line 30
    .line 31
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    return v2
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->r(ILandroid/view/KeyEvent;)Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method public m(Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    return v1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->h0()V

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v2

    .line 24
    .line 25
    if-eqz v2, :cond_3

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    check-cast v3, Landroidx/appcompat/view/menu/MenuPresenter;

    .line 38
    .line 39
    if-nez v3, :cond_2

    .line 40
    .line 41
    iget-object v3, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 45
    goto :goto_0

    .line 46
    .line 47
    .line 48
    :cond_2
    invoke-interface {v3, p0, p1}, Landroidx/appcompat/view/menu/MenuPresenter;->b(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z

    .line 49
    move-result v1

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    .line 54
    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->g0()V

    .line 55
    .line 56
    if-eqz v1, :cond_4

    .line 57
    .line 58
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 59
    :cond_4
    return v1
.end method

.method public n(I)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->o(II)I

    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public o(II)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-gez p2, :cond_0

    .line 7
    const/4 p2, 0x0

    .line 8
    .line 9
    :cond_0
    :goto_0
    if-ge p2, v0, :cond_2

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    check-cast v1, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    .line 21
    move-result v1

    .line 22
    .line 23
    if-ne v1, p1, :cond_1

    .line 24
    return p2

    .line 25
    .line 26
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const/4 p1, -0x1

    .line 29
    return p1
.end method

.method public performIdentifierAction(II)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->N(Landroid/view/MenuItem;I)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->r(ILandroid/view/KeyEvent;)Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p3}, Landroidx/appcompat/view/menu/MenuBuilder;->N(Landroid/view/MenuItem;I)Z

    .line 10
    move-result p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    .line 14
    :goto_0
    and-int/lit8 p2, p3, 0x2

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    const/4 p2, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->e(Z)V

    .line 21
    :cond_1
    return p1
.end method

.method public q(I)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    :goto_0
    if-ge v1, v0, :cond_1

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    check-cast v2, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    .line 19
    move-result v2

    .line 20
    .line 21
    if-ne v2, p1, :cond_0

    .line 22
    return v1

    .line 23
    .line 24
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p1, -0x1

    .line 27
    return p1
.end method

.method r(ILandroid/view/KeyEvent;)Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->s(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    return-object v2

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    .line 20
    move-result v1

    .line 21
    .line 22
    new-instance v3, Landroid/view/KeyCharacterMap$KeyData;

    .line 23
    .line 24
    .line 25
    invoke-direct {v3}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 32
    move-result p2

    .line 33
    const/4 v4, 0x1

    .line 34
    const/4 v5, 0x0

    .line 35
    .line 36
    if-ne p2, v4, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    check-cast p1, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 43
    return-object p1

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->I()Z

    .line 47
    move-result v4

    .line 48
    move v6, v5

    .line 49
    .line 50
    :goto_0
    if-ge v6, p2, :cond_7

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    move-result-object v7

    .line 55
    .line 56
    check-cast v7, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 57
    .line 58
    if-eqz v4, :cond_2

    .line 59
    .line 60
    .line 61
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    .line 62
    move-result v8

    .line 63
    goto :goto_1

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->getNumericShortcut()C

    .line 67
    move-result v8

    .line 68
    .line 69
    :goto_1
    iget-object v9, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    .line 70
    .line 71
    aget-char v10, v9, v5

    .line 72
    .line 73
    if-ne v8, v10, :cond_3

    .line 74
    .line 75
    and-int/lit8 v10, v1, 0x2

    .line 76
    .line 77
    if-eqz v10, :cond_5

    .line 78
    :cond_3
    const/4 v10, 0x2

    .line 79
    .line 80
    aget-char v9, v9, v10

    .line 81
    .line 82
    if-ne v8, v9, :cond_4

    .line 83
    .line 84
    and-int/lit8 v9, v1, 0x2

    .line 85
    .line 86
    if-nez v9, :cond_5

    .line 87
    .line 88
    :cond_4
    if-eqz v4, :cond_6

    .line 89
    .line 90
    const/16 v9, 0x8

    .line 91
    .line 92
    if-ne v8, v9, :cond_6

    .line 93
    .line 94
    const/16 v8, 0x43

    .line 95
    .line 96
    if-ne p1, v8, :cond_6

    .line 97
    :cond_5
    return-object v7

    .line 98
    .line 99
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 100
    goto :goto_0

    .line 101
    :cond_7
    return-object v2
.end method

.method public removeGroup(I)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->n(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-ltz v0, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result v1

    .line 13
    sub-int/2addr v1, v0

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    .line 17
    :goto_0
    add-int/lit8 v4, v3, 0x1

    .line 18
    .line 19
    if-ge v3, v1, :cond_0

    .line 20
    .line 21
    iget-object v3, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    check-cast v3, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    .line 31
    move-result v3

    .line 32
    .line 33
    if-ne v3, p1, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v0, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->P(IZ)V

    .line 37
    move v3, v4

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p1, 0x1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->M(Z)V

    .line 43
    :cond_1
    return-void
.end method

.method public removeItem(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->q(I)I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->P(IZ)V

    .line 9
    return-void
.end method

.method s(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->I()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getModifiers()I

    .line 8
    move-result v1

    .line 9
    .line 10
    new-instance v2, Landroid/view/KeyCharacterMap$KeyData;

    .line 11
    .line 12
    .line 13
    invoke-direct {v2}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3, v2}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 17
    move-result v3

    .line 18
    .line 19
    const/16 v4, 0x43

    .line 20
    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    if-eq p2, v4, :cond_0

    .line 24
    return-void

    .line 25
    .line 26
    :cond_0
    iget-object v3, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 30
    move-result v3

    .line 31
    const/4 v5, 0x0

    .line 32
    move v6, v5

    .line 33
    .line 34
    :goto_0
    if-ge v6, v3, :cond_6

    .line 35
    .line 36
    iget-object v7, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v7

    .line 41
    .line 42
    check-cast v7, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    .line 46
    move-result v8

    .line 47
    .line 48
    if-eqz v8, :cond_1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    .line 52
    move-result-object v8

    .line 53
    .line 54
    check-cast v8, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v8, p1, p2, p3}, Landroidx/appcompat/view/menu/MenuBuilder;->s(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 58
    .line 59
    :cond_1
    if-eqz v0, :cond_2

    .line 60
    .line 61
    .line 62
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    .line 63
    move-result v8

    .line 64
    goto :goto_1

    .line 65
    .line 66
    .line 67
    :cond_2
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->getNumericShortcut()C

    .line 68
    move-result v8

    .line 69
    .line 70
    :goto_1
    if-eqz v0, :cond_3

    .line 71
    .line 72
    .line 73
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->getAlphabeticModifiers()I

    .line 74
    move-result v9

    .line 75
    goto :goto_2

    .line 76
    .line 77
    .line 78
    :cond_3
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->getNumericModifiers()I

    .line 79
    move-result v9

    .line 80
    .line 81
    .line 82
    :goto_2
    const v10, 0x1100f

    .line 83
    .line 84
    and-int v11, v1, v10

    .line 85
    and-int/2addr v9, v10

    .line 86
    .line 87
    if-ne v11, v9, :cond_5

    .line 88
    .line 89
    if-eqz v8, :cond_5

    .line 90
    .line 91
    iget-object v9, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    .line 92
    .line 93
    aget-char v10, v9, v5

    .line 94
    .line 95
    if-eq v8, v10, :cond_4

    .line 96
    const/4 v10, 0x2

    .line 97
    .line 98
    aget-char v9, v9, v10

    .line 99
    .line 100
    if-eq v8, v9, :cond_4

    .line 101
    .line 102
    if-eqz v0, :cond_5

    .line 103
    .line 104
    const/16 v9, 0x8

    .line 105
    .line 106
    if-ne v8, v9, :cond_5

    .line 107
    .line 108
    if-ne p2, v4, :cond_5

    .line 109
    .line 110
    .line 111
    :cond_4
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    .line 112
    move-result v8

    .line 113
    .line 114
    if-eqz v8, :cond_5

    .line 115
    .line 116
    .line 117
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 120
    goto :goto_0

    .line 121
    :cond_6
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    :goto_0
    if-ge v1, v0, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    check-cast v2, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    .line 21
    move-result v3

    .line 22
    .line 23
    if-ne v3, p1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p3}, Landroidx/appcompat/view/menu/MenuItemImpl;->t(Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p2}, Landroidx/appcompat/view/menu/MenuItemImpl;->setCheckable(Z)Landroid/view/MenuItem;

    .line 30
    .line 31
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-void
.end method

.method public setGroupDividerEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mGroupDividerEnabled:Z

    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    :goto_0
    if-ge v1, v0, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    check-cast v2, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    .line 21
    move-result v3

    .line 22
    .line 23
    if-ne v3, p1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p2}, Landroidx/appcompat/view/menu/MenuItemImpl;->setEnabled(Z)Landroid/view/MenuItem;

    .line 27
    .line 28
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    const/4 v3, 0x1

    .line 10
    .line 11
    if-ge v1, v0, :cond_1

    .line 12
    .line 13
    iget-object v4, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v4

    .line 18
    .line 19
    check-cast v4, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    .line 23
    move-result v5

    .line 24
    .line 25
    if-ne v5, p1, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, p2}, Landroidx/appcompat/view/menu/MenuItemImpl;->y(Z)Z

    .line 29
    move-result v4

    .line 30
    .line 31
    if-eqz v4, :cond_0

    .line 32
    move v2, v3

    .line 33
    .line 34
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_1
    if-eqz v2, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->M(Z)V

    .line 41
    :cond_2
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mQwertyMode:Z

    .line 3
    const/4 p1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->M(Z)V

    .line 7
    return-void
.end method

.method public size()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public t()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->G()Ljava/util/ArrayList;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    move v3, v2

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v4

    .line 22
    .line 23
    if-eqz v4, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v4

    .line 28
    .line 29
    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 33
    move-result-object v5

    .line 34
    .line 35
    check-cast v5, Landroidx/appcompat/view/menu/MenuPresenter;

    .line 36
    .line 37
    if-nez v5, :cond_1

    .line 38
    .line 39
    iget-object v5, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 43
    goto :goto_0

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-interface {v5}, Landroidx/appcompat/view/menu/MenuPresenter;->e()Z

    .line 47
    move-result v4

    .line 48
    or-int/2addr v3, v4

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_2
    if-eqz v3, :cond_4

    .line 52
    .line 53
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 57
    .line 58
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 65
    move-result v1

    .line 66
    move v3, v2

    .line 67
    .line 68
    :goto_1
    if-ge v3, v1, :cond_5

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object v4

    .line 73
    .line 74
    check-cast v4, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->l()Z

    .line 78
    move-result v5

    .line 79
    .line 80
    if-eqz v5, :cond_3

    .line 81
    .line 82
    iget-object v5, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    goto :goto_2

    .line 87
    .line 88
    :cond_3
    iget-object v5, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 94
    goto :goto_1

    .line 95
    .line 96
    :cond_4
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 100
    .line 101
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 105
    .line 106
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->G()Ljava/util/ArrayList;

    .line 110
    move-result-object v1

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 114
    .line 115
    :cond_5
    iput-boolean v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 116
    return-void
.end method

.method public u()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->t()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    .line 6
    return-object v0
.end method

.method protected v()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "android:menu:actionviewstates"

    return-object v0
.end method

.method public w()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public x()Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public y()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public z()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    return-object v0
.end method
