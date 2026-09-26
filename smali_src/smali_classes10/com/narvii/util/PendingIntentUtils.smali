.class public final Lcom/narvii/util/PendingIntentUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/narvii/util/PendingIntentUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final noFlagValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/util/PendingIntentUtils;

    invoke-direct {v0}, Lcom/narvii/util/PendingIntentUtils;-><init>()V

    sput-object v0, Lcom/narvii/util/PendingIntentUtils;->INSTANCE:Lcom/narvii/util/PendingIntentUtils;

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
.method public final getCurrentImmutableFlag(I)I
    .locals 1

    const/high16 v0, 0x4000000

    or-int/2addr p1, v0

    return p1
.end method
