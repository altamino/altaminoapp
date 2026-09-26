.class public final Lg7/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg7/e$a;
    }
.end annotation


# static fields
.field public static final Companion:Lg7/e$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "NVEditor_Log"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lg7/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg7/e$a;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lg7/e;->Companion:Lg7/e$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method
