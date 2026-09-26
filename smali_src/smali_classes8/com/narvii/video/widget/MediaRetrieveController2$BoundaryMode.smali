.class public final enum Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/widget/MediaRetrieveController2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BoundaryMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lz7/a;

.field private static final synthetic $VALUES:[Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

.field public static final enum FIXED:Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

.field public static final enum SHIFT:Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;


# direct methods
.method private static final synthetic $values()[Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    const/4 v1, 0x0

    sget-object v2, Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;->FIXED:Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;->SHIFT:Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    .line 3
    .line 4
    const-string v1, "FIXED"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    sput-object v0, Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;->FIXED:Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    .line 13
    .line 14
    const-string v1, "SHIFT"

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    sput-object v0, Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;->SHIFT:Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;->$values()[Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    sput-object v0, Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;->$VALUES:[Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lz7/b;->a([Ljava/lang/Enum;)Lz7/a;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    sput-object v0, Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;->$ENTRIES:Lz7/a;

    .line 33
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

.method public static getEntries()Lz7/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz7/a<",
            "Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;->$ENTRIES:Lz7/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;
    .locals 1

    const-class v0, Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    return-object p0
.end method

.method public static values()[Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;
    .locals 1

    sget-object v0, Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;->$VALUES:[Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    return-object v0
.end method
