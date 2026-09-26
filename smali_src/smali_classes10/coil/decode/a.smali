.class public final Lcoil/decode/a;
.super Lcoil/decode/p$a;
.source "SourceFile"


# instance fields
.field private final filePath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcoil/decode/p$a;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcoil/decode/a;->filePath:Ljava/lang/String;

    .line 6
    return-void
.end method
