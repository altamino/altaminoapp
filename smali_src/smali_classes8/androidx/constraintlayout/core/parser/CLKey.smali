.class public Landroidx/constraintlayout/core/parser/CLKey;
.super Landroidx/constraintlayout/core/parser/CLContainer;
.source "SourceFile"


# static fields
.field private static sections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/constraintlayout/core/parser/CLKey;->sections:Ljava/util/ArrayList;

    .line 8
    .line 9
    const-string v1, "ConstraintSets"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    sget-object v0, Landroidx/constraintlayout/core/parser/CLKey;->sections:Ljava/util/ArrayList;

    .line 15
    .line 16
    const-string v1, "Variables"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    sget-object v0, Landroidx/constraintlayout/core/parser/CLKey;->sections:Ljava/util/ArrayList;

    .line 22
    .line 23
    const-string v1, "Generate"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    sget-object v0, Landroidx/constraintlayout/core/parser/CLKey;->sections:Ljava/util/ArrayList;

    .line 29
    .line 30
    const-string v1, "Transitions"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    sget-object v0, Landroidx/constraintlayout/core/parser/CLKey;->sections:Ljava/util/ArrayList;

    .line 36
    .line 37
    const-string v1, "KeyFrames"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    sget-object v0, Landroidx/constraintlayout/core/parser/CLKey;->sections:Ljava/util/ArrayList;

    .line 43
    .line 44
    const-string v1, "KeyAttributes"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    sget-object v0, Landroidx/constraintlayout/core/parser/CLKey;->sections:Ljava/util/ArrayList;

    .line 50
    .line 51
    const-string v1, "KeyPositions"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    sget-object v0, Landroidx/constraintlayout/core/parser/CLKey;->sections:Ljava/util/ArrayList;

    .line 57
    .line 58
    const-string v1, "KeyCycles"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public constructor <init>([C)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;-><init>([C)V

    .line 4
    return-void
.end method
