.class public interface abstract Lcom/bumptech/glide/load/engine/executor/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/executor/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/bumptech/glide/load/engine/executor/a$c;

.field public static final IGNORE:Lcom/bumptech/glide/load/engine/executor/a$c;

.field public static final LOG:Lcom/bumptech/glide/load/engine/executor/a$c;

.field public static final THROW:Lcom/bumptech/glide/load/engine/executor/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/bumptech/glide/load/engine/executor/a$c$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/executor/a$c$a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/bumptech/glide/load/engine/executor/a$c;->IGNORE:Lcom/bumptech/glide/load/engine/executor/a$c;

    .line 8
    .line 9
    new-instance v0, Lcom/bumptech/glide/load/engine/executor/a$c$b;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/executor/a$c$b;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lcom/bumptech/glide/load/engine/executor/a$c;->LOG:Lcom/bumptech/glide/load/engine/executor/a$c;

    .line 15
    .line 16
    new-instance v1, Lcom/bumptech/glide/load/engine/executor/a$c$c;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1}, Lcom/bumptech/glide/load/engine/executor/a$c$c;-><init>()V

    .line 20
    .line 21
    sput-object v1, Lcom/bumptech/glide/load/engine/executor/a$c;->THROW:Lcom/bumptech/glide/load/engine/executor/a$c;

    .line 22
    .line 23
    sput-object v0, Lcom/bumptech/glide/load/engine/executor/a$c;->DEFAULT:Lcom/bumptech/glide/load/engine/executor/a$c;

    .line 24
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Throwable;)V
.end method
