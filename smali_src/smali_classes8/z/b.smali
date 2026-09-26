.class public final Lz/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz/b$a;,
        Lz/b$b;
    }
.end annotation


# static fields
.field public static final a:Lz/b$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lz/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz/b$b;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lz/b;->a:Lz/b$b;

    return-void
.end method
