.class public abstract Lcom/bumptech/glide/load/engine/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALL:Lcom/bumptech/glide/load/engine/j;

.field public static final AUTOMATIC:Lcom/bumptech/glide/load/engine/j;

.field public static final DATA:Lcom/bumptech/glide/load/engine/j;

.field public static final NONE:Lcom/bumptech/glide/load/engine/j;

.field public static final RESOURCE:Lcom/bumptech/glide/load/engine/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/bumptech/glide/load/engine/j$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/j$a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/bumptech/glide/load/engine/j;->ALL:Lcom/bumptech/glide/load/engine/j;

    .line 8
    .line 9
    new-instance v0, Lcom/bumptech/glide/load/engine/j$b;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/j$b;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lcom/bumptech/glide/load/engine/j;->NONE:Lcom/bumptech/glide/load/engine/j;

    .line 15
    .line 16
    new-instance v0, Lcom/bumptech/glide/load/engine/j$c;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/j$c;-><init>()V

    .line 20
    .line 21
    sput-object v0, Lcom/bumptech/glide/load/engine/j;->DATA:Lcom/bumptech/glide/load/engine/j;

    .line 22
    .line 23
    new-instance v0, Lcom/bumptech/glide/load/engine/j$d;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/j$d;-><init>()V

    .line 27
    .line 28
    sput-object v0, Lcom/bumptech/glide/load/engine/j;->RESOURCE:Lcom/bumptech/glide/load/engine/j;

    .line 29
    .line 30
    new-instance v0, Lcom/bumptech/glide/load/engine/j$e;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/j$e;-><init>()V

    .line 34
    .line 35
    sput-object v0, Lcom/bumptech/glide/load/engine/j;->AUTOMATIC:Lcom/bumptech/glide/load/engine/j;

    .line 36
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


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()Z
.end method

.method public abstract c(Lcom/bumptech/glide/load/a;)Z
.end method

.method public abstract d(ZLcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/c;)Z
.end method
