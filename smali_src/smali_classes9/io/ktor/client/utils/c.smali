.class public final Lio/ktor/client/utils/c;
.super Lk7/b$b;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lio/ktor/client/utils/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final contentLength:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/client/utils/c;

    invoke-direct {v0}, Lio/ktor/client/utils/c;-><init>()V

    sput-object v0, Lio/ktor/client/utils/c;->INSTANCE:Lio/ktor/client/utils/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lk7/b$b;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-wide v0, Lio/ktor/client/utils/c;->contentLength:J

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "EmptyContent"

    return-object v0
.end method
