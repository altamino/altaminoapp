.class final Lkotlinx/coroutines/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/r2;


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/d;

    invoke-direct {v0}, Lkotlinx/coroutines/d;-><init>()V

    sput-object v0, Lkotlinx/coroutines/d;->INSTANCE:Lkotlinx/coroutines/d;

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
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "Active"

    return-object v0
.end method
