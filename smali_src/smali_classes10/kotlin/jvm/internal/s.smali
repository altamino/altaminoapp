.class public final Lkotlin/jvm/internal/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lkotlin/jvm/internal/s;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MAX_VALUE:I = 0x7fffffff

.field public static final MIN_VALUE:I = -0x80000000

.field public static final SIZE_BITS:I = 0x20

.field public static final SIZE_BYTES:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/jvm/internal/s;

    invoke-direct {v0}, Lkotlin/jvm/internal/s;-><init>()V

    sput-object v0, Lkotlin/jvm/internal/s;->INSTANCE:Lkotlin/jvm/internal/s;

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
