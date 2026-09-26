.class final synthetic Lkotlinx/coroutines/channels/c$a;
.super Lkotlin/jvm/internal/q;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/c;->y()Lkotlin/reflect/KFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/q;",
        "Le8/p<",
        "Ljava/lang/Long;",
        "Lkotlinx/coroutines/channels/i<",
        "TE;>;",
        "Lkotlinx/coroutines/channels/i<",
        "TE;>;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/channels/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/channels/c$a;

    invoke-direct {v0}, Lkotlinx/coroutines/channels/c$a;-><init>()V

    sput-object v0, Lkotlinx/coroutines/channels/c$a;->INSTANCE:Lkotlinx/coroutines/channels/c$a;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    const/4 v1, 0x2

    const-class v2, Lkotlinx/coroutines/channels/c;

    const-string v3, "createSegment"

    const-string v4, "createSegment(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;"

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/q;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(JLkotlinx/coroutines/channels/i;)Lkotlinx/coroutines/channels/i;
    .locals 0
    .param p3    # Lkotlinx/coroutines/channels/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/channels/i<",
            "TE;>;)",
            "Lkotlinx/coroutines/channels/i<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2, p3}, Lkotlinx/coroutines/channels/c;->c(JLkotlinx/coroutines/channels/i;)Lkotlinx/coroutines/channels/i;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Number;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    check-cast p2, Lkotlinx/coroutines/channels/i;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, v1, p2}, Lkotlinx/coroutines/channels/c$a;->a(JLkotlinx/coroutines/channels/i;)Lkotlinx/coroutines/channels/i;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
