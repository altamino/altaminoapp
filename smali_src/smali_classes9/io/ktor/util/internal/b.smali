.class public final Lio/ktor/util/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ALREADY_REMOVED:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final CONDITION_FALSE:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FAILURE:I = 0x2

.field private static final LIST_EMPTY:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final NO_DECISION:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final REMOVE_PREPARED:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SUCCESS:I = 0x1

.field public static final UNDECIDED:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lio/ktor/util/internal/f;

    .line 3
    .line 4
    const-string v1, "CONDITION_FALSE"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lio/ktor/util/internal/f;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    sput-object v0, Lio/ktor/util/internal/b;->CONDITION_FALSE:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Lio/ktor/util/internal/f;

    .line 12
    .line 13
    const-string v1, "ALREADY_REMOVED"

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lio/ktor/util/internal/f;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    sput-object v0, Lio/ktor/util/internal/b;->ALREADY_REMOVED:Ljava/lang/Object;

    .line 19
    .line 20
    new-instance v0, Lio/ktor/util/internal/f;

    .line 21
    .line 22
    const-string v1, "LIST_EMPTY"

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Lio/ktor/util/internal/f;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    sput-object v0, Lio/ktor/util/internal/b;->LIST_EMPTY:Ljava/lang/Object;

    .line 28
    .line 29
    new-instance v0, Lio/ktor/util/internal/f;

    .line 30
    .line 31
    const-string v1, "REMOVE_PREPARED"

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1}, Lio/ktor/util/internal/f;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    sput-object v0, Lio/ktor/util/internal/b;->REMOVE_PREPARED:Ljava/lang/Object;

    .line 37
    .line 38
    new-instance v0, Lio/ktor/util/internal/f;

    .line 39
    .line 40
    const-string v1, "NO_DECISION"

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v1}, Lio/ktor/util/internal/f;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    sput-object v0, Lio/ktor/util/internal/b;->NO_DECISION:Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public static final a(Ljava/lang/Object;)Lio/ktor/util/internal/c;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    instance-of v0, p0, Lio/ktor/util/internal/e;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    move-object v0, p0

    .line 11
    .line 12
    check-cast v0, Lio/ktor/util/internal/e;

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, v0, Lio/ktor/util/internal/e;->ref:Lio/ktor/util/internal/c;

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    :cond_1
    move-object v0, p0

    .line 22
    .line 23
    check-cast v0, Lio/ktor/util/internal/c;

    .line 24
    :cond_2
    return-object v0
.end method
