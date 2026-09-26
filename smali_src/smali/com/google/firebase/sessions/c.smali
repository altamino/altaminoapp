.class public final Lcom/google/firebase/sessions/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk4/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/c$d;,
        Lcom/google/firebase/sessions/c$a;,
        Lcom/google/firebase/sessions/c$b;,
        Lcom/google/firebase/sessions/c$c;,
        Lcom/google/firebase/sessions/c$f;,
        Lcom/google/firebase/sessions/c$e;
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
    new-instance v0, Lcom/google/firebase/sessions/c;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/firebase/sessions/c;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/firebase/sessions/c;->CONFIG:Lk4/a;

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
    const-class v0, Lcom/google/firebase/sessions/z;

    .line 3
    .line 4
    sget-object v1, Lcom/google/firebase/sessions/c$e;->INSTANCE:Lcom/google/firebase/sessions/c$e;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0, v1}, Lk4/b;->a(Ljava/lang/Class;Lj4/d;)Lk4/b;

    .line 8
    .line 9
    const-class v0, Lcom/google/firebase/sessions/e0;

    .line 10
    .line 11
    sget-object v1, Lcom/google/firebase/sessions/c$f;->INSTANCE:Lcom/google/firebase/sessions/c$f;

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, v0, v1}, Lk4/b;->a(Ljava/lang/Class;Lj4/d;)Lk4/b;

    .line 15
    .line 16
    const-class v0, Lcom/google/firebase/sessions/e;

    .line 17
    .line 18
    sget-object v1, Lcom/google/firebase/sessions/c$c;->INSTANCE:Lcom/google/firebase/sessions/c$c;

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v0, v1}, Lk4/b;->a(Ljava/lang/Class;Lj4/d;)Lk4/b;

    .line 22
    .line 23
    const-class v0, Lcom/google/firebase/sessions/b;

    .line 24
    .line 25
    sget-object v1, Lcom/google/firebase/sessions/c$b;->INSTANCE:Lcom/google/firebase/sessions/c$b;

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, v0, v1}, Lk4/b;->a(Ljava/lang/Class;Lj4/d;)Lk4/b;

    .line 29
    .line 30
    const-class v0, Lcom/google/firebase/sessions/a;

    .line 31
    .line 32
    sget-object v1, Lcom/google/firebase/sessions/c$a;->INSTANCE:Lcom/google/firebase/sessions/c$a;

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v0, v1}, Lk4/b;->a(Ljava/lang/Class;Lj4/d;)Lk4/b;

    .line 36
    .line 37
    const-class v0, Lcom/google/firebase/sessions/t;

    .line 38
    .line 39
    sget-object v1, Lcom/google/firebase/sessions/c$d;->INSTANCE:Lcom/google/firebase/sessions/c$d;

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, v0, v1}, Lk4/b;->a(Ljava/lang/Class;Lj4/d;)Lk4/b;

    .line 43
    return-void
.end method
