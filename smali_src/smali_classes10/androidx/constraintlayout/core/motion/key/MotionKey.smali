.class public abstract Landroidx/constraintlayout/core/motion/key/MotionKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/constraintlayout/core/motion/utils/TypedValues;


# static fields
.field public static final ALPHA:Ljava/lang/String; = "alpha"

.field public static final CUSTOM:Ljava/lang/String; = "CUSTOM"

.field public static final ELEVATION:Ljava/lang/String; = "elevation"

.field public static final ROTATION:Ljava/lang/String; = "rotationZ"

.field public static final ROTATION_X:Ljava/lang/String; = "rotationX"

.field public static final SCALE_X:Ljava/lang/String; = "scaleX"

.field public static final SCALE_Y:Ljava/lang/String; = "scaleY"

.field public static final TRANSITION_PATH_ROTATE:Ljava/lang/String; = "transitionPathRotate"

.field public static final TRANSLATION_X:Ljava/lang/String; = "translationX"

.field public static final TRANSLATION_Y:Ljava/lang/String; = "translationY"

.field public static UNSET:I = -0x1

.field public static final VISIBILITY:Ljava/lang/String; = "visibility"


# instance fields
.field public mCustom:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/CustomVariable;",
            ">;"
        }
    .end annotation
.end field

.field public mFramePosition:I

.field mTargetId:I

.field mTargetString:Ljava/lang/String;

.field public mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    sget v0, Landroidx/constraintlayout/core/motion/key/MotionKey;->UNSET:I

    .line 6
    .line 7
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    .line 8
    .line 9
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mTargetId:I

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mTargetString:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public abstract a()Landroidx/constraintlayout/core/motion/key/MotionKey;
.end method

.method public b(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKey;
    .locals 1

    .line 1
    .line 2
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    .line 3
    .line 4
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    .line 5
    .line 6
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKey;->mTargetId:I

    .line 7
    .line 8
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mTargetId:I

    .line 9
    .line 10
    iget-object v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKey;->mTargetString:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mTargetString:Ljava/lang/String;

    .line 13
    .line 14
    iget p1, p1, Landroidx/constraintlayout/core/motion/key/MotionKey;->mType:I

    .line 15
    .line 16
    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mType:I

    .line 17
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
    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/key/MotionKey;->a()Landroidx/constraintlayout/core/motion/key/MotionKey;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
