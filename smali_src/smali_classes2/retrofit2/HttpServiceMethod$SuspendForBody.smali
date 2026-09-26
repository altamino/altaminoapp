.class final Lretrofit2/HttpServiceMethod$SuspendForBody;
.super Lretrofit2/HttpServiceMethod;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/HttpServiceMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SuspendForBody"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseT:",
        "Ljava/lang/Object;",
        ">",
        "Lretrofit2/HttpServiceMethod<",
        "TResponseT;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final callAdapter:Lretrofit2/CallAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/CallAdapter<",
            "TResponseT;",
            "Lretrofit2/Call<",
            "TResponseT;>;>;"
        }
    .end annotation
.end field

.field private final isNullable:Z


# direct methods
.method constructor <init>(Lretrofit2/RequestFactory;Lokhttp3/Call$Factory;Lretrofit2/Converter;Lretrofit2/CallAdapter;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/RequestFactory;",
            "Lokhttp3/Call$Factory;",
            "Lretrofit2/Converter<",
            "Lokhttp3/ResponseBody;",
            "TResponseT;>;",
            "Lretrofit2/CallAdapter<",
            "TResponseT;",
            "Lretrofit2/Call<",
            "TResponseT;>;>;Z)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lretrofit2/HttpServiceMethod;-><init>(Lretrofit2/RequestFactory;Lokhttp3/Call$Factory;Lretrofit2/Converter;)V

    .line 4
    .line 5
    iput-object p4, p0, Lretrofit2/HttpServiceMethod$SuspendForBody;->callAdapter:Lretrofit2/CallAdapter;

    .line 6
    .line 7
    iput-boolean p5, p0, Lretrofit2/HttpServiceMethod$SuspendForBody;->isNullable:Z

    .line 8
    return-void
.end method


# virtual methods
.method protected adapt(Lretrofit2/Call;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TResponseT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lretrofit2/HttpServiceMethod$SuspendForBody;->callAdapter:Lretrofit2/CallAdapter;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lretrofit2/CallAdapter;->adapt(Lretrofit2/Call;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lretrofit2/Call;

    .line 9
    array-length v0, p2

    .line 10
    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    aget-object p2, p2, v0

    .line 14
    .line 15
    check-cast p2, Lkotlin/coroutines/d;

    .line 16
    .line 17
    :try_start_0
    iget-boolean v0, p0, Lretrofit2/HttpServiceMethod$SuspendForBody;->isNullable:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p2}, Lretrofit2/KotlinExtensions;->awaitNullable(Lretrofit2/Call;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto :goto_1

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-static {p1, p2}, Lretrofit2/KotlinExtensions;->await(Lretrofit2/Call;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 30
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-object p1

    .line 32
    .line 33
    .line 34
    :goto_1
    invoke-static {p1, p2}, Lretrofit2/KotlinExtensions;->suspendAndThrow(Ljava/lang/Exception;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 35
    move-result-object p1

    .line 36
    return-object p1
.end method
