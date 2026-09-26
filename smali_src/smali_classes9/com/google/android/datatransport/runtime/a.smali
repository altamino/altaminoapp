.class public final Lcom/google/android/datatransport/runtime/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk4/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/a$f;,
        Lcom/google/android/datatransport/runtime/a$b;,
        Lcom/google/android/datatransport/runtime/a$c;,
        Lcom/google/android/datatransport/runtime/a$d;,
        Lcom/google/android/datatransport/runtime/a$g;,
        Lcom/google/android/datatransport/runtime/a$a;,
        Lcom/google/android/datatransport/runtime/a$e;
    }
.end annotation


# static fields
.field public static final CODEGEN_VERSION:I = 0x2

.field public static final CONFIG:Lk4/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/datatransport/runtime/a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/android/datatransport/runtime/a;->CONFIG:Lk4/a;

    .line 8
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
.method public a(Lk4/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk4/b<",
            "*>;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, Lcom/google/android/datatransport/runtime/m;

    .line 3
    .line 4
    sget-object v1, Lcom/google/android/datatransport/runtime/a$e;->INSTANCE:Lcom/google/android/datatransport/runtime/a$e;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0, v1}, Lk4/b;->a(Ljava/lang/Class;Lj4/d;)Lk4/b;

    .line 8
    .line 9
    const-class v0, Lh2/a;

    .line 10
    .line 11
    sget-object v1, Lcom/google/android/datatransport/runtime/a$a;->INSTANCE:Lcom/google/android/datatransport/runtime/a$a;

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, v0, v1}, Lk4/b;->a(Ljava/lang/Class;Lj4/d;)Lk4/b;

    .line 15
    .line 16
    const-class v0, Lh2/f;

    .line 17
    .line 18
    sget-object v1, Lcom/google/android/datatransport/runtime/a$g;->INSTANCE:Lcom/google/android/datatransport/runtime/a$g;

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v0, v1}, Lk4/b;->a(Ljava/lang/Class;Lj4/d;)Lk4/b;

    .line 22
    .line 23
    const-class v0, Lh2/d;

    .line 24
    .line 25
    sget-object v1, Lcom/google/android/datatransport/runtime/a$d;->INSTANCE:Lcom/google/android/datatransport/runtime/a$d;

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, v0, v1}, Lk4/b;->a(Ljava/lang/Class;Lj4/d;)Lk4/b;

    .line 29
    .line 30
    const-class v0, Lh2/c;

    .line 31
    .line 32
    sget-object v1, Lcom/google/android/datatransport/runtime/a$c;->INSTANCE:Lcom/google/android/datatransport/runtime/a$c;

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v0, v1}, Lk4/b;->a(Ljava/lang/Class;Lj4/d;)Lk4/b;

    .line 36
    .line 37
    const-class v0, Lh2/b;

    .line 38
    .line 39
    sget-object v1, Lcom/google/android/datatransport/runtime/a$b;->INSTANCE:Lcom/google/android/datatransport/runtime/a$b;

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, v0, v1}, Lk4/b;->a(Ljava/lang/Class;Lj4/d;)Lk4/b;

    .line 43
    .line 44
    const-class v0, Lh2/e;

    .line 45
    .line 46
    sget-object v1, Lcom/google/android/datatransport/runtime/a$f;->INSTANCE:Lcom/google/android/datatransport/runtime/a$f;

    .line 47
    .line 48
    .line 49
    invoke-interface {p1, v0, v1}, Lk4/b;->a(Ljava/lang/Class;Lj4/d;)Lk4/b;

    .line 50
    return-void
.end method
