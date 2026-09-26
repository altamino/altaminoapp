.class public Lcom/bumptech/glide/load/model/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/model/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/v$a;,
        Lcom/bumptech/glide/load/model/v$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/n<",
        "TModel;TModel;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/bumptech/glide/load/model/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/v<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/bumptech/glide/load/model/v;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/bumptech/glide/load/model/v;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/bumptech/glide/load/model/v;->INSTANCE:Lcom/bumptech/glide/load/model/v;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static c()Lcom/bumptech/glide/load/model/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/load/model/v<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/model/v;->INSTANCE:Lcom/bumptech/glide/load/model/v;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/model/n$a;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lcom/bumptech/glide/load/i;",
            ")",
            "Lcom/bumptech/glide/load/model/n$a<",
            "TModel;>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance p2, Lcom/bumptech/glide/load/model/n$a;

    .line 3
    .line 4
    new-instance p3, Lz0/b;

    .line 5
    .line 6
    .line 7
    invoke-direct {p3, p1}, Lz0/b;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    new-instance p4, Lcom/bumptech/glide/load/model/v$b;

    .line 10
    .line 11
    .line 12
    invoke-direct {p4, p1}, Lcom/bumptech/glide/load/model/v$b;-><init>(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p2, p3, p4}, Lcom/bumptech/glide/load/model/n$a;-><init>(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/data/d;)V

    .line 16
    return-object p2
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)Z"
        }
    .end annotation

    .line 1
    const/4 p1, 0x1

    return p1
.end method
