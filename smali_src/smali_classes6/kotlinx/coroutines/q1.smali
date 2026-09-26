.class public abstract Lkotlinx/coroutines/q1;
.super Lkotlinx/coroutines/k0;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/q1$a;
    }
.end annotation


# static fields
.field public static final Key:Lkotlinx/coroutines/q1$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/q1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/q1$a;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lkotlinx/coroutines/q1;->Key:Lkotlinx/coroutines/q1$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlinx/coroutines/k0;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public abstract L()Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
