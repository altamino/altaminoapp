.class public final Lcom/bumptech/glide/load/model/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static final DEFAULT_HEADERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/model/i;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String;

.field private static final USER_AGENT_HEADER:Ljava/lang/String; = "User-Agent"


# instance fields
.field private copyOnModify:Z

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/model/i;",
            ">;>;"
        }
    .end annotation
.end field

.field private isUserAgentDefault:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/bumptech/glide/load/model/j$a;->b()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sput-object v0, Lcom/bumptech/glide/load/model/j$a;->DEFAULT_USER_AGENT:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v1, Ljava/util/HashMap;

    .line 9
    const/4 v2, 0x2

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v2

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    new-instance v2, Lcom/bumptech/glide/load/model/j$b;

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, v0}, Lcom/bumptech/glide/load/model/j$b;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    const-string v2, "User-Agent"

    .line 30
    .line 31
    .line 32
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    sput-object v0, Lcom/bumptech/glide/load/model/j$a;->DEFAULT_HEADERS:Ljava/util/Map;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/bumptech/glide/load/model/j$a;->copyOnModify:Z

    .line 7
    .line 8
    sget-object v1, Lcom/bumptech/glide/load/model/j$a;->DEFAULT_HEADERS:Ljava/util/Map;

    .line 9
    .line 10
    iput-object v1, p0, Lcom/bumptech/glide/load/model/j$a;->headers:Ljava/util/Map;

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/bumptech/glide/load/model/j$a;->isUserAgentDefault:Z

    .line 13
    return-void
.end method

.method static b()Ljava/lang/String;
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    .line 2
    const-string v0, "http.agent"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    return-object v0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 17
    move-result v1

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 23
    move-result v3

    .line 24
    .line 25
    .line 26
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 27
    const/4 v3, 0x0

    .line 28
    .line 29
    :goto_0
    if-ge v3, v1, :cond_3

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 33
    move-result v4

    .line 34
    .line 35
    const/16 v5, 0x1f

    .line 36
    .line 37
    if-gt v4, v5, :cond_1

    .line 38
    .line 39
    const/16 v5, 0x9

    .line 40
    .line 41
    if-ne v4, v5, :cond_2

    .line 42
    .line 43
    :cond_1
    const/16 v5, 0x7f

    .line 44
    .line 45
    if-ge v4, v5, :cond_2

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_2
    const/16 v4, 0x3f

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 57
    goto :goto_0

    .line 58
    .line 59
    .line 60
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/model/j;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/bumptech/glide/load/model/j$a;->copyOnModify:Z

    .line 4
    .line 5
    new-instance v0, Lcom/bumptech/glide/load/model/j;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/bumptech/glide/load/model/j$a;->headers:Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/model/j;-><init>(Ljava/util/Map;)V

    .line 11
    return-object v0
.end method
