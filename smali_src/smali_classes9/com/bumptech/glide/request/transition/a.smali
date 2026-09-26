.class public Lcom/bumptech/glide/request/transition/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/request/transition/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/transition/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/transition/b<",
        "TR;>;"
    }
.end annotation


# static fields
.field static final NO_ANIMATION:Lcom/bumptech/glide/request/transition/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/transition/a<",
            "*>;"
        }
    .end annotation
.end field

.field private static final NO_ANIMATION_FACTORY:Lcom/bumptech/glide/request/transition/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/transition/c<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/bumptech/glide/request/transition/a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/bumptech/glide/request/transition/a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/bumptech/glide/request/transition/a;->NO_ANIMATION:Lcom/bumptech/glide/request/transition/a;

    .line 8
    .line 9
    new-instance v0, Lcom/bumptech/glide/request/transition/a$a;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Lcom/bumptech/glide/request/transition/a$a;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lcom/bumptech/glide/request/transition/a;->NO_ANIMATION_FACTORY:Lcom/bumptech/glide/request/transition/c;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static a()Lcom/bumptech/glide/request/transition/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/request/transition/c<",
            "TR;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/bumptech/glide/request/transition/a;->NO_ANIMATION_FACTORY:Lcom/bumptech/glide/request/transition/c;

    return-object v0
.end method
