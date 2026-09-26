.class public abstract Li7/a;
.super Lk7/b$b;
.source "SourceFile"


# instance fields
.field private final content$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lk7/b$b;-><init>()V

    .line 4
    .line 5
    sget-object v0, Li7/a$a;->INSTANCE:Li7/a$a;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Li7/a;->content$delegate:Lw7/m;

    .line 12
    return-void
.end method
