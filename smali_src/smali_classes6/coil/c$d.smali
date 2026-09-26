.class public interface abstract Lcoil/c$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/c$d$a;,
        Lcoil/c$d$b;
    }
.end annotation


# static fields
.field public static final Companion:Lcoil/c$d$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NONE:Lcoil/c$d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcoil/c$d$a;->$$INSTANCE:Lcoil/c$d$a;

    .line 3
    .line 4
    sput-object v0, Lcoil/c$d;->Companion:Lcoil/c$d$a;

    .line 5
    .line 6
    new-instance v0, Lcoil/d;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Lcoil/d;-><init>()V

    .line 10
    .line 11
    sput-object v0, Lcoil/c$d;->NONE:Lcoil/c$d;

    .line 12
    return-void
.end method


# virtual methods
.method public abstract a(Lcoil/request/h;)Lcoil/c;
    .param p1    # Lcoil/request/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
