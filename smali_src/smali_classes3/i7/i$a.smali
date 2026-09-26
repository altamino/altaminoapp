.class public final Li7/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li7/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li7/i$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lio/ktor/util/pipeline/h;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Li7/i;->s()Lio/ktor/util/pipeline/h;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final b()Lio/ktor/util/pipeline/h;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Li7/i;->t()Lio/ktor/util/pipeline/h;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
