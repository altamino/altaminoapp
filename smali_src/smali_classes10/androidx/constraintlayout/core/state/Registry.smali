.class public Landroidx/constraintlayout/core/state/Registry;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sRegistry:Landroidx/constraintlayout/core/state/Registry;


# instance fields
.field private mCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/state/RegistryCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/constraintlayout/core/state/Registry;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/constraintlayout/core/state/Registry;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/constraintlayout/core/state/Registry;->sRegistry:Landroidx/constraintlayout/core/state/Registry;

    .line 8
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
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    .line 11
    return-void
.end method
