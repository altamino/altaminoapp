.class final Lcoil/e$a$c;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/e$a;->b()Lcoil/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Lokhttp3/OkHttpClient;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcoil/e$a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcoil/e$a$c;

    invoke-direct {v0}, Lcoil/e$a$c;-><init>()V

    sput-object v0, Lcoil/e$a$c;->INSTANCE:Lcoil/e$a$c;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Lokhttp3/OkHttpClient;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lokhttp3/OkHttpClient;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 6
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcoil/e$a$c;->b()Lokhttp3/OkHttpClient;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
