.class public final Lio/ktor/http/z$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lio/ktor/http/z$a;

.field private static final Empty:Lio/ktor/http/z;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lio/ktor/http/z$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lio/ktor/http/z$a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lio/ktor/http/z$a;->$$INSTANCE:Lio/ktor/http/z$a;

    .line 8
    .line 9
    sget-object v0, Lio/ktor/http/f;->INSTANCE:Lio/ktor/http/f;

    .line 10
    .line 11
    sput-object v0, Lio/ktor/http/z$a;->Empty:Lio/ktor/http/z;

    .line 12
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
.method public final a()Lio/ktor/http/z;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lio/ktor/http/z$a;->Empty:Lio/ktor/http/z;

    return-object v0
.end method
