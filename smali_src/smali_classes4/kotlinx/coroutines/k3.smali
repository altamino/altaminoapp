.class public final Lkotlinx/coroutines/k3;
.super Lkotlin/coroutines/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/k3$a;
    }
.end annotation


# static fields
.field public static final Key:Lkotlinx/coroutines/k3$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public dispatcherWasUnconfined:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/k3$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/k3$a;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lkotlinx/coroutines/k3;->Key:Lkotlinx/coroutines/k3$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/k3;->Key:Lkotlinx/coroutines/k3$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lkotlin/coroutines/a;-><init>(Lkotlin/coroutines/g$c;)V

    .line 6
    return-void
.end method
