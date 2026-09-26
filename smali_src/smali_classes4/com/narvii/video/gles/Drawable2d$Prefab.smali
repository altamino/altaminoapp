.class public final enum Lcom/narvii/video/gles/Drawable2d$Prefab;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/gles/Drawable2d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Prefab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/narvii/video/gles/Drawable2d$Prefab;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/narvii/video/gles/Drawable2d$Prefab;

.field public static final enum FULL_RECTANGLE:Lcom/narvii/video/gles/Drawable2d$Prefab;

.field public static final enum RECTANGLE:Lcom/narvii/video/gles/Drawable2d$Prefab;

.field public static final enum TRIANGLE:Lcom/narvii/video/gles/Drawable2d$Prefab;


# direct methods
.method private static synthetic $values()[Lcom/narvii/video/gles/Drawable2d$Prefab;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/narvii/video/gles/Drawable2d$Prefab;

    const/4 v1, 0x0

    sget-object v2, Lcom/narvii/video/gles/Drawable2d$Prefab;->TRIANGLE:Lcom/narvii/video/gles/Drawable2d$Prefab;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/narvii/video/gles/Drawable2d$Prefab;->RECTANGLE:Lcom/narvii/video/gles/Drawable2d$Prefab;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/narvii/video/gles/Drawable2d$Prefab;->FULL_RECTANGLE:Lcom/narvii/video/gles/Drawable2d$Prefab;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/video/gles/Drawable2d$Prefab;

    .line 3
    .line 4
    const-string v1, "TRIANGLE"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lcom/narvii/video/gles/Drawable2d$Prefab;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    sput-object v0, Lcom/narvii/video/gles/Drawable2d$Prefab;->TRIANGLE:Lcom/narvii/video/gles/Drawable2d$Prefab;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/video/gles/Drawable2d$Prefab;

    .line 13
    .line 14
    const-string v1, "RECTANGLE"

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lcom/narvii/video/gles/Drawable2d$Prefab;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    sput-object v0, Lcom/narvii/video/gles/Drawable2d$Prefab;->RECTANGLE:Lcom/narvii/video/gles/Drawable2d$Prefab;

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/video/gles/Drawable2d$Prefab;

    .line 23
    .line 24
    const-string v1, "FULL_RECTANGLE"

    .line 25
    const/4 v2, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1, v2}, Lcom/narvii/video/gles/Drawable2d$Prefab;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    sput-object v0, Lcom/narvii/video/gles/Drawable2d$Prefab;->FULL_RECTANGLE:Lcom/narvii/video/gles/Drawable2d$Prefab;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/narvii/video/gles/Drawable2d$Prefab;->$values()[Lcom/narvii/video/gles/Drawable2d$Prefab;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    sput-object v0, Lcom/narvii/video/gles/Drawable2d$Prefab;->$VALUES:[Lcom/narvii/video/gles/Drawable2d$Prefab;

    .line 37
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/narvii/video/gles/Drawable2d$Prefab;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/narvii/video/gles/Drawable2d$Prefab;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/narvii/video/gles/Drawable2d$Prefab;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/narvii/video/gles/Drawable2d$Prefab;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/video/gles/Drawable2d$Prefab;->$VALUES:[Lcom/narvii/video/gles/Drawable2d$Prefab;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lcom/narvii/video/gles/Drawable2d$Prefab;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lcom/narvii/video/gles/Drawable2d$Prefab;

    .line 9
    return-object v0
.end method
