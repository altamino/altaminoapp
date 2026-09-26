.class public final Lcoil/request/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/request/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcoil/request/n$c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcoil/request/n$a;->entries:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcoil/request/n;)V
    .locals 0
    .param p1    # Lcoil/request/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lcoil/request/n;->a(Lcoil/request/n;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/p0;->A(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcoil/request/n$a;->entries:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()Lcoil/request/n;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcoil/request/n;

    .line 3
    .line 4
    iget-object v1, p0, Lcoil/request/n$a;->entries:Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Lcoil/util/c;->b(Ljava/util/Map;)Ljava/util/Map;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lcoil/request/n;-><init>(Ljava/util/Map;Lkotlin/jvm/internal/k;)V

    .line 13
    return-object v0
.end method
