.class public final Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final deletionMode:I

.field private domainUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private end:Ljava/time/Instant;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final matchBehavior:I

.field private originUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private start:Ljava/time/Instant;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;->deletionMode:I

    .line 6
    .line 7
    iput p2, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;->matchBehavior:I

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroidx/privacysandbox/ads/adservices/measurement/b;->a()Ljava/time/Instant;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    const-string p2, "MIN"

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;->start:Ljava/time/Instant;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroidx/privacysandbox/ads/adservices/measurement/c;->a()Ljava/time/Instant;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    const-string p2, "MAX"

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;->end:Ljava/time/Instant;

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;->domainUris:Ljava/util/List;

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;->originUris:Ljava/util/List;

    .line 42
    return-void
.end method
