.class public interface abstract Lokhttp3/Dns;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Dns$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lokhttp3/Dns$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SYSTEM:Lokhttp3/Dns;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lokhttp3/Dns$Companion;->$$INSTANCE:Lokhttp3/Dns$Companion;

    .line 3
    .line 4
    sput-object v0, Lokhttp3/Dns;->Companion:Lokhttp3/Dns$Companion;

    .line 5
    .line 6
    new-instance v0, Lokhttp3/Dns$Companion$DnsSystem;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Lokhttp3/Dns$Companion$DnsSystem;-><init>()V

    .line 10
    .line 11
    sput-object v0, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns;

    .line 12
    return-void
.end method


# virtual methods
.method public abstract lookup(Ljava/lang/String;)Ljava/util/List;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
