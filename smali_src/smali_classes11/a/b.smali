.class public final La/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineDebugging.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineDebugging.kt\n_COROUTINE/CoroutineDebuggingKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,66:1\n1#2:67\n*E\n"
.end annotation


# static fields
.field private static final ARTIFICIAL_FRAME_PACKAGE_NAME:Ljava/lang/String; = "_COROUTINE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final synthetic a(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StackTraceElement;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, La/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StackTraceElement;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StackTraceElement;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    aget-object p0, p0, v0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StackTraceElement;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    sget-object v2, La/b;->ARTIFICIAL_FRAME_PACKAGE_NAME:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const/16 v2, 0x2e

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    .line 39
    move-result p0

    .line 40
    .line 41
    const-string v2, "_"

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, p1, v2, v1, p0}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 45
    return-object v0
.end method
