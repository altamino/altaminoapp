.class final Lio/ktor/utils/io/jvm/javaio/b$a;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/jvm/javaio/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Lorg/slf4j/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/utils/io/jvm/javaio/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/utils/io/jvm/javaio/b$a;

    invoke-direct {v0}, Lio/ktor/utils/io/jvm/javaio/b$a;-><init>()V

    sput-object v0, Lio/ktor/utils/io/jvm/javaio/b$a;->INSTANCE:Lio/ktor/utils/io/jvm/javaio/b$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Lorg/slf4j/a;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lio/ktor/utils/io/jvm/javaio/a;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lorg/slf4j/b;->i(Ljava/lang/Class;)Lorg/slf4j/a;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lio/ktor/utils/io/jvm/javaio/b$a;->b()Lorg/slf4j/a;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
