.class final enum Landroidx/work/impl/utils/futures/DirectExecutor;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/work/impl/utils/futures/DirectExecutor;",
        ">;",
        "Ljava/util/concurrent/Executor;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/work/impl/utils/futures/DirectExecutor;

.field public static final enum INSTANCE:Landroidx/work/impl/utils/futures/DirectExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroidx/work/impl/utils/futures/DirectExecutor;

    .line 3
    .line 4
    const-string v1, "INSTANCE"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Landroidx/work/impl/utils/futures/DirectExecutor;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    sput-object v0, Landroidx/work/impl/utils/futures/DirectExecutor;->INSTANCE:Landroidx/work/impl/utils/futures/DirectExecutor;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroidx/work/impl/utils/futures/DirectExecutor;->a()[Landroidx/work/impl/utils/futures/DirectExecutor;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sput-object v0, Landroidx/work/impl/utils/futures/DirectExecutor;->$VALUES:[Landroidx/work/impl/utils/futures/DirectExecutor;

    .line 17
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

.method private static synthetic a()[Landroidx/work/impl/utils/futures/DirectExecutor;
    .locals 3

    .line 1
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/work/impl/utils/futures/DirectExecutor;

    const/4 v1, 0x0

    sget-object v2, Landroidx/work/impl/utils/futures/DirectExecutor;->INSTANCE:Landroidx/work/impl/utils/futures/DirectExecutor;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/work/impl/utils/futures/DirectExecutor;
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
    const-class v0, Landroidx/work/impl/utils/futures/DirectExecutor;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Landroidx/work/impl/utils/futures/DirectExecutor;

    .line 9
    return-object p0
.end method

.method public static values()[Landroidx/work/impl/utils/futures/DirectExecutor;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Landroidx/work/impl/utils/futures/DirectExecutor;->$VALUES:[Landroidx/work/impl/utils/futures/DirectExecutor;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Landroidx/work/impl/utils/futures/DirectExecutor;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Landroidx/work/impl/utils/futures/DirectExecutor;

    .line 9
    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "command"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DirectExecutor"

    return-object v0
.end method
