.class public final synthetic Lm4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lm4/f;


# direct methods
.method public synthetic constructor <init>(Lm4/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm4/b;->a:Lm4/f;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lm4/b;->a:Lm4/f;

    invoke-static {v0}, Lm4/f;->c(Lm4/f;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
