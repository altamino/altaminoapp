.class public Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;
.super Landroidx/constraintlayout/core/motion/key/MotionKey;
.source "SourceFile"


# static fields
.field public static final CROSS:Ljava/lang/String; = "CROSS"

.field public static final KEY_TYPE:I = 0x5

.field public static final NEGATIVE_CROSS:Ljava/lang/String; = "negativeCross"

.field public static final POSITIVE_CROSS:Ljava/lang/String; = "positiveCross"

.field public static final POST_LAYOUT:Ljava/lang/String; = "postLayout"

.field private static final TAG:Ljava/lang/String; = "KeyTrigger"

.field public static final TRIGGER_COLLISION_ID:Ljava/lang/String; = "triggerCollisionId"

.field public static final TRIGGER_COLLISION_VIEW:Ljava/lang/String; = "triggerCollisionView"

.field public static final TRIGGER_ID:Ljava/lang/String; = "triggerID"

.field public static final TRIGGER_RECEIVER:Ljava/lang/String; = "triggerReceiver"

.field public static final TRIGGER_SLACK:Ljava/lang/String; = "triggerSlack"

.field public static final TYPE_CROSS:I = 0x138

.field public static final TYPE_NEGATIVE_CROSS:I = 0x136

.field public static final TYPE_POSITIVE_CROSS:I = 0x135

.field public static final TYPE_POST_LAYOUT:I = 0x130

.field public static final TYPE_TRIGGER_COLLISION_ID:I = 0x133

.field public static final TYPE_TRIGGER_COLLISION_VIEW:I = 0x132

.field public static final TYPE_TRIGGER_ID:I = 0x134

.field public static final TYPE_TRIGGER_RECEIVER:I = 0x137

.field public static final TYPE_TRIGGER_SLACK:I = 0x131

.field public static final TYPE_VIEW_TRANSITION_ON_CROSS:I = 0x12d

.field public static final TYPE_VIEW_TRANSITION_ON_NEGATIVE_CROSS:I = 0x12f

.field public static final TYPE_VIEW_TRANSITION_ON_POSITIVE_CROSS:I = 0x12e

.field public static final VIEW_TRANSITION_ON_CROSS:Ljava/lang/String; = "viewTransitionOnCross"

.field public static final VIEW_TRANSITION_ON_NEGATIVE_CROSS:Ljava/lang/String; = "viewTransitionOnNegativeCross"

.field public static final VIEW_TRANSITION_ON_POSITIVE_CROSS:Ljava/lang/String; = "viewTransitionOnPositiveCross"


# instance fields
.field mCollisionRect:Landroidx/constraintlayout/core/motion/utils/FloatRect;

.field private mCross:Ljava/lang/String;

.field private mCurveFit:I

.field private mFireCrossReset:Z

.field private mFireLastPos:F

.field private mFireNegativeReset:Z

.field private mFirePositiveReset:Z

.field private mFireThreshold:F

.field private mNegativeCross:Ljava/lang/String;

.field private mPositiveCross:Ljava/lang/String;

.field private mPostLayout:Z

.field mTargetRect:Landroidx/constraintlayout/core/motion/utils/FloatRect;

.field private mTriggerCollisionId:I

.field private mTriggerID:I

.field private mTriggerReceiver:I

.field mTriggerSlack:F

.field mViewTransitionOnCross:I

.field mViewTransitionOnNegativeCross:I

