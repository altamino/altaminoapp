.class public final enum Landroid/support/v8/renderscript/Sampler$Value;
.super Ljava/lang/Enum;
.source "Sampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v8/renderscript/Sampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/support/v8/renderscript/Sampler$Value;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/support/v8/renderscript/Sampler$Value;

.field public static final enum CLAMP:Landroid/support/v8/renderscript/Sampler$Value;

.field public static final enum LINEAR:Landroid/support/v8/renderscript/Sampler$Value;

.field public static final enum LINEAR_MIP_LINEAR:Landroid/support/v8/renderscript/Sampler$Value;

.field public static final enum LINEAR_MIP_NEAREST:Landroid/support/v8/renderscript/Sampler$Value;

.field public static final enum MIRRORED_REPEAT:Landroid/support/v8/renderscript/Sampler$Value;

.field public static final enum NEAREST:Landroid/support/v8/renderscript/Sampler$Value;

.field public static final enum WRAP:Landroid/support/v8/renderscript/Sampler$Value;


# instance fields
.field mID:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 44
    new-instance v0, Landroid/support/v8/renderscript/Sampler$Value;

    const/4 v1, 0x0

    const-string v2, "NEAREST"

    invoke-direct {v0, v2, v1, v1}, Landroid/support/v8/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/support/v8/renderscript/Sampler$Value;->NEAREST:Landroid/support/v8/renderscript/Sampler$Value;

    .line 45
    new-instance v0, Landroid/support/v8/renderscript/Sampler$Value;

    const/4 v2, 0x1

    const-string v3, "LINEAR"

    invoke-direct {v0, v3, v2, v2}, Landroid/support/v8/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR:Landroid/support/v8/renderscript/Sampler$Value;

    .line 46
    new-instance v0, Landroid/support/v8/renderscript/Sampler$Value;

    const/4 v3, 0x2

    const-string v4, "LINEAR_MIP_LINEAR"

    invoke-direct {v0, v4, v3, v3}, Landroid/support/v8/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/support/v8/renderscript/Sampler$Value;

    .line 47
    new-instance v0, Landroid/support/v8/renderscript/Sampler$Value;

    const/4 v4, 0x5

    const/4 v5, 0x3

    const-string v6, "LINEAR_MIP_NEAREST"

    invoke-direct {v0, v6, v5, v4}, Landroid/support/v8/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR_MIP_NEAREST:Landroid/support/v8/renderscript/Sampler$Value;

    .line 48
    new-instance v0, Landroid/support/v8/renderscript/Sampler$Value;

    const/4 v6, 0x4

    const-string v7, "WRAP"

    invoke-direct {v0, v7, v6, v5}, Landroid/support/v8/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/support/v8/renderscript/Sampler$Value;->WRAP:Landroid/support/v8/renderscript/Sampler$Value;

    .line 49
    new-instance v0, Landroid/support/v8/renderscript/Sampler$Value;

    const-string v7, "CLAMP"

    invoke-direct {v0, v7, v4, v6}, Landroid/support/v8/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/support/v8/renderscript/Sampler$Value;->CLAMP:Landroid/support/v8/renderscript/Sampler$Value;

    .line 50
    new-instance v0, Landroid/support/v8/renderscript/Sampler$Value;

    const/4 v7, 0x6

    const-string v8, "MIRRORED_REPEAT"

    invoke-direct {v0, v8, v7, v7}, Landroid/support/v8/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/support/v8/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/support/v8/renderscript/Sampler$Value;

    const/4 v0, 0x7

    new-array v0, v0, [Landroid/support/v8/renderscript/Sampler$Value;

    .line 43
    sget-object v8, Landroid/support/v8/renderscript/Sampler$Value;->NEAREST:Landroid/support/v8/renderscript/Sampler$Value;

    aput-object v8, v0, v1

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR:Landroid/support/v8/renderscript/Sampler$Value;

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/support/v8/renderscript/Sampler$Value;

    aput-object v1, v0, v3

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR_MIP_NEAREST:Landroid/support/v8/renderscript/Sampler$Value;

    aput-object v1, v0, v5

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->WRAP:Landroid/support/v8/renderscript/Sampler$Value;

    aput-object v1, v0, v6

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->CLAMP:Landroid/support/v8/renderscript/Sampler$Value;

    aput-object v1, v0, v4

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/support/v8/renderscript/Sampler$Value;

    aput-object v1, v0, v7

    sput-object v0, Landroid/support/v8/renderscript/Sampler$Value;->$VALUES:[Landroid/support/v8/renderscript/Sampler$Value;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput p3, p0, Landroid/support/v8/renderscript/Sampler$Value;->mID:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/v8/renderscript/Sampler$Value;
    .locals 1

    .line 43
    const-class v0, Landroid/support/v8/renderscript/Sampler$Value;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/support/v8/renderscript/Sampler$Value;

    return-object p0
.end method

.method public static values()[Landroid/support/v8/renderscript/Sampler$Value;
    .locals 1

    .line 43
    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->$VALUES:[Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v0}, [Landroid/support/v8/renderscript/Sampler$Value;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v8/renderscript/Sampler$Value;

    return-object v0
.end method
