.class public final Lio/ktor/utils/io/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CLOSED_SUCCESS:Lio/ktor/utils/io/n;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lio/ktor/utils/io/n;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lio/ktor/utils/io/n;-><init>(Ljava/lang/Throwable;)V

    .line 7
    .line 8
    sput-object v0, Lio/ktor/utils/io/o;->CLOSED_SUCCESS:Lio/ktor/utils/io/n;

    .line 9
    return-void
.end method

.method public static final a()Lio/ktor/utils/io/n;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lio/ktor/utils/io/o;->CLOSED_SUCCESS:Lio/ktor/utils/io/n;

    return-object v0
.end method
