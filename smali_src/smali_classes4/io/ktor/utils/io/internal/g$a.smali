.class public final Lio/ktor/utils/io/internal/g$a;
.super Lio/ktor/utils/io/internal/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/internal/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/utils/io/internal/g$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/utils/io/internal/g$a;

    invoke-direct {v0}, Lio/ktor/utils/io/internal/g$a;-><init>()V

    sput-object v0, Lio/ktor/utils/io/internal/g$a;->INSTANCE:Lio/ktor/utils/io/internal/g$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lio/ktor/utils/io/internal/h;->a()Ljava/nio/ByteBuffer;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lio/ktor/utils/io/internal/h;->b()Lio/ktor/utils/io/internal/i;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0, v1, v2}, Lio/ktor/utils/io/internal/g;-><init>(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/i;Lkotlin/jvm/internal/k;)V

    .line 13
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "IDLE(empty)"

    return-object v0
.end method
