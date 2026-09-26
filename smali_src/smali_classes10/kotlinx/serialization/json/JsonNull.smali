.class public final Lkotlinx/serialization/json/JsonNull;
.super Lkotlinx/serialization/json/JsonPrimitive;
.source "SourceFile"


# annotations
.annotation runtime Lkotlinx/serialization/i;
    with = Lkotlinx/serialization/json/q;
.end annotation


# static fields
.field private static final synthetic $cachedSerializer$delegate:Lw7/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/m<",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lkotlinx/serialization/json/JsonNull;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final content:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lkotlinx/serialization/json/JsonNull;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lkotlinx/serialization/json/JsonNull;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lkotlinx/serialization/json/JsonNull;->INSTANCE:Lkotlinx/serialization/json/JsonNull;

    .line 8
    .line 9
    const-string v0, "null"

    .line 10
    .line 11
    sput-object v0, Lkotlinx/serialization/json/JsonNull;->content:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v0, Lw7/q;->PUBLICATION:Lw7/q;

    .line 14
    .line 15
    sget-object v1, Lkotlinx/serialization/json/JsonNull$a;->INSTANCE:Lkotlinx/serialization/json/JsonNull$a;

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Lw7/n;->b(Lw7/q;Le8/a;)Lw7/m;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    sput-object v0, Lkotlinx/serialization/json/JsonNull;->$cachedSerializer$delegate:Lw7/m;

    .line 22
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lkotlinx/serialization/json/JsonPrimitive;-><init>(Lkotlin/jvm/internal/k;)V

    .line 5
    return-void
.end method

.method private final synthetic f()Lw7/m;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/serialization/json/JsonNull;->$cachedSerializer$delegate:Lw7/m;

    return-object v0
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/serialization/json/JsonNull;->content:Ljava/lang/String;

    return-object v0
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lkotlinx/serialization/json/JsonNull;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlinx/serialization/json/JsonNull;->f()Lw7/m;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lkotlinx/serialization/KSerializer;

    .line 11
    return-object v0
.end method
