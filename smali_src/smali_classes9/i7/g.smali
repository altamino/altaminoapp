.class public final Li7/g;
.super Lio/ktor/util/pipeline/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li7/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/ktor/util/pipeline/d<",
        "Ljava/lang/Object;",
        "Li7/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final Before:Lio/ktor/util/pipeline/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Phases:Li7/g$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Render:Lio/ktor/util/pipeline/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Send:Lio/ktor/util/pipeline/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final State:Lio/ktor/util/pipeline/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Transform:Lio/ktor/util/pipeline/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final developmentMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Li7/g$a;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Li7/g$a;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Li7/g;->Phases:Li7/g$a;

    .line 9
    .line 10
    new-instance v0, Lio/ktor/util/pipeline/h;

    .line 11
    .line 12
    const-string v1, "Before"

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/h;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    sput-object v0, Li7/g;->Before:Lio/ktor/util/pipeline/h;

    .line 18
    .line 19
    new-instance v0, Lio/ktor/util/pipeline/h;

    .line 20
    .line 21
    const-string v1, "State"

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/h;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    sput-object v0, Li7/g;->State:Lio/ktor/util/pipeline/h;

    .line 27
    .line 28
    new-instance v0, Lio/ktor/util/pipeline/h;

    .line 29
    .line 30
    const-string v1, "Transform"

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/h;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    sput-object v0, Li7/g;->Transform:Lio/ktor/util/pipeline/h;

    .line 36
    .line 37
    new-instance v0, Lio/ktor/util/pipeline/h;

    .line 38
    .line 39
    const-string v1, "Render"

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/h;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    sput-object v0, Li7/g;->Render:Lio/ktor/util/pipeline/h;

    .line 45
    .line 46
    new-instance v0, Lio/ktor/util/pipeline/h;

    .line 47
    .line 48
    const-string v1, "Send"

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/h;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    sput-object v0, Li7/g;->Send:Lio/ktor/util/pipeline/h;

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Li7/g;-><init>(ZILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lio/ktor/util/pipeline/h;

    const/4 v1, 0x0

    sget-object v2, Li7/g;->Before:Lio/ktor/util/pipeline/h;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Li7/g;->State:Lio/ktor/util/pipeline/h;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Li7/g;->Transform:Lio/ktor/util/pipeline/h;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Li7/g;->Render:Lio/ktor/util/pipeline/h;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Li7/g;->Send:Lio/ktor/util/pipeline/h;

    aput-object v2, v0, v1

    .line 3
    invoke-direct {p0, v0}, Lio/ktor/util/pipeline/d;-><init>([Lio/ktor/util/pipeline/h;)V

    iput-boolean p1, p0, Li7/g;->developmentMode:Z

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Li7/g;-><init>(Z)V

    return-void
.end method

.method public static final synthetic s()Lio/ktor/util/pipeline/h;
    .locals 1

    .line 1
    sget-object v0, Li7/g;->Before:Lio/ktor/util/pipeline/h;

    return-object v0
.end method

.method public static final synthetic t()Lio/ktor/util/pipeline/h;
    .locals 1

    .line 1
    sget-object v0, Li7/g;->Render:Lio/ktor/util/pipeline/h;

    return-object v0
.end method

.method public static final synthetic u()Lio/ktor/util/pipeline/h;
    .locals 1

    .line 1
    sget-object v0, Li7/g;->Send:Lio/ktor/util/pipeline/h;

    return-object v0
.end method

.method public static final synthetic v()Lio/ktor/util/pipeline/h;
    .locals 1

    .line 1
    sget-object v0, Li7/g;->State:Lio/ktor/util/pipeline/h;

    return-object v0
.end method


# virtual methods
.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Li7/g;->developmentMode:Z

    return v0
.end method
