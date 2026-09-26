.class public final Lcoil/network/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/network/b$b;,
        Lcoil/network/b$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcoil/network/b$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final cacheResponse:Lcoil/network/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final networkRequest:Lokhttp3/Request;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil/network/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/network/b$a;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcoil/network/b;->Companion:Lcoil/network/b$a;

    return-void
.end method

.method private constructor <init>(Lokhttp3/Request;Lcoil/network/a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil/network/b;->networkRequest:Lokhttp3/Request;

    iput-object p2, p0, Lcoil/network/b;->cacheResponse:Lcoil/network/a;

    return-void
.end method

.method public synthetic constructor <init>(Lokhttp3/Request;Lcoil/network/a;Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcoil/network/b;-><init>(Lokhttp3/Request;Lcoil/network/a;)V

    return-void
.end method


# virtual methods
.method public final a()Lcoil/network/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/network/b;->cacheResponse:Lcoil/network/a;

    return-object v0
.end method

.method public final b()Lokhttp3/Request;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/network/b;->networkRequest:Lokhttp3/Request;

    return-object v0
.end method
