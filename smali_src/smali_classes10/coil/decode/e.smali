.class public final Lcoil/decode/e;
.super Lcoil/decode/p$a;
.source "SourceFile"


# instance fields
.field private final uri:Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcoil/decode/p$a;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcoil/decode/e;->uri:Landroid/net/Uri;

    .line 6
    return-void
.end method
