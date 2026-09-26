.class public abstract Landroidx/fragment/app/FragmentManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/fragment/app/FragmentResultOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;,
        Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;,
        Landroidx/fragment/app/FragmentManager$ClearBackStackState;,
        Landroidx/fragment/app/FragmentManager$SaveBackStackState;,
        Landroidx/fragment/app/FragmentManager$RestoreBackStackState;,
        Landroidx/fragment/app/FragmentManager$PopBackStackState;,
        Landroidx/fragment/app/FragmentManager$OpGenerator;,
        Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;,
        Landroidx/fragment/app/FragmentManager$LifecycleAwareResultListener;,
        Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;,
        Landroidx/fragment/app/FragmentManager$BackStackEntry;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final EXTRA_CREATED_FILLIN_INTENT:Ljava/lang/String; = "androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE"

.field static final FRAGMENT_MANAGER_STATE_TAG:Ljava/lang/String; = "state"

.field static final FRAGMENT_NAME_PREFIX:Ljava/lang/String; = "fragment_"

.field static final FRAGMENT_STATE_TAG:Ljava/lang/String; = "state"

.field public static final POP_BACK_STACK_INCLUSIVE:I = 0x1

.field static final RESULT_NAME_PREFIX:Ljava/lang/String; = "result_"

.field static final SAVED_STATE_TAG:Ljava/lang/String; = "android:support:fragments"

.field public static final TAG:Ljava/lang/String; = "FragmentManager"
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation
.end field


# instance fields
.field mBackStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mBackStackChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mBackStackIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mBackStackStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/BackStackState;",
            ">;"
        }
    .end annotation
.end field

.field private mContainer:Landroidx/fragment/app/FragmentContainer;

.field private mCreatedMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mCurState:I

.field private mDefaultSpecialEffectsControllerFactory:Landroidx/fragment/app/SpecialEffectsControllerFactory;

.field private mDestroyed:Z

.field private mExecCommit:Ljava/lang/Runnable;

.field private mExecutingActions:Z

.field private mFragmentFactory:Landroidx/fragment/app/FragmentFactory;

.field private final mFragmentStore:Landroidx/fragment/app/FragmentStore;

.field private mHavePendingDeferredStart:Z

.field private mHost:Landroidx/fragment/app/FragmentHostCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/fragment/app/FragmentHostCallback<",
            "*>;"
        }
    .end annotation
.end field

.field private mHostFragmentFactory:Landroidx/fragment/app/FragmentFactory;

.field mLaunchedFragments:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutInflaterFactory:Landroidx/fragment/app/FragmentLayoutInflaterFactory;

.field private final mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

.field private final mMenuProvider:Landroidx/core/view/MenuProvider;

.field private mNeedMenuInvalidate:Z

.field private mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

.field private final mOnAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/fragment/app/FragmentOnAttachListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

.field private mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

.field private final mOnConfigurationChangedListener:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnMultiWindowModeChangedListener:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Landroidx/core/app/MultiWindowModeChangedInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnPictureInPictureModeChangedListener:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Landroidx/core/app/PictureInPictureModeChangedInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnTrimMemoryListener:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mParent:Landroidx/fragment/app/Fragment;

.field private final mPendingActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/FragmentManager$OpGenerator;",
            ">;"
        }
    .end annotation
.end field

.field mPrimaryNav:Landroidx/fragment/app/Fragment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mRequestPermissions:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mResultListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/FragmentManager$LifecycleAwareResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mSpecialEffectsControllerFactory:Landroidx/fragment/app/SpecialEffectsControllerFactory;

.field private mStartActivityForResult:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mStartIntentSenderForResult:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroidx/activity/result/IntentSenderRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mStateSaved:Z

.field private mStopped:Z

.field private mStrictModePolicy:Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

.field private mTmpAddedFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpIsPop:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    .line 11
    .line 12
    new-instance v0, Landroidx/fragment/app/FragmentStore;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Landroidx/fragment/app/FragmentStore;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 18
    .line 19
    new-instance v0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentLayoutInflaterFactory;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 23
    .line 24
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLayoutInflaterFactory:Landroidx/fragment/app/FragmentLayoutInflaterFactory;

    .line 25
    .line 26
    new-instance v0, Landroidx/fragment/app/FragmentManager$1;

    .line 27
    const/4 v1, 0x0

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/FragmentManager$1;-><init>(Landroidx/fragment/app/FragmentManager;Z)V

    .line 31
    .line 32
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    .line 33
    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 35
    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 38
    .line 39
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 40
    .line 41
    new-instance v0, Ljava/util/HashMap;

    .line 42
    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackStates:Ljava/util/Map;

    .line 51
    .line 52
    new-instance v0, Ljava/util/HashMap;

    .line 53
    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mResults:Ljava/util/Map;

    .line 62
    .line 63
    new-instance v0, Ljava/util/HashMap;

    .line 64
    .line 65
    .line 66
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mResultListeners:Ljava/util/Map;

    .line 73
    .line 74
    new-instance v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    .line 75
    .line 76
    .line 77
    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 78
    .line 79
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    .line 80
    .line 81
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 82
    .line 83
    .line 84
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 85
    .line 86
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 87
    .line 88
    new-instance v0, Landroidx/fragment/app/e;

    .line 89
    .line 90
    .line 91
    invoke-direct {v0, p0}, Landroidx/fragment/app/e;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 92
    .line 93
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnConfigurationChangedListener:Landroidx/core/util/Consumer;

    .line 94
    .line 95
    new-instance v0, Landroidx/fragment/app/f;

    .line 96
    .line 97
    .line 98
    invoke-direct {v0, p0}, Landroidx/fragment/app/f;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 99
    .line 100
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnTrimMemoryListener:Landroidx/core/util/Consumer;

    .line 101
    .line 102
    new-instance v0, Landroidx/fragment/app/g;

    .line 103
    .line 104
    .line 105
    invoke-direct {v0, p0}, Landroidx/fragment/app/g;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 106
    .line 107
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnMultiWindowModeChangedListener:Landroidx/core/util/Consumer;

    .line 108
    .line 109
    new-instance v0, Landroidx/fragment/app/h;

    .line 110
    .line 111
    .line 112
    invoke-direct {v0, p0}, Landroidx/fragment/app/h;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 113
    .line 114
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnPictureInPictureModeChangedListener:Landroidx/core/util/Consumer;

    .line 115
    .line 116
    new-instance v0, Landroidx/fragment/app/FragmentManager$2;

    .line 117
    .line 118
    .line 119
    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManager$2;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 120
    .line 121
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mMenuProvider:Landroidx/core/view/MenuProvider;

    .line 122
    const/4 v0, -0x1

    .line 123
    .line 124
    iput v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    .line 125
    const/4 v0, 0x0

    .line 126
    .line 127
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentFactory:Landroidx/fragment/app/FragmentFactory;

    .line 128
    .line 129
    new-instance v1, Landroidx/fragment/app/FragmentManager$3;

    .line 130
    .line 131
    .line 132
    invoke-direct {v1, p0}, Landroidx/fragment/app/FragmentManager$3;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 133
    .line 134
    iput-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHostFragmentFactory:Landroidx/fragment/app/FragmentFactory;

    .line 135
    .line 136
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mSpecialEffectsControllerFactory:Landroidx/fragment/app/SpecialEffectsControllerFactory;

    .line 137
    .line 138
    new-instance v0, Landroidx/fragment/app/FragmentManager$4;

    .line 139
    .line 140
    .line 141
    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManager$4;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 142
    .line 143
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mDefaultSpecialEffectsControllerFactory:Landroidx/fragment/app/SpecialEffectsControllerFactory;

    .line 144
    .line 145
    new-instance v0, Ljava/util/ArrayDeque;

    .line 146
    .line 147
    .line 148
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 149
    .line 150
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLaunchedFragments:Ljava/util/ArrayDeque;

    .line 151
    .line 152
    new-instance v0, Landroidx/fragment/app/FragmentManager$5;

    .line 153
    .line 154
    .line 155
    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManager$5;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 156
    .line 157
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mExecCommit:Ljava/lang/Runnable;

    .line 158
    return-void
.end method

