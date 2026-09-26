.class final Lio/ktor/utils/io/g$a$a;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/g$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Lio/ktor/utils/io/c;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteReadChannelJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteReadChannelJVM.kt\nio/ktor/utils/io/ByteReadChannel$Companion$Empty$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,362:1\n1#2:363\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/utils/io/g$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/utils/io/g$a$a;

    invoke-direct {v0}, Lio/ktor/utils/io/g$a$a;-><init>()V

    sput-object v0, Lio/ktor/utils/io/g$a$a;->INSTANCE:Lio/ktor/utils/io/g$a$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Lio/ktor/utils/io/c;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {v2, v0, v1}, Lio/ktor/utils/io/e;->c(ZILjava/lang/Object;)Lio/ktor/utils/io/c;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lio/ktor/utils/io/k;->a(Lio/ktor/utils/io/j;)Z

    .line 11
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lio/ktor/utils/io/g$a$a;->b()Lio/ktor/utils/io/c;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
