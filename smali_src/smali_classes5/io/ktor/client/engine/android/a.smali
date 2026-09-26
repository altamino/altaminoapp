.class public final Lio/ktor/client/engine/android/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/ktor/client/engine/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/ktor/client/engine/h<",
        "Lio/ktor/client/engine/android/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/client/engine/android/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/client/engine/android/a;

    invoke-direct {v0}, Lio/ktor/client/engine/android/a;-><init>()V

    sput-object v0, Lio/ktor/client/engine/android/a;->INSTANCE:Lio/ktor/client/engine/android/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a(Le8/l;)Lio/ktor/client/engine/b;
    .locals 2
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Lio/ktor/client/engine/android/d;",
            "Lw7/l0;",
            ">;)",
            "Lio/ktor/client/engine/b;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "block"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lio/ktor/client/engine/android/b;

    .line 8
    .line 9
    new-instance v1, Lio/ktor/client/engine/android/d;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1}, Lio/ktor/client/engine/android/d;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lio/ktor/client/engine/android/b;-><init>(Lio/ktor/client/engine/android/d;)V

    .line 19
    return-object v0
.end method
