.class public final Lcom/narvii/util/CheckAminoIdUtils;
.super Ljava/lang/Object;
.source "CheckAminoIdUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/CheckAminoIdUtils$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/util/CheckAminoIdUtils$Companion;

.field public static final ERROR_EXCEED:I = 0x3

.field public static final ERROR_INVALID:I = 0x2

.field public static final ERROR_SHORT:I = 0x4

.field public static final VALIDATE_PASS:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/util/CheckAminoIdUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/util/CheckAminoIdUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/util/CheckAminoIdUtils;->Companion:Lcom/narvii/util/CheckAminoIdUtils$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