.field mViewTransitionOnPositiveCross:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/key/MotionKey;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCurveFit:I

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCross:Ljava/lang/String;

    .line 10
    .line 11
    sget v1, Landroidx/constraintlayout/core/motion/key/MotionKey;->UNSET:I

    .line 12
    .line 13
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerReceiver:I

    .line 14
    .line 15
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mNegativeCross:Ljava/lang/String;

    .line 16
    .line 17
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mPositiveCross:Ljava/lang/String;

    .line 18
    .line 19
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerID:I

    .line 20
    .line 21
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerCollisionId:I

    .line 22
    .line 23
    .line 24
    const v0, 0x3dcccccd    # 0.1f

    .line 25
    .line 26
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerSlack:F

    .line 27
    const/4 v0, 0x1

    .line 28
    .line 29
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireCrossReset:Z

    .line 30
    .line 31
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireNegativeReset:Z

    .line 32
    .line 33
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFirePositiveReset:Z

    .line 34
    .line 35
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 36
    .line 37
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireThreshold:F

    .line 38
    const/4 v0, 0x0

    .line 39
    .line 40
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mPostLayout:Z

    .line 41
    .line 42
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mViewTransitionOnNegativeCross:I

    .line 43
    .line 44
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mViewTransitionOnPositiveCross:I

    .line 45
    .line 46
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mViewTransitionOnCross:I

    .line 47
    .line 48
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/FloatRect;

    .line 49
    .line 50
    .line 51
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/FloatRect;-><init>()V

    .line 52
    .line 53
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCollisionRect:Landroidx/constraintlayout/core/motion/utils/FloatRect;

    .line 54
    .line 55
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/FloatRect;

    .line 56
    .line 57
    .line 58
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/FloatRect;-><init>()V

    .line 59
    .line 60
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTargetRect:Landroidx/constraintlayout/core/motion/utils/FloatRect;

    .line 61
    const/4 v0, 0x5

    .line 62
    .line 63
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mType:I

    .line 64
    .line 65
    new-instance v0, Ljava/util/HashMap;

    .line 66
    .line 67
    .line 68
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    .line 70
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mCustom:Ljava/util/HashMap;

    .line 71
    return-void
.end method


# virtual methods
.method public a()Landroidx/constraintlayout/core/motion/key/MotionKey;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->c(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public c(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKey;->b(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKey;

    .line 4
    .line 5
    check-cast p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    .line 6
    .line 7
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCurveFit:I

    .line 8
    .line 9
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCurveFit:I

    .line 10
    .line 11
    iget-object v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCross:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCross:Ljava/lang/String;

    .line 14
    .line 15
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerReceiver:I

    .line 16
    .line 17
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerReceiver:I

    .line 18
    .line 19
    iget-object v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mNegativeCross:Ljava/lang/String;

    .line 20
    .line 21
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mNegativeCross:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mPositiveCross:Ljava/lang/String;

    .line 24
    .line 25
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mPositiveCross:Ljava/lang/String;

    .line 26
    .line 27
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerID:I

    .line 28
    .line 29
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerID:I

    .line 30
    .line 31
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerCollisionId:I

    .line 32
    .line 33
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerCollisionId:I

    .line 34
    .line 35
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerSlack:F

    .line 36
    .line 37
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerSlack:F

    .line 38
    .line 39
    iget-boolean v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireCrossReset:Z

    .line 40
    .line 41
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireCrossReset:Z

    .line 42
    .line 43
    iget-boolean v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireNegativeReset:Z

    .line 44
    .line 45
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireNegativeReset:Z

    .line 46
    .line 47
    iget-boolean v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFirePositiveReset:Z

    .line 48
    .line 49
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFirePositiveReset:Z

    .line 50
    .line 51
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireThreshold:F

    .line 52
    .line 53
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireThreshold:F

    .line 54
    .line 55
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireLastPos:F

    .line 56
    .line 57
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireLastPos:F

    .line 58
    .line 59
    iget-boolean v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mPostLayout:Z

    .line 60
    .line 61
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mPostLayout:Z

    .line 62
    .line 63
    iget-object v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCollisionRect:Landroidx/constraintlayout/core/motion/utils/FloatRect;

    .line 64
    .line 65
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCollisionRect:Landroidx/constraintlayout/core/motion/utils/FloatRect;

    .line 66
    .line 67
    iget-object p1, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTargetRect:Landroidx/constraintlayout/core/motion/utils/FloatRect;

    .line 68
    .line 69
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTargetRect:Landroidx/constraintlayout/core/motion/utils/FloatRect;

    .line 70
    return-object p0
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
    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->a()Landroidx/constraintlayout/core/motion/key/MotionKey;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
