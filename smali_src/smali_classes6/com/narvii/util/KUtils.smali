.class public final Lcom/narvii/util/KUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/KUtils$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/util/KUtils$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/util/KUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/util/KUtils$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/util/KUtils;->Companion:Lcom/narvii/util/KUtils$Companion;

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
