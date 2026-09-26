.class public abstract Landroidx/transition/Transition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/Transition$EpicenterCallback;,
        Landroidx/transition/Transition$ArrayListManager;,
        Landroidx/transition/Transition$AnimationInfo;,
        Landroidx/transition/Transition$TransitionListener;,
        Landroidx/transition/Transition$MatchOrder;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final DEFAULT_MATCH_ORDER:[I

.field private static final LOG_TAG:Ljava/lang/String; = "Transition"

.field private static final MATCH_FIRST:I = 0x1

.field public static final MATCH_ID:I = 0x3

.field private static final MATCH_ID_STR:Ljava/lang/String; = "id"

.field public static final MATCH_INSTANCE:I = 0x1

.field private static final MATCH_INSTANCE_STR:Ljava/lang/String; = "instance"

.field public static final MATCH_ITEM_ID:I = 0x4

.field private static final MATCH_ITEM_ID_STR:Ljava/lang/String; = "itemId"

.field private static final MATCH_LAST:I = 0x4

.field public static final MATCH_NAME:I = 0x2

.field private static final MATCH_NAME_STR:Ljava/lang/String; = "name"

.field private static final STRAIGHT_PATH_MOTION:Landroidx/transition/PathMotion;

.field private static sRunningAnimators:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroidx/collection/ArrayMap<",
            "Landroid/animation/Animator;",
            "Landroidx/transition/Transition$AnimationInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mCanRemoveViews:Z

.field mCurrentAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mDuration:J

.field private mEndValues:Landroidx/transition/TransitionValuesMaps;

.field private mEndValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/transition/TransitionValues;",
            ">;"
        }
    .end annotation
.end field

.field private mEnded:Z

