.class public interface abstract Lcoil/transition/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/transition/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/transition/c$a$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcoil/transition/c$a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NONE:Lcoil/transition/c$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcoil/transition/c$a$a;->$$INSTANCE:Lcoil/transition/c$a$a;

    .line 3
    .line 4
    sput-object v0, Lcoil/transition/c$a;->Companion:Lcoil/transition/c$a$a;

    .line 5
    .line 6
    new-instance v0, Lcoil/transition/b$a;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Lcoil/transition/b$a;-><init>()V

    .line 10
    .line 11
    sput-object v0, Lcoil/transition/c$a;->NONE:Lcoil/transition/c$a;

    .line 12
    return-void
.end method


# virtual methods
.method public abstract a(Lcoil/transition/d;Lcoil/request/i;)Lcoil/transition/c;
    .param p1    # Lcoil/transition/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil/request/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
