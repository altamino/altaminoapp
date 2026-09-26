.class public final enum Landroidx/renderscript/RenderScript$Priority;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/renderscript/RenderScript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/renderscript/RenderScript$Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/renderscript/RenderScript$Priority;

.field public static final enum LOW:Landroidx/renderscript/RenderScript$Priority;

.field public static final enum NORMAL:Landroidx/renderscript/RenderScript$Priority;


# instance fields
.field mID:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    .line 2
    new-instance v0, Landroidx/renderscript/RenderScript$Priority;

    .line 3
    .line 4
    const/16 v1, 0xf

    .line 5
    .line 6
    const-string v2, "LOW"

    .line 7
    const/4 v3, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v2, v3, v1}, Landroidx/renderscript/RenderScript$Priority;-><init>(Ljava/lang/String;II)V

    .line 11
    .line 12
    sput-object v0, Landroidx/renderscript/RenderScript$Priority;->LOW:Landroidx/renderscript/RenderScript$Priority;

    .line 13
    .line 14
    new-instance v1, Landroidx/renderscript/RenderScript$Priority;

    .line 15
    const/4 v2, -0x4

    .line 16
    .line 17
    const-string v4, "NORMAL"

    .line 18
    const/4 v5, 0x1

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v4, v5, v2}, Landroidx/renderscript/RenderScript$Priority;-><init>(Ljava/lang/String;II)V

    .line 22
    .line 23
    sput-object v1, Landroidx/renderscript/RenderScript$Priority;->NORMAL:Landroidx/renderscript/RenderScript$Priority;

    .line 24
    const/4 v2, 0x2

    .line 25
    .line 26
    new-array v2, v2, [Landroidx/renderscript/RenderScript$Priority;

    .line 27
    .line 28
    aput-object v0, v2, v3

    .line 29
    .line 30
    aput-object v1, v2, v5

    .line 31
    .line 32
    sput-object v2, Landroidx/renderscript/RenderScript$Priority;->$VALUES:[Landroidx/renderscript/RenderScript$Priority;

    .line 33
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    iput p3, p0, Landroidx/renderscript/RenderScript$Priority;->mID:I

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/renderscript/RenderScript$Priority;
    .locals 1

    .line 1
    .line 2
    const-class v0, Landroidx/renderscript/RenderScript$Priority;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Landroidx/renderscript/RenderScript$Priority;

    .line 9
    return-object p0
.end method

.method public static values()[Landroidx/renderscript/RenderScript$Priority;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Landroidx/renderscript/RenderScript$Priority;->$VALUES:[Landroidx/renderscript/RenderScript$Priority;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Landroidx/renderscript/RenderScript$Priority;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Landroidx/renderscript/RenderScript$Priority;

    .line 9
    return-object v0
.end method