.field private mEpicenterCallback:Landroidx/transition/Transition$EpicenterCallback;

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/transition/Transition$TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMatchOrder:[I

.field private mName:Ljava/lang/String;

.field private mNameOverrides:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNumInstances:I

.field mParent:Landroidx/transition/TransitionSet;

.field private mPathMotion:Landroidx/transition/PathMotion;

.field private mPaused:Z

.field mPropagation:Landroidx/transition/TransitionPropagation;

.field private mStartDelay:J

.field private mStartValues:Landroidx/transition/TransitionValuesMaps;

.field private mStartValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/transition/TransitionValues;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetIdChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetIdExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTargetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetNameExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTypeChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mTargetTypeExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mTargetTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x1

    .line 5
    .line 6
    .line 7
    filled-new-array {v2, v3, v0, v1}, [I

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sput-object v0, Landroidx/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    .line 11
    .line 12
    new-instance v0, Landroidx/transition/Transition$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Landroidx/transition/Transition$1;-><init>()V

    .line 16
    .line 17
    sput-object v0, Landroidx/transition/Transition;->STRAIGHT_PATH_MOTION:Landroidx/transition/PathMotion;

    .line 18
    .line 19
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 23
    .line 24
    sput-object v0, Landroidx/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/Transition;->mName:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/transition/Transition;->mStartDelay:J

    iput-wide v0, p0, Landroidx/transition/Transition;->mDuration:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 5
    new-instance v1, Landroidx/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroidx/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    .line 6
    new-instance v1, Landroidx/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroidx/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    iput-object v0, p0, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    sget-object v1, Landroidx/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object v1, p0, Landroidx/transition/Transition;->mMatchOrder:[I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/transition/Transition;->mCanRemoveViews:Z

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    iput v1, p0, Landroidx/transition/Transition;->mNumInstances:I

    iput-boolean v1, p0, Landroidx/transition/Transition;->mPaused:Z

    iput-boolean v1, p0, Landroidx/transition/Transition;->mEnded:Z

    iput-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    sget-object v0, Landroidx/transition/Transition;->STRAIGHT_PATH_MOTION:Landroidx/transition/PathMotion;

    iput-object v0, p0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/Transition;->mName:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/transition/Transition;->mStartDelay:J

    iput-wide v0, p0, Landroidx/transition/Transition;->mDuration:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 13
    new-instance v1, Landroidx/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroidx/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    .line 14
    new-instance v1, Landroidx/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroidx/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    iput-object v0, p0, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    sget-object v1, Landroidx/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object v1, p0, Landroidx/transition/Transition;->mMatchOrder:[I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/transition/Transition;->mCanRemoveViews:Z

    .line 15
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    iput v1, p0, Landroidx/transition/Transition;->mNumInstances:I

    iput-boolean v1, p0, Landroidx/transition/Transition;->mPaused:Z

    iput-boolean v1, p0, Landroidx/transition/Transition;->mEnded:Z

    iput-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    sget-object v0, Landroidx/transition/Transition;->STRAIGHT_PATH_MOTION:Landroidx/transition/PathMotion;

    iput-object v0, p0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    .line 17
    sget-object v0, Landroidx/transition/Styleable;->TRANSITION:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 18
    check-cast p2, Landroid/content/res/XmlResourceParser;

    const-string v2, "duration"

    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 19
    invoke-static {v0, p2, v2, v3, v4}, Landroidx/core/content/res/TypedArrayUtils;->k(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-ltz v7, :cond_0

    .line 20
    invoke-virtual {p0, v2, v3}, Landroidx/transition/Transition;->Y(J)Landroidx/transition/Transition;

    :cond_0
    const-string/jumbo v2, "startDelay"

    const/4 v3, 0x2

    .line 21
    invoke-static {v0, p2, v2, v3, v4}, Landroidx/core/content/res/TypedArrayUtils;->k(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v2, v5

    if-lez v4, :cond_1

    .line 22
    invoke-virtual {p0, v2, v3}, Landroidx/transition/Transition;->e0(J)Landroidx/transition/Transition;

    :cond_1
    const-string v2, "interpolator"

    .line 23
    invoke-static {v0, p2, v2, v1, v1}, Landroidx/core/content/res/TypedArrayUtils;->l(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    if-lez v1, :cond_2

    .line 24
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/transition/Transition;->a0(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    :cond_2
    const-string p1, "matchOrder"

    const/4 v1, 0x3

    .line 25
    invoke-static {v0, p2, p1, v1}, Landroidx/core/content/res/TypedArrayUtils;->m(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 26
    invoke-static {p1}, Landroidx/transition/Transition;->Q(Ljava/lang/String;)[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/transition/Transition;->b0([I)V

    .line 27
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static I(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x4

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static K(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;Ljava/lang/String;)Z
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    const/4 p0, 0x0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 p2, 0x1

    .line 20
    .line 21
    if-eqz p0, :cond_2

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result p0

    .line 29
    xor-int/2addr p0, p2

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    :goto_0
    move p0, p2

    .line 32
    :goto_1
    return p0
.end method

.method private L(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

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
    .line 10
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    check-cast v2, Landroid/view/View;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->J(Landroid/view/View;)Z

    .line 19
    move-result v3

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 25
    move-result v3

    .line 26
    .line 27
    .line 28
    invoke-virtual {p4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    check-cast v3, Landroid/view/View;

    .line 32
    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->J(Landroid/view/View;)Z

    .line 37
    move-result v4

    .line 38
    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v2}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object v4

    .line 44
    .line 45
    check-cast v4, Landroidx/transition/TransitionValues;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, v3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object v5

    .line 50
    .line 51
    check-cast v5, Landroidx/transition/TransitionValues;

    .line 52
    .line 53
    if-eqz v4, :cond_0

    .line 54
    .line 55
    if-eqz v5, :cond_0

    .line 56
    .line 57
    iget-object v6, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    iget-object v4, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v2}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, v3}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    return-void
.end method

.method private M(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/collection/SimpleArrayMap;->size()I

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
    invoke-virtual {p1, v0}, Landroidx/collection/SimpleArrayMap;->l(I)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    check-cast v1, Landroid/view/View;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1}, Landroidx/transition/Transition;->J(Landroid/view/View;)Z

    .line 20
    move-result v2

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    check-cast v1, Landroidx/transition/TransitionValues;

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    iget-object v2, v1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->J(Landroid/view/View;)Z

    .line 36
    move-result v2

    .line 37
    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroidx/collection/SimpleArrayMap;->n(I)Ljava/lang/Object;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    check-cast v2, Landroidx/transition/TransitionValues;

    .line 45
    .line 46
    iget-object v3, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    iget-object v2, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    return-void
.end method

.method private N(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroidx/collection/LongSparseArray<",
            "Landroid/view/View;",
            ">;",
            "Landroidx/collection/LongSparseArray<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3}, Landroidx/collection/LongSparseArray;->p()I

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
    .line 10
    invoke-virtual {p3, v1}, Landroidx/collection/LongSparseArray;->q(I)Ljava/lang/Object;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    check-cast v2, Landroid/view/View;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->J(Landroid/view/View;)Z

    .line 19
    move-result v3

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3, v1}, Landroidx/collection/LongSparseArray;->l(I)J

    .line 25
    move-result-wide v3

    .line 26
    .line 27
    .line 28
    invoke-virtual {p4, v3, v4}, Landroidx/collection/LongSparseArray;->h(J)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    check-cast v3, Landroid/view/View;

    .line 32
    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->J(Landroid/view/View;)Z

    .line 37
    move-result v4

    .line 38
    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v2}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object v4

    .line 44
    .line 45
    check-cast v4, Landroidx/transition/TransitionValues;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, v3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object v5

    .line 50
    .line 51
    check-cast v5, Landroidx/transition/TransitionValues;

    .line 52
    .line 53
    if-eqz v4, :cond_0

    .line 54
    .line 55
    if-eqz v5, :cond_0

    .line 56
    .line 57
    iget-object v6, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    iget-object v4, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v2}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, v3}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    return-void
.end method

.method private O(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3}, Landroidx/collection/SimpleArrayMap;->size()I

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
    .line 10
    invoke-virtual {p3, v1}, Landroidx/collection/SimpleArrayMap;->p(I)Ljava/lang/Object;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    check-cast v2, Landroid/view/View;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->J(Landroid/view/View;)Z

    .line 19
    move-result v3

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3, v1}, Landroidx/collection/SimpleArrayMap;->l(I)Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    .line 28
    invoke-virtual {p4, v3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    check-cast v3, Landroid/view/View;

    .line 32
    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->J(Landroid/view/View;)Z

    .line 37
    move-result v4

    .line 38
    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v2}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object v4

    .line 44
    .line 45
    check-cast v4, Landroidx/transition/TransitionValues;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, v3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object v5

    .line 50
    .line 51
    check-cast v5, Landroidx/transition/TransitionValues;

    .line 52
    .line 53
    if-eqz v4, :cond_0

    .line 54
    .line 55
    if-eqz v5, :cond_0

    .line 56
    .line 57
    iget-object v6, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    iget-object v4, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v2}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, v3}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    return-void
.end method

.method private P(Landroidx/transition/TransitionValuesMaps;Landroidx/transition/TransitionValuesMaps;)V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Landroidx/collection/ArrayMap;

    .line 3
    .line 4
    iget-object v1, p1, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroidx/collection/ArrayMap;-><init>(Landroidx/collection/SimpleArrayMap;)V

    .line 8
    .line 9
    new-instance v1, Landroidx/collection/ArrayMap;

    .line 10
    .line 11
    iget-object v2, p2, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Landroidx/collection/ArrayMap;-><init>(Landroidx/collection/SimpleArrayMap;)V

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    :goto_0
    iget-object v3, p0, Landroidx/transition/Transition;->mMatchOrder:[I

    .line 18
    array-length v4, v3

    .line 19
    .line 20
    if-ge v2, v4, :cond_4

    .line 21
    .line 22
    aget v3, v3, v2

    .line 23
    const/4 v4, 0x1

    .line 24
    .line 25
    if-eq v3, v4, :cond_3

    .line 26
    const/4 v4, 0x2

    .line 27
    .line 28
    if-eq v3, v4, :cond_2

    .line 29
    const/4 v4, 0x3

    .line 30
    .line 31
    if-eq v3, v4, :cond_1

    .line 32
    const/4 v4, 0x4

    .line 33
    .line 34
    if-eq v3, v4, :cond_0

    .line 35
    goto :goto_1

    .line 36
    .line 37
    :cond_0
    iget-object v3, p1, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    .line 38
    .line 39
    iget-object v4, p2, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, v0, v1, v3, v4}, Landroidx/transition/Transition;->N(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;)V

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_1
    iget-object v3, p1, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    .line 46
    .line 47
    iget-object v4, p2, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, v0, v1, v3, v4}, Landroidx/transition/Transition;->L(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_2
    iget-object v3, p1, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    .line 54
    .line 55
    iget-object v4, p2, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, v0, v1, v3, v4}, Landroidx/transition/Transition;->O(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    .line 59
    goto :goto_1

    .line 60
    .line 61
    .line 62
    :cond_3
    invoke-direct {p0, v0, v1}, Landroidx/transition/Transition;->M(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    .line 63
    .line 64
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 65
    goto :goto_0

    .line 66
    .line 67
    .line 68
    :cond_4
    invoke-direct {p0, v0, v1}, Landroidx/transition/Transition;->d(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    .line 69
    return-void
.end method

.method private static Q(Ljava/lang/String;)[I
    .locals 6

    .line 1
    .line 2
    new-instance v0, Ljava/util/StringTokenizer;

    .line 3
    .line 4
    const-string v1, ","

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    .line 11
    move-result p0

    .line 12
    .line 13
    new-array p0, p0, [I

    .line 14
    const/4 v1, 0x0

    .line 15
    move v2, v1

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 19
    move-result v3

    .line 20
    .line 21
    if-eqz v3, :cond_5

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    const-string v4, "id"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 35
    move-result v4

    .line 36
    const/4 v5, 0x1

    .line 37
    .line 38
    if-eqz v4, :cond_0

    .line 39
    const/4 v3, 0x3

    .line 40
    .line 41
    aput v3, p0, v2

    .line 42
    goto :goto_1

    .line 43
    .line 44
    :cond_0
    const-string v4, "instance"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 48
    move-result v4

    .line 49
    .line 50
    if-eqz v4, :cond_1

    .line 51
    .line 52
    aput v5, p0, v2

    .line 53
    goto :goto_1

    .line 54
    .line 55
    :cond_1
    const-string v4, "name"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 59
    move-result v4

    .line 60
    .line 61
    if-eqz v4, :cond_2

    .line 62
    const/4 v3, 0x2

    .line 63
    .line 64
    aput v3, p0, v2

    .line 65
    goto :goto_1

    .line 66
    .line 67
    :cond_2
    const-string v4, "itemId"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 71
    move-result v4

    .line 72
    .line 73
    if-eqz v4, :cond_3

    .line 74
    const/4 v3, 0x4

    .line 75
    .line 76
    aput v3, p0, v2

    .line 77
    goto :goto_1

    .line 78
    .line 79
    .line 80
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 81
    move-result v4

    .line 82
    .line 83
    if-eqz v4, :cond_4

    .line 84
    array-length v3, p0

    .line 85
    sub-int/2addr v3, v5

    .line 86
    .line 87
    new-array v3, v3, [I

    .line 88
    .line 89
    .line 90
    invoke-static {p0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    .line 92
    add-int/lit8 v2, v2, -0x1

    .line 93
    move-object p0, v3

    .line 94
    :goto_1
    add-int/2addr v2, v5

    .line 95
    goto :goto_0

    .line 96
    .line 97
    :cond_4
    new-instance p0, Landroid/view/InflateException;

    .line 98
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    const-string v1, "Unknown match type in matchOrder: \'"

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v1, "\'"

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    .line 122
    invoke-direct {p0, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 123
    throw p0

    .line 124
    :cond_5
    return-object p0
.end method

.method private W(Landroid/animation/Animator;Landroidx/collection/ArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Landroidx/collection/ArrayMap<",
            "Landroid/animation/Animator;",
            "Landroidx/transition/Transition$AnimationInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    new-instance v0, Landroidx/transition/Transition$2;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p0, p2}, Landroidx/transition/Transition$2;-><init>(Landroidx/transition/Transition;Landroidx/collection/ArrayMap;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/transition/Transition;->g(Landroid/animation/Animator;)V

    .line 14
    :cond_0
    return-void
.end method

.method private d(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    .line 4
    .line 5
    :goto_0
    invoke-virtual {p1}, Landroidx/collection/SimpleArrayMap;->size()I

    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x0

    .line 8
    .line 9
    if-ge v1, v2, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v1}, Landroidx/collection/SimpleArrayMap;->p(I)Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    check-cast v2, Landroidx/transition/TransitionValues;

    .line 16
    .line 17
    iget-object v4, v2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v4}, Landroidx/transition/Transition;->J(Landroid/view/View;)Z

    .line 21
    move-result v4

    .line 22
    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    iget-object v4, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    iget-object v2, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_1
    invoke-virtual {p2}, Landroidx/collection/SimpleArrayMap;->size()I

    .line 40
    move-result p1

    .line 41
    .line 42
    if-ge v0, p1, :cond_3

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v0}, Landroidx/collection/SimpleArrayMap;->p(I)Ljava/lang/Object;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    check-cast p1, Landroidx/transition/TransitionValues;

    .line 49
    .line 50
    iget-object v1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v1}, Landroidx/transition/Transition;->J(Landroid/view/View;)Z

    .line 54
    move-result v1

    .line 55
    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    iget-object v1, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    iget-object p1, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    return-void
.end method

.method private static e(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 9
    move-result p2

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    if-ltz p2, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 18
    move-result v1

    .line 19
    .line 20
    if-ltz v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    iget-object v1, p0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->N(Landroid/view/View;)Ljava/lang/String;

    .line 35
    move-result-object p2

    .line 36
    .line 37
    if-eqz p2, :cond_3

    .line 38
    .line 39
    iget-object v1, p0, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p2}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 43
    move-result v1

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    iget-object v1, p0, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p2, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_2
    iget-object v1, p0, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p2, p1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 60
    move-result-object p2

    .line 61
    .line 62
    instance-of p2, p2, Landroid/widget/ListView;

    .line 63
    .line 64
    if-eqz p2, :cond_5

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 68
    move-result-object p2

    .line 69
    .line 70
    check-cast p2, Landroid/widget/ListView;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    .line 77
    invoke-interface {v1}, Landroid/widget/Adapter;->hasStableIds()Z

    .line 78
    move-result v1

    .line 79
    .line 80
    if-eqz v1, :cond_5

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    .line 84
    move-result v1

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, v1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    .line 88
    move-result-wide v1

    .line 89
    .line 90
    iget-object p2, p0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, v1, v2}, Landroidx/collection/LongSparseArray;->j(J)I

    .line 94
    move-result p2

    .line 95
    .line 96
    if-ltz p2, :cond_4

    .line 97
    .line 98
    iget-object p1, p0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v1, v2}, Landroidx/collection/LongSparseArray;->h(J)Ljava/lang/Object;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    check-cast p1, Landroid/view/View;

    .line 105
    .line 106
    if-eqz p1, :cond_5

    .line 107
    const/4 p2, 0x0

    .line 108
    .line 109
    .line 110
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->E0(Landroid/view/View;Z)V

    .line 111
    .line 112
    iget-object p0, p0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v1, v2, v0}, Landroidx/collection/LongSparseArray;->m(JLjava/lang/Object;)V

    .line 116
    goto :goto_2

    .line 117
    :cond_4
    const/4 p2, 0x1

    .line 118
    .line 119
    .line 120
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->E0(Landroid/view/View;Z)V

    .line 121
    .line 122
    iget-object p0, p0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v1, v2, p1}, Landroidx/collection/LongSparseArray;->m(JLjava/lang/Object;)V

    .line 126
    :cond_5
    :goto_2
    return-void
.end method

.method private static f([II)Z
    .locals 4

    .line 1
    .line 2
    aget v0, p0, p1

    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    .line 6
    :goto_0
    if-ge v2, p1, :cond_1

    .line 7
    .line 8
    aget v3, p0, v2

    .line 9
    .line 10
    if-ne v3, v0, :cond_0

    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    return v1
.end method

.method private i(Landroid/view/View;Z)V
    .locals 5

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 7
    move-result v0

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    return-void

    .line 23
    .line 24
    :cond_1
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 30
    move-result v1

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    return-void

    .line 34
    .line 35
    :cond_2
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 36
    const/4 v2, 0x0

    .line 37
    .line 38
    if-eqz v1, :cond_4

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 42
    move-result v1

    .line 43
    move v3, v2

    .line 44
    .line 45
    :goto_0
    if-ge v3, v1, :cond_4

    .line 46
    .line 47
    iget-object v4, p0, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object v4

    .line 52
    .line 53
    check-cast v4, Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 57
    move-result v4

    .line 58
    .line 59
    if-eqz v4, :cond_3

    .line 60
    return-void

    .line 61
    .line 62
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 63
    goto :goto_0

    .line 64
    .line 65
    .line 66
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    instance-of v1, v1, Landroid/view/ViewGroup;

    .line 70
    .line 71
    if-eqz v1, :cond_7

    .line 72
    .line 73
    new-instance v1, Landroidx/transition/TransitionValues;

    .line 74
    .line 75
    .line 76
    invoke-direct {v1, p1}, Landroidx/transition/TransitionValues;-><init>(Landroid/view/View;)V

    .line 77
    .line 78
    if-eqz p2, :cond_5

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v1}, Landroidx/transition/Transition;->k(Landroidx/transition/TransitionValues;)V

    .line 82
    goto :goto_1

    .line 83
    .line 84
    .line 85
    :cond_5
    invoke-virtual {p0, v1}, Landroidx/transition/Transition;->h(Landroidx/transition/TransitionValues;)V

    .line 86
    .line 87
    :goto_1
    iget-object v3, v1, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v1}, Landroidx/transition/Transition;->j(Landroidx/transition/TransitionValues;)V

    .line 94
    .line 95
    if-eqz p2, :cond_6

    .line 96
    .line 97
    iget-object v3, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    .line 98
    .line 99
    .line 100
    invoke-static {v3, p1, v1}, Landroidx/transition/Transition;->e(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    .line 101
    goto :goto_2

    .line 102
    .line 103
    :cond_6
    iget-object v3, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    .line 104
    .line 105
    .line 106
    invoke-static {v3, p1, v1}, Landroidx/transition/Transition;->e(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    .line 107
    .line 108
    :cond_7
    :goto_2
    instance-of v1, p1, Landroid/view/ViewGroup;

    .line 109
    .line 110
    if-eqz v1, :cond_c

    .line 111
    .line 112
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 113
    .line 114
    if-eqz v1, :cond_8

    .line 115
    .line 116
    .line 117
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    move-result-object v0

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 122
    move-result v0

    .line 123
    .line 124
    if-eqz v0, :cond_8

    .line 125
    return-void

    .line 126
    .line 127
    :cond_8
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 128
    .line 129
    if-eqz v0, :cond_9

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 133
    move-result v0

    .line 134
    .line 135
    if-eqz v0, :cond_9

    .line 136
    return-void

    .line 137
    .line 138
    :cond_9
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 139
    .line 140
    if-eqz v0, :cond_b

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 144
    move-result v0

    .line 145
    move v1, v2

    .line 146
    .line 147
    :goto_3
    if-ge v1, v0, :cond_b

    .line 148
    .line 149
    iget-object v3, p0, Landroidx/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 153
    move-result-object v3

    .line 154
    .line 155
    check-cast v3, Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 159
    move-result v3

    .line 160
    .line 161
    if-eqz v3, :cond_a

    .line 162
    return-void

    .line 163
    .line 164
    :cond_a
    add-int/lit8 v1, v1, 0x1

    .line 165
    goto :goto_3

    .line 166
    .line 167
    :cond_b
    check-cast p1, Landroid/view/ViewGroup;

    .line 168
    .line 169
    .line 170
    :goto_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 171
    move-result v0

    .line 172
    .line 173
    if-ge v2, v0, :cond_c

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 177
    move-result-object v0

    .line 178
    .line 179
    .line 180
    invoke-direct {p0, v0, p2}, Landroidx/transition/Transition;->i(Landroid/view/View;Z)V

    .line 181
    .line 182
    add-int/lit8 v2, v2, 0x1

    .line 183
    goto :goto_4

    .line 184
    :cond_c
    return-void
.end method

.method private static z()Landroidx/collection/ArrayMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/ArrayMap<",
            "Landroid/animation/Animator;",
            "Landroidx/transition/Transition$AnimationInfo;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/collection/ArrayMap;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroidx/collection/ArrayMap;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 16
    .line 17
    sget-object v1, Landroidx/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 21
    :cond_0
    return-object v0
.end method


# virtual methods
.method public A()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/transition/Transition;->mStartDelay:J

    return-wide v0
.end method

.method public B()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public C()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public D()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public E()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public F()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public G(Landroid/view/View;Z)Landroidx/transition/TransitionValues;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Landroidx/transition/Transition;->G(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    .line 11
    :cond_0
    if-eqz p2, :cond_1

    .line 12
    .line 13
    iget-object p2, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_1
    iget-object p2, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    .line 17
    .line 18
    :goto_0
    iget-object p2, p2, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    check-cast p1, Landroidx/transition/TransitionValues;

    .line 25
    return-object p1
.end method

.method public H(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Z
    .locals 6
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    if-eqz p2, :cond_3

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/transition/Transition;->F()[Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    array-length v3, v1

    .line 14
    move v4, v0

    .line 15
    .line 16
    :goto_0
    if-ge v4, v3, :cond_3

    .line 17
    .line 18
    aget-object v5, v1, v4

    .line 19
    .line 20
    .line 21
    invoke-static {p1, p2, v5}, Landroidx/transition/Transition;->K(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;Ljava/lang/String;)Z

    .line 22
    move-result v5

    .line 23
    .line 24
    if-eqz v5, :cond_0

    .line 25
    goto :goto_1

    .line 26
    .line 27
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_1
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 31
    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v3

    .line 43
    .line 44
    if-eqz v3, :cond_3

    .line 45
    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v3

    .line 49
    .line 50
    check-cast v3, Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    invoke-static {p1, p2, v3}, Landroidx/transition/Transition;->K(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;Ljava/lang/String;)Z

    .line 54
    move-result v3

    .line 55
    .line 56
    if-eqz v3, :cond_2

    .line 57
    :goto_1
    move v0, v2

    .line 58
    :cond_3
    return v0
.end method

.method J(Landroid/view/View;)Z
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v3

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    return v2

    .line 21
    .line 22
    :cond_0
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 28
    move-result v1

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    return v2

    .line 32
    .line 33
    :cond_1
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 39
    move-result v1

    .line 40
    move v3, v2

    .line 41
    .line 42
    :goto_0
    if-ge v3, v1, :cond_3

    .line 43
    .line 44
    iget-object v4, p0, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    move-result-object v4

    .line 49
    .line 50
    check-cast v4, Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 54
    move-result v4

    .line 55
    .line 56
    if-eqz v4, :cond_2

    .line 57
    return v2

    .line 58
    .line 59
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_3
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 63
    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    .line 67
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->N(Landroid/view/View;)Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    if-eqz v1, :cond_4

    .line 71
    .line 72
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->N(Landroid/view/View;)Ljava/lang/String;

    .line 76
    move-result-object v3

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 80
    move-result v1

    .line 81
    .line 82
    if-eqz v1, :cond_4

    .line 83
    return v2

    .line 84
    .line 85
    :cond_4
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 89
    move-result v1

    .line 90
    const/4 v3, 0x1

    .line 91
    .line 92
    if-nez v1, :cond_7

    .line 93
    .line 94
    iget-object v1, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 98
    move-result v1

    .line 99
    .line 100
    if-nez v1, :cond_7

    .line 101
    .line 102
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 103
    .line 104
    if-eqz v1, :cond_5

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 108
    move-result v1

    .line 109
    .line 110
    if-eqz v1, :cond_7

    .line 111
    .line 112
    :cond_5
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 113
    .line 114
    if-eqz v1, :cond_6

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 118
    move-result v1

    .line 119
    .line 120
    if-eqz v1, :cond_7

    .line 121
    :cond_6
    return v3

    .line 122
    .line 123
    :cond_7
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 124
    .line 125
    .line 126
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 131
    move-result v0

    .line 132
    .line 133
    if-nez v0, :cond_c

    .line 134
    .line 135
    iget-object v0, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 139
    move-result v0

    .line 140
    .line 141
    if-eqz v0, :cond_8

    .line 142
    goto :goto_2

    .line 143
    .line 144
    :cond_8
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 145
    .line 146
    if-eqz v0, :cond_9

    .line 147
    .line 148
    .line 149
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->N(Landroid/view/View;)Ljava/lang/String;

    .line 150
    move-result-object v1

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 154
    move-result v0

    .line 155
    .line 156
    if-eqz v0, :cond_9

    .line 157
    return v3

    .line 158
    .line 159
    :cond_9
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 160
    .line 161
    if-eqz v0, :cond_b

    .line 162
    move v0, v2

    .line 163
    .line 164
    :goto_1
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 168
    move-result v1

    .line 169
    .line 170
    if-ge v0, v1, :cond_b

    .line 171
    .line 172
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 176
    move-result-object v1

    .line 177
    .line 178
    check-cast v1, Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 182
    move-result v1

    .line 183
    .line 184
    if-eqz v1, :cond_a

    .line 185
    return v3

    .line 186
    .line 187
    :cond_a
    add-int/lit8 v0, v0, 0x1

    .line 188
    goto :goto_1

    .line 189
    :cond_b
    return v2

    .line 190
    :cond_c
    :goto_2
    return v3
.end method

.method public R(Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    .line 2
    iget-boolean p1, p0, Landroidx/transition/Transition;->mEnded:Z

    .line 3
    .line 4
    if-nez p1, :cond_2

    .line 5
    .line 6
    iget-object p1, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x1

    .line 12
    sub-int/2addr p1, v0

    .line 13
    .line 14
    :goto_0
    if-ltz p1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Landroid/animation/Animator;

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Landroidx/transition/AnimatorUtils;->b(Landroid/animation/Animator;)V

    .line 26
    .line 27
    add-int/lit8 p1, p1, -0x1

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 36
    move-result p1

    .line 37
    .line 38
    if-lez p1, :cond_1

    .line 39
    .line 40
    iget-object p1, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    check-cast p1, Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 50
    move-result v1

    .line 51
    const/4 v2, 0x0

    .line 52
    .line 53
    :goto_1
    if-ge v2, v1, :cond_1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object v3

    .line 58
    .line 59
    check-cast v3, Landroidx/transition/Transition$TransitionListener;

    .line 60
    .line 61
    .line 62
    invoke-interface {v3, p0}, Landroidx/transition/Transition$TransitionListener;->c(Landroidx/transition/Transition;)V

    .line 63
    .line 64
    add-int/lit8 v2, v2, 0x1

    .line 65
    goto :goto_1

    .line 66
    .line 67
    :cond_1
    iput-boolean v0, p0, Landroidx/transition/Transition;->mPaused:Z

    .line 68
    :cond_2
    return-void
.end method

.method S(Landroid/view/ViewGroup;)V
    .locals 10

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iput-object v0, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    iput-object v0, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0, v1}, Landroidx/transition/Transition;->P(Landroidx/transition/TransitionValuesMaps;Landroidx/transition/TransitionValuesMaps;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroidx/transition/Transition;->z()Landroidx/collection/ArrayMap;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->size()I

    .line 29
    move-result v1

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Landroidx/transition/ViewUtils;->d(Landroid/view/View;)Landroidx/transition/WindowIdImpl;

    .line 33
    move-result-object v2

    .line 34
    const/4 v3, 0x1

    .line 35
    sub-int/2addr v1, v3

    .line 36
    .line 37
    :goto_0
    if-ltz v1, :cond_5

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->l(I)Ljava/lang/Object;

    .line 41
    move-result-object v4

    .line 42
    .line 43
    check-cast v4, Landroid/animation/Animator;

    .line 44
    .line 45
    if-eqz v4, :cond_4

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v4}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object v5

    .line 50
    .line 51
    check-cast v5, Landroidx/transition/Transition$AnimationInfo;

    .line 52
    .line 53
    if-eqz v5, :cond_4

    .line 54
    .line 55
    iget-object v6, v5, Landroidx/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    .line 56
    .line 57
    if-eqz v6, :cond_4

    .line 58
    .line 59
    iget-object v6, v5, Landroidx/transition/Transition$AnimationInfo;->mWindowId:Landroidx/transition/WindowIdImpl;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result v6

    .line 64
    .line 65
    if-eqz v6, :cond_4

    .line 66
    .line 67
    iget-object v6, v5, Landroidx/transition/Transition$AnimationInfo;->mValues:Landroidx/transition/TransitionValues;

    .line 68
    .line 69
    iget-object v7, v5, Landroidx/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v7, v3}, Landroidx/transition/Transition;->G(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    .line 73
    move-result-object v8

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v7, v3}, Landroidx/transition/Transition;->v(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    .line 77
    move-result-object v9

    .line 78
    .line 79
    if-nez v8, :cond_0

    .line 80
    .line 81
    if-nez v9, :cond_0

    .line 82
    .line 83
    iget-object v9, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    .line 84
    .line 85
    iget-object v9, v9, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v9, v7}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    move-result-object v7

    .line 90
    move-object v9, v7

    .line 91
    .line 92
    check-cast v9, Landroidx/transition/TransitionValues;

    .line 93
    .line 94
    :cond_0
    if-nez v8, :cond_1

    .line 95
    .line 96
    if-eqz v9, :cond_4

    .line 97
    .line 98
    :cond_1
    iget-object v5, v5, Landroidx/transition/Transition$AnimationInfo;->mTransition:Landroidx/transition/Transition;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5, v6, v9}, Landroidx/transition/Transition;->H(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Z

    .line 102
    move-result v5

    .line 103
    .line 104
    if-eqz v5, :cond_4

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    .line 108
    move-result v5

    .line 109
    .line 110
    if-nez v5, :cond_3

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    .line 114
    move-result v5

    .line 115
    .line 116
    if-eqz v5, :cond_2

    .line 117
    goto :goto_1

    .line 118
    .line 119
    .line 120
    :cond_2
    invoke-virtual {v0, v4}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    goto :goto_2

    .line 122
    .line 123
    .line 124
    :cond_3
    :goto_1
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 125
    .line 126
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 127
    goto :goto_0

    .line 128
    .line 129
    :cond_5
    iget-object v6, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    .line 130
    .line 131
    iget-object v7, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    .line 132
    .line 133
    iget-object v8, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 134
    .line 135
    iget-object v9, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 136
    move-object v4, p0

    .line 137
    move-object v5, p1

    .line 138
    .line 139
    .line 140
    invoke-virtual/range {v4 .. v9}, Landroidx/transition/Transition;->p(Landroid/view/ViewGroup;Landroidx/transition/TransitionValuesMaps;Landroidx/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Landroidx/transition/Transition;->X()V

    .line 144
    return-void
.end method

.method public T(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;
    .locals 1
    .param p1    # Landroidx/transition/Transition$TransitionListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-object p0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result p1

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    const/4 p1, 0x0

    .line 18
    .line 19
    iput-object p1, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 20
    :cond_1
    return-object p0
.end method

.method public U(Landroid/view/View;)Landroidx/transition/Transition;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    return-object p0
.end method

.method public V(Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    .line 2
    iget-boolean p1, p0, Landroidx/transition/Transition;->mPaused:Z

    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    iget-boolean p1, p0, Landroidx/transition/Transition;->mEnded:Z

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result p1

    .line 16
    .line 17
    add-int/lit8 p1, p1, -0x1

    .line 18
    .line 19
    :goto_0
    if-ltz p1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    check-cast v1, Landroid/animation/Animator;

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Landroidx/transition/AnimatorUtils;->c(Landroid/animation/Animator;)V

    .line 31
    .line 32
    add-int/lit8 p1, p1, -0x1

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_0
    iget-object p1, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 41
    move-result p1

    .line 42
    .line 43
    if-lez p1, :cond_1

    .line 44
    .line 45
    iget-object p1, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    check-cast p1, Ljava/util/ArrayList;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 55
    move-result v1

    .line 56
    move v2, v0

    .line 57
    .line 58
    :goto_1
    if-ge v2, v1, :cond_1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    move-result-object v3

    .line 63
    .line 64
    check-cast v3, Landroidx/transition/Transition$TransitionListener;

    .line 65
    .line 66
    .line 67
    invoke-interface {v3, p0}, Landroidx/transition/Transition$TransitionListener;->a(Landroidx/transition/Transition;)V

    .line 68
    .line 69
    add-int/lit8 v2, v2, 0x1

    .line 70
    goto :goto_1

    .line 71
    .line 72
    :cond_1
    iput-boolean v0, p0, Landroidx/transition/Transition;->mPaused:Z

    .line 73
    :cond_2
    return-void
.end method

.method protected X()V
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/transition/Transition;->f0()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroidx/transition/Transition;->z()Landroidx/collection/ArrayMap;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v2

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    check-cast v2, Landroid/animation/Animator;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 29
    move-result v3

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/transition/Transition;->f0()V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, v2, v0}, Landroidx/transition/Transition;->W(Landroid/animation/Animator;Landroidx/collection/ArrayMap;)V

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_1
    iget-object v0, p0, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/transition/Transition;->q()V

    .line 47
    return-void
.end method

.method public Y(J)Landroidx/transition/Transition;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-wide p1, p0, Landroidx/transition/Transition;->mDuration:J

    return-object p0
.end method

.method public Z(Landroidx/transition/Transition$EpicenterCallback;)V
    .locals 0
    .param p1    # Landroidx/transition/Transition$EpicenterCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/transition/Transition;->mEpicenterCallback:Landroidx/transition/Transition$EpicenterCallback;

    return-void
.end method

.method public a0(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;
    .locals 0
    .param p1    # Landroid/animation/TimeInterpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public b(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;
    .locals 1
    .param p1    # Landroidx/transition/Transition$TransitionListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

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
    iput-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    return-object p0
.end method

.method public varargs b0([I)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_4

    .line 3
    array-length v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    goto :goto_1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    array-length v1, p1

    .line 9
    .line 10
    if-ge v0, v1, :cond_3

    .line 11
    .line 12
    aget v1, p1, v0

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Landroidx/transition/Transition;->I(I)Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v0}, Landroidx/transition/Transition;->f([II)Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    const-string v0, "matches contains a duplicate value"

    .line 32
    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    throw p1

    .line 36
    .line 37
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    const-string v0, "matches contains invalid value"

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    throw p1

    .line 44
    .line 45
    .line 46
    :cond_3
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    check-cast p1, [I

    .line 50
    .line 51
    iput-object p1, p0, Landroidx/transition/Transition;->mMatchOrder:[I

    .line 52
    goto :goto_2

    .line 53
    .line 54
    :cond_4
    :goto_1
    sget-object p1, Landroidx/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    .line 55
    .line 56
    iput-object p1, p0, Landroidx/transition/Transition;->mMatchOrder:[I

    .line 57
    :goto_2
    return-void
.end method

.method public c(Landroid/view/View;)Landroidx/transition/Transition;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    return-object p0
.end method

.method public c0(Landroidx/transition/PathMotion;)V
    .locals 0
    .param p1    # Landroidx/transition/PathMotion;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    sget-object p1, Landroidx/transition/Transition;->STRAIGHT_PATH_MOTION:Landroidx/transition/PathMotion;

    iput-object p1, p0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    :goto_0
    return-void
.end method

.method protected cancel()V
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    add-int/lit8 v0, v0, -0x1

    .line 9
    .line 10
    :goto_0
    if-ltz v0, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Landroid/animation/Animator;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 22
    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 32
    move-result v0

    .line 33
    .line 34
    if-lez v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    check-cast v0, Ljava/util/ArrayList;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 46
    move-result v1

    .line 47
    const/4 v2, 0x0

    .line 48
    .line 49
    :goto_1
    if-ge v2, v1, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object v3

    .line 54
    .line 55
    check-cast v3, Landroidx/transition/Transition$TransitionListener;

    .line 56
    .line 57
    .line 58
    invoke-interface {v3, p0}, Landroidx/transition/Transition$TransitionListener;->e(Landroidx/transition/Transition;)V

    .line 59
    .line 60
    add-int/lit8 v2, v2, 0x1

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/transition/Transition;->n()Landroidx/transition/Transition;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public d0(Landroidx/transition/TransitionPropagation;)V
    .locals 0
    .param p1    # Landroidx/transition/TransitionPropagation;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    return-void
.end method

.method public e0(J)Landroidx/transition/Transition;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-wide p1, p0, Landroidx/transition/Transition;->mStartDelay:J

    return-object p0
.end method

.method protected f0()V
    .locals 5
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/transition/Transition;->mNumInstances:I

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v0

    .line 14
    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 27
    move-result v2

    .line 28
    move v3, v1

    .line 29
    .line 30
    :goto_0
    if-ge v3, v2, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v4

    .line 35
    .line 36
    check-cast v4, Landroidx/transition/Transition$TransitionListener;

    .line 37
    .line 38
    .line 39
    invoke-interface {v4, p0}, Landroidx/transition/Transition$TransitionListener;->b(Landroidx/transition/Transition;)V

    .line 40
    .line 41
    add-int/lit8 v3, v3, 0x1

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_0
    iput-boolean v1, p0, Landroidx/transition/Transition;->mEnded:Z

    .line 45
    .line 46
    :cond_1
    iget v0, p0, Landroidx/transition/Transition;->mNumInstances:I

    .line 47
    .line 48
    add-int/lit8 v0, v0, 0x1

    .line 49
    .line 50
    iput v0, p0, Landroidx/transition/Transition;->mNumInstances:I

    .line 51
    return-void
.end method

.method protected g(Landroid/animation/Animator;)V
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/transition/Transition;->q()V

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Landroidx/transition/Transition;->r()J

    .line 10
    move-result-wide v0

    .line 11
    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    cmp-long v0, v0, v2

    .line 15
    .line 16
    if-ltz v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/transition/Transition;->r()J

    .line 20
    move-result-wide v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p0}, Landroidx/transition/Transition;->A()J

    .line 27
    move-result-wide v0

    .line 28
    .line 29
    cmp-long v0, v0, v2

    .line 30
    .line 31
    if-ltz v0, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/transition/Transition;->A()J

    .line 35
    move-result-wide v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/animation/Animator;->getStartDelay()J

    .line 39
    move-result-wide v2

    .line 40
    add-long/2addr v0, v2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-virtual {p0}, Landroidx/transition/Transition;->u()Landroid/animation/TimeInterpolator;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/transition/Transition;->u()Landroid/animation/TimeInterpolator;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 57
    .line 58
    :cond_3
    new-instance v0, Landroidx/transition/Transition$3;

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, p0}, Landroidx/transition/Transition$3;-><init>(Landroidx/transition/Transition;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 68
    :goto_0
    return-void
.end method

.method g0(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

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
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string p1, "@"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 28
    move-result p1

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string p1, ": "

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    iget-wide v0, p0, Landroidx/transition/Transition;->mDuration:J

    .line 47
    .line 48
    const-wide/16 v2, -0x1

    .line 49
    .line 50
    cmp-long v0, v0, v2

    .line 51
    .line 52
    const-string v1, ") "

    .line 53
    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string p1, "dur("

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    iget-wide v4, p0, Landroidx/transition/Transition;->mDuration:J

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    :cond_0
    iget-wide v4, p0, Landroidx/transition/Transition;->mStartDelay:J

    .line 82
    .line 83
    cmp-long v0, v4, v2

    .line 84
    .line 85
    if-eqz v0, :cond_1

    .line 86
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string p1, "dly("

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    iget-wide v2, p0, Landroidx/transition/Transition;->mStartDelay:J

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object p1

    .line 111
    .line 112
    :cond_1
    iget-object v0, p0, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 113
    .line 114
    if-eqz v0, :cond_2

    .line 115
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string p1, "interp("

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    iget-object p1, p0, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object p1

    .line 140
    .line 141
    :cond_2
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 145
    move-result v0

    .line 146
    .line 147
    if-gtz v0, :cond_3

    .line 148
    .line 149
    iget-object v0, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 153
    move-result v0

    .line 154
    .line 155
    if-lez v0, :cond_8

    .line 156
    .line 157
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string/jumbo p1, "tgts("

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    move-result-object p1

    .line 174
    .line 175
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 179
    move-result v0

    .line 180
    .line 181
    const-string v1, ", "

    .line 182
    const/4 v2, 0x0

    .line 183
    .line 184
    if-lez v0, :cond_5

    .line 185
    move v0, v2

    .line 186
    .line 187
    :goto_0
    iget-object v3, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 191
    move-result v3

    .line 192
    .line 193
    if-ge v0, v3, :cond_5

    .line 194
    .line 195
    if-lez v0, :cond_4

    .line 196
    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    move-result-object p1

    .line 211
    .line 212
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    iget-object p1, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 224
    move-result-object p1

    .line 225
    .line 226
    .line 227
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    move-result-object p1

    .line 232
    .line 233
    add-int/lit8 v0, v0, 0x1

    .line 234
    goto :goto_0

    .line 235
    .line 236
    :cond_5
    iget-object v0, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 240
    move-result v0

    .line 241
    .line 242
    if-lez v0, :cond_7

    .line 243
    .line 244
    :goto_1
    iget-object v0, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 248
    move-result v0

    .line 249
    .line 250
    if-ge v2, v0, :cond_7

    .line 251
    .line 252
    if-lez v2, :cond_6

    .line 253
    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    move-result-object p1

    .line 268
    .line 269
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    iget-object p1, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 278
    .line 279
    .line 280
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 281
    move-result-object p1

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    move-result-object p1

    .line 289
    .line 290
    add-int/lit8 v2, v2, 0x1

    .line 291
    goto :goto_1

    .line 292
    .line 293
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    const-string p1, ")"

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    move-result-object p1

    .line 309
    :cond_8
    return-object p1
.end method

.method public abstract h(Landroidx/transition/TransitionValues;)V
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method j(Landroidx/transition/TransitionValues;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/transition/TransitionPropagation;->b()[Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    return-void

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :goto_0
    array-length v2, v0

    .line 24
    .line 25
    if-ge v1, v2, :cond_2

    .line 26
    .line 27
    iget-object v2, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 28
    .line 29
    aget-object v3, v0, v1

    .line 30
    .line 31
    .line 32
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 33
    move-result v2

    .line 34
    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Landroidx/transition/TransitionPropagation;->a(Landroidx/transition/TransitionValues;)V

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    :goto_1
    return-void
.end method

.method public abstract k(Landroidx/transition/TransitionValues;)V
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method l(Landroid/view/ViewGroup;Z)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p2}, Landroidx/transition/Transition;->m(Z)V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    if-gtz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v0

    .line 19
    .line 20
    if-lez v0, :cond_2

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 38
    move-result v0

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    goto :goto_0

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;->i(Landroid/view/View;Z)V

    .line 45
    .line 46
    goto/16 :goto_7

    .line 47
    :cond_3
    :goto_0
    move v0, v1

    .line 48
    .line 49
    :goto_1
    iget-object v2, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 53
    move-result v2

    .line 54
    .line 55
    if-ge v0, v2, :cond_7

    .line 56
    .line 57
    iget-object v2, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    move-result-object v2

    .line 62
    .line 63
    check-cast v2, Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 67
    move-result v2

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    if-eqz v2, :cond_6

    .line 74
    .line 75
    new-instance v3, Landroidx/transition/TransitionValues;

    .line 76
    .line 77
    .line 78
    invoke-direct {v3, v2}, Landroidx/transition/TransitionValues;-><init>(Landroid/view/View;)V

    .line 79
    .line 80
    if-eqz p2, :cond_4

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->k(Landroidx/transition/TransitionValues;)V

    .line 84
    goto :goto_2

    .line 85
    .line 86
    .line 87
    :cond_4
    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->h(Landroidx/transition/TransitionValues;)V

    .line 88
    .line 89
    :goto_2
    iget-object v4, v3, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->j(Landroidx/transition/TransitionValues;)V

    .line 96
    .line 97
    if-eqz p2, :cond_5

    .line 98
    .line 99
    iget-object v4, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    .line 100
    .line 101
    .line 102
    invoke-static {v4, v2, v3}, Landroidx/transition/Transition;->e(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    .line 103
    goto :goto_3

    .line 104
    .line 105
    :cond_5
    iget-object v4, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    .line 106
    .line 107
    .line 108
    invoke-static {v4, v2, v3}, Landroidx/transition/Transition;->e(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    .line 109
    .line 110
    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 111
    goto :goto_1

    .line 112
    :cond_7
    move p1, v1

    .line 113
    .line 114
    :goto_4
    iget-object v0, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 118
    move-result v0

    .line 119
    .line 120
    if-ge p1, v0, :cond_a

    .line 121
    .line 122
    iget-object v0, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 126
    move-result-object v0

    .line 127
    .line 128
    check-cast v0, Landroid/view/View;

    .line 129
    .line 130
    new-instance v2, Landroidx/transition/TransitionValues;

    .line 131
    .line 132
    .line 133
    invoke-direct {v2, v0}, Landroidx/transition/TransitionValues;-><init>(Landroid/view/View;)V

    .line 134
    .line 135
    if-eqz p2, :cond_8

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->k(Landroidx/transition/TransitionValues;)V

    .line 139
    goto :goto_5

    .line 140
    .line 141
    .line 142
    :cond_8
    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->h(Landroidx/transition/TransitionValues;)V

    .line 143
    .line 144
    :goto_5
    iget-object v3, v2, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->j(Landroidx/transition/TransitionValues;)V

    .line 151
    .line 152
    if-eqz p2, :cond_9

    .line 153
    .line 154
    iget-object v3, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    .line 155
    .line 156
    .line 157
    invoke-static {v3, v0, v2}, Landroidx/transition/Transition;->e(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    .line 158
    goto :goto_6

    .line 159
    .line 160
    :cond_9
    iget-object v3, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    .line 161
    .line 162
    .line 163
    invoke-static {v3, v0, v2}, Landroidx/transition/Transition;->e(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    .line 164
    .line 165
    :goto_6
    add-int/lit8 p1, p1, 0x1

    .line 166
    goto :goto_4

    .line 167
    .line 168
    :cond_a
    :goto_7
    if-nez p2, :cond_d

    .line 169
    .line 170
    iget-object p1, p0, Landroidx/transition/Transition;->mNameOverrides:Landroidx/collection/ArrayMap;

    .line 171
    .line 172
    if-eqz p1, :cond_d

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Landroidx/collection/SimpleArrayMap;->size()I

    .line 176
    move-result p1

    .line 177
    .line 178
    new-instance p2, Ljava/util/ArrayList;

    .line 179
    .line 180
    .line 181
    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 182
    move v0, v1

    .line 183
    .line 184
    :goto_8
    if-ge v0, p1, :cond_b

    .line 185
    .line 186
    iget-object v2, p0, Landroidx/transition/Transition;->mNameOverrides:Landroidx/collection/ArrayMap;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2, v0}, Landroidx/collection/SimpleArrayMap;->l(I)Ljava/lang/Object;

    .line 190
    move-result-object v2

    .line 191
    .line 192
    check-cast v2, Ljava/lang/String;

    .line 193
    .line 194
    iget-object v3, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    .line 195
    .line 196
    iget-object v3, v3, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v3, v2}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    move-result-object v2

    .line 201
    .line 202
    .line 203
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    add-int/lit8 v0, v0, 0x1

    .line 206
    goto :goto_8

    .line 207
    .line 208
    :cond_b
    :goto_9
    if-ge v1, p1, :cond_d

    .line 209
    .line 210
    .line 211
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 212
    move-result-object v0

    .line 213
    .line 214
    check-cast v0, Landroid/view/View;

    .line 215
    .line 216
    if-eqz v0, :cond_c

    .line 217
    .line 218
    iget-object v2, p0, Landroidx/transition/Transition;->mNameOverrides:Landroidx/collection/ArrayMap;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2, v1}, Landroidx/collection/SimpleArrayMap;->p(I)Ljava/lang/Object;

    .line 222
    move-result-object v2

    .line 223
    .line 224
    check-cast v2, Ljava/lang/String;

    .line 225
    .line 226
    iget-object v3, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    .line 227
    .line 228
    iget-object v3, v3, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v3, v2, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    :cond_c
    add-int/lit8 v1, v1, 0x1

    .line 234
    goto :goto_9

    .line 235
    :cond_d
    return-void
.end method

.method m(Z)V
    .locals 0

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    .line 5
    .line 6
    iget-object p1, p1, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 10
    .line 11
    iget-object p1, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    .line 12
    .line 13
    iget-object p1, p1, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 17
    .line 18
    iget-object p1, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    .line 19
    .line 20
    iget-object p1, p1, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->c()V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    iget-object p1, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    .line 27
    .line 28
    iget-object p1, p1, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 32
    .line 33
    iget-object p1, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    .line 34
    .line 35
    iget-object p1, p1, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 39
    .line 40
    iget-object p1, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    .line 41
    .line 42
    iget-object p1, p1, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->c()V

    .line 46
    :goto_0
    return-void
.end method

.method public n()Landroidx/transition/Transition;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 5
    move-result-object v1

    .line 6
    .line 7
    check-cast v1, Landroidx/transition/Transition;

    .line 8
    .line 9
    new-instance v2, Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    iput-object v2, v1, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 15
    .line 16
    new-instance v2, Landroidx/transition/TransitionValuesMaps;

    .line 17
    .line 18
    .line 19
    invoke-direct {v2}, Landroidx/transition/TransitionValuesMaps;-><init>()V

    .line 20
    .line 21
    iput-object v2, v1, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    .line 22
    .line 23
    new-instance v2, Landroidx/transition/TransitionValuesMaps;

    .line 24
    .line 25
    .line 26
    invoke-direct {v2}, Landroidx/transition/TransitionValuesMaps;-><init>()V

    .line 27
    .line 28
    iput-object v2, v1, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    .line 29
    .line 30
    iput-object v0, v1, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 31
    .line 32
    iput-object v0, v1, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    return-object v1

    .line 34
    :catch_0
    return-object v0
.end method

.method public o(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected p(Landroid/view/ViewGroup;Landroidx/transition/TransitionValuesMaps;Landroidx/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 19
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroidx/transition/TransitionValuesMaps;",
            "Landroidx/transition/TransitionValuesMaps;",
            "Ljava/util/ArrayList<",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroidx/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v6, p0

    .line 3
    .line 4
    move-object/from16 v7, p1

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroidx/transition/Transition;->z()Landroidx/collection/ArrayMap;

    .line 8
    move-result-object v8

    .line 9
    .line 10
    new-instance v9, Landroid/util/SparseIntArray;

    .line 11
    .line 12
    .line 13
    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    .line 17
    move-result v10

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    const-wide v0, 0x7fffffffffffffffL

    .line 23
    const/4 v12, 0x0

    .line 24
    .line 25
    :goto_0
    if-ge v12, v10, :cond_c

    .line 26
    .line 27
    move-object/from16 v13, p4

    .line 28
    .line 29
    .line 30
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    check-cast v2, Landroidx/transition/TransitionValues;

    .line 34
    .line 35
    move-object/from16 v14, p5

    .line 36
    .line 37
    .line 38
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object v3

    .line 40
    .line 41
    check-cast v3, Landroidx/transition/TransitionValues;

    .line 42
    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    iget-object v5, v2, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 49
    move-result v5

    .line 50
    .line 51
    if-nez v5, :cond_0

    .line 52
    const/4 v2, 0x0

    .line 53
    .line 54
    :cond_0
    if-eqz v3, :cond_1

    .line 55
    .line 56
    iget-object v5, v3, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 60
    move-result v5

    .line 61
    .line 62
    if-nez v5, :cond_1

    .line 63
    const/4 v3, 0x0

    .line 64
    .line 65
    :cond_1
    if-nez v2, :cond_3

    .line 66
    .line 67
    if-nez v3, :cond_3

    .line 68
    .line 69
    :cond_2
    move/from16 v16, v10

    .line 70
    .line 71
    goto/16 :goto_5

    .line 72
    .line 73
    :cond_3
    if-eqz v2, :cond_4

    .line 74
    .line 75
    if-eqz v3, :cond_4

    .line 76
    .line 77
    .line 78
    invoke-virtual {v6, v2, v3}, Landroidx/transition/Transition;->H(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Z

    .line 79
    move-result v5

    .line 80
    .line 81
    if-eqz v5, :cond_2

    .line 82
    .line 83
    .line 84
    :cond_4
    invoke-virtual {v6, v7, v2, v3}, Landroidx/transition/Transition;->o(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    .line 85
    move-result-object v5

    .line 86
    .line 87
    if-eqz v5, :cond_2

    .line 88
    .line 89
    if-eqz v3, :cond_9

    .line 90
    .line 91
    iget-object v15, v3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 92
    .line 93
    .line 94
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/Transition;->F()[Ljava/lang/String;

    .line 95
    move-result-object v4

    .line 96
    .line 97
    if-eqz v4, :cond_8

    .line 98
    array-length v11, v4

    .line 99
    .line 100
    if-lez v11, :cond_8

    .line 101
    .line 102
    new-instance v11, Landroidx/transition/TransitionValues;

    .line 103
    .line 104
    .line 105
    invoke-direct {v11, v15}, Landroidx/transition/TransitionValues;-><init>(Landroid/view/View;)V

    .line 106
    .line 107
    move-object/from16 v17, v5

    .line 108
    .line 109
    move/from16 v16, v10

    .line 110
    .line 111
    move-object/from16 v10, p3

    .line 112
    .line 113
    iget-object v5, v10, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5, v15}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    move-result-object v5

    .line 118
    .line 119
    check-cast v5, Landroidx/transition/TransitionValues;

    .line 120
    .line 121
    if-eqz v5, :cond_5

    .line 122
    const/4 v10, 0x0

    .line 123
    :goto_1
    array-length v13, v4

    .line 124
    .line 125
    if-ge v10, v13, :cond_5

    .line 126
    .line 127
    iget-object v13, v11, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 128
    .line 129
    aget-object v14, v4, v10

    .line 130
    .line 131
    move-object/from16 v18, v4

    .line 132
    .line 133
    iget-object v4, v5, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 134
    .line 135
    .line 136
    invoke-interface {v4, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    move-result-object v4

    .line 138
    .line 139
    .line 140
    invoke-interface {v13, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    add-int/lit8 v10, v10, 0x1

    .line 143
    .line 144
    move-object/from16 v14, p5

    .line 145
    .line 146
    move-object/from16 v4, v18

    .line 147
    goto :goto_1

    .line 148
    .line 149
    .line 150
    :cond_5
    invoke-virtual {v8}, Landroidx/collection/SimpleArrayMap;->size()I

    .line 151
    move-result v4

    .line 152
    const/4 v5, 0x0

    .line 153
    .line 154
    :goto_2
    if-ge v5, v4, :cond_7

    .line 155
    .line 156
    .line 157
    invoke-virtual {v8, v5}, Landroidx/collection/SimpleArrayMap;->l(I)Ljava/lang/Object;

    .line 158
    move-result-object v10

    .line 159
    .line 160
    check-cast v10, Landroid/animation/Animator;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v8, v10}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    move-result-object v10

    .line 165
    .line 166
    check-cast v10, Landroidx/transition/Transition$AnimationInfo;

    .line 167
    .line 168
    iget-object v13, v10, Landroidx/transition/Transition$AnimationInfo;->mValues:Landroidx/transition/TransitionValues;

    .line 169
    .line 170
    if-eqz v13, :cond_6

    .line 171
    .line 172
    iget-object v13, v10, Landroidx/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    .line 173
    .line 174
    if-ne v13, v15, :cond_6

    .line 175
    .line 176
    iget-object v13, v10, Landroidx/transition/Transition$AnimationInfo;->mName:Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/Transition;->w()Ljava/lang/String;

    .line 180
    move-result-object v14

    .line 181
    .line 182
    .line 183
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    move-result v13

    .line 185
    .line 186
    if-eqz v13, :cond_6

    .line 187
    .line 188
    iget-object v10, v10, Landroidx/transition/Transition$AnimationInfo;->mValues:Landroidx/transition/TransitionValues;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v10, v11}, Landroidx/transition/TransitionValues;->equals(Ljava/lang/Object;)Z

    .line 192
    move-result v10

    .line 193
    .line 194
    if-eqz v10, :cond_6

    .line 195
    const/4 v4, 0x0

    .line 196
    goto :goto_3

    .line 197
    .line 198
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 199
    goto :goto_2

    .line 200
    .line 201
    :cond_7
    move-object/from16 v4, v17

    .line 202
    goto :goto_3

    .line 203
    .line 204
    :cond_8
    move-object/from16 v17, v5

    .line 205
    .line 206
    move/from16 v16, v10

    .line 207
    .line 208
    move-object/from16 v4, v17

    .line 209
    const/4 v11, 0x0

    .line 210
    :goto_3
    move-object v10, v4

    .line 211
    move-object v5, v11

    .line 212
    goto :goto_4

    .line 213
    .line 214
    :cond_9
    move-object/from16 v17, v5

    .line 215
    .line 216
    move/from16 v16, v10

    .line 217
    .line 218
    iget-object v4, v2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 219
    move-object v15, v4

    .line 220
    .line 221
    move-object/from16 v10, v17

    .line 222
    const/4 v5, 0x0

    .line 223
    .line 224
    :goto_4
    if-eqz v10, :cond_b

    .line 225
    .line 226
    iget-object v4, v6, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    .line 227
    .line 228
    if-eqz v4, :cond_a

    .line 229
    .line 230
    .line 231
    invoke-virtual {v4, v7, v6, v2, v3}, Landroidx/transition/TransitionPropagation;->c(Landroid/view/ViewGroup;Landroidx/transition/Transition;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)J

    .line 232
    move-result-wide v2

    .line 233
    .line 234
    iget-object v4, v6, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 238
    move-result v4

    .line 239
    long-to-int v11, v2

    .line 240
    .line 241
    .line 242
    invoke-virtual {v9, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 243
    .line 244
    .line 245
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 246
    move-result-wide v0

    .line 247
    :cond_a
    move-wide v13, v0

    .line 248
    .line 249
    new-instance v11, Landroidx/transition/Transition$AnimationInfo;

    .line 250
    .line 251
    .line 252
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/Transition;->w()Ljava/lang/String;

    .line 253
    move-result-object v2

    .line 254
    .line 255
    .line 256
    invoke-static/range {p1 .. p1}, Landroidx/transition/ViewUtils;->d(Landroid/view/View;)Landroidx/transition/WindowIdImpl;

    .line 257
    move-result-object v4

    .line 258
    move-object v0, v11

    .line 259
    move-object v1, v15

    .line 260
    .line 261
    move-object/from16 v3, p0

    .line 262
    .line 263
    .line 264
    invoke-direct/range {v0 .. v5}, Landroidx/transition/Transition$AnimationInfo;-><init>(Landroid/view/View;Ljava/lang/String;Landroidx/transition/Transition;Landroidx/transition/WindowIdImpl;Landroidx/transition/TransitionValues;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v8, v10, v11}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    iget-object v0, v6, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    move-wide v0, v13

    .line 274
    .line 275
    :cond_b
    :goto_5
    add-int/lit8 v12, v12, 0x1

    .line 276
    .line 277
    move/from16 v10, v16

    .line 278
    .line 279
    goto/16 :goto_0

    .line 280
    .line 281
    .line 282
    :cond_c
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    .line 283
    move-result v2

    .line 284
    .line 285
    if-eqz v2, :cond_d

    .line 286
    const/4 v11, 0x0

    .line 287
    .line 288
    .line 289
    :goto_6
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    .line 290
    move-result v2

    .line 291
    .line 292
    if-ge v11, v2, :cond_d

    .line 293
    .line 294
    .line 295
    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 296
    move-result v2

    .line 297
    .line 298
    iget-object v3, v6, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 302
    move-result-object v2

    .line 303
    .line 304
    check-cast v2, Landroid/animation/Animator;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 308
    move-result v3

    .line 309
    int-to-long v3, v3

    .line 310
    sub-long/2addr v3, v0

    .line 311
    .line 312
    .line 313
    invoke-virtual {v2}, Landroid/animation/Animator;->getStartDelay()J

    .line 314
    move-result-wide v7

    .line 315
    add-long/2addr v3, v7

    .line 316
    .line 317
    .line 318
    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 319
    .line 320
    add-int/lit8 v11, v11, 0x1

    .line 321
    goto :goto_6

    .line 322
    :cond_d
    return-void
.end method

.method protected q()V
    .locals 6
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/transition/Transition;->mNumInstances:I

    .line 3
    const/4 v1, 0x1

    .line 4
    sub-int/2addr v0, v1

    .line 5
    .line 6
    iput v0, p0, Landroidx/transition/Transition;->mNumInstances:I

    .line 7
    .line 8
    if-nez v0, :cond_5

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 17
    move-result v0

    .line 18
    .line 19
    if-lez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 31
    move-result v3

    .line 32
    move v4, v2

    .line 33
    .line 34
    :goto_0
    if-ge v4, v3, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v5

    .line 39
    .line 40
    check-cast v5, Landroidx/transition/Transition$TransitionListener;

    .line 41
    .line 42
    .line 43
    invoke-interface {v5, p0}, Landroidx/transition/Transition$TransitionListener;->d(Landroidx/transition/Transition;)V

    .line 44
    .line 45
    add-int/lit8 v4, v4, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v0, v2

    .line 48
    .line 49
    :goto_1
    iget-object v3, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    .line 50
    .line 51
    iget-object v3, v3, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->p()I

    .line 55
    move-result v3

    .line 56
    .line 57
    if-ge v0, v3, :cond_2

    .line 58
    .line 59
    iget-object v3, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    .line 60
    .line 61
    iget-object v3, v3, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v0}, Landroidx/collection/LongSparseArray;->q(I)Ljava/lang/Object;

    .line 65
    move-result-object v3

    .line 66
    .line 67
    check-cast v3, Landroid/view/View;

    .line 68
    .line 69
    if-eqz v3, :cond_1

    .line 70
    .line 71
    .line 72
    invoke-static {v3, v2}, Landroidx/core/view/ViewCompat;->E0(Landroid/view/View;Z)V

    .line 73
    .line 74
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    move v0, v2

    .line 77
    .line 78
    :goto_2
    iget-object v3, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    .line 79
    .line 80
    iget-object v3, v3, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->p()I

    .line 84
    move-result v3

    .line 85
    .line 86
    if-ge v0, v3, :cond_4

    .line 87
    .line 88
    iget-object v3, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    .line 89
    .line 90
    iget-object v3, v3, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, v0}, Landroidx/collection/LongSparseArray;->q(I)Ljava/lang/Object;

    .line 94
    move-result-object v3

    .line 95
    .line 96
    check-cast v3, Landroid/view/View;

    .line 97
    .line 98
    if-eqz v3, :cond_3

    .line 99
    .line 100
    .line 101
    invoke-static {v3, v2}, Landroidx/core/view/ViewCompat;->E0(Landroid/view/View;Z)V

    .line 102
    .line 103
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 104
    goto :goto_2

    .line 105
    .line 106
    :cond_4
    iput-boolean v1, p0, Landroidx/transition/Transition;->mEnded:Z

    .line 107
    :cond_5
    return-void
.end method

.method public r()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/transition/Transition;->mDuration:J

    return-wide v0
.end method

.method public s()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/transition/Transition;->mEpicenterCallback:Landroidx/transition/Transition$EpicenterCallback;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0, p0}, Landroidx/transition/Transition$EpicenterCallback;->a(Landroidx/transition/Transition;)Landroid/graphics/Rect;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public t()Landroidx/transition/Transition$EpicenterCallback;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/transition/Transition;->mEpicenterCallback:Landroidx/transition/Transition$EpicenterCallback;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const-string v0, ""

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/transition/Transition;->g0(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public u()Landroid/animation/TimeInterpolator;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method v(Landroid/view/View;Z)Landroidx/transition/TransitionValues;
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Landroidx/transition/Transition;->v(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    .line 11
    :cond_0
    if-eqz p2, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 17
    :goto_0
    const/4 v1, 0x0

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    return-object v1

    .line 21
    .line 22
    .line 23
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x0

    .line 26
    .line 27
    :goto_1
    if-ge v3, v2, :cond_5

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v4

    .line 32
    .line 33
    check-cast v4, Landroidx/transition/TransitionValues;

    .line 34
    .line 35
    if-nez v4, :cond_3

    .line 36
    return-object v1

    .line 37
    .line 38
    :cond_3
    iget-object v4, v4, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 39
    .line 40
    if-ne v4, p1, :cond_4

    .line 41
    goto :goto_2

    .line 42
    .line 43
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_5
    const/4 v3, -0x1

    .line 46
    .line 47
    :goto_2
    if-ltz v3, :cond_7

    .line 48
    .line 49
    if-eqz p2, :cond_6

    .line 50
    .line 51
    iget-object p1, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 52
    goto :goto_3

    .line 53
    .line 54
    :cond_6
    iget-object p1, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 55
    .line 56
    .line 57
    :goto_3
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    move-result-object p1

    .line 59
    move-object v1, p1

    .line 60
    .line 61
    check-cast v1, Landroidx/transition/TransitionValues;

    .line 62
    :cond_7
    return-object v1
.end method

.method public w()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/transition/Transition;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public x()Landroidx/transition/PathMotion;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    return-object v0
.end method

.method public y()Landroidx/transition/TransitionPropagation;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    return-object v0
.end method
