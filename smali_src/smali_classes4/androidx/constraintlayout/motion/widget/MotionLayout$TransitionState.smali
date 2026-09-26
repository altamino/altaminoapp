.class final enum Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TransitionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

.field public static final enum FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

.field public static final enum MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

.field public static final enum SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

.field public static final enum UNDEFINED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 3
    .line 4
    const-string v1, "UNDEFINED"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    sput-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->UNDEFINED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 11
    .line 12
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 13
    .line 14
    const-string v1, "SETUP"

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    sput-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 21
    .line 22
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 23
    .line 24
    const-string v1, "MOVING"

    .line 25
    const/4 v2, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    sput-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 31
    .line 32
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 33
    .line 34
    const-string v1, "FINISHED"

    .line 35
    const/4 v2, 0x3

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    sput-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 41
    .line 42
    .line 43
    invoke-static {}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->a()[Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    sput-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->$VALUES:[Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 47
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method private static synthetic a()[Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;
    .locals 3

    .line 1
    const/4 v0, 0x4

    new-array v0, v0, [Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    const/4 v1, 0x0

    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->UNDEFINED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 9
    return-object p0
.end method

.method public static values()[Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->$VALUES:[Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 9
    return-object v0
.end method
