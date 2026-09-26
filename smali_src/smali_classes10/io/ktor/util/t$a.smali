.class public final Lio/ktor/util/t$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/util/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lio/ktor/util/t$a;

.field private static final Empty:Lio/ktor/util/t;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lio/ktor/util/t$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lio/ktor/util/t$a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lio/ktor/util/t$a;->$$INSTANCE:Lio/ktor/util/t$a;

    .line 8
    .line 9
    new-instance v0, Lio/ktor/util/w;

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x3

    .line 12
    const/4 v3, 0x0

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v3, v1, v2, v1}, Lio/ktor/util/w;-><init>(ZLjava/util/Map;ILkotlin/jvm/internal/k;)V

    .line 16
    .line 17
    sput-object v0, Lio/ktor/util/t$a;->Empty:Lio/ktor/util/t;

    .line 18
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
