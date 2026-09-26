.class public final Lr7/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr7/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lr7/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lr7/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Ls7/a;->Companion:Ls7/a$d;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ls7/a$d;->a()Ls7/a;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
