.class public final Lkotlin/jvm/internal/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lkotlin/jvm/internal/s0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MAX_VALUE:S = 0x7fffs

.field public static final MIN_VALUE:S = -0x8000s

.field public static final SIZE_BITS:I = 0x10

.field public static final SIZE_BYTES:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/jvm/internal/s0;

    invoke-direct {v0}, Lkotlin/jvm/internal/s0;-><init>()V

    sput-object v0, Lkotlin/jvm/internal/s0;->INSTANCE:Lkotlin/jvm/internal/s0;

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
