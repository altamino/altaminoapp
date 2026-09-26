.class public final Lio/ktor/util/pipeline/i$c;
.super Lio/ktor/util/pipeline/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/util/pipeline/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/util/pipeline/i$c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/util/pipeline/i$c;

    invoke-direct {v0}, Lio/ktor/util/pipeline/i$c;-><init>()V

    sput-object v0, Lio/ktor/util/pipeline/i$c;->INSTANCE:Lio/ktor/util/pipeline/i$c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lio/ktor/util/pipeline/i;-><init>(Lkotlin/jvm/internal/k;)V

    .line 5
    return-void
.end method
