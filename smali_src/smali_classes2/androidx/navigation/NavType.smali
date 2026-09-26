.class public abstract Landroidx/navigation/NavType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavType$Companion;,
        Landroidx/navigation/NavType$ParcelableType;,
        Landroidx/navigation/NavType$ParcelableArrayType;,
        Landroidx/navigation/NavType$SerializableType;,
        Landroidx/navigation/NavType$EnumType;,
        Landroidx/navigation/NavType$SerializableArrayType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final BoolArrayType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "[Z>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final BoolType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Landroidx/navigation/NavType$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FloatArrayType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "[F>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FloatType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final IntArrayType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "[I>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final IntType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LongArrayType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "[J>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LongType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ReferenceType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final StringArrayType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final StringType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final isNullableAllowed:Z

.field private final name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/navigation/NavType$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/navigation/NavType$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Landroidx/navigation/NavType;->Companion:Landroidx/navigation/NavType$Companion;

    .line 9
    .line 10
    new-instance v0, Landroidx/navigation/NavType$Companion$IntType$1;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/navigation/NavType$Companion$IntType$1;-><init>()V

    .line 14
    .line 15
    sput-object v0, Landroidx/navigation/NavType;->IntType:Landroidx/navigation/NavType;

    .line 16
    .line 17
    new-instance v0, Landroidx/navigation/NavType$Companion$ReferenceType$1;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Landroidx/navigation/NavType$Companion$ReferenceType$1;-><init>()V

    .line 21
    .line 22
    sput-object v0, Landroidx/navigation/NavType;->ReferenceType:Landroidx/navigation/NavType;

    .line 23
    .line 24
    new-instance v0, Landroidx/navigation/NavType$Companion$IntArrayType$1;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0}, Landroidx/navigation/NavType$Companion$IntArrayType$1;-><init>()V

    .line 28
    .line 29
    sput-object v0, Landroidx/navigation/NavType;->IntArrayType:Landroidx/navigation/NavType;

    .line 30
    .line 31
    new-instance v0, Landroidx/navigation/NavType$Companion$LongType$1;

    .line 32
    .line 33
    .line 34
    invoke-direct {v0}, Landroidx/navigation/NavType$Companion$LongType$1;-><init>()V

    .line 35
    .line 36
    sput-object v0, Landroidx/navigation/NavType;->LongType:Landroidx/navigation/NavType;

    .line 37
    .line 38
    new-instance v0, Landroidx/navigation/NavType$Companion$LongArrayType$1;

    .line 39
    .line 40
    .line 41
    invoke-direct {v0}, Landroidx/navigation/NavType$Companion$LongArrayType$1;-><init>()V

    .line 42
    .line 43
    sput-object v0, Landroidx/navigation/NavType;->LongArrayType:Landroidx/navigation/NavType;

    .line 44
    .line 45
    new-instance v0, Landroidx/navigation/NavType$Companion$FloatType$1;

    .line 46
    .line 47
    .line 48
    invoke-direct {v0}, Landroidx/navigation/NavType$Companion$FloatType$1;-><init>()V

    .line 49
    .line 50
    sput-object v0, Landroidx/navigation/NavType;->FloatType:Landroidx/navigation/NavType;

    .line 51
    .line 52
    new-instance v0, Landroidx/navigation/NavType$Companion$FloatArrayType$1;

    .line 53
    .line 54
    .line 55
    invoke-direct {v0}, Landroidx/navigation/NavType$Companion$FloatArrayType$1;-><init>()V

    .line 56
    .line 57
    sput-object v0, Landroidx/navigation/NavType;->FloatArrayType:Landroidx/navigation/NavType;

    .line 58
    .line 59
    new-instance v0, Landroidx/navigation/NavType$Companion$BoolType$1;

    .line 60
    .line 61
    .line 62
    invoke-direct {v0}, Landroidx/navigation/NavType$Companion$BoolType$1;-><init>()V

    .line 63
    .line 64
    sput-object v0, Landroidx/navigation/NavType;->BoolType:Landroidx/navigation/NavType;

    .line 65
    .line 66
    new-instance v0, Landroidx/navigation/NavType$Companion$BoolArrayType$1;

    .line 67
    .line 68
    .line 69
    invoke-direct {v0}, Landroidx/navigation/NavType$Companion$BoolArrayType$1;-><init>()V

    .line 70
    .line 71
    sput-object v0, Landroidx/navigation/NavType;->BoolArrayType:Landroidx/navigation/NavType;

    .line 72
    .line 73
    new-instance v0, Landroidx/navigation/NavType$Companion$StringType$1;

    .line 74
    .line 75
    .line 76
    invoke-direct {v0}, Landroidx/navigation/NavType$Companion$StringType$1;-><init>()V

    .line 77
    .line 78
    sput-object v0, Landroidx/navigation/NavType;->StringType:Landroidx/navigation/NavType;

    .line 79
    .line 80
    new-instance v0, Landroidx/navigation/NavType$Companion$StringArrayType$1;

    .line 81
    .line 82
    .line 83
    invoke-direct {v0}, Landroidx/navigation/NavType$Companion$StringArrayType$1;-><init>()V

    .line 84
    .line 85
    sput-object v0, Landroidx/navigation/NavType;->StringArrayType:Landroidx/navigation/NavType;

    .line 86
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-boolean p1, p0, Landroidx/navigation/NavType;->isNullableAllowed:Z

    .line 6
    .line 7
    const-string p1, "nav_type"

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/navigation/NavType;->name:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/navigation/NavType;->isNullableAllowed:Z

    return v0
.end method

.method public final d(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "bundle"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "key"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "value"

    .line 14
    .line 15
    .line 16
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p3}, Landroidx/navigation/NavType;->e(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object p3

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigation/NavType;->f(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    return-object p3
.end method

.method public abstract e(Ljava/lang/String;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract f(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/navigation/NavType;->b()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
