.class public final Lcom/google/firebase/messaging/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk4/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/a$a;,
        Lcom/google/firebase/messaging/a$b;,
        Lcom/google/firebase/messaging/a$c;
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
    new-instance v0, Lcom/google/firebase/messaging/a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/firebase/messaging/a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/firebase/messaging/a;->CONFIG:Lk4/a;

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
    const-class v0, Lcom/google/firebase/messaging/i0;

    .line 3
    .line 4
    sget-object v1, Lcom/google/firebase/messaging/a$c;->INSTANCE:Lcom/google/firebase/messaging/a$c;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0, v1}, Lk4/b;->a(Ljava/lang/Class;Lj4/d;)Lk4/b;

    .line 8
    .line 9
    const-class v0, Lt4/b;

    .line 10
    .line 11
    sget-object v1, Lcom/google/firebase/messaging/a$b;->INSTANCE:Lcom/google/firebase/messaging/a$b;

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, v0, v1}, Lk4/b;->a(Ljava/lang/Class;Lj4/d;)Lk4/b;

    .line 15
    .line 16
    const-class v0, Lt4/a;

    .line 17
    .line 18
    sget-object v1, Lcom/google/firebase/messaging/a$a;->INSTANCE:Lcom/google/firebase/messaging/a$a;

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v0, v1}, Lk4/b;->a(Ljava/lang/Class;Lj4/d;)Lk4/b;

    .line 22
    return-void
.end method
