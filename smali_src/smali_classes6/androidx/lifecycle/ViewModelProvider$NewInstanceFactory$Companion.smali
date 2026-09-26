.class public final Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory$Companion$ViewModelKeyImpl;
    }
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
    invoke-direct {p0}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;->a()Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;->b(Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-static {}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;->a()Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 22
    return-object v0
.end method
