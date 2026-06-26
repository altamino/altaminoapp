.class public final Lorg/a/b/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/a/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lorg/a/b/d;

.field public final b:Lorg/a/b/c;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    new-instance v0, Lorg/a/b/d;

    invoke-direct {v0}, Lorg/a/b/d;-><init>()V

    iput-object v0, p0, Lorg/a/b/c$a;->a:Lorg/a/b/d;

    .line 319
    new-instance v0, Lorg/a/b/c;

    iget-object v1, p0, Lorg/a/b/c$a;->a:Lorg/a/b/d;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/a/b/c;-><init>(Lorg/a/b/d;B)V

    iput-object v0, p0, Lorg/a/b/c$a;->b:Lorg/a/b/c;

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .line 315
    invoke-direct {p0}, Lorg/a/b/c$a;-><init>()V

    return-void
.end method
