.class public final synthetic Lcom/narvii/model/-$$Lambda$UshmdGNyA9HX07cbfLdqiw3sEb8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# static fields
.field public static final synthetic INSTANCE:Lcom/narvii/model/-$$Lambda$UshmdGNyA9HX07cbfLdqiw3sEb8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/model/-$$Lambda$UshmdGNyA9HX07cbfLdqiw3sEb8;

    invoke-direct {v0}, Lcom/narvii/model/-$$Lambda$UshmdGNyA9HX07cbfLdqiw3sEb8;-><init>()V

    sput-object v0, Lcom/narvii/model/-$$Lambda$UshmdGNyA9HX07cbfLdqiw3sEb8;->INSTANCE:Lcom/narvii/model/-$$Lambda$UshmdGNyA9HX07cbfLdqiw3sEb8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/narvii/model/PollOption;

    check-cast p2, Lcom/narvii/model/PollOption;

    invoke-virtual {p1, p2}, Lcom/narvii/model/PollOption;->isSame(Lcom/narvii/model/PollOption;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