.method private I1(Landroidx/fragment/app/Fragment;)V
    .locals 3
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->y0(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterAnim()I

    .line 10
    move-result v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getExitAnim()I

    .line 14
    move-result v2

    .line 15
    add-int/2addr v1, v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopEnterAnim()I

    .line 19
    move-result v2

    .line 20
    add-int/2addr v1, v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopExitAnim()I

    .line 24
    move-result v2

    .line 25
    add-int/2addr v1, v2

    .line 26
    .line 27
    if-lez v1, :cond_1

    .line 28
    .line 29
    sget v1, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopDirection()Z

    .line 48
    move-result p1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setPopDirection(Z)V

    .line 52
    :cond_1
    return-void
.end method

.method static J0(Landroid/view/View;)Landroidx/fragment/app/Fragment;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    sget v0, Landroidx/fragment/R$id;->fragment_container_view_tag:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    instance-of v0, p0, Landroidx/fragment/app/Fragment;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    check-cast p0, Landroidx/fragment/app/Fragment;

    .line 13
    return-object p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return-object p0
.end method

.method private K1()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->k()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Landroidx/fragment/app/FragmentStateManager;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->h1(Landroidx/fragment/app/FragmentStateManager;)V

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method private L1(Ljava/lang/RuntimeException;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "FragmentManager"

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    const-string v0, "Activity state:"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    new-instance v0, Landroidx/fragment/app/LogWriter;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Landroidx/fragment/app/LogWriter;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    new-instance v2, Ljava/io/PrintWriter;

    .line 22
    .line 23
    .line 24
    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 25
    .line 26
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 27
    .line 28
    const-string v3, "Failed dumping state"

    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    .line 32
    const-string v6, "  "

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v6, v5, v2, v4}, Landroidx/fragment/app/FragmentHostCallback;->h(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_0
    :try_start_1
    new-array v0, v4, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v6, v5, v2, v0}, Landroidx/fragment/app/FragmentManager;->a0(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    goto :goto_0

    .line 52
    :catch_1
    move-exception v0

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    :goto_0
    throw p1
.end method

.method private N1()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroidx/activity/OnBackPressedCallback;->i(Z)V

    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->u0()I

    .line 28
    move-result v1

    .line 29
    .line 30
    if-lez v1, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->T0(Landroidx/fragment/app/Fragment;)Z

    .line 36
    move-result v1

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v2, 0x0

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/activity/OnBackPressedCallback;->i(Z)V

    .line 44
    return-void

    .line 45
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    throw v1
.end method

.method private P(Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->j0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->performPrimaryNavigationFragmentChanged()V

    .line 18
    :cond_0
    return-void
.end method

.method public static P0(I)Z
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    .line 2
    sget-boolean v0, Landroidx/fragment/app/FragmentManager;->DEBUG:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    const-string v0, "FragmentManager"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 10
    move-result p0

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    return p0
.end method

.method private Q0(Landroidx/fragment/app/Fragment;)Z
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    :cond_0
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->r()Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-eqz p1, :cond_2

    .line 17
    :cond_1
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_2
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method private W(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    :try_start_0
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v2, p1}, Landroidx/fragment/app/FragmentStore;->d(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/FragmentManager;->e1(IZ)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->x()Ljava/util/Set;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v2

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    check-cast v2, Landroidx/fragment/app/SpecialEffectsController;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Landroidx/fragment/app/SpecialEffectsController;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_1

    .line 39
    .line 40
    :cond_0
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->e0(Z)Z

    .line 44
    return-void

    .line 45
    .line 46
    :goto_1
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    .line 47
    throw p1
.end method

.method private synthetic W0()Landroid/os/Bundle;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->A1()Landroid/os/Bundle;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private synthetic X0(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->D(Landroid/content/res/Configuration;)V

    .line 4
    return-void
.end method

.method private synthetic Y0(Ljava/lang/Integer;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 4
    move-result p1

    .line 5
    .line 6
    const/16 v0, 0x50

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->J()V

    .line 12
    :cond_0
    return-void
.end method

.method private Z()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mHavePendingDeferredStart:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mHavePendingDeferredStart:Z

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->K1()V

    .line 11
    :cond_0
    return-void
.end method

.method private synthetic Z0(Landroidx/core/app/MultiWindowModeChangedInfo;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/core/app/MultiWindowModeChangedInfo;->a()Z

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->K(Z)V

    .line 8
    return-void
.end method

.method public static synthetic a(Landroidx/fragment/app/FragmentManager;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->Y0(Ljava/lang/Integer;)V

    return-void
.end method

.method private synthetic a1(Landroidx/core/app/PictureInPictureModeChangedInfo;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/core/app/PictureInPictureModeChangedInfo;->a()Z

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->R(Z)V

    .line 8
    return-void
.end method

.method public static synthetic b(Landroidx/fragment/app/FragmentManager;Landroidx/core/app/PictureInPictureModeChangedInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->a1(Landroidx/core/app/PictureInPictureModeChangedInfo;)V

    return-void
.end method

.method private b0()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->x()Ljava/util/Set;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Landroidx/fragment/app/SpecialEffectsController;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController;->j()V

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public static synthetic c(Landroidx/fragment/app/FragmentManager;Landroidx/core/app/MultiWindowModeChangedInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->Z0(Landroidx/core/app/MultiWindowModeChangedInfo;)V

    return-void
.end method

.method public static synthetic d(Landroidx/fragment/app/FragmentManager;Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->X0(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private d0(Z)V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    .line 3
    .line 4
    if-nez v0, :cond_5

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v0, "FragmentManager has been destroyed"

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    throw p1

    .line 21
    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v0, "FragmentManager has not been attached to a host."

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p1

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->g()Landroid/os/Handler;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    if-ne v0, v1, :cond_4

    .line 45
    .line 46
    if-nez p1, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->s()V

    .line 50
    .line 51
    :cond_2
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    .line 52
    .line 53
    if-nez p1, :cond_3

    .line 54
    .line 55
    new-instance p1, Ljava/util/ArrayList;

    .line 56
    .line 57
    .line 58
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    .line 61
    .line 62
    new-instance p1, Ljava/util/ArrayList;

    .line 63
    .line 64
    .line 65
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    .line 68
    :cond_3
    return-void

    .line 69
    .line 70
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    const-string v0, "Must be called from main thread of fragment host"

    .line 73
    .line 74
    .line 75
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 76
    throw p1

    .line 77
    .line 78
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 79
    .line 80
    const-string v0, "FragmentManager is already executing transactions"

    .line 81
    .line 82
    .line 83
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 84
    throw p1
.end method

.method public static synthetic e(Landroidx/fragment/app/FragmentManager;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->W0()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Landroidx/fragment/app/FragmentManager;)Ljava/util/Map;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mResults:Ljava/util/Map;

    .line 3
    return-object p0
.end method

.method static synthetic g(Landroidx/fragment/app/FragmentManager;)Ljava/util/Map;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mResultListeners:Ljava/util/Map;

    .line 3
    return-object p0
.end method

.method private static g0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 2
    .param p0    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    .line 1
    .line 2
    :goto_0
    if-ge p2, p3, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/fragment/app/BackStackRecord;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    check-cast v1, Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    const/4 v1, -0x1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroidx/fragment/app/BackStackRecord;->F(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/fragment/app/BackStackRecord;->L()V

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const/4 v1, 0x1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroidx/fragment/app/BackStackRecord;->F(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/fragment/app/BackStackRecord;->K()V

    .line 36
    .line 37
    :goto_1
    add-int/lit8 p2, p2, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-void
.end method

.method static synthetic h(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/FragmentStore;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 3
    return-object p0
.end method

.method private h0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 8
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Landroidx/fragment/app/BackStackRecord;

    .line 7
    .line 8
    iget-boolean v0, v0, Landroidx/fragment/app/FragmentTransaction;->mReorderingAllowed:Z

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    iput-object v1, p0, Landroidx/fragment/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 24
    .line 25
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    .line 26
    .line 27
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentStore;->o()Ljava/util/List;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->G0()Landroidx/fragment/app/Fragment;

    .line 38
    move-result-object v1

    .line 39
    const/4 v2, 0x0

    .line 40
    move v3, p3

    .line 41
    move v4, v2

    .line 42
    :goto_1
    const/4 v5, 0x1

    .line 43
    .line 44
    if-ge v3, p4, :cond_4

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    move-result-object v6

    .line 49
    .line 50
    check-cast v6, Landroidx/fragment/app/BackStackRecord;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    move-result-object v7

    .line 55
    .line 56
    check-cast v7, Ljava/lang/Boolean;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    move-result v7

    .line 61
    .line 62
    if-nez v7, :cond_1

    .line 63
    .line 64
    iget-object v7, p0, Landroidx/fragment/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6, v7, v1}, Landroidx/fragment/app/BackStackRecord;->M(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    .line 68
    move-result-object v1

    .line 69
    goto :goto_2

    .line 70
    .line 71
    :cond_1
    iget-object v7, p0, Landroidx/fragment/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6, v7, v1}, Landroidx/fragment/app/BackStackRecord;->O(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    :goto_2
    if-nez v4, :cond_3

    .line 78
    .line 79
    iget-boolean v4, v6, Landroidx/fragment/app/FragmentTransaction;->mAddToBackStack:Z

    .line 80
    .line 81
    if-eqz v4, :cond_2

    .line 82
    goto :goto_3

    .line 83
    :cond_2
    move v4, v2

    .line 84
    goto :goto_4

    .line 85
    :cond_3
    :goto_3
    move v4, v5

    .line 86
    .line 87
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 88
    goto :goto_1

    .line 89
    .line 90
    :cond_4
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 94
    .line 95
    if-nez v0, :cond_7

    .line 96
    .line 97
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    .line 98
    .line 99
    if-lt v0, v5, :cond_7

    .line 100
    move v0, p3

    .line 101
    .line 102
    :goto_5
    if-ge v0, p4, :cond_7

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    move-result-object v1

    .line 107
    .line 108
    check-cast v1, Landroidx/fragment/app/BackStackRecord;

    .line 109
    .line 110
    iget-object v1, v1, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 114
    move-result-object v1

    .line 115
    .line 116
    .line 117
    :cond_5
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    move-result v2

    .line 119
    .line 120
    if-eqz v2, :cond_6

    .line 121
    .line 122
    .line 123
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    move-result-object v2

    .line 125
    .line 126
    check-cast v2, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 127
    .line 128
    iget-object v2, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    .line 129
    .line 130
    if-eqz v2, :cond_5

    .line 131
    .line 132
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 133
    .line 134
    if-eqz v3, :cond_5

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v2}, Landroidx/fragment/app/FragmentManager;->z(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    .line 138
    move-result-object v2

    .line 139
    .line 140
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentStore;->r(Landroidx/fragment/app/FragmentStateManager;)V

    .line 144
    goto :goto_6

    .line 145
    .line 146
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 147
    goto :goto_5

    .line 148
    .line 149
    .line 150
    :cond_7
    invoke-static {p1, p2, p3, p4}, Landroidx/fragment/app/FragmentManager;->g0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 151
    .line 152
    add-int/lit8 v0, p4, -0x1

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 156
    move-result-object v0

    .line 157
    .line 158
    check-cast v0, Ljava/lang/Boolean;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 162
    move-result v0

    .line 163
    move v1, p3

    .line 164
    .line 165
    :goto_7
    if-ge v1, p4, :cond_c

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 169
    move-result-object v2

    .line 170
    .line 171
    check-cast v2, Landroidx/fragment/app/BackStackRecord;

    .line 172
    .line 173
    if-eqz v0, :cond_9

    .line 174
    .line 175
    iget-object v3, v2, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 179
    move-result v3

    .line 180
    sub-int/2addr v3, v5

    .line 181
    .line 182
    :goto_8
    if-ltz v3, :cond_b

    .line 183
    .line 184
    iget-object v6, v2, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 188
    move-result-object v6

    .line 189
    .line 190
    check-cast v6, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 191
    .line 192
    iget-object v6, v6, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    .line 193
    .line 194
    if-eqz v6, :cond_8

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0, v6}, Landroidx/fragment/app/FragmentManager;->z(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    .line 198
    move-result-object v6

    .line 199
    .line 200
    .line 201
    invoke-virtual {v6}, Landroidx/fragment/app/FragmentStateManager;->m()V

    .line 202
    .line 203
    :cond_8
    add-int/lit8 v3, v3, -0x1

    .line 204
    goto :goto_8

    .line 205
    .line 206
    :cond_9
    iget-object v2, v2, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 210
    move-result-object v2

    .line 211
    .line 212
    .line 213
    :cond_a
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 214
    move-result v3

    .line 215
    .line 216
    if-eqz v3, :cond_b

    .line 217
    .line 218
    .line 219
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 220
    move-result-object v3

    .line 221
    .line 222
    check-cast v3, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 223
    .line 224
    iget-object v3, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    .line 225
    .line 226
    if-eqz v3, :cond_a

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0, v3}, Landroidx/fragment/app/FragmentManager;->z(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    .line 230
    move-result-object v3

    .line 231
    .line 232
    .line 233
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentStateManager;->m()V

    .line 234
    goto :goto_9

    .line 235
    .line 236
    :cond_b
    add-int/lit8 v1, v1, 0x1

    .line 237
    goto :goto_7

    .line 238
    .line 239
    :cond_c
    iget v1, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0, v1, v5}, Landroidx/fragment/app/FragmentManager;->e1(IZ)V

    .line 243
    .line 244
    .line 245
    invoke-direct {p0, p1, p3, p4}, Landroidx/fragment/app/FragmentManager;->y(Ljava/util/ArrayList;II)Ljava/util/Set;

    .line 246
    move-result-object v1

    .line 247
    .line 248
    .line 249
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 250
    move-result-object v1

    .line 251
    .line 252
    .line 253
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 254
    move-result v2

    .line 255
    .line 256
    if-eqz v2, :cond_d

    .line 257
    .line 258
    .line 259
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 260
    move-result-object v2

    .line 261
    .line 262
    check-cast v2, Landroidx/fragment/app/SpecialEffectsController;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v2, v0}, Landroidx/fragment/app/SpecialEffectsController;->r(Z)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v2}, Landroidx/fragment/app/SpecialEffectsController;->p()V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v2}, Landroidx/fragment/app/SpecialEffectsController;->g()V

    .line 272
    goto :goto_a

    .line 273
    .line 274
    :cond_d
    :goto_b
    if-ge p3, p4, :cond_f

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 278
    move-result-object v0

    .line 279
    .line 280
    check-cast v0, Landroidx/fragment/app/BackStackRecord;

    .line 281
    .line 282
    .line 283
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 284
    move-result-object v1

    .line 285
    .line 286
    check-cast v1, Ljava/lang/Boolean;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 290
    move-result v1

    .line 291
    .line 292
    if-eqz v1, :cond_e

    .line 293
    .line 294
    iget v1, v0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    .line 295
    .line 296
    if-ltz v1, :cond_e

    .line 297
    const/4 v1, -0x1

    .line 298
    .line 299
    iput v1, v0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    .line 300
    .line 301
    .line 302
    :cond_e
    invoke-virtual {v0}, Landroidx/fragment/app/BackStackRecord;->N()V

    .line 303
    .line 304
    add-int/lit8 p3, p3, 0x1

    .line 305
    goto :goto_b

    .line 306
    .line 307
    :cond_f
    if-eqz v4, :cond_10

    .line 308
    .line 309
    .line 310
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->v1()V

    .line 311
    :cond_10
    return-void
.end method

.method private k0(Ljava/lang/String;IZ)I
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-eqz v0, :cond_c

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :cond_0
    if-nez p1, :cond_2

    .line 16
    .line 17
    if-gez p2, :cond_2

    .line 18
    .line 19
    if-eqz p3, :cond_1

    .line 20
    const/4 p1, 0x0

    .line 21
    return p1

    .line 22
    .line 23
    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 27
    move-result p1

    .line 28
    .line 29
    add-int/lit8 p1, p1, -0x1

    .line 30
    return p1

    .line 31
    .line 32
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 36
    move-result v0

    .line 37
    .line 38
    add-int/lit8 v0, v0, -0x1

    .line 39
    .line 40
    :goto_0
    if-ltz v0, :cond_5

    .line 41
    .line 42
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v2

    .line 47
    .line 48
    check-cast v2, Landroidx/fragment/app/BackStackRecord;

    .line 49
    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Landroidx/fragment/app/BackStackRecord;->getName()Ljava/lang/String;

    .line 54
    move-result-object v3

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result v3

    .line 59
    .line 60
    if-eqz v3, :cond_3

    .line 61
    goto :goto_1

    .line 62
    .line 63
    :cond_3
    if-ltz p2, :cond_4

    .line 64
    .line 65
    iget v2, v2, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    .line 66
    .line 67
    if-ne p2, v2, :cond_4

    .line 68
    goto :goto_1

    .line 69
    .line 70
    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 71
    goto :goto_0

    .line 72
    .line 73
    :cond_5
    :goto_1
    if-gez v0, :cond_6

    .line 74
    return v0

    .line 75
    .line 76
    :cond_6
    if-eqz p3, :cond_9

    .line 77
    .line 78
    :goto_2
    if-lez v0, :cond_b

    .line 79
    .line 80
    iget-object p3, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 81
    .line 82
    add-int/lit8 v1, v0, -0x1

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 86
    move-result-object p3

    .line 87
    .line 88
    check-cast p3, Landroidx/fragment/app/BackStackRecord;

    .line 89
    .line 90
    if-eqz p1, :cond_7

    .line 91
    .line 92
    .line 93
    invoke-virtual {p3}, Landroidx/fragment/app/BackStackRecord;->getName()Ljava/lang/String;

    .line 94
    move-result-object v1

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    move-result v1

    .line 99
    .line 100
    if-nez v1, :cond_8

    .line 101
    .line 102
    :cond_7
    if-ltz p2, :cond_b

    .line 103
    .line 104
    iget p3, p3, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    .line 105
    .line 106
    if-ne p2, p3, :cond_b

    .line 107
    .line 108
    :cond_8
    add-int/lit8 v0, v0, -0x1

    .line 109
    goto :goto_2

    .line 110
    .line 111
    :cond_9
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 115
    move-result p1

    .line 116
    .line 117
    add-int/lit8 p1, p1, -0x1

    .line 118
    .line 119
    if-ne v0, p1, :cond_a

    .line 120
    return v1

    .line 121
    .line 122
    :cond_a
    add-int/lit8 v0, v0, 0x1

    .line 123
    :cond_b
    return v0

    .line 124
    :cond_c
    :goto_3
    return v1
.end method

.method static o0(Landroid/view/View;)Landroidx/fragment/app/FragmentManager;
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/fragment/app/FragmentManager;->p0(Landroid/view/View;)Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 16
    move-result-object p0

    .line 17
    goto :goto_2

    .line 18
    .line 19
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    const-string v3, "The Fragment "

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v0, " that owns View "

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string p0, " has already been destroyed. Nested fragments should always use the child FragmentManager."

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    throw v1

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    .line 60
    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    .line 64
    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 68
    goto :goto_1

    .line 69
    .line 70
    :cond_2
    check-cast v0, Landroid/content/ContextWrapper;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 74
    move-result-object v0

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    const/4 v0, 0x0

    .line 77
    .line 78
    :goto_1
    if-eqz v0, :cond_4

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 82
    move-result-object p0

    .line 83
    :goto_2
    return-object p0

    .line 84
    .line 85
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 86
    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    const-string v2, "View "

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string p0, " is not within a subclass of FragmentActivity."

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object p0

    .line 108
    .line 109
    .line 110
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 111
    throw v0
.end method

.method private o1(Ljava/lang/String;II)Z
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->e0(Z)Z

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->d0(Z)V

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    if-gez p2, :cond_0

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->m1()Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    return v0

    .line 28
    .line 29
    :cond_0
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    .line 30
    .line 31
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    .line 32
    move-object v2, p0

    .line 33
    move-object v5, p1

    .line 34
    move v6, p2

    .line 35
    move v7, p3

    .line 36
    .line 37
    .line 38
    invoke-virtual/range {v2 .. v7}, Landroidx/fragment/app/FragmentManager;->p1(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    .line 39
    move-result p1

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    .line 44
    .line 45
    :try_start_0
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    .line 46
    .line 47
    iget-object p3, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, p2, p3}, Landroidx/fragment/app/FragmentManager;->t1(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->t()V

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->t()V

    .line 59
    throw p1

    .line 60
    .line 61
    .line 62
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->N1()V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->Z()V

    .line 66
    .line 67
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentStore;->b()V

    .line 71
    return p1
.end method

.method private static p0(Landroid/view/View;)Landroidx/fragment/app/Fragment;
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    :goto_0
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroidx/fragment/app/FragmentManager;->J0(Landroid/view/View;)Landroidx/fragment/app/Fragment;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    return-object v1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    instance-of v1, p0, Landroid/view/View;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    check-cast p0, Landroid/view/View;

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move-object p0, v0

    .line 23
    goto :goto_0

    .line 24
    :cond_2
    return-object v0
.end method

.method private q0()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->x()Ljava/util/Set;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Landroidx/fragment/app/SpecialEffectsController;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController;->k()V

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method private r0(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 5
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    return v2

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto :goto_2

    .line 17
    .line 18
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 22
    move-result v1

    .line 23
    move v3, v2

    .line 24
    .line 25
    :goto_0
    if-ge v2, v1, :cond_1

    .line 26
    .line 27
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v4

    .line 32
    .line 33
    check-cast v4, Landroidx/fragment/app/FragmentManager$OpGenerator;

    .line 34
    .line 35
    .line 36
    invoke-interface {v4, p1, p2}, Landroidx/fragment/app/FragmentManager$OpGenerator;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 37
    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    or-int/2addr v3, v4

    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    goto :goto_0

    .line 42
    :catchall_1
    move-exception p1

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_1
    :try_start_2
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 49
    .line 50
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentHostCallback;->g()Landroid/os/Handler;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mExecCommit:Ljava/lang/Runnable;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 60
    monitor-exit v0

    .line 61
    return v3

    .line 62
    .line 63
    :goto_1
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 67
    .line 68
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentHostCallback;->g()Landroid/os/Handler;

    .line 72
    move-result-object p2

    .line 73
    .line 74
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mExecCommit:Ljava/lang/Runnable;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 78
    throw p1

    .line 79
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    throw p1
.end method

.method private s()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->V0()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string v1, "Can not perform this action after onSaveInstanceState"

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    throw v0
.end method

.method private t()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 14
    return-void
.end method

.method private t1(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v1

    .line 16
    .line 17
    if-ne v0, v1, :cond_6

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    move v2, v1

    .line 24
    .line 25
    :goto_0
    if-ge v1, v0, :cond_4

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    check-cast v3, Landroidx/fragment/app/BackStackRecord;

    .line 32
    .line 33
    iget-boolean v3, v3, Landroidx/fragment/app/FragmentTransaction;->mReorderingAllowed:Z

    .line 34
    .line 35
    if-nez v3, :cond_3

    .line 36
    .line 37
    if-eq v2, v1, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/fragment/app/FragmentManager;->h0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 41
    .line 42
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v3

    .line 47
    .line 48
    check-cast v3, Ljava/lang/Boolean;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    move-result v3

    .line 53
    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    :goto_1
    if-ge v2, v0, :cond_2

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object v3

    .line 61
    .line 62
    check-cast v3, Ljava/lang/Boolean;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 66
    move-result v3

    .line 67
    .line 68
    if-eqz v3, :cond_2

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object v3

    .line 73
    .line 74
    check-cast v3, Landroidx/fragment/app/BackStackRecord;

    .line 75
    .line 76
    iget-boolean v3, v3, Landroidx/fragment/app/FragmentTransaction;->mReorderingAllowed:Z

    .line 77
    .line 78
    if-nez v3, :cond_2

    .line 79
    .line 80
    add-int/lit8 v2, v2, 0x1

    .line 81
    goto :goto_1

    .line 82
    .line 83
    .line 84
    :cond_2
    invoke-direct {p0, p1, p2, v1, v2}, Landroidx/fragment/app/FragmentManager;->h0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 85
    .line 86
    add-int/lit8 v1, v2, -0x1

    .line 87
    .line 88
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 89
    goto :goto_0

    .line 90
    .line 91
    :cond_4
    if-eq v2, v0, :cond_5

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, p1, p2, v2, v0}, Landroidx/fragment/app/FragmentManager;->h0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 95
    :cond_5
    return-void

    .line 96
    .line 97
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 98
    .line 99
    const-string p2, "Internal error with the back stack records"

    .line 100
    .line 101
    .line 102
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 103
    throw p1
.end method

.method private v()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 3
    .line 4
    instance-of v1, v0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->p()Landroidx/fragment/app/FragmentManagerViewModel;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerViewModel;->k()Z

    .line 16
    move-result v0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->f()Landroid/content/Context;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    instance-of v0, v0, Landroid/app/Activity;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->f()Landroid/content/Context;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    check-cast v0, Landroid/app/Activity;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 37
    move-result v0

    .line 38
    .line 39
    xor-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    :goto_0
    if-eqz v0, :cond_3

    .line 42
    .line 43
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackStates:Ljava/util/Map;

    .line 44
    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result v1

    .line 56
    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    check-cast v1, Landroidx/fragment/app/BackStackState;

    .line 64
    .line 65
    iget-object v1, v1, Landroidx/fragment/app/BackStackState;->mFragments:Ljava/util/List;

    .line 66
    .line 67
    .line 68
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    .line 72
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    move-result v2

    .line 74
    .line 75
    if-eqz v2, :cond_2

    .line 76
    .line 77
    .line 78
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    move-result-object v2

    .line 80
    .line 81
    check-cast v2, Ljava/lang/String;

    .line 82
    .line 83
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentStore;->p()Landroidx/fragment/app/FragmentManagerViewModel;

    .line 87
    move-result-object v3

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentManagerViewModel;->d(Ljava/lang/String;)V

    .line 91
    goto :goto_1

    .line 92
    :cond_3
    return-void
.end method

.method private v0(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentManagerViewModel;
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerViewModel;->g(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentManagerViewModel;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method private v1()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v1

    .line 12
    .line 13
    if-ge v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    .line 22
    .line 23
    .line 24
    invoke-interface {v1}, Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;->a()V

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method

.method private x()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/fragment/app/SpecialEffectsController;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashSet;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStore;->k()Ljava/util/List;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v2

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    check-cast v2, Landroidx/fragment/app/FragmentStateManager;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentStateManager;->k()Landroidx/fragment/app/Fragment;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->H0()Landroidx/fragment/app/SpecialEffectsControllerFactory;

    .line 39
    move-result-object v3

    .line 40
    .line 41
    .line 42
    invoke-static {v2, v3}, Landroidx/fragment/app/SpecialEffectsController;->o(Landroid/view/ViewGroup;Landroidx/fragment/app/SpecialEffectsControllerFactory;)Landroidx/fragment/app/SpecialEffectsController;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-object v0
.end method

.method private y(Ljava/util/ArrayList;II)Ljava/util/Set;
    .locals 3
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;II)",
            "Ljava/util/Set<",
            "Landroidx/fragment/app/SpecialEffectsController;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashSet;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    .line 7
    :goto_0
    if-ge p2, p3, :cond_2

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    check-cast v1, Landroidx/fragment/app/BackStackRecord;

    .line 14
    .line 15
    iget-object v1, v1, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v2

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    check-cast v2, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 32
    .line 33
    iget-object v2, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 38
    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    .line 42
    invoke-static {v2, p0}, Landroidx/fragment/app/SpecialEffectsController;->n(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/SpecialEffectsController;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    goto :goto_1

    .line 48
    .line 49
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    return-object v0
.end method

.method private y0(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;
    .locals 2
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    iget v0, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    if-gtz v0, :cond_1

    .line 11
    return-object v1

    .line 12
    .line 13
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentContainer;->d()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    .line 22
    .line 23
    iget p1, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentContainer;->c(I)Landroid/view/View;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    check-cast p1, Landroid/view/ViewGroup;

    .line 34
    return-object p1

    .line 35
    :cond_2
    return-object v1
.end method

.method static z1(I)I
    .locals 3

    .line 1
    const/16 v0, 0x2002

    const/16 v1, 0x1001

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1004

    const/16 v1, 0x2005

    if-eq p0, v1, :cond_2

    const/16 v2, 0x1003

    if-eq p0, v2, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method A(Landroidx/fragment/app/Fragment;)V
    .locals 4
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->P0(I)Z

    .line 5
    move-result v1

    .line 6
    .line 7
    const-string v2, "FragmentManager"

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    const-string v3, "detach: "

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    :cond_0
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 32
    .line 33
    if-nez v1, :cond_3

    .line 34
    const/4 v1, 0x1

    .line 35
    .line 36
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 37
    .line 38
    iget-boolean v3, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 39
    .line 40
    if-eqz v3, :cond_3

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->P0(I)Z

    .line 44
    move-result v0

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    const-string v3, "remove from detach: "

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    .line 66
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentStore;->u(Landroidx/fragment/app/Fragment;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->Q0(Landroidx/fragment/app/Fragment;)Z

    .line 75
    move-result v0

    .line 76
    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    .line 80
    .line 81
    .line 82
    :cond_2
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->I1(Landroidx/fragment/app/Fragment;)V

    .line 83
    :cond_3
    return-void
.end method

.method A0()Landroidx/fragment/app/FragmentStore;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    return-object v0
.end method

.method A1()Landroid/os/Bundle;
    .locals 11
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->q0()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->b0()V

    .line 12
    const/4 v1, 0x1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->e0(Z)Z

    .line 16
    .line 17
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    .line 18
    .line 19
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentManagerViewModel;->m(Z)V

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStore;->y()Ljava/util/ArrayList;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentStore;->m()Ljava/util/ArrayList;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 38
    move-result v3

    .line 39
    .line 40
    const-string v4, "FragmentManager"

    .line 41
    const/4 v5, 0x2

    .line 42
    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    .line 46
    invoke-static {v5}, Landroidx/fragment/app/FragmentManager;->P0(I)Z

    .line 47
    move-result v1

    .line 48
    .line 49
    if-eqz v1, :cond_6

    .line 50
    .line 51
    const-string v1, "saveAllState: no fragments!"

    .line 52
    .line 53
    .line 54
    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    goto/16 :goto_3

    .line 57
    .line 58
    :cond_0
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentStore;->z()Ljava/util/ArrayList;

    .line 62
    move-result-object v3

    .line 63
    .line 64
    iget-object v6, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 65
    .line 66
    if-eqz v6, :cond_2

    .line 67
    .line 68
    .line 69
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 70
    move-result v6

    .line 71
    .line 72
    if-lez v6, :cond_2

    .line 73
    .line 74
    new-array v7, v6, [Landroidx/fragment/app/BackStackRecordState;

    .line 75
    const/4 v8, 0x0

    .line 76
    .line 77
    :goto_0
    if-ge v8, v6, :cond_3

    .line 78
    .line 79
    new-instance v9, Landroidx/fragment/app/BackStackRecordState;

    .line 80
    .line 81
    iget-object v10, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    move-result-object v10

    .line 86
    .line 87
    check-cast v10, Landroidx/fragment/app/BackStackRecord;

    .line 88
    .line 89
    .line 90
    invoke-direct {v9, v10}, Landroidx/fragment/app/BackStackRecordState;-><init>(Landroidx/fragment/app/BackStackRecord;)V

    .line 91
    .line 92
    aput-object v9, v7, v8

    .line 93
    .line 94
    .line 95
    invoke-static {v5}, Landroidx/fragment/app/FragmentManager;->P0(I)Z

    .line 96
    move-result v9

    .line 97
    .line 98
    if-eqz v9, :cond_1

    .line 99
    .line 100
    new-instance v9, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    const-string v10, "saveAllState: adding back stack #"

    .line 106
    .line 107
    .line 108
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v10, ": "

    .line 114
    .line 115
    .line 116
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    iget-object v10, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 122
    move-result-object v10

    .line 123
    .line 124
    .line 125
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object v9

    .line 130
    .line 131
    .line 132
    invoke-static {v4, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 135
    goto :goto_0

    .line 136
    :cond_2
    const/4 v7, 0x0

    .line 137
    .line 138
    :cond_3
    new-instance v4, Landroidx/fragment/app/FragmentManagerState;

    .line 139
    .line 140
    .line 141
    invoke-direct {v4}, Landroidx/fragment/app/FragmentManagerState;-><init>()V

    .line 142
    .line 143
    iput-object v1, v4, Landroidx/fragment/app/FragmentManagerState;->mActive:Ljava/util/ArrayList;

    .line 144
    .line 145
    iput-object v3, v4, Landroidx/fragment/app/FragmentManagerState;->mAdded:Ljava/util/ArrayList;

    .line 146
    .line 147
    iput-object v7, v4, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackRecordState;

    .line 148
    .line 149
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mBackStackIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 153
    move-result v1

    .line 154
    .line 155
    iput v1, v4, Landroidx/fragment/app/FragmentManagerState;->mBackStackIndex:I

    .line 156
    .line 157
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    .line 158
    .line 159
    if-eqz v1, :cond_4

    .line 160
    .line 161
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 162
    .line 163
    iput-object v1, v4, Landroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveWho:Ljava/lang/String;

    .line 164
    .line 165
    :cond_4
    iget-object v1, v4, Landroidx/fragment/app/FragmentManagerState;->mBackStackStateKeys:Ljava/util/ArrayList;

    .line 166
    .line 167
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mBackStackStates:Ljava/util/Map;

    .line 168
    .line 169
    .line 170
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 171
    move-result-object v3

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 175
    .line 176
    iget-object v1, v4, Landroidx/fragment/app/FragmentManagerState;->mBackStackStates:Ljava/util/ArrayList;

    .line 177
    .line 178
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mBackStackStates:Ljava/util/Map;

    .line 179
    .line 180
    .line 181
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 182
    move-result-object v3

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 186
    .line 187
    new-instance v1, Ljava/util/ArrayList;

    .line 188
    .line 189
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mLaunchedFragments:Ljava/util/ArrayDeque;

    .line 190
    .line 191
    .line 192
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 193
    .line 194
    iput-object v1, v4, Landroidx/fragment/app/FragmentManagerState;->mLaunchedFragments:Ljava/util/ArrayList;

    .line 195
    .line 196
    const-string/jumbo v1, "state"

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 200
    .line 201
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mResults:Ljava/util/Map;

    .line 202
    .line 203
    .line 204
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 205
    move-result-object v3

    .line 206
    .line 207
    .line 208
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 209
    move-result-object v3

    .line 210
    .line 211
    .line 212
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 213
    move-result v4

    .line 214
    .line 215
    if-eqz v4, :cond_5

    .line 216
    .line 217
    .line 218
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 219
    move-result-object v4

    .line 220
    .line 221
    check-cast v4, Ljava/lang/String;

    .line 222
    .line 223
    new-instance v5, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    const-string v6, "result_"

    .line 229
    .line 230
    .line 231
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    move-result-object v5

    .line 239
    .line 240
    iget-object v6, p0, Landroidx/fragment/app/FragmentManager;->mResults:Ljava/util/Map;

    .line 241
    .line 242
    .line 243
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    move-result-object v4

    .line 245
    .line 246
    check-cast v4, Landroid/os/Bundle;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 250
    goto :goto_1

    .line 251
    .line 252
    .line 253
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 254
    move-result-object v2

    .line 255
    .line 256
    .line 257
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 258
    move-result v3

    .line 259
    .line 260
    if-eqz v3, :cond_6

    .line 261
    .line 262
    .line 263
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 264
    move-result-object v3

    .line 265
    .line 266
    check-cast v3, Landroidx/fragment/app/FragmentState;

    .line 267
    .line 268
    new-instance v4, Landroid/os/Bundle;

    .line 269
    .line 270
    .line 271
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v4, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 275
    .line 276
    new-instance v5, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .line 281
    const-string v6, "fragment_"

    .line 282
    .line 283
    .line 284
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    iget-object v3, v3, Landroidx/fragment/app/FragmentState;->mWho:Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    move-result-object v3

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 297
    goto :goto_2

    .line 298
    :cond_6
    :goto_3
    return-object v0
.end method

.method B()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    .line 4
    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManagerViewModel;->m(Z)V

    .line 11
    const/4 v0, 0x4

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->W(I)V

    .line 15
    return-void
.end method

.method public B0()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->o()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public B1(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Landroidx/fragment/app/FragmentManager$SaveBackStackState;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Landroidx/fragment/app/FragmentManager$SaveBackStackState;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 6
    const/4 p1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentManager;->c0(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    .line 10
    return-void
.end method

.method C()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    .line 4
    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManagerViewModel;->m(Z)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->W(I)V

    .line 14
    return-void
.end method

.method public C0()Landroidx/fragment/app/FragmentHostCallback;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/fragment/app/FragmentHostCallback<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    return-object v0
.end method

.method C1(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 16
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p3

    .line 5
    const/4 v2, -0x1

    .line 6
    const/4 v3, 0x1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;IZ)I

    .line 10
    move-result v2

    .line 11
    .line 12
    if-gez v2, :cond_0

    .line 13
    const/4 v1, 0x0

    .line 14
    return v1

    .line 15
    :cond_0
    move v4, v2

    .line 16
    .line 17
    :goto_0
    iget-object v5, v0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 21
    move-result v5

    .line 22
    .line 23
    const-string v6, "saveBackStack(\""

    .line 24
    .line 25
    if-ge v4, v5, :cond_2

    .line 26
    .line 27
    iget-object v5, v0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v5

    .line 32
    .line 33
    check-cast v5, Landroidx/fragment/app/BackStackRecord;

    .line 34
    .line 35
    iget-boolean v7, v5, Landroidx/fragment/app/FragmentTransaction;->mReorderingAllowed:Z

    .line 36
    .line 37
    if-nez v7, :cond_1

    .line 38
    .line 39
    new-instance v7, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    new-instance v8, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v6, "\") included FragmentTransactions must use setReorderingAllowed(true) to ensure that the back stack can be restored as an atomic operation. Found "

    .line 53
    .line 54
    .line 55
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v5, " that did not use setReorderingAllowed(true)."

    .line 61
    .line 62
    .line 63
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v5

    .line 68
    .line 69
    .line 70
    invoke-direct {v7, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {v0, v7}, Landroidx/fragment/app/FragmentManager;->L1(Ljava/lang/RuntimeException;)V

    .line 74
    .line 75
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 76
    goto :goto_0

    .line 77
    .line 78
    :cond_2
    new-instance v4, Ljava/util/HashSet;

    .line 79
    .line 80
    .line 81
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 82
    move v5, v2

    .line 83
    .line 84
    :goto_1
    iget-object v7, v0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 88
    move-result v7

    .line 89
    .line 90
    if-ge v5, v7, :cond_b

    .line 91
    .line 92
    iget-object v7, v0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    move-result-object v7

    .line 97
    .line 98
    check-cast v7, Landroidx/fragment/app/BackStackRecord;

    .line 99
    .line 100
    new-instance v8, Ljava/util/HashSet;

    .line 101
    .line 102
    .line 103
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 104
    .line 105
    new-instance v9, Ljava/util/HashSet;

    .line 106
    .line 107
    .line 108
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 109
    .line 110
    iget-object v10, v7, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 114
    move-result-object v10

    .line 115
    .line 116
    .line 117
    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    move-result v11

    .line 119
    .line 120
    if-eqz v11, :cond_8

    .line 121
    .line 122
    .line 123
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    move-result-object v11

    .line 125
    .line 126
    check-cast v11, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 127
    .line 128
    iget-object v12, v11, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    .line 129
    .line 130
    if-nez v12, :cond_4

    .line 131
    goto :goto_2

    .line 132
    .line 133
    :cond_4
    iget-boolean v13, v11, Landroidx/fragment/app/FragmentTransaction$Op;->mFromExpandedOp:Z

    .line 134
    const/4 v14, 0x2

    .line 135
    .line 136
    if-eqz v13, :cond_5

    .line 137
    .line 138
    iget v13, v11, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    .line 139
    .line 140
    if-eq v13, v3, :cond_5

    .line 141
    .line 142
    if-eq v13, v14, :cond_5

    .line 143
    .line 144
    const/16 v15, 0x8

    .line 145
    .line 146
    if-ne v13, v15, :cond_6

    .line 147
    .line 148
    .line 149
    :cond_5
    invoke-virtual {v4, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    invoke-virtual {v8, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    :cond_6
    iget v11, v11, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    .line 155
    .line 156
    if-eq v11, v3, :cond_7

    .line 157
    .line 158
    if-ne v11, v14, :cond_3

    .line 159
    .line 160
    .line 161
    :cond_7
    invoke-virtual {v9, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 162
    goto :goto_2

    .line 163
    .line 164
    .line 165
    :cond_8
    invoke-virtual {v8, v9}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    .line 166
    .line 167
    .line 168
    invoke-virtual {v8}, Ljava/util/HashSet;->isEmpty()Z

    .line 169
    move-result v9

    .line 170
    .line 171
    if-nez v9, :cond_a

    .line 172
    .line 173
    new-instance v9, Ljava/lang/IllegalArgumentException;

    .line 174
    .line 175
    new-instance v10, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    const-string v11, "\") must be self contained and not reference fragments from non-saved FragmentTransactions. Found reference to fragment"

    .line 187
    .line 188
    .line 189
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    .line 193
    move-result v11

    .line 194
    .line 195
    if-ne v11, v3, :cond_9

    .line 196
    .line 197
    new-instance v11, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    const-string v12, " "

    .line 203
    .line 204
    .line 205
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 209
    move-result-object v8

    .line 210
    .line 211
    .line 212
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 213
    move-result-object v8

    .line 214
    .line 215
    .line 216
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    move-result-object v8

    .line 221
    goto :goto_3

    .line 222
    .line 223
    :cond_9
    new-instance v11, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    const-string v12, "s "

    .line 229
    .line 230
    .line 231
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    move-result-object v8

    .line 239
    .line 240
    .line 241
    :goto_3
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    const-string v8, " in "

    .line 244
    .line 245
    .line 246
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    const-string v7, " that were previously added to the FragmentManager through a separate FragmentTransaction."

    .line 252
    .line 253
    .line 254
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    move-result-object v7

    .line 259
    .line 260
    .line 261
    invoke-direct {v9, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-direct {v0, v9}, Landroidx/fragment/app/FragmentManager;->L1(Ljava/lang/RuntimeException;)V

    .line 265
    .line 266
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 267
    .line 268
    goto/16 :goto_1

    .line 269
    .line 270
    :cond_b
    new-instance v5, Ljava/util/ArrayDeque;

    .line 271
    .line 272
    .line 273
    invoke-direct {v5, v4}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 274
    .line 275
    .line 276
    :cond_c
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 277
    move-result v7

    .line 278
    .line 279
    if-nez v7, :cond_10

    .line 280
    .line 281
    .line 282
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 283
    move-result-object v7

    .line 284
    .line 285
    check-cast v7, Landroidx/fragment/app/Fragment;

    .line 286
    .line 287
    iget-boolean v8, v7, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    .line 288
    .line 289
    if-eqz v8, :cond_e

    .line 290
    .line 291
    new-instance v8, Ljava/lang/IllegalArgumentException;

    .line 292
    .line 293
    new-instance v9, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    const-string v10, "\") must not contain retained fragments. Found "

    .line 305
    .line 306
    .line 307
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 311
    move-result v10

    .line 312
    .line 313
    if-eqz v10, :cond_d

    .line 314
    .line 315
    const-string v10, "direct reference to retained "

    .line 316
    goto :goto_4

    .line 317
    .line 318
    :cond_d
    const-string v10, "retained child "

    .line 319
    .line 320
    .line 321
    :goto_4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    const-string v10, "fragment "

    .line 324
    .line 325
    .line 326
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    move-result-object v9

    .line 334
    .line 335
    .line 336
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-direct {v0, v8}, Landroidx/fragment/app/FragmentManager;->L1(Ljava/lang/RuntimeException;)V

    .line 340
    .line 341
    :cond_e
    iget-object v7, v7, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v7}, Landroidx/fragment/app/FragmentManager;->s0()Ljava/util/List;

    .line 345
    move-result-object v7

    .line 346
    .line 347
    .line 348
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 349
    move-result-object v7

    .line 350
    .line 351
    .line 352
    :cond_f
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 353
    move-result v8

    .line 354
    .line 355
    if-eqz v8, :cond_c

    .line 356
    .line 357
    .line 358
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 359
    move-result-object v8

    .line 360
    .line 361
    check-cast v8, Landroidx/fragment/app/Fragment;

    .line 362
    .line 363
    if-eqz v8, :cond_f

    .line 364
    .line 365
    .line 366
    invoke-virtual {v5, v8}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 367
    goto :goto_5

    .line 368
    .line 369
    :cond_10
    new-instance v5, Ljava/util/ArrayList;

    .line 370
    .line 371
    .line 372
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 376
    move-result-object v4

    .line 377
    .line 378
    .line 379
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 380
    move-result v6

    .line 381
    .line 382
    if-eqz v6, :cond_11

    .line 383
    .line 384
    .line 385
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 386
    move-result-object v6

    .line 387
    .line 388
    check-cast v6, Landroidx/fragment/app/Fragment;

    .line 389
    .line 390
    iget-object v6, v6, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    goto :goto_6

    .line 395
    .line 396
    :cond_11
    new-instance v4, Ljava/util/ArrayList;

    .line 397
    .line 398
    iget-object v6, v0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 402
    move-result v6

    .line 403
    sub-int/2addr v6, v2

    .line 404
    .line 405
    .line 406
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 407
    move v6, v2

    .line 408
    .line 409
    :goto_7
    iget-object v7, v0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 413
    move-result v7

    .line 414
    .line 415
    if-ge v6, v7, :cond_12

    .line 416
    const/4 v7, 0x0

    .line 417
    .line 418
    .line 419
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    .line 421
    add-int/lit8 v6, v6, 0x1

    .line 422
    goto :goto_7

    .line 423
    .line 424
    :cond_12
    new-instance v6, Landroidx/fragment/app/BackStackState;

    .line 425
    .line 426
    .line 427
    invoke-direct {v6, v5, v4}, Landroidx/fragment/app/BackStackState;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 428
    .line 429
    iget-object v5, v0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 433
    move-result v5

    .line 434
    sub-int/2addr v5, v3

    .line 435
    .line 436
    :goto_8
    if-lt v5, v2, :cond_13

    .line 437
    .line 438
    iget-object v7, v0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 442
    move-result-object v7

    .line 443
    .line 444
    check-cast v7, Landroidx/fragment/app/BackStackRecord;

    .line 445
    .line 446
    new-instance v8, Landroidx/fragment/app/BackStackRecord;

    .line 447
    .line 448
    .line 449
    invoke-direct {v8, v7}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/BackStackRecord;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v8}, Landroidx/fragment/app/BackStackRecord;->G()V

    .line 453
    .line 454
    new-instance v9, Landroidx/fragment/app/BackStackRecordState;

    .line 455
    .line 456
    .line 457
    invoke-direct {v9, v8}, Landroidx/fragment/app/BackStackRecordState;-><init>(Landroidx/fragment/app/BackStackRecord;)V

    .line 458
    .line 459
    sub-int v8, v5, v2

    .line 460
    .line 461
    .line 462
    invoke-virtual {v4, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 463
    .line 464
    iput-boolean v3, v7, Landroidx/fragment/app/BackStackRecord;->mBeingSaved:Z

    .line 465
    .line 466
    move-object/from16 v8, p1

    .line 467
    .line 468
    .line 469
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    .line 471
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 472
    .line 473
    move-object/from16 v9, p2

    .line 474
    .line 475
    .line 476
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    .line 478
    add-int/lit8 v5, v5, -0x1

    .line 479
    goto :goto_8

    .line 480
    .line 481
    :cond_13
    iget-object v2, v0, Landroidx/fragment/app/FragmentManager;->mBackStackStates:Ljava/util/Map;

    .line 482
    .line 483
    .line 484
    invoke-interface {v2, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    return v3
.end method

.method D(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->o()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method

.method D0()Landroid/view/LayoutInflater$Factory2;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLayoutInflaterFactory:Landroidx/fragment/app/FragmentLayoutInflaterFactory;

    return-object v0
.end method

.method public D1(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment$SavedState;
    .locals 4
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 3
    .line 4
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentStore;->n(Ljava/lang/String;)Landroidx/fragment/app/FragmentStateManager;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->k()Landroidx/fragment/app/Fragment;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    const-string v3, "Fragment "

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string p1, " is not currently in the FragmentManager"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, v1}, Landroidx/fragment/app/FragmentManager;->L1(Ljava/lang/RuntimeException;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->r()Landroidx/fragment/app/Fragment$SavedState;

    .line 54
    move-result-object p1

    .line 55
    return-object p1
.end method

.method E(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    if-ge v0, v2, :cond_0

    .line 7
    return v1

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->o()Ljava/util/List;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v3

    .line 22
    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    .line 35
    move-result v3

    .line 36
    .line 37
    if-eqz v3, :cond_1

    .line 38
    return v2

    .line 39
    :cond_2
    return v1
.end method

.method E0()Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    return-object v0
.end method

.method E1()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->g()Landroid/os/Handler;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mExecCommit:Ljava/lang/Runnable;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->g()Landroid/os/Handler;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mExecCommit:Ljava/lang/Runnable;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->N1()V

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v1

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw v1
.end method

.method F()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    .line 4
    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManagerViewModel;->m(Z)V

    .line 11
    const/4 v0, 0x1

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->W(I)V

    .line 15
    return-void
.end method

.method F0()Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method F1(Landroidx/fragment/app/Fragment;Z)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->y0(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    instance-of v0, p1, Landroidx/fragment/app/FragmentContainerView;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    check-cast p1, Landroidx/fragment/app/FragmentContainerView;

    .line 13
    .line 14
    xor-int/lit8 p2, p2, 0x1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentContainerView;->setDrawDisappearingViewsLast(Z)V

    .line 18
    :cond_0
    return-void
.end method

.method G(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 7
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    if-ge v0, v2, :cond_0

    .line 7
    return v1

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->o()Ljava/util/List;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 18
    const/4 v3, 0x0

    .line 19
    move v4, v1

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v5

    .line 24
    .line 25
    if-eqz v5, :cond_3

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v5

    .line 30
    .line 31
    check-cast v5, Landroidx/fragment/app/Fragment;

    .line 32
    .line 33
    if-eqz v5, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v5}, Landroidx/fragment/app/FragmentManager;->S0(Landroidx/fragment/app/Fragment;)Z

    .line 37
    move-result v6

    .line 38
    .line 39
    if-eqz v6, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5, p1, p2}, Landroidx/fragment/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    .line 43
    move-result v6

    .line 44
    .line 45
    if-eqz v6, :cond_1

    .line 46
    .line 47
    if-nez v3, :cond_2

    .line 48
    .line 49
    new-instance v3, Ljava/util/ArrayList;

    .line 50
    .line 51
    .line 52
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    move v4, v2

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :cond_3
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    .line 60
    .line 61
    if-eqz p1, :cond_6

    .line 62
    .line 63
    :goto_1
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 67
    move-result p1

    .line 68
    .line 69
    if-ge v1, p1, :cond_6

    .line 70
    .line 71
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 78
    .line 79
    if-eqz v3, :cond_4

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 83
    move-result p2

    .line 84
    .line 85
    if-nez p2, :cond_5

    .line 86
    .line 87
    .line 88
    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->onDestroyOptionsMenu()V

    .line 89
    .line 90
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 91
    goto :goto_1

    .line 92
    .line 93
    :cond_6
    iput-object v3, p0, Landroidx/fragment/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    .line 94
    return v4
.end method

.method public G0()Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method G1(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V
    .locals 2
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Lifecycle$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->j0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 19
    .line 20
    if-ne v0, p0, :cond_1

    .line 21
    .line 22
    :cond_0
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    .line 23
    return-void

    .line 24
    .line 25
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    const-string v1, "Fragment "

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string p1, " is not an active fragment of FragmentManager "

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    .line 53
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    throw p2
.end method

.method H()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->e0(Z)Z

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->b0()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->v()V

    .line 13
    const/4 v0, -0x1

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->W(I)V

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 19
    .line 20
    instance-of v1, v0, Landroidx/core/content/OnTrimMemoryProvider;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    check-cast v0, Landroidx/core/content/OnTrimMemoryProvider;

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mOnTrimMemoryListener:Landroidx/core/util/Consumer;

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v1}, Landroidx/core/content/OnTrimMemoryProvider;->removeOnTrimMemoryListener(Landroidx/core/util/Consumer;)V

    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 32
    .line 33
    instance-of v1, v0, Landroidx/core/content/OnConfigurationChangedProvider;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    check-cast v0, Landroidx/core/content/OnConfigurationChangedProvider;

    .line 38
    .line 39
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mOnConfigurationChangedListener:Landroidx/core/util/Consumer;

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v1}, Landroidx/core/content/OnConfigurationChangedProvider;->removeOnConfigurationChangedListener(Landroidx/core/util/Consumer;)V

    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 45
    .line 46
    instance-of v1, v0, Landroidx/core/app/OnMultiWindowModeChangedProvider;

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    check-cast v0, Landroidx/core/app/OnMultiWindowModeChangedProvider;

    .line 51
    .line 52
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mOnMultiWindowModeChangedListener:Landroidx/core/util/Consumer;

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, v1}, Landroidx/core/app/OnMultiWindowModeChangedProvider;->removeOnMultiWindowModeChangedListener(Landroidx/core/util/Consumer;)V

    .line 56
    .line 57
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 58
    .line 59
    instance-of v1, v0, Landroidx/core/app/OnPictureInPictureModeChangedProvider;

    .line 60
    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    check-cast v0, Landroidx/core/app/OnPictureInPictureModeChangedProvider;

    .line 64
    .line 65
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mOnPictureInPictureModeChangedListener:Landroidx/core/util/Consumer;

    .line 66
    .line 67
    .line 68
    invoke-interface {v0, v1}, Landroidx/core/app/OnPictureInPictureModeChangedProvider;->removeOnPictureInPictureModeChangedListener(Landroidx/core/util/Consumer;)V

    .line 69
    .line 70
    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 71
    .line 72
    instance-of v1, v0, Landroidx/core/view/MenuHost;

    .line 73
    .line 74
    if-eqz v1, :cond_4

    .line 75
    .line 76
    check-cast v0, Landroidx/core/view/MenuHost;

    .line 77
    .line 78
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mMenuProvider:Landroidx/core/view/MenuProvider;

    .line 79
    .line 80
    .line 81
    invoke-interface {v0, v1}, Landroidx/core/view/MenuHost;->removeMenuProvider(Landroidx/core/view/MenuProvider;)V

    .line 82
    :cond_4
    const/4 v0, 0x0

    .line 83
    .line 84
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 85
    .line 86
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    .line 87
    .line 88
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    .line 89
    .line 90
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    .line 91
    .line 92
    if-eqz v1, :cond_5

    .line 93
    .line 94
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Landroidx/activity/OnBackPressedCallback;->g()V

    .line 98
    .line 99
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    .line 100
    .line 101
    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mStartActivityForResult:Landroidx/activity/result/ActivityResultLauncher;

    .line 102
    .line 103
    if-eqz v0, :cond_6

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->c()V

    .line 107
    .line 108
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mStartIntentSenderForResult:Landroidx/activity/result/ActivityResultLauncher;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->c()V

    .line 112
    .line 113
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mRequestPermissions:Landroidx/activity/result/ActivityResultLauncher;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->c()V

    .line 117
    :cond_6
    return-void
.end method

.method H0()Landroidx/fragment/app/SpecialEffectsControllerFactory;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mSpecialEffectsControllerFactory:Landroidx/fragment/app/SpecialEffectsControllerFactory;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->H0()Landroidx/fragment/app/SpecialEffectsControllerFactory;

    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mDefaultSpecialEffectsControllerFactory:Landroidx/fragment/app/SpecialEffectsControllerFactory;

    .line 19
    return-object v0
.end method

.method H1(Landroidx/fragment/app/Fragment;)V
    .locals 3
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->j0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 21
    .line 22
    if-ne v0, p0, :cond_0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    const-string v2, "Fragment "

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string p1, " is not an active fragment of FragmentManager "

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    throw v0

    .line 55
    .line 56
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    .line 57
    .line 58
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->P(Landroidx/fragment/app/Fragment;)V

    .line 62
    .line 63
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->P(Landroidx/fragment/app/Fragment;)V

    .line 67
    return-void
.end method

.method I()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->W(I)V

    .line 5
    return-void
.end method

.method public I0()Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mStrictModePolicy:Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    return-object v0
.end method

.method J()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->o()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->performLowMemory()V

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method

.method J1(Landroidx/fragment/app/Fragment;)V
    .locals 2
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->P0(I)Z

    .line 5
    move-result v0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    const-string/jumbo v1, "show: "

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    const-string v1, "FragmentManager"

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    const/4 v0, 0x0

    .line 35
    .line 36
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 37
    .line 38
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 39
    .line 40
    xor-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 43
    :cond_1
    return-void
.end method

.method K(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->o()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performMultiWindowModeChanged(Z)V

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method

.method K0(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelStore;
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerViewModel;->j(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelStore;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method L(Landroidx/fragment/app/Fragment;)V
    .locals 2
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Landroidx/fragment/app/FragmentOnAttachListener;

    .line 19
    .line 20
    .line 21
    invoke-interface {v1, p0, p1}, Landroidx/fragment/app/FragmentOnAttachListener;->a(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method L0()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->e0(Z)Z

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/activity/OnBackPressedCallback;->f()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->m1()Z

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->e()V

    .line 22
    :goto_0
    return-void
.end method

.method M()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->l()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 28
    move-result v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 32
    .line 33
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->M()V

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-void
.end method

.method M0(Landroidx/fragment/app/Fragment;)V
    .locals 2
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->P0(I)Z

    .line 5
    move-result v0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    const-string v1, "hide: "

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    const-string v1, "FragmentManager"

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    const/4 v0, 0x1

    .line 35
    .line 36
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 37
    .line 38
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 39
    xor-int/2addr v0, v1

    .line 40
    .line 41
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->I1(Landroidx/fragment/app/Fragment;)V

    .line 45
    :cond_1
    return-void
.end method

.method public M1(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->p(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;)V

    .line 6
    return-void
.end method

.method N(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    if-ge v0, v2, :cond_0

    .line 7
    return v1

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->o()Ljava/util/List;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v3

    .line 22
    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 35
    move-result v3

    .line 36
    .line 37
    if-eqz v3, :cond_1

    .line 38
    return v2

    .line 39
    :cond_2
    return v1
.end method

.method N0(Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->Q0(Landroidx/fragment/app/Fragment;)Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 12
    .line 13
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    .line 14
    :cond_0
    return-void
.end method

.method O(Landroid/view/Menu;)V
    .locals 2
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    return-void

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->o()Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    return-void
.end method

.method public O0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    return v0
.end method

.method Q()V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->W(I)V

    .line 5
    return-void
.end method

.method R(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->o()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performPictureInPictureModeChanged(Z)V

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method

.method R0(Landroidx/fragment/app/Fragment;)Z
    .locals 0
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method S(Landroid/view/Menu;)Z
    .locals 5
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    if-ge v0, v2, :cond_0

    .line 7
    return v1

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->o()Ljava/util/List;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v3

    .line 22
    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v3}, Landroidx/fragment/app/FragmentManager;->S0(Landroidx/fragment/app/Fragment;)Z

    .line 35
    move-result v4

    .line 36
    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 41
    move-result v3

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    move v1, v2

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    return v1
.end method

.method S0(Landroidx/fragment/app/Fragment;)Z
    .locals 0
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isMenuVisible()Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method T()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->N1()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->P(Landroidx/fragment/app/Fragment;)V

    .line 9
    return-void
.end method

.method T0(Landroidx/fragment/app/Fragment;)Z
    .locals 3
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->G0()Landroidx/fragment/app/Fragment;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-object p1, v1, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->T0(Landroidx/fragment/app/Fragment;)Z

    .line 22
    move-result p1

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    :goto_0
    return v0
.end method

.method U()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    .line 4
    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManagerViewModel;->m(Z)V

    .line 11
    const/4 v0, 0x7

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->W(I)V

    .line 15
    return-void
.end method

.method U0(I)Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method V()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    .line 4
    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManagerViewModel;->m(Z)V

    .line 11
    const/4 v0, 0x5

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->W(I)V

    .line 15
    return-void
.end method

.method public V0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method X()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManagerViewModel;->m(Z)V

    .line 9
    const/4 v0, 0x4

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->W(I)V

    .line 13
    return-void
.end method

.method Y()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->W(I)V

    .line 5
    return-void
.end method

.method public a0(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/io/PrintWriter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "    "

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentStore;->e(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 23
    .line 24
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    .line 25
    const/4 p4, 0x0

    .line 26
    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 31
    move-result p2

    .line 32
    .line 33
    if-lez p2, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 37
    .line 38
    const-string v1, "Fragments Created Menus:"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    move v1, p4

    .line 43
    .line 44
    :goto_0
    if-ge v1, p2, :cond_0

    .line 45
    .line 46
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 56
    .line 57
    const-string v3, "  #"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 64
    .line 65
    const-string v3, ": "

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 72
    move-result-object v2

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    .line 77
    add-int/lit8 v1, v1, 0x1

    .line 78
    goto :goto_0

    .line 79
    .line 80
    :cond_0
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 81
    .line 82
    if-eqz p2, :cond_1

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 86
    move-result p2

    .line 87
    .line 88
    if-lez p2, :cond_1

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 92
    .line 93
    const-string v1, "Back Stack:"

    .line 94
    .line 95
    .line 96
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    move v1, p4

    .line 98
    .line 99
    :goto_1
    if-ge v1, p2, :cond_1

    .line 100
    .line 101
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 105
    move-result-object v2

    .line 106
    .line 107
    check-cast v2, Landroidx/fragment/app/BackStackRecord;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 111
    .line 112
    const-string v3, "  #"

    .line 113
    .line 114
    .line 115
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 119
    .line 120
    const-string v3, ": "

    .line 121
    .line 122
    .line 123
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Landroidx/fragment/app/BackStackRecord;->toString()Ljava/lang/String;

    .line 127
    move-result-object v3

    .line 128
    .line 129
    .line 130
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2, v0, p3}, Landroidx/fragment/app/BackStackRecord;->I(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 134
    .line 135
    add-int/lit8 v1, v1, 0x1

    .line 136
    goto :goto_1

    .line 137
    .line 138
    .line 139
    :cond_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 140
    .line 141
    new-instance p2, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    const-string v0, "Back Stack Index: "

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 155
    move-result v0

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    move-result-object p2

    .line 163
    .line 164
    .line 165
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    .line 167
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    .line 168
    monitor-enter p2

    .line 169
    .line 170
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 174
    move-result v0

    .line 175
    .line 176
    if-lez v0, :cond_2

    .line 177
    .line 178
    .line 179
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 180
    .line 181
    const-string v1, "Pending Actions:"

    .line 182
    .line 183
    .line 184
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    .line 186
    :goto_2
    if-ge p4, v0, :cond_2

    .line 187
    .line 188
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 192
    move-result-object v1

    .line 193
    .line 194
    check-cast v1, Landroidx/fragment/app/FragmentManager$OpGenerator;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 198
    .line 199
    const-string v2, "  #"

    .line 200
    .line 201
    .line 202
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 206
    .line 207
    const-string v2, ": "

    .line 208
    .line 209
    .line 210
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 214
    .line 215
    add-int/lit8 p4, p4, 0x1

    .line 216
    goto :goto_2

    .line 217
    :catchall_0
    move-exception p1

    .line 218
    goto :goto_3

    .line 219
    :cond_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    .line 221
    .line 222
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 223
    .line 224
    const-string p2, "FragmentManager misc state:"

    .line 225
    .line 226
    .line 227
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 231
    .line 232
    const-string p2, "  mHost="

    .line 233
    .line 234
    .line 235
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 236
    .line 237
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 238
    .line 239
    .line 240
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 244
    .line 245
    const-string p2, "  mContainer="

    .line 246
    .line 247
    .line 248
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 249
    .line 250
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    .line 251
    .line 252
    .line 253
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 254
    .line 255
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    .line 256
    .line 257
    if-eqz p2, :cond_3

    .line 258
    .line 259
    .line 260
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 261
    .line 262
    const-string p2, "  mParent="

    .line 263
    .line 264
    .line 265
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 266
    .line 267
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    .line 268
    .line 269
    .line 270
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    :cond_3
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 274
    .line 275
    const-string p2, "  mCurState="

    .line 276
    .line 277
    .line 278
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 279
    .line 280
    iget p2, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    .line 281
    .line 282
    .line 283
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 284
    .line 285
    const-string p2, " mStateSaved="

    .line 286
    .line 287
    .line 288
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 289
    .line 290
    iget-boolean p2, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    .line 291
    .line 292
    .line 293
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 294
    .line 295
    const-string p2, " mStopped="

    .line 296
    .line 297
    .line 298
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 299
    .line 300
    iget-boolean p2, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    .line 301
    .line 302
    .line 303
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 304
    .line 305
    const-string p2, " mDestroyed="

    .line 306
    .line 307
    .line 308
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 309
    .line 310
    iget-boolean p2, p0, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    .line 311
    .line 312
    .line 313
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 314
    .line 315
    iget-boolean p2, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    .line 316
    .line 317
    if-eqz p2, :cond_4

    .line 318
    .line 319
    .line 320
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 321
    .line 322
    const-string p1, "  mNeedMenuInvalidate="

    .line 323
    .line 324
    .line 325
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 326
    .line 327
    iget-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    .line 328
    .line 329
    .line 330
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 331
    :cond_4
    return-void

    .line 332
    :goto_3
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    throw p1
.end method

.method b1(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mRequestPermissions:Landroidx/activity/result/ActivityResultLauncher;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;

    .line 7
    .line 8
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p1, p3}, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;-><init>(Ljava/lang/String;I)V

    .line 12
    .line 13
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mLaunchedFragments:Ljava/util/ArrayDeque;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 17
    .line 18
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mRequestPermissions:Landroidx/activity/result/ActivityResultLauncher;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroidx/activity/result/ActivityResultLauncher;->a(Ljava/lang/Object;)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentHostCallback;->k(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V

    .line 28
    :goto_0
    return-void
.end method

.method c0(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V
    .locals 2
    .param p1    # Landroidx/fragment/app/FragmentManager$OpGenerator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p2, :cond_2

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string p2, "FragmentManager has been destroyed"

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p1

    .line 19
    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string p2, "FragmentManager has not been attached to a host."

    .line 23
    .line 24
    .line 25
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p1

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->s()V

    .line 30
    .line 31
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    .line 32
    monitor-enter v0

    .line 33
    .line 34
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 35
    .line 36
    if-nez v1, :cond_4

    .line 37
    .line 38
    if-eqz p2, :cond_3

    .line 39
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string p2, "Activity has been destroyed"

    .line 47
    .line 48
    .line 49
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    throw p1

    .line 51
    .line 52
    :cond_4
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->E1()V

    .line 59
    monitor-exit v0

    .line 60
    return-void

    .line 61
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw p1
.end method

.method c1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mStartActivityForResult:Landroidx/activity/result/ActivityResultLauncher;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    new-instance v0, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;

    .line 7
    .line 8
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p1, p3}, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;-><init>(Ljava/lang/String;I)V

    .line 12
    .line 13
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mLaunchedFragments:Ljava/util/ArrayDeque;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    if-eqz p4, :cond_0

    .line 21
    .line 22
    const-string p1, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mStartActivityForResult:Landroidx/activity/result/ActivityResultLauncher;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroidx/activity/result/ActivityResultLauncher;->a(Ljava/lang/Object;)V

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentHostCallback;->m(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 37
    :goto_0
    return-void
.end method

.method d1(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 11
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/IntentSender;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .param p4    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object v2, p1

    .line 3
    .line 4
    move-object/from16 v9, p8

    .line 5
    .line 6
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->mStartIntentSenderForResult:Landroidx/activity/result/ActivityResultLauncher;

    .line 7
    .line 8
    if-eqz v1, :cond_4

    .line 9
    .line 10
    const-string v1, "FragmentManager"

    .line 11
    const/4 v3, 0x2

    .line 12
    .line 13
    if-eqz v9, :cond_2

    .line 14
    .line 15
    if-nez p4, :cond_0

    .line 16
    .line 17
    new-instance v4, Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 21
    .line 22
    const-string v5, "androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE"

    .line 23
    const/4 v6, 0x1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object v4, p4

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->P0(I)Z

    .line 32
    move-result v5

    .line 33
    .line 34
    if-eqz v5, :cond_1

    .line 35
    .line 36
    new-instance v5, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    const-string v6, "ActivityOptions "

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v6, " were added to fillInIntent "

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v6, " for fragment "

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v5

    .line 68
    .line 69
    .line 70
    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    :cond_1
    const-string v5, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    move-object v4, p4

    .line 78
    .line 79
    :goto_1
    new-instance v5, Landroidx/activity/result/IntentSenderRequest$Builder;

    .line 80
    move-object v6, p2

    .line 81
    .line 82
    .line 83
    invoke-direct {v5, p2}, Landroidx/activity/result/IntentSenderRequest$Builder;-><init>(Landroid/content/IntentSender;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5, v4}, Landroidx/activity/result/IntentSenderRequest$Builder;->b(Landroid/content/Intent;)Landroidx/activity/result/IntentSenderRequest$Builder;

    .line 87
    move-result-object v4

    .line 88
    .line 89
    move/from16 v7, p5

    .line 90
    .line 91
    move/from16 v8, p6

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, v8, v7}, Landroidx/activity/result/IntentSenderRequest$Builder;->c(II)Landroidx/activity/result/IntentSenderRequest$Builder;

    .line 95
    move-result-object v4

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4}, Landroidx/activity/result/IntentSenderRequest$Builder;->a()Landroidx/activity/result/IntentSenderRequest;

    .line 99
    move-result-object v4

    .line 100
    .line 101
    new-instance v5, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;

    .line 102
    .line 103
    iget-object v6, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 104
    move v10, p3

    .line 105
    .line 106
    .line 107
    invoke-direct {v5, v6, p3}, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;-><init>(Ljava/lang/String;I)V

    .line 108
    .line 109
    iget-object v6, v0, Landroidx/fragment/app/FragmentManager;->mLaunchedFragments:Ljava/util/ArrayDeque;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6, v5}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->P0(I)Z

    .line 116
    move-result v3

    .line 117
    .line 118
    if-eqz v3, :cond_3

    .line 119
    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    const-string v5, "Fragment "

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string v2, "is launching an IntentSender for result "

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object v2

    .line 141
    .line 142
    .line 143
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    :cond_3
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->mStartIntentSenderForResult:Landroidx/activity/result/ActivityResultLauncher;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v4}, Landroidx/activity/result/ActivityResultLauncher;->a(Ljava/lang/Object;)V

    .line 149
    goto :goto_2

    .line 150
    :cond_4
    move-object v6, p2

    .line 151
    move v10, p3

    .line 152
    .line 153
    move/from16 v7, p5

    .line 154
    .line 155
    move/from16 v8, p6

    .line 156
    .line 157
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 158
    move-object v2, p1

    .line 159
    move-object v3, p2

    .line 160
    move v4, p3

    .line 161
    move-object v5, p4

    .line 162
    .line 163
    move/from16 v6, p5

    .line 164
    .line 165
    move/from16 v7, p6

    .line 166
    .line 167
    move/from16 v8, p7

    .line 168
    .line 169
    move-object/from16 v9, p8

    .line 170
    .line 171
    .line 172
    invoke-virtual/range {v1 .. v9}, Landroidx/fragment/app/FragmentHostCallback;->n(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 173
    :goto_2
    return-void
.end method

.method e0(Z)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->d0(Z)V

    .line 4
    const/4 p1, 0x0

    .line 5
    .line 6
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, v1}, Landroidx/fragment/app/FragmentManager;->r0(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    const/4 p1, 0x1

    .line 16
    .line 17
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    .line 18
    .line 19
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v0, v1}, Landroidx/fragment/app/FragmentManager;->t1(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->t()V

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->t()V

    .line 33
    throw p1

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->N1()V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->Z()V

    .line 40
    .line 41
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->b()V

    .line 45
    return p1
.end method

.method e1(IZ)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    const/4 v0, -0x1

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string p2, "No activity"

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    throw p1

    .line 17
    .line 18
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 19
    .line 20
    iget p2, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    .line 21
    .line 22
    if-ne p1, p2, :cond_2

    .line 23
    return-void

    .line 24
    .line 25
    :cond_2
    iput p1, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    .line 26
    .line 27
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentStore;->t()V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->K1()V

    .line 34
    .line 35
    iget-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    .line 36
    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 40
    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    iget p2, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    .line 44
    const/4 v0, 0x7

    .line 45
    .line 46
    if-ne p2, v0, :cond_3

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentHostCallback;->o()V

    .line 50
    const/4 p1, 0x0

    .line 51
    .line 52
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    .line 53
    :cond_3
    return-void
.end method

.method f0(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentManager$OpGenerator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p2, :cond_1

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    :cond_0
    return-void

    .line 12
    .line 13
    .line 14
    :cond_1
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentManager;->d0(Z)V

    .line 15
    .line 16
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, p2, v0}, Landroidx/fragment/app/FragmentManager$OpGenerator;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 22
    move-result p1

    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    const/4 p1, 0x1

    .line 26
    .line 27
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    .line 28
    .line 29
    :try_start_0
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    .line 30
    .line 31
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/FragmentManager;->t1(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->t()V

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->t()V

    .line 43
    throw p1

    .line 44
    .line 45
    .line 46
    :cond_2
    :goto_0
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->N1()V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->Z()V

    .line 50
    .line 51
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentStore;->b()V

    .line 55
    return-void
.end method

.method f1()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    .line 8
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManagerViewModel;->m(Z)V

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->o()Ljava/util/List;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v1

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->noteStateNotSaved()V

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    return-void
.end method

.method g1(Landroidx/fragment/app/FragmentContainerView;)V
    .locals 5
    .param p1    # Landroidx/fragment/app/FragmentContainerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->k()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Landroidx/fragment/app/FragmentStateManager;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStateManager;->k()Landroidx/fragment/app/Fragment;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    iget v3, v2, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 32
    move-result v4

    .line 33
    .line 34
    if-ne v3, v4, :cond_0

    .line 35
    .line 36
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 37
    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    if-nez v3, :cond_0

    .line 45
    .line 46
    iput-object p1, v2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStateManager;->b()V

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return-void
.end method

.method h1(Landroidx/fragment/app/FragmentStateManager;)V
    .locals 2
    .param p1    # Landroidx/fragment/app/FragmentStateManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentStateManager;->k()Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 14
    .line 15
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->mHavePendingDeferredStart:Z

    .line 16
    return-void

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    .line 19
    iput-boolean v1, v0, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentStateManager;->m()V

    .line 23
    :cond_1
    return-void
.end method

.method i(Landroidx/fragment/app/BackStackRecord;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method

.method public i0()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->e0(Z)Z

    .line 5
    move-result v0

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->q0()V

    .line 9
    return v0
.end method

.method public i1()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroidx/fragment/app/FragmentManager$PopBackStackState;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v1, v2, v3}, Landroidx/fragment/app/FragmentManager$PopBackStackState;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, v3}, Landroidx/fragment/app/FragmentManager;->c0(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    .line 12
    return-void
.end method

.method j(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;
    .locals 3
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mPreviousWho:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->h(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 8
    :cond_0
    const/4 v0, 0x2

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->P0(I)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    const-string v1, "add: "

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    const-string v1, "FragmentManager"

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->z(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    iput-object p0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 43
    .line 44
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentStore;->r(Landroidx/fragment/app/FragmentStateManager;)V

    .line 48
    .line 49
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 50
    .line 51
    if-nez v1, :cond_3

    .line 52
    .line 53
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentStore;->a(Landroidx/fragment/app/Fragment;)V

    .line 57
    const/4 v1, 0x0

    .line 58
    .line 59
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 60
    .line 61
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 62
    .line 63
    if-nez v2, :cond_2

    .line 64
    .line 65
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 66
    .line 67
    .line 68
    :cond_2
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->Q0(Landroidx/fragment/app/Fragment;)Z

    .line 69
    move-result p1

    .line 70
    .line 71
    if-eqz p1, :cond_3

    .line 72
    const/4 p1, 0x1

    .line 73
    .line 74
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    .line 75
    :cond_3
    return-object v0
.end method

.method j0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentStore;->f(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public j1(II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, v0}, Landroidx/fragment/app/FragmentManager;->k1(IIZ)V

    .line 5
    return-void
.end method

.method public k(Landroidx/fragment/app/FragmentOnAttachListener;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentOnAttachListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method k1(IIZ)V
    .locals 2

    .line 1
    .line 2
    if-ltz p1, :cond_0

    .line 3
    .line 4
    new-instance v0, Landroidx/fragment/app/FragmentManager$PopBackStackState;

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v1, p1, p2}, Landroidx/fragment/app/FragmentManager$PopBackStackState;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, p3}, Landroidx/fragment/app/FragmentManager;->c0(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    new-instance p3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    const-string v0, "Bad id: "

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    throw p2
.end method

.method public l(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method

.method public l0(I)Landroidx/fragment/app/Fragment;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentStore;->g(I)Landroidx/fragment/app/Fragment;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public l1(Ljava/lang/String;I)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Landroidx/fragment/app/FragmentManager$PopBackStackState;

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, p1, v1, p2}, Landroidx/fragment/app/FragmentManager$PopBackStackState;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;II)V

    .line 7
    const/4 p1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentManager;->c0(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    .line 11
    return-void
.end method

.method m(Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerViewModel;->b(Landroidx/fragment/app/Fragment;)V

    .line 6
    return-void
.end method

.method public m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentStore;->h(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public m1()Z
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v2, v0, v1}, Landroidx/fragment/app/FragmentManager;->o1(Ljava/lang/String;II)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method n()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method n0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentStore;->i(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public n1(II)Z
    .locals 2

    .line 1
    .line 2
    if-ltz p1, :cond_0

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0, p1, p2}, Landroidx/fragment/app/FragmentManager;->o1(Ljava/lang/String;II)Z

    .line 7
    move-result p1

    .line 8
    return p1

    .line 9
    .line 10
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    const-string v1, "Bad id: "

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    throw p2
.end method

.method o(Landroidx/fragment/app/FragmentHostCallback;Landroidx/fragment/app/FragmentContainer;Landroidx/fragment/app/Fragment;)V
    .locals 3
    .param p1    # Landroidx/fragment/app/FragmentHostCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/FragmentContainer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentHostCallback<",
            "*>;",
            "Landroidx/fragment/app/FragmentContainer;",
            "Landroidx/fragment/app/Fragment;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 3
    .line 4
    if-nez v0, :cond_f

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 7
    .line 8
    iput-object p2, p0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    .line 9
    .line 10
    iput-object p3, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    .line 11
    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    new-instance p2, Landroidx/fragment/app/FragmentManager$7;

    .line 15
    .line 16
    .line 17
    invoke-direct {p2, p0, p3}, Landroidx/fragment/app/FragmentManager$7;-><init>(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p2}, Landroidx/fragment/app/FragmentManager;->k(Landroidx/fragment/app/FragmentOnAttachListener;)V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    instance-of p2, p1, Landroidx/fragment/app/FragmentOnAttachListener;

    .line 24
    .line 25
    if-eqz p2, :cond_1

    .line 26
    move-object p2, p1

    .line 27
    .line 28
    check-cast p2, Landroidx/fragment/app/FragmentOnAttachListener;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p2}, Landroidx/fragment/app/FragmentManager;->k(Landroidx/fragment/app/FragmentOnAttachListener;)V

    .line 32
    .line 33
    :cond_1
    :goto_0
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    .line 34
    .line 35
    if-eqz p2, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->N1()V

    .line 39
    .line 40
    :cond_2
    instance-of p2, p1, Landroidx/activity/OnBackPressedDispatcherOwner;

    .line 41
    .line 42
    if-eqz p2, :cond_4

    .line 43
    move-object p2, p1

    .line 44
    .line 45
    check-cast p2, Landroidx/activity/OnBackPressedDispatcherOwner;

    .line 46
    .line 47
    .line 48
    invoke-interface {p2}, Landroidx/activity/OnBackPressedDispatcherOwner;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    .line 52
    .line 53
    if-eqz p3, :cond_3

    .line 54
    move-object p2, p3

    .line 55
    .line 56
    :cond_3
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p2, v1}, Landroidx/activity/OnBackPressedDispatcher;->b(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 60
    .line 61
    :cond_4
    if-eqz p3, :cond_5

    .line 62
    .line 63
    iget-object p1, p3, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 64
    .line 65
    .line 66
    invoke-direct {p1, p3}, Landroidx/fragment/app/FragmentManager;->v0(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentManagerViewModel;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    .line 70
    goto :goto_1

    .line 71
    .line 72
    :cond_5
    instance-of p2, p1, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 73
    .line 74
    if-eqz p2, :cond_6

    .line 75
    .line 76
    check-cast p1, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 77
    .line 78
    .line 79
    invoke-interface {p1}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    .line 83
    invoke-static {p1}, Landroidx/fragment/app/FragmentManagerViewModel;->h(Landroidx/lifecycle/ViewModelStore;)Landroidx/fragment/app/FragmentManagerViewModel;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    .line 87
    goto :goto_1

    .line 88
    .line 89
    :cond_6
    new-instance p1, Landroidx/fragment/app/FragmentManagerViewModel;

    .line 90
    const/4 p2, 0x0

    .line 91
    .line 92
    .line 93
    invoke-direct {p1, p2}, Landroidx/fragment/app/FragmentManagerViewModel;-><init>(Z)V

    .line 94
    .line 95
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    .line 96
    .line 97
    :goto_1
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->V0()Z

    .line 101
    move-result p2

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManagerViewModel;->m(Z)V

    .line 105
    .line 106
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 107
    .line 108
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentStore;->A(Landroidx/fragment/app/FragmentManagerViewModel;)V

    .line 112
    .line 113
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 114
    .line 115
    instance-of p2, p1, Landroidx/savedstate/SavedStateRegistryOwner;

    .line 116
    .line 117
    if-eqz p2, :cond_7

    .line 118
    .line 119
    if-nez p3, :cond_7

    .line 120
    .line 121
    check-cast p1, Landroidx/savedstate/SavedStateRegistryOwner;

    .line 122
    .line 123
    .line 124
    invoke-interface {p1}, Landroidx/savedstate/SavedStateRegistryOwner;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    .line 125
    move-result-object p1

    .line 126
    .line 127
    new-instance p2, Landroidx/fragment/app/i;

    .line 128
    .line 129
    .line 130
    invoke-direct {p2, p0}, Landroidx/fragment/app/i;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 131
    .line 132
    const-string v0, "android:support:fragments"

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v0, p2}, Landroidx/savedstate/SavedStateRegistry;->h(Ljava/lang/String;Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v0}, Landroidx/savedstate/SavedStateRegistry;->b(Ljava/lang/String;)Landroid/os/Bundle;

    .line 139
    move-result-object p1

    .line 140
    .line 141
    if-eqz p1, :cond_7

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->y1(Landroid/os/Parcelable;)V

    .line 145
    .line 146
    :cond_7
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 147
    .line 148
    instance-of p2, p1, Landroidx/activity/result/ActivityResultRegistryOwner;

    .line 149
    .line 150
    if-eqz p2, :cond_9

    .line 151
    .line 152
    check-cast p1, Landroidx/activity/result/ActivityResultRegistryOwner;

    .line 153
    .line 154
    .line 155
    invoke-interface {p1}, Landroidx/activity/result/ActivityResultRegistryOwner;->getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;

    .line 156
    move-result-object p1

    .line 157
    .line 158
    if-eqz p3, :cond_8

    .line 159
    .line 160
    new-instance p2, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    const-string v0, ":"

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    move-result-object p2

    .line 178
    goto :goto_2

    .line 179
    .line 180
    :cond_8
    const-string p2, ""

    .line 181
    .line 182
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    const-string v1, "FragmentManager:"

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    move-result-object p2

    .line 198
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    const-string v1, "StartActivityForResult"

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    move-result-object v0

    .line 215
    .line 216
    new-instance v1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 217
    .line 218
    .line 219
    invoke-direct {v1}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    .line 220
    .line 221
    new-instance v2, Landroidx/fragment/app/FragmentManager$8;

    .line 222
    .line 223
    .line 224
    invoke-direct {v2, p0}, Landroidx/fragment/app/FragmentManager$8;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1, v0, v1, v2}, Landroidx/activity/result/ActivityResultRegistry;->i(Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 228
    move-result-object v0

    .line 229
    .line 230
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mStartActivityForResult:Landroidx/activity/result/ActivityResultLauncher;

    .line 231
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    const-string v1, "StartIntentSenderForResult"

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    move-result-object v0

    .line 248
    .line 249
    new-instance v1, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 250
    .line 251
    .line 252
    invoke-direct {v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>()V

    .line 253
    .line 254
    new-instance v2, Landroidx/fragment/app/FragmentManager$9;

    .line 255
    .line 256
    .line 257
    invoke-direct {v2, p0}, Landroidx/fragment/app/FragmentManager$9;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1, v0, v1, v2}, Landroidx/activity/result/ActivityResultRegistry;->i(Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 261
    move-result-object v0

    .line 262
    .line 263
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mStartIntentSenderForResult:Landroidx/activity/result/ActivityResultLauncher;

    .line 264
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    const-string p2, "RequestPermissions"

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    move-result-object p2

    .line 281
    .line 282
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;

    .line 283
    .line 284
    .line 285
    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;-><init>()V

    .line 286
    .line 287
    new-instance v1, Landroidx/fragment/app/FragmentManager$10;

    .line 288
    .line 289
    .line 290
    invoke-direct {v1, p0}, Landroidx/fragment/app/FragmentManager$10;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p1, p2, v0, v1}, Landroidx/activity/result/ActivityResultRegistry;->i(Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 294
    move-result-object p1

    .line 295
    .line 296
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->mRequestPermissions:Landroidx/activity/result/ActivityResultLauncher;

    .line 297
    .line 298
    :cond_9
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 299
    .line 300
    instance-of p2, p1, Landroidx/core/content/OnConfigurationChangedProvider;

    .line 301
    .line 302
    if-eqz p2, :cond_a

    .line 303
    .line 304
    check-cast p1, Landroidx/core/content/OnConfigurationChangedProvider;

    .line 305
    .line 306
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mOnConfigurationChangedListener:Landroidx/core/util/Consumer;

    .line 307
    .line 308
    .line 309
    invoke-interface {p1, p2}, Landroidx/core/content/OnConfigurationChangedProvider;->addOnConfigurationChangedListener(Landroidx/core/util/Consumer;)V

    .line 310
    .line 311
    :cond_a
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 312
    .line 313
    instance-of p2, p1, Landroidx/core/content/OnTrimMemoryProvider;

    .line 314
    .line 315
    if-eqz p2, :cond_b

    .line 316
    .line 317
    check-cast p1, Landroidx/core/content/OnTrimMemoryProvider;

    .line 318
    .line 319
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mOnTrimMemoryListener:Landroidx/core/util/Consumer;

    .line 320
    .line 321
    .line 322
    invoke-interface {p1, p2}, Landroidx/core/content/OnTrimMemoryProvider;->addOnTrimMemoryListener(Landroidx/core/util/Consumer;)V

    .line 323
    .line 324
    :cond_b
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 325
    .line 326
    instance-of p2, p1, Landroidx/core/app/OnMultiWindowModeChangedProvider;

    .line 327
    .line 328
    if-eqz p2, :cond_c

    .line 329
    .line 330
    check-cast p1, Landroidx/core/app/OnMultiWindowModeChangedProvider;

    .line 331
    .line 332
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mOnMultiWindowModeChangedListener:Landroidx/core/util/Consumer;

    .line 333
    .line 334
    .line 335
    invoke-interface {p1, p2}, Landroidx/core/app/OnMultiWindowModeChangedProvider;->addOnMultiWindowModeChangedListener(Landroidx/core/util/Consumer;)V

    .line 336
    .line 337
    :cond_c
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 338
    .line 339
    instance-of p2, p1, Landroidx/core/app/OnPictureInPictureModeChangedProvider;

    .line 340
    .line 341
    if-eqz p2, :cond_d

    .line 342
    .line 343
    check-cast p1, Landroidx/core/app/OnPictureInPictureModeChangedProvider;

    .line 344
    .line 345
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mOnPictureInPictureModeChangedListener:Landroidx/core/util/Consumer;

    .line 346
    .line 347
    .line 348
    invoke-interface {p1, p2}, Landroidx/core/app/OnPictureInPictureModeChangedProvider;->addOnPictureInPictureModeChangedListener(Landroidx/core/util/Consumer;)V

    .line 349
    .line 350
    :cond_d
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 351
    .line 352
    instance-of p2, p1, Landroidx/core/view/MenuHost;

    .line 353
    .line 354
    if-eqz p2, :cond_e

    .line 355
    .line 356
    if-nez p3, :cond_e

    .line 357
    .line 358
    check-cast p1, Landroidx/core/view/MenuHost;

    .line 359
    .line 360
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mMenuProvider:Landroidx/core/view/MenuProvider;

    .line 361
    .line 362
    .line 363
    invoke-interface {p1, p2}, Landroidx/core/view/MenuHost;->addMenuProvider(Landroidx/core/view/MenuProvider;)V

    .line 364
    :cond_e
    return-void

    .line 365
    .line 366
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 367
    .line 368
    const-string p2, "Already attached"

    .line 369
    .line 370
    .line 371
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 372
    throw p1
.end method

.method p(Landroidx/fragment/app/Fragment;)V
    .locals 4
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->P0(I)Z

    .line 5
    move-result v1

    .line 6
    .line 7
    const-string v2, "FragmentManager"

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    const-string v3, "attach: "

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    :cond_0
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    const/4 v1, 0x0

    .line 35
    .line 36
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 37
    .line 38
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 39
    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentStore;->a(Landroidx/fragment/app/Fragment;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->P0(I)Z

    .line 49
    move-result v0

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    const-string v1, "add from attach: "

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    .line 71
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    :cond_1
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->Q0(Landroidx/fragment/app/Fragment;)Z

    .line 75
    move-result p1

    .line 76
    .line 77
    if-eqz p1, :cond_2

    .line 78
    const/4 p1, 0x1

    .line 79
    .line 80
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    .line 81
    :cond_2
    return-void
.end method

.method p1(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 2
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    and-int/2addr p5, v0

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz p5, :cond_0

    .line 6
    move p5, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move p5, v1

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-direct {p0, p3, p4, p5}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;IZ)I

    .line 12
    move-result p3

    .line 13
    .line 14
    if-gez p3, :cond_1

    .line 15
    return v1

    .line 16
    .line 17
    :cond_1
    iget-object p4, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 21
    move-result p4

    .line 22
    sub-int/2addr p4, v0

    .line 23
    .line 24
    :goto_1
    if-lt p4, p3, :cond_2

    .line 25
    .line 26
    iget-object p5, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 30
    move-result-object p5

    .line 31
    .line 32
    check-cast p5, Landroidx/fragment/app/BackStackRecord;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    sget-object p5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    add-int/lit8 p4, p4, -0x1

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    return v0
.end method

.method public q()Landroidx/fragment/app/FragmentTransaction;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/fragment/app/BackStackRecord;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 6
    return-object v0
.end method

.method public q1(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 3
    .line 4
    if-eq v0, p0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    const-string v2, "Fragment "

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, " is not currently in the FragmentManager"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->L1(Ljava/lang/RuntimeException;)V

    .line 35
    .line 36
    :cond_0
    iget-object p3, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method r()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->l()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v3

    .line 17
    .line 18
    if-eqz v3, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v3}, Landroidx/fragment/app/FragmentManager;->Q0(Landroidx/fragment/app/Fragment;)Z

    .line 30
    move-result v2

    .line 31
    .line 32
    :cond_1
    if-eqz v2, :cond_0

    .line 33
    const/4 v0, 0x1

    .line 34
    return v0

    .line 35
    :cond_2
    return v1
.end method

.method public r1(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->o(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    .line 6
    return-void
.end method

.method s0()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->l()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method s1(Landroidx/fragment/app/Fragment;)V
    .locals 3
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->P0(I)Z

    .line 5
    move-result v0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    const-string v1, "remove: "

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, " nesting="

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    iget v1, p1, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    const-string v1, "FragmentManager"

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    .line 43
    move-result v0

    .line 44
    const/4 v1, 0x1

    .line 45
    xor-int/2addr v0, v1

    .line 46
    .line 47
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 48
    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentStore;->u(Landroidx/fragment/app/Fragment;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->Q0(Landroidx/fragment/app/Fragment;)Z

    .line 60
    move-result v0

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    .line 65
    .line 66
    :cond_2
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 67
    .line 68
    .line 69
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->I1(Landroidx/fragment/app/Fragment;)V

    .line 70
    :cond_3
    return-void
.end method

.method public t0(I)Landroidx/fragment/app/FragmentManager$BackStackEntry;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Landroidx/fragment/app/FragmentManager$BackStackEntry;

    .line 9
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    const/16 v1, 0x80

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    .line 9
    const-string v1, "FragmentManager{"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 16
    move-result v1

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, " in "

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    .line 31
    .line 32
    const-string/jumbo v2, "}"

    .line 33
    .line 34
    const-string/jumbo v3, "{"

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    .line 53
    .line 54
    .line 55
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 56
    move-result v1

    .line 57
    .line 58
    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    goto :goto_0

    .line 68
    .line 69
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 70
    .line 71
    if-eqz v1, :cond_1

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 88
    .line 89
    .line 90
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 91
    move-result v1

    .line 92
    .line 93
    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 95
    move-result-object v1

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    goto :goto_0

    .line 103
    .line 104
    :cond_1
    const-string v1, "null"

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    :goto_0
    const-string/jumbo v1, "}}"

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object v0

    .line 117
    return-object v0
.end method

.method u(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 6
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentManager;->x1(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    const/4 v4, -0x1

    .line 10
    const/4 v5, 0x1

    .line 11
    move-object v0, p0

    .line 12
    move-object v1, p1

    .line 13
    move-object v2, p2

    .line 14
    move-object v3, p3

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/FragmentManager;->p1(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public u0()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method u1(Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerViewModel;->l(Landroidx/fragment/app/Fragment;)V

    .line 6
    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mResults:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const/4 v0, 0x2

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->P0(I)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    const-string v1, "Clearing fragment result with key "

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    const-string v0, "FragmentManager"

    .line 32
    .line 33
    .line 34
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    return-void
.end method

.method w0()Landroidx/fragment/app/FragmentContainer;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    return-object v0
.end method

.method public w1(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Landroidx/fragment/app/FragmentManager$RestoreBackStackState;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Landroidx/fragment/app/FragmentManager$RestoreBackStackState;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 6
    const/4 p1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentManager;->c0(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    .line 10
    return-void
.end method

.method public x0(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->j0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    const-string v3, "Fragment no longer exists for key "

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string p2, ": unique id "

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, v1}, Landroidx/fragment/app/FragmentManager;->L1(Ljava/lang/RuntimeException;)V

    .line 48
    :cond_1
    return-object v0
.end method

.method x1(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 6
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackStates:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p3

    .line 7
    .line 8
    check-cast p3, Landroidx/fragment/app/BackStackState;

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    if-nez p3, :cond_0

    .line 12
    return v0

    .line 13
    .line 14
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v3

    .line 26
    .line 27
    if-eqz v3, :cond_3

    .line 28
    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    check-cast v3, Landroidx/fragment/app/BackStackRecord;

    .line 34
    .line 35
    iget-boolean v4, v3, Landroidx/fragment/app/BackStackRecord;->mBeingSaved:Z

    .line 36
    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    iget-object v3, v3, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object v3

    .line 44
    .line 45
    .line 46
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v4

    .line 48
    .line 49
    if-eqz v4, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v4

    .line 54
    .line 55
    check-cast v4, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 56
    .line 57
    iget-object v4, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    .line 58
    .line 59
    if-eqz v4, :cond_2

    .line 60
    .line 61
    iget-object v5, v4, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    goto :goto_0

    .line 66
    .line 67
    .line 68
    :cond_3
    invoke-virtual {p3, p0, v1}, Landroidx/fragment/app/BackStackState;->a(Landroidx/fragment/app/FragmentManager;Ljava/util/Map;)Ljava/util/List;

    .line 69
    move-result-object p3

    .line 70
    .line 71
    .line 72
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 73
    move-result-object p3

    .line 74
    :cond_4
    move v1, v0

    .line 75
    .line 76
    .line 77
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    move-result v2

    .line 79
    .line 80
    if-eqz v2, :cond_6

    .line 81
    .line 82
    .line 83
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    move-result-object v2

    .line 85
    .line 86
    check-cast v2, Landroidx/fragment/app/BackStackRecord;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, p1, p2}, Landroidx/fragment/app/BackStackRecord;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 90
    move-result v2

    .line 91
    .line 92
    if-nez v2, :cond_5

    .line 93
    .line 94
    if-eqz v1, :cond_4

    .line 95
    :cond_5
    const/4 v1, 0x1

    .line 96
    goto :goto_1

    .line 97
    :cond_6
    return v1
.end method

.method y1(Landroid/os/Parcelable;)V
    .locals 13
    .param p1    # Landroid/os/Parcelable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    check-cast p1, Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    check-cast v1, Ljava/lang/String;

    .line 26
    .line 27
    const-string v2, "result_"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    move-result v2

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentHostCallback;->f()Landroid/content/Context;

    .line 45
    move-result-object v3

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 53
    const/4 v3, 0x7

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mResults:Ljava/util/Map;

    .line 60
    .line 61
    .line 62
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    goto :goto_0

    .line 64
    .line 65
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 66
    .line 67
    .line 68
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    .line 75
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    .line 79
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    move-result v2

    .line 81
    .line 82
    const-string/jumbo v3, "state"

    .line 83
    .line 84
    if-eqz v2, :cond_4

    .line 85
    .line 86
    .line 87
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    move-result-object v2

    .line 89
    .line 90
    check-cast v2, Ljava/lang/String;

    .line 91
    .line 92
    const-string v4, "fragment_"

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 96
    move-result v4

    .line 97
    .line 98
    if-eqz v4, :cond_3

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 102
    move-result-object v2

    .line 103
    .line 104
    if-eqz v2, :cond_3

    .line 105
    .line 106
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentHostCallback;->f()Landroid/content/Context;

    .line 110
    move-result-object v4

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 114
    move-result-object v4

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 121
    move-result-object v2

    .line 122
    .line 123
    check-cast v2, Landroidx/fragment/app/FragmentState;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    goto :goto_1

    .line 128
    .line 129
    :cond_4
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentStore;->x(Ljava/util/ArrayList;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 136
    move-result-object p1

    .line 137
    .line 138
    check-cast p1, Landroidx/fragment/app/FragmentManagerState;

    .line 139
    .line 140
    if-nez p1, :cond_5

    .line 141
    return-void

    .line 142
    .line 143
    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->v()V

    .line 147
    .line 148
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->mActive:Ljava/util/ArrayList;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 152
    move-result-object v0

    .line 153
    .line 154
    .line 155
    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 156
    move-result v1

    .line 157
    .line 158
    const-string v2, "): "

    .line 159
    const/4 v3, 0x0

    .line 160
    const/4 v4, 0x2

    .line 161
    .line 162
    const-string v5, "FragmentManager"

    .line 163
    .line 164
    if-eqz v1, :cond_a

    .line 165
    .line 166
    .line 167
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    move-result-object v1

    .line 169
    .line 170
    check-cast v1, Ljava/lang/String;

    .line 171
    .line 172
    iget-object v6, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v6, v1, v3}, Landroidx/fragment/app/FragmentStore;->B(Ljava/lang/String;Landroidx/fragment/app/FragmentState;)Landroidx/fragment/app/FragmentState;

    .line 176
    move-result-object v12

    .line 177
    .line 178
    if-eqz v12, :cond_6

    .line 179
    .line 180
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    .line 181
    .line 182
    iget-object v3, v12, Landroidx/fragment/app/FragmentState;->mWho:Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentManagerViewModel;->f(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 186
    move-result-object v1

    .line 187
    .line 188
    if-eqz v1, :cond_8

    .line 189
    .line 190
    .line 191
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->P0(I)Z

    .line 192
    move-result v3

    .line 193
    .line 194
    if-eqz v3, :cond_7

    .line 195
    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .line 201
    const-string v6, "restoreSaveState: re-attaching retained "

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    move-result-object v3

    .line 212
    .line 213
    .line 214
    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .line 216
    :cond_7
    new-instance v3, Landroidx/fragment/app/FragmentStateManager;

    .line 217
    .line 218
    iget-object v6, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    .line 219
    .line 220
    iget-object v7, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 221
    .line 222
    .line 223
    invoke-direct {v3, v6, v7, v1, v12}, Landroidx/fragment/app/FragmentStateManager;-><init>(Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;Landroidx/fragment/app/FragmentStore;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentState;)V

    .line 224
    goto :goto_3

    .line 225
    .line 226
    :cond_8
    new-instance v3, Landroidx/fragment/app/FragmentStateManager;

    .line 227
    .line 228
    iget-object v8, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    .line 229
    .line 230
    iget-object v9, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 231
    .line 232
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->f()Landroid/content/Context;

    .line 236
    move-result-object v1

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 240
    move-result-object v10

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->z0()Landroidx/fragment/app/FragmentFactory;

    .line 244
    move-result-object v11

    .line 245
    move-object v7, v3

    .line 246
    .line 247
    .line 248
    invoke-direct/range {v7 .. v12}, Landroidx/fragment/app/FragmentStateManager;-><init>(Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;Landroidx/fragment/app/FragmentStore;Ljava/lang/ClassLoader;Landroidx/fragment/app/FragmentFactory;Landroidx/fragment/app/FragmentState;)V

    .line 249
    .line 250
    .line 251
    :goto_3
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentStateManager;->k()Landroidx/fragment/app/Fragment;

    .line 252
    move-result-object v1

    .line 253
    .line 254
    iput-object p0, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 255
    .line 256
    .line 257
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->P0(I)Z

    .line 258
    move-result v4

    .line 259
    .line 260
    if-eqz v4, :cond_9

    .line 261
    .line 262
    new-instance v4, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .line 267
    const-string v6, "restoreSaveState: active ("

    .line 268
    .line 269
    .line 270
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    iget-object v6, v1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    move-result-object v1

    .line 286
    .line 287
    .line 288
    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .line 290
    :cond_9
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->f()Landroid/content/Context;

    .line 294
    move-result-object v1

    .line 295
    .line 296
    .line 297
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 298
    move-result-object v1

    .line 299
    .line 300
    .line 301
    invoke-virtual {v3, v1}, Landroidx/fragment/app/FragmentStateManager;->o(Ljava/lang/ClassLoader;)V

    .line 302
    .line 303
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentStore;->r(Landroidx/fragment/app/FragmentStateManager;)V

    .line 307
    .line 308
    iget v1, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    .line 309
    .line 310
    .line 311
    invoke-virtual {v3, v1}, Landroidx/fragment/app/FragmentStateManager;->u(I)V

    .line 312
    .line 313
    goto/16 :goto_2

    .line 314
    .line 315
    :cond_a
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerViewModel;->i()Ljava/util/Collection;

    .line 319
    move-result-object v0

    .line 320
    .line 321
    .line 322
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 323
    move-result-object v0

    .line 324
    .line 325
    .line 326
    :cond_b
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 327
    move-result v1

    .line 328
    .line 329
    if-eqz v1, :cond_d

    .line 330
    .line 331
    .line 332
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 333
    move-result-object v1

    .line 334
    .line 335
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 336
    .line 337
    iget-object v6, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 338
    .line 339
    iget-object v7, v1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v6, v7}, Landroidx/fragment/app/FragmentStore;->c(Ljava/lang/String;)Z

    .line 343
    move-result v6

    .line 344
    .line 345
    if-nez v6, :cond_b

    .line 346
    .line 347
    .line 348
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->P0(I)Z

    .line 349
    move-result v6

    .line 350
    .line 351
    if-eqz v6, :cond_c

    .line 352
    .line 353
    new-instance v6, Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    .line 358
    const-string v7, "Discarding retained Fragment "

    .line 359
    .line 360
    .line 361
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    const-string v7, " that was not found in the set of active Fragments "

    .line 367
    .line 368
    .line 369
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    iget-object v7, p1, Landroidx/fragment/app/FragmentManagerState;->mActive:Ljava/util/ArrayList;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    move-result-object v6

    .line 379
    .line 380
    .line 381
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .line 383
    :cond_c
    iget-object v6, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v6, v1}, Landroidx/fragment/app/FragmentManagerViewModel;->l(Landroidx/fragment/app/Fragment;)V

    .line 387
    .line 388
    iput-object p0, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 389
    .line 390
    new-instance v6, Landroidx/fragment/app/FragmentStateManager;

    .line 391
    .line 392
    iget-object v7, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    .line 393
    .line 394
    iget-object v8, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 395
    .line 396
    .line 397
    invoke-direct {v6, v7, v8, v1}, Landroidx/fragment/app/FragmentStateManager;-><init>(Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;Landroidx/fragment/app/FragmentStore;Landroidx/fragment/app/Fragment;)V

    .line 398
    const/4 v7, 0x1

    .line 399
    .line 400
    .line 401
    invoke-virtual {v6, v7}, Landroidx/fragment/app/FragmentStateManager;->u(I)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v6}, Landroidx/fragment/app/FragmentStateManager;->m()V

    .line 405
    .line 406
    iput-boolean v7, v1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 407
    .line 408
    .line 409
    invoke-virtual {v6}, Landroidx/fragment/app/FragmentStateManager;->m()V

    .line 410
    goto :goto_4

    .line 411
    .line 412
    :cond_d
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 413
    .line 414
    iget-object v1, p1, Landroidx/fragment/app/FragmentManagerState;->mAdded:Ljava/util/ArrayList;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentStore;->w(Ljava/util/List;)V

    .line 418
    .line 419
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackRecordState;

    .line 420
    const/4 v1, 0x0

    .line 421
    .line 422
    if-eqz v0, :cond_f

    .line 423
    .line 424
    new-instance v0, Ljava/util/ArrayList;

    .line 425
    .line 426
    iget-object v3, p1, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackRecordState;

    .line 427
    array-length v3, v3

    .line 428
    .line 429
    .line 430
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 431
    .line 432
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 433
    move v0, v1

    .line 434
    .line 435
    :goto_5
    iget-object v3, p1, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackRecordState;

    .line 436
    array-length v6, v3

    .line 437
    .line 438
    if-ge v0, v6, :cond_10

    .line 439
    .line 440
    aget-object v3, v3, v0

    .line 441
    .line 442
    .line 443
    invoke-virtual {v3, p0}, Landroidx/fragment/app/BackStackRecordState;->c(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/BackStackRecord;

    .line 444
    move-result-object v3

    .line 445
    .line 446
    .line 447
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->P0(I)Z

    .line 448
    move-result v6

    .line 449
    .line 450
    if-eqz v6, :cond_e

    .line 451
    .line 452
    new-instance v6, Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 456
    .line 457
    const-string v7, "restoreAllState: back stack #"

    .line 458
    .line 459
    .line 460
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    const-string v7, " (index "

    .line 466
    .line 467
    .line 468
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    iget v7, v3, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    .line 471
    .line 472
    .line 473
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 483
    move-result-object v6

    .line 484
    .line 485
    .line 486
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    .line 488
    new-instance v6, Landroidx/fragment/app/LogWriter;

    .line 489
    .line 490
    .line 491
    invoke-direct {v6, v5}, Landroidx/fragment/app/LogWriter;-><init>(Ljava/lang/String;)V

    .line 492
    .line 493
    new-instance v7, Ljava/io/PrintWriter;

    .line 494
    .line 495
    .line 496
    invoke-direct {v7, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 497
    .line 498
    const-string v6, "  "

    .line 499
    .line 500
    .line 501
    invoke-virtual {v3, v6, v7, v1}, Landroidx/fragment/app/BackStackRecord;->J(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V

    .line 505
    .line 506
    :cond_e
    iget-object v6, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 507
    .line 508
    .line 509
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    .line 511
    add-int/lit8 v0, v0, 0x1

    .line 512
    goto :goto_5

    .line 513
    .line 514
    :cond_f
    iput-object v3, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 515
    .line 516
    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 517
    .line 518
    iget v2, p1, Landroidx/fragment/app/FragmentManagerState;->mBackStackIndex:I

    .line 519
    .line 520
    .line 521
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 522
    .line 523
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveWho:Ljava/lang/String;

    .line 524
    .line 525
    if-eqz v0, :cond_11

    .line 526
    .line 527
    .line 528
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->j0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 529
    move-result-object v0

    .line 530
    .line 531
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    .line 532
    .line 533
    .line 534
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->P(Landroidx/fragment/app/Fragment;)V

    .line 535
    .line 536
    :cond_11
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->mBackStackStateKeys:Ljava/util/ArrayList;

    .line 537
    .line 538
    if-eqz v0, :cond_12

    .line 539
    .line 540
    .line 541
    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 542
    move-result v2

    .line 543
    .line 544
    if-ge v1, v2, :cond_12

    .line 545
    .line 546
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mBackStackStates:Ljava/util/Map;

    .line 547
    .line 548
    .line 549
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 550
    move-result-object v3

    .line 551
    .line 552
    check-cast v3, Ljava/lang/String;

    .line 553
    .line 554
    iget-object v4, p1, Landroidx/fragment/app/FragmentManagerState;->mBackStackStates:Ljava/util/ArrayList;

    .line 555
    .line 556
    .line 557
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 558
    move-result-object v4

    .line 559
    .line 560
    check-cast v4, Landroidx/fragment/app/BackStackState;

    .line 561
    .line 562
    .line 563
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    .line 565
    add-int/lit8 v1, v1, 0x1

    .line 566
    goto :goto_6

    .line 567
    .line 568
    :cond_12
    new-instance v0, Ljava/util/ArrayDeque;

    .line 569
    .line 570
    iget-object p1, p1, Landroidx/fragment/app/FragmentManagerState;->mLaunchedFragments:Ljava/util/ArrayList;

    .line 571
    .line 572
    .line 573
    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 574
    .line 575
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLaunchedFragments:Ljava/util/ArrayDeque;

    .line 576
    return-void
.end method

.method z(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;
    .locals 3
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 3
    .line 4
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentStore;->n(Ljava/lang/String;)Landroidx/fragment/app/FragmentStateManager;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    return-object v0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Landroidx/fragment/app/FragmentStateManager;

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    .line 16
    .line 17
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1, v2, p1}, Landroidx/fragment/app/FragmentStateManager;-><init>(Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;Landroidx/fragment/app/FragmentStore;Landroidx/fragment/app/Fragment;)V

    .line 21
    .line 22
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentHostCallback;->f()Landroid/content/Context;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentStateManager;->o(Ljava/lang/ClassLoader;)V

    .line 34
    .line 35
    iget p1, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentStateManager;->u(I)V

    .line 39
    return-object v0
.end method

.method public z0()Landroidx/fragment/app/FragmentFactory;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentFactory:Landroidx/fragment/app/FragmentFactory;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->z0()Landroidx/fragment/app/FragmentFactory;

    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHostFragmentFactory:Landroidx/fragment/app/FragmentFactory;

    .line 19
    return-object v0
.end method
