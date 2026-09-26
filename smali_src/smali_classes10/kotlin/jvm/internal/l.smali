.class public final Lkotlin/jvm/internal/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lkotlin/jvm/internal/l;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MAX_VALUE:D = 1.7976931348623157E308

.field public static final MIN_VALUE:D = 4.9E-324

.field public static final NEGATIVE_INFINITY:D = -Infinity

.field public static final NaN:D = NaN

.field public static final POSITIVE_INFINITY:D = Infinity

.field public static final SIZE_BITS:I = 0x40

.field public static final SIZE_BYTES:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/jvm/internal/l;

    invoke-direct {v0}, Lkotlin/jvm/internal/l;-><init>()V

    sput-object v0, Lkotlin/jvm/internal/l;->INSTANCE:Lkotlin/jvm/internal/l;

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
