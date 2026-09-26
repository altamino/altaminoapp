.class public Lcom/google/firebase/remoteconfig/internal/m$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/remoteconfig/internal/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final fetchTime:Ljava/util/Date;

.field private final fetchedConfigs:Lcom/google/firebase/remoteconfig/internal/g;

.field private final lastFetchETag:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final status:I


# direct methods
.method private constructor <init>(Ljava/util/Date;ILcom/google/firebase/remoteconfig/internal/g;Ljava/lang/String;)V
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/m$a;->fetchTime:Ljava/util/Date;

    .line 6
    .line 7
    iput p2, p0, Lcom/google/firebase/remoteconfig/internal/m$a;->status:I

    .line 8
    .line 9
    iput-object p3, p0, Lcom/google/firebase/remoteconfig/internal/m$a;->fetchedConfigs:Lcom/google/firebase/remoteconfig/internal/g;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/google/firebase/remoteconfig/internal/m$a;->lastFetchETag:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public static a(Ljava/util/Date;Lcom/google/firebase/remoteconfig/internal/g;)Lcom/google/firebase/remoteconfig/internal/m$a;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/remoteconfig/internal/m$a;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p0, v1, p1, v2}, Lcom/google/firebase/remoteconfig/internal/m$a;-><init>(Ljava/util/Date;ILcom/google/firebase/remoteconfig/internal/g;Ljava/lang/String;)V

    .line 8
    return-object v0
.end method

.method public static b(Lcom/google/firebase/remoteconfig/internal/g;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/m$a;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/remoteconfig/internal/m$a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/g;->h()Ljava/util/Date;

    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2, p0, p1}, Lcom/google/firebase/remoteconfig/internal/m$a;-><init>(Ljava/util/Date;ILcom/google/firebase/remoteconfig/internal/g;Ljava/lang/String;)V

    .line 11
    return-object v0
.end method

.method public static c(Ljava/util/Date;)Lcom/google/firebase/remoteconfig/internal/m$a;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/remoteconfig/internal/m$a;

    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p0, v1, v2, v2}, Lcom/google/firebase/remoteconfig/internal/m$a;-><init>(Ljava/util/Date;ILcom/google/firebase/remoteconfig/internal/g;Ljava/lang/String;)V

    .line 8
    return-object v0
.end method


# virtual methods
.method public d()Lcom/google/firebase/remoteconfig/internal/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/m$a;->fetchedConfigs:Lcom/google/firebase/remoteconfig/internal/g;

    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/m$a;->lastFetchETag:Ljava/lang/String;

    return-object v0
.end method

.method f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/remoteconfig/internal/m$a;->status:I

    return v0
.end method
