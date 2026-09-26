.class public final Lio/ktor/utils/io/internal/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EmptyByteBuffer:Ljava/nio/ByteBuffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final EmptyCapacity:Lio/ktor/utils/io/internal/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RESERVED_SIZE:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 5
    move-result-object v1

    .line 6
    .line 7
    const-string v2, "allocate(0)"

    .line 8
    .line 9
    .line 10
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    sput-object v1, Lio/ktor/utils/io/internal/h;->EmptyByteBuffer:Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    new-instance v1, Lio/ktor/utils/io/internal/i;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v0}, Lio/ktor/utils/io/internal/i;-><init>(I)V

    .line 18
    .line 19
    sput-object v1, Lio/ktor/utils/io/internal/h;->EmptyCapacity:Lio/ktor/utils/io/internal/i;

    .line 20
    return-void
.end method

.method public static final a()Ljava/nio/ByteBuffer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lio/ktor/utils/io/internal/h;->EmptyByteBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public static final b()Lio/ktor/utils/io/internal/i;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lio/ktor/utils/io/internal/h;->EmptyCapacity:Lio/ktor/utils/io/internal/i;

    return-object v0
.end method
